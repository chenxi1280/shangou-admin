package com.lh.shangou.pojo.vo;

import com.lh.shangou.pojo.entity.Merchant;
import lombok.Data;

import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/6/5
 */
@Data
public class MerchantVO extends Merchant {
    private GoodsVO bestGoods;
    private List<GoodsTypeVO> goodsTypeList;


}
