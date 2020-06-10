package com.lh.shangou.service.impl;

import com.lh.shangou.consts.enums.ApprovalEnum;
import com.lh.shangou.dao.ImgCacheDao;
import com.lh.shangou.dao.MerchantDao;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.Merchant;
import com.lh.shangou.pojo.query.MerchantQuery;
import com.lh.shangou.pojo.vo.MerchantVO;
import com.lh.shangou.service.ImgCacheService;
import com.lh.shangou.service.MerchantService;
import org.springframework.stereotype.Service;
import org.springframework.util.Assert;

import javax.annotation.Resource;
import java.util.Date;
import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/6/4
 */
@Service
public class MerchantServiceImpl implements MerchantService {
    @Resource
    MerchantDao merchantDao;
    @Resource
    ImgCacheService imgCacheService;

    @Override
    public ResponseDTO add(Merchant merchant) {
        // 断定pcd(省市区字段不是null和“”)，否则就抛异常
        Assert.notNull(merchant.getPcd(), "省市区字段不能为空！");// 抛出异常将会进入全局异常捕获
        String province = merchant.getPcd().split("-")[0];// 把省取出来
        merchant.setProvince(province);// 设置省份

        Date now = new Date();
        merchant.setCreateTime(now);
        merchant.setUpdateTime(now);
        merchant.setMaxDeliveryArea(3.0);// 默认最大配送距离三千米

        merchant.setMerchantId(System.currentTimeMillis());// 设置当前商户的id// 时间戳来设置不好

        merchant.setApprovalStatus(ApprovalEnum.审核中.toString());// 设置当前商户的id// 时间戳来设置不好

        if (merchantDao.insertSelective(merchant) == 1) {

            imgCacheService.deleteImgCache(merchant);// 清除缓存图片

            return ResponseDTO.ok("申请成功");
        }
        return ResponseDTO.fail("申请失败");
        // 手动的清楚缓存图片
    }

    @Override
    public PageDTO ajaxList(MerchantQuery query) {
        List<MerchantVO> merchants = merchantDao.ajaxList(query) ;
        Integer count = merchantDao.ajaxListCount(query);
        return PageDTO.setPageData(count, merchants);
    }

    @Override
    public PageDTO getMerchantLogsById(Long id) {
        return null;
    }

    @Override
    public Long selectMerchantIdByUserId(Long userId) {
        MerchantVO m = merchantDao.selectByUserId(userId);
        if (m != null) {
            return m.getMerchantId();
        }
        return null;
    }

    @Override
    public ResponseDTO editMerchant(Merchant merchant) {
        return ResponseDTO.get(merchantDao.updateByPrimaryKeySelective(merchant)==1);
    }
}
