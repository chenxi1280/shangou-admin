package com.lh.shangou.pojo.query;

import com.lh.shangou.pojo.entity.WxUser;
import com.lh.shangou.pojo.entity.WxUserAdd;
import com.lh.shangou.pojo.vo.WxUserVO;
import lombok.Builder;
import lombok.Data;

import java.io.Serializable;

/**
 * @author by cxd
 * @Classname WxUserQuery
 * @Description TODO
 * @Date 2020/8/7 17:27
 */
@Data


public class WxUserQuery   implements Serializable  {

    private String code;

   private WxUserAdd rawData;

}

