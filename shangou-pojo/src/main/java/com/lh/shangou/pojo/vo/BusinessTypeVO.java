package com.lh.shangou.pojo.vo;

import com.lh.shangou.pojo.entity.BusinessType;
import lombok.Data;

import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/6/4
 */
@Data
public class BusinessTypeVO extends BusinessType {
    List<BusinessTypeVO> children;// 所有子类型
}
