package com.lh.shangou.controller.pages.front.pay;

import com.alipay.api.internal.util.AlipaySignature;
import com.github.wxpay.sdk.WXPayUtil;
import com.lh.shangou.config.websocket.UserWebSocket;
import com.lh.shangou.dada.service.DeliverService;
import com.lh.shangou.pay.config.alipay.AlipayConfig;
import com.lh.shangou.pay.config.wxpay.AESUtil.AESUtil;
import com.lh.shangou.pay.config.wxpay.WxConfig;
import com.lh.shangou.pay.pojo.dto.AliPayResDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.SgOrder;
import com.lh.shangou.pojo.vo.GoodsVO;
import com.lh.shangou.pojo.vo.OrderVO;
import com.lh.shangou.service.OrderService;
import com.lh.shangou.service.UserService;
import org.apache.shiro.codec.Base64;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.*;

/**
 * creator：杜夫人
 * date: 2020/6/12
 */
@RequestMapping("/pages/front/pay")
@Controller
//@Sl4j
public class PayControllerFront {
    Logger log = LoggerFactory.getLogger(GoodsVO.class);


    @Resource
    UserService userService;

    @InitBinder
    public void initBinder(WebDataBinder binder) {// 统一对日期进行入参处理(必须传yyyy-MM-dd HH:mm:ss)
        binder.registerCustomEditor(Date.class, new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss"), true));
    }


    @Resource
    OrderService orderService;


    @Resource
    DeliverService deliverService;// 派单服务


    @Transactional(propagation = Propagation.REQUIRED)
    @RequestMapping("wxPayRes")
        //微信支付结果通知
    String wxPayRes(HttpServletRequest request) {
        //拿到微信支付结果的map
        Map<String, String> resultMap = WxConfig.getWxResMap(request);
        if (resultMap == null) {
            return "集合为空";
        }
        try {
            if (WXPayUtil.isSignatureValid(resultMap, WxConfig.MYKEY)) {//签名正确:对方就是微信
                Map<String, String[]> parameterMap = request.getParameterMap();
                String orderId = resultMap.get("out_trade_no");// 微信传递来的订单编号
                String zonge = resultMap.get("cash_fee");//这个是分
                OrderVO orderVO = orderService.getOrderVOById(Long.valueOf(orderId));
                // 比较金额 略```` 更新 操作 略```


//                FcOrder fcOrder = new FcOrder();
//                fcOrder.setActuallyPaid(new BigDecimal(zonge).multiply(new BigDecimal("0.01")));// 收款金额
//                fcOrder.setOrderId(Long.valueOf(orderId));// 订单号
//                fcOrder.setPayTime(new Date());//  付款时间
//                fcOrder.setPayType("微信");

                // 根据订单id修改订单付款状态,和付款事件,和付款方式

//                if (upDateOrderPayStatus(fcOrder)) {
//                    return WxConfig.notifyWxImGet();
//                }
                // 思路,把订单查询到之后,把订单中商户id取出来,根据商户id再去查询用户id就行了
                Long userId = userService.selectUserIdByMerchantId(orderVO.getMerchantId());
                UserWebSocket userWebSocket = UserWebSocket.getUserWebSocket(userId.toString());
                userWebSocket.sendMessage(ResponseDTO.ok("您有新的外卖订单!"));
            } else {
                System.err.println("签名失败哦");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "";
    }

    // 更新订单状态为代发货
    private boolean upDateOrderPayStatus(SgOrder fcOrder) {
//        fcOrder.setPayStatus("待发货");
//        ResponseDTO res = orderServiceFeign.paySuccess(fcOrder);
//        if (res.getRes()) {
//            // 这里要首先给达达下单
//            Object o = redisTemplate.opsForValue().get(fcOrder.getOrderId().toString());
//            if (o != null) {// 调用达达服务下单
//                ResponseDTO responseDTO = deliverService.addAfterQuery(o.toString());
//                if (responseDTO.getRes()) {
//                    log.error(responseDTO.getMsg());
//                }
//            }
//            OrderVO dbOrder = res.getDataVO(OrderVO.class);
//            UserWebSocket userWebSocket = UserWebSocket.getUserWebSocket(dbOrder.getUserId().toString());
//            UserWebSocket merchantWebSocket = UserWebSocket.getUserWebSocket(dbOrder.getMerchantUserId().toString());// 商户存的是商户id
//            if (userWebSocket != null) {
//                userWebSocket.sendMessage(ResponseDTO.ok("订单支付成功"));
//            }
//            if (merchantWebSocket != null) {
//                merchantWebSocket.sendMessage(ResponseDTO.ok("订单支付成功,有新的订单"));
//            }
//            return true; // 一定要给支付宝一个答案，到底是收到消息了还是我挂了，或者是网络问题，没收到
//
//        } else {
//            return false;
//        }
        return false;
    }

    //退款结果通知，来自微信的
    @RequestMapping("tuikuanRes")
    String tuikuanRes(HttpServletRequest request) {
        try {
            InputStream inStream = request.getInputStream();
            //将流转换成字符串,用Scanner
            Scanner s = new Scanner(inStream);
            String resStr = "";
            while (s.hasNext()) {
                resStr += s.next();
            }
            //1.对返回的字符串解密
            //2.对我的key字符串MD5加密,此步骤已经在第三步中完成
//                String myMD5key = WXPayUtil.MD5(WxConfig.MYKEY).toLowerCase();//我的key加密,还要小写;
            //3.（3）用key*对加密串B做AES-256-ECB解密（PKCS7Padding）
            Map<String, String> resultMap = WXPayUtil.xmlToMap(resStr);//拿到了微信过来的Map
            resStr = resultMap.get("req_info");//这才是真正的加密字符串
            byte[] b = Base64.decode(resStr);
            String jiemiXMl = AESUtil.decryptData(b);//得到解密后的XMl字符串

//                resStr="<xml><appid><![CDATA[wx90b07e7298f25616]]></appid><bank_type><![CDATA[CFT]]></bank_type><cash_fee><![CDATA[50]]></cash_fee><fee_type><![CDATA[CNY]]></fee_type><is_subscribe><![CDATA[Y]]></is_subscribe><mch_id><![CDATA[1500995971]]></mch_id><nonce_str><![CDATA[d27f6b2a957547ec8fecf8230132b870]]></nonce_str><openid><![CDATA[o_sxo1fgVOZgC9SpXe9QOLgUgqCw]]></openid><out_trade_no><![CDATA[1532079492910-814227]]></out_trade_no><result_code><![CDATA[SUCCESS]]></result_code><return_code><![CDATA[SUCCESS]]></return_code><sign><![CDATA[7F76BA0C13868E69D061AA8153718479]]></sign><time_end><![CDATA[20180720173839]]></time_end><total_fee>50</total_fee><trade_type><![CDATA[MWEB]]></trade_type><transaction_id><![CDATA[4200000135201807209960939374]]></transaction_id></xml>";
            //将XML格式转化成MAP格式数据
            Map<String, String> jiemiMap = WXPayUtil.xmlToMap(jiemiXMl);//拿到解密后的Map
            String morderid = jiemiMap.get("out_trade_no");
//            CourseOrder wxmorder = new CourseOrder();
//            wxmorder.setOrderId(morderid);
//            wxmorder.setPayStatus("已退款");
//            if (orderService.tuikuan(wxmorder)) {// 退款操作
//                //通知微信我收到啦
//                return WxConfig.notifyWxImGet();
//            }
        } catch (Exception e) {
            System.err.println(e.getMessage());
        }
        //如果失败返回错误，微信会再次发送支付信息

        return "fail";
    }


    // 支付宝的通知的异步接口
    @RequestMapping("/aliPayResYb")
    String aliPayResYb(HttpServletRequest request, AliPayResDTO aliPayRes) {
        log.debug(request.getRequestURL().toString());
        log.debug("支付宝支付结果异步通知" + request.getParameterMap().toString());
        Map<String, String> params = new HashMap<>();//先把请求参数封装为map集合
        Enumeration<String> names = request.getParameterNames();
        while (names.hasMoreElements()) {
            String pName = names.nextElement();
            params.put(pName, request.getParameter(pName));
        }
        try {
            boolean signRes;
            //切记alipaypublickey是支付宝的公钥，请去open.alipay.com对应应用下查看。
            //boolean AlipaySignature.rsaCheckV1(Map<String, String> params, String publicKey, String charset, String sign_type)
            //这里必须要协商signType,验证签名
            signRes = AlipaySignature.rsaCheckV1(params, AlipayConfig.alipay_public_key, "utf-8", "RSA2");
            String appid = request.getParameter("app_id");
            if (AlipayConfig.app_id.equals(appid) && signRes) { //首先判断appid是不是正确的，再看签名是不是来自于支付宝
                if ("TRADE_SUCCESS".equals(aliPayRes.getTrade_status())) {// 交易状态
//                    FcOrder fcOrder = new FcOrder();
//                    fcOrder.setActuallyPaid(aliPayRes.getReceipt_amount());// 收款金额
//                    fcOrder.setOrderId(aliPayRes.getOut_trade_no());// 订单号
//                    fcOrder.setPayTime(aliPayRes.getGmt_payment());//  付款时间
//                    fcOrder.setPayType("支付宝");
//                    if (upDateOrderPayStatus(fcOrder)) {
//                        return "success";// 也要告诉支付宝我收到你的信息了,你就不要给我发消息了
//                    }
                    // 发消息给商户websocket

                } else if ("TRADE_CLOSED".equals(aliPayRes.getTrade_status())) {// 退款通知接口
//                        mymorder.setZfRes("已退款");
//                        if (morderService.updatePayRes(mymorder)) {//退款成功后
//                            System.err.println("已收到通知-已退款");
////                        }
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "fail";
    }

    // 支付宝的通知的同步接口:重定向接口
    @RequestMapping("/aliPayResTb")
    String aliPayResTb() {
        return "/pages/back/order/userOrderList";
    }

}
