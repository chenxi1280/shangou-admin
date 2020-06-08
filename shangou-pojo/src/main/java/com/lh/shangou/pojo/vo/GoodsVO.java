package com.lh.shangou.pojo.vo;

import com.lh.shangou.pojo.entity.Goods;
import lombok.Data;

/**
 * creator：杜夫人
 * date: 2020/6/5
 */
@Data
public class GoodsVO extends Goods {

    private String updateUserName;// 更新人的名字
}
