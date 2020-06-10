package com.lh.shangou.pojo.vo;

import com.lh.shangou.pojo.entity.GoodsType;
import lombok.Data;

import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/6/8
 */
@Data
public class GoodsTypeVO extends GoodsType {

    List<GoodsVO> goodsVOS;// 这种类型的商品集


}
