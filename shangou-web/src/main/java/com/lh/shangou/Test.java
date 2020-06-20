package com.lh.shangou;

import com.alibaba.fastjson.JSON;
import com.lh.shangou.pojo.vo.ButtonGroupVO;

import java.util.ArrayList;
import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/6/20
 */
public class Test {
    public static void main(String[] args) {
        ButtonGroupVO buttonGroupVO=new ButtonGroupVO();
        ButtonGroupVO buttonGroupVO1=new ButtonGroupVO();

        buttonGroupVO.setImg("https://img30.360buyimg.com/mobilecms/jfs/t1/110355/36/3573/7822/5e12fdadEddc69a75/709e7b81b039de24.png");
        buttonGroupVO.setText("超市");
        buttonGroupVO.setUrl("/pages");
        System.err.println(JSON.toJSONString(buttonGroupVO));
        buttonGroupVO1.setImg("https://img30.360buyimg.com/mobilecms/jfs/t1/110355/36/3573/7822/5e12fdadEddc69a75/709e7b81b039de24.png");
        buttonGroupVO1.setText("超市");
        buttonGroupVO1.setUrl("/pages");
        List<ButtonGroupVO> list=new ArrayList<>();
        list.add(buttonGroupVO);
        list.add(buttonGroupVO1);
        System.err.println(JSON.toJSONString(list));


    }
}
