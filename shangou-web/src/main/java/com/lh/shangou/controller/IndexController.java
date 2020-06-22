package com.lh.shangou.controller;

import com.lh.shangou.consts.consts.ConfigConsts;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.vo.ButtonGroupVO;
import com.lh.shangou.pojo.vo.UserVO;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import javax.annotation.Resource;
import java.util.*;
import java.util.concurrent.TimeUnit;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
@Controller
public class IndexController extends BaseController {


    @Resource
    RedisTemplate<String, Object> redisTemplate;


    @Resource
    RestTemplate restTemplate;// restTemplate需要注入到容器里边

    @RequestMapping("/")
    String index(Model model) {
        model.addAttribute(ConfigConsts.headerImg, getSingleValueByKey(ConfigConsts.headerImg));// 设置首页头部背景图片
        model.addAttribute(ConfigConsts.bannerImg, getSingleValueByKey(ConfigConsts.bannerImg));// 设置首页头部背景图片
        model.addAttribute(ConfigConsts.indexImgs, getListByKey(ConfigConsts.indexImgs, String.class));// 设置首页轮播图
        model.addAttribute(ConfigConsts.vipImgs, getListByKey(ConfigConsts.vipImgs, String.class));// 设置首页轮播图
        //    model.addAttribute("indexGifImg", getSingleValueByKey("indexGifImg"));// 设置首页动图
        model.addAttribute(ConfigConsts.newPerson, getSingleValueByKey(ConfigConsts.newPerson));// 设置首页新用户
        model.addAttribute(ConfigConsts.newPersonDown, getSingleValueByKey(ConfigConsts.newPersonDown));// 设置首页新用户下面的图片
        model.addAttribute(ConfigConsts.hostWords, getListByKey(ConfigConsts.hostWords, String.class));// 设置热点词
        model.addAttribute(ConfigConsts.indexMenu, getListByKey(ConfigConsts.indexMenu, ButtonGroupVO.class));// 设置热点词

        return "index";
    }

    @RequestMapping("/test")
    ResponseDTO test(UserVO user) {

        redisTemplate.opsForValue().set("userId", 123);// 设置int类型(字符串)
        user.setPhone("18223170162");
        redisTemplate.opsForValue().set("user", user);// 设置对象（hash）

        List<String> list = new ArrayList<>();
        list.add("hahahh");
        redisTemplate.opsForValue().set("list", list);// 设置集合list

        Set<String> set = new HashSet<>();
        set.add("set");
        redisTemplate.opsForValue().set("set", set);// 设置集合set
        TreeSet<Integer> treeSet = new TreeSet<>();
        treeSet.add(12);
        treeSet.add(13);
        redisTemplate.opsForValue().set("treeSet", treeSet);// 设置集合zset
        return ResponseDTO.ok();
    }

    @RequestMapping("/testGet")
    ResponseDTO test() {

        Integer userId = (Integer) redisTemplate.opsForValue().get("userId");// 设置int类型(字符串)
        UserVO user = (UserVO) redisTemplate.opsForValue().get("user");// 设置int类型(字符串)
        Object list = redisTemplate.opsForValue().get("list");// 设置int类型(字符串)
        Object set = redisTemplate.opsForValue().get("set");// 设置int类型(字符串)
        Object treeSet = redisTemplate.opsForValue().get("treeSet");// 设置int类型(字符串)
        return ResponseDTO.ok();
    }


    @RequestMapping("/testSetex")
    ResponseDTO testSetex() {

        redisTemplate.opsForValue().set("code", "520520", 60, TimeUnit.SECONDS);// 设置 验证码过期时间为60秒

        return ResponseDTO.ok();
    }

    @RequestMapping("/testSetnx")
    ResponseDTO testSetnx() {
        //  redisTemplate.opsForValue().setIfAbsent();// 就是setnx不存再就设置（分布式锁就可以用它来做）还需要用到redis脚本命令（原子命令）
        // redisTemplate.opsForValue().setIfPresent();// 就是setnx存在就设置
        // redisTemplate.opsForValue().multiGet();// 多取
        //keys * 查看所有的键
        // redisTemplate.keys("user*");// 查找所有user开头的键值（user_1,user_2）
        return ResponseDTO.ok();
    }

}
