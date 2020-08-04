package com.lh.shangou.pojo.entity;

import lombok.Data;

/**
 * @Classname Swiper
 * @Description TODO
 * @Date 2020/7/26 16:09
 * @CreateComputer by PC
 * @Created by cxd
 */
@Data
public class Swiper {
    private String image_src;
    private String open_type ="navigate";
    private Long goodsId;
    private String navigator_url;
}
