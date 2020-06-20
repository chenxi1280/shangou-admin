package com.lh.shangou.pojo.vo;

import lombok.Data;

/**
 * creator：杜夫人
 * date: 2020/6/20
 * 按钮组：包含图片，访问路径，还有文字
 * 菜单列表循环展示
 */

@Data
public class ButtonGroupVO {
    private String img, text, url;
}
