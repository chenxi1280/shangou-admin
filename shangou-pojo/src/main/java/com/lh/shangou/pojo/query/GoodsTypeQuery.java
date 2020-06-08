package com.lh.shangou.pojo.query;

import lombok.Data;

/**
 * creator：杜夫人
 * date: 2020/6/8
 */
@Data
public class GoodsTypeQuery extends PageQuery {
    private String typeName;
    private Long merchantId;
}
