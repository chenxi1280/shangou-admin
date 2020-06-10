package com.lh.shangou.dao;

import com.lh.shangou.pojo.entity.Goods;
import com.lh.shangou.pojo.query.GoodsQuery;
import com.lh.shangou.pojo.vo.GoodsTypeVO;
import com.lh.shangou.pojo.vo.GoodsVO;
import com.lh.shangou.pojo.vo.MerchantVO;
import com.lh.shangou.pojo.vo.UserVO;
import org.apache.ibatis.annotations.Param;

import java.util.Collection;
import java.util.List;

public interface GoodsDao {
    int deleteByPrimaryKey(Long goodsId);

    int insert(Goods record);

    int insertSelective(Goods record);

    Goods selectByPrimaryKey(Long goodsId);

    int updateByPrimaryKeySelective(Goods record);

    int updateByPrimaryKey(Goods record);

    List<GoodsVO> ajaxList(GoodsQuery query);

    Integer ajaxListCount(GoodsQuery query);

    // 根据商户id查询商户最好的商品
    List<GoodsVO> getMerchantBestGoods(@Param("ids") List<MerchantVO> merchants);

    // 根据商品类型把商品全部找出来
    List<GoodsVO> selectGoodsByTypes(@Param("ids") List<GoodsTypeVO> goodsTypeVOS);
}
