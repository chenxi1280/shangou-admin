package com.lh.shangou.pojo.query;

import lombok.Data;

import java.util.Date;

/**
 * creator：杜夫人
 * date: 2020/6/11
 */
@Data
public class OrderQuery extends PageQuery {
    private Long orderId;

    private String receiverName, receiverPhone, payStatus;
    private Date startDate, endDate;

}
