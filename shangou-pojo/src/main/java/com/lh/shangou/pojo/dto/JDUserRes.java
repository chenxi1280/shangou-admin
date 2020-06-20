package com.lh.shangou.pojo.dto;


import lombok.Data;

import java.util.List;

/**
 * 作者：森林杜夫人
 */
@Data
public class JDUserRes {


    /**
     * code : 0
     * msg : 成功
     * result : {"channelFloorList":[{"floorStyle":"floorBanner","styleTpl":"tpl1","edge":false,"bannerFloorItemList":[{"to":"web","params":{"type":"1","url":"https://daojia.jd.com/taroh5/h5dist/#/pages/signIn-t/index?channel=appbanner"},"imgUrl":"https://img30.360buyimg.com/mobilecms/jfs/t1/119767/30/5801/99141/5ec1fddcEad3cf323/b0dcd10cf877ac19.png","userAction":"{\"spm_id\":\"floorBanner_2|2|1||||\",\"title\":\"https://daojia.jd.com/taroh5/h5dist/#/pages/signIn-t/index?channel=appbanner\"}"},{"to":"web","params":{"type":"1","url":"https://carry.m.jd.com/babelDiy/Zeus/3KSjXqQabiTuD1cJ28QskrpWoBKT/index.html?babelChannel=30"},"imgUrl":"https://img30.360buyimg.com/mobilecms/jfs/t1/116803/20/8815/70739/5ed46098E061e45e9/8ac6f4b4a215cbbb.png","userAction":"{\"spm_id\":\"floorBanner_2|2|2||||\",\"title\":\"https://carry.m.jd.com/babelDiy/Zeus/3KSjXqQabiTuD1cJ28QskrpWoBKT/index.html?babelChannel=30\"}"}],"floorType":3,"floorBusiness":-1}],"classifyModuleVOList":[{"busiType":"1","busiName":"功能服务","userModuleVOList":[{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/119776/35/1870/5602/5ea6c09eE660ae986/d7aacf124613fdcc.png","name":"我的关注","to":"concern","isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|1||||\",\"title\":\"我的关注\"}","busiType":1},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/119589/12/1893/5431/5ea6c0bbE7fbe19e7/1e85f731ddbce83a.png","name":"我的评价","to":"myEvaluate","isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|2||||\",\"title\":\"我的评价\"}","busiType":1},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/111095/11/3330/5265/5ea6c0d3E7a08e774/04e4a659c3df2dec.png","name":"我的地址","to":"address","isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|3||||\",\"title\":\"我的地址\"}","busiType":1},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/113252/24/3266/5476/5ea6c0ebEd564555a/c426ede6bbcb0924.png","name":"商家会员","to":"web","params":{"url":"https://daojia.jd.com/activity/multactivity/html/vipChannel.html"},"isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|4||||\",\"title\":\"商家会员\",\"url\":\"https://daojia.jd.com/activity/multactivity/html/vipChannel.html\"}","busiType":1},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/115239/40/3898/3209/5eaa967dE4c28a170/5ad63e3dbe588bf4.png","name":"V+会员","to":"web","params":{"url":"https://daojia.jd.com/taroh5/h5dist/#/pages/vpayMember-t/home/index?channel=mybaibaoxiang"},"isRedStatus":0,"userAction":"{\"spm_id\":\"act_17|3|5||||\",\"title\":\"V+会员\",\"url\":\"https://daojia.jd.com/taroh5/h5dist/#/pages/vpayMember-t/home/index?channel=mybaibaoxiang\"}","busiType":1},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/113197/2/3245/5374/5ea6c15bEd30c2d73/281fa8d98e2e160f.png","name":"签到有惊喜","to":"web","params":{"url":"https://daojia.jd.com/taroh5/h5dist/#/pages/tabBar/signIn-t/index?channel=qiandao_baibaoxiang&trench=wode"},"isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|6||||\",\"title\":\"签到有惊喜\",\"url\":\"https://daojia.jd.com/taroh5/h5dist/#/pages/tabBar/signIn-t/index?channel=qiandao_baibaoxiang&trench=wode\"}","busiType":1},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/112542/16/3261/5236/5ea6c1a2E8747541c/cc04474fada775c8.png","name":"售后退款","to":"afterSale","isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|7||||\",\"title\":\"售后退款\"}","busiType":1},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/115212/14/3299/3070/5ea6c1f5Ec5d8088f/b7e9ffe9b7a92bbd.png","name":"客服与帮助","to":"web","params":{"url":"https://daojia.jd.com/html/index.html?&needPin=yes#orderDetailBridge/type:3"},"isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|9||||\",\"title\":\"客服与帮助\",\"url\":\"https://daojia.jd.com/html/index.html?&needPin=yes#orderDetailBridge/type:3\"}","busiType":1}]},{"busiType":"2","busiName":"更多推荐","userModuleVOList":[{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/108382/3/14756/4984/5ea6c288Ec8fe4d69/ffef369a8d84999c.png","name":"关于我们","to":"aboutUs","isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|11||||\",\"title\":\"关于我们\"}","busiType":2},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/111163/28/3293/5716/5ea6c263E2ede6d39/df672c7b28dc7d2e.png","name":"配送员注册","to":"web","params":{"url":"https://knight.imdada.cn/app/#/download/invite?channel=123"},"isRedStatus":0,"userAction":"{\"spm_id\":\"act_17|3|12||||\",\"title\":\"配送员注册\",\"url\":\"https://knight.imdada.cn/app/#/download/invite?channel=123\"}","busiType":2},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/111584/9/3313/6034/5ea6c2d8E3fa1afe1/571399161e79c410.png","name":"商家入驻","to":"web","params":{"url":"https://ruzhu.jddj.com/"},"isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|13||||\",\"title\":\"商家入驻\",\"url\":\"https://ruzhu.jddj.com/\"}","busiType":2},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/112282/8/3243/5355/5ea6c2a6E91aeb237/4b5528a010e1a578.png","name":"金融权益","to":"jdweb","params":{"url":"https://m.jr.jd.com/member/rightsCenter/#/choiceness?channel=02-jddj&callapp=1"},"isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|14||||\",\"title\":\"金融权益\",\"url\":\"https://m.jr.jd.com/member/rightsCenter/#/choiceness?channel=02-jddj&callapp=1\"}","busiType":2},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/114514/18/10191/3623/5ee83d1dEdae682e3/69a62a0ca4e4b10e.png","name":"白条立减","to":"jdweb","params":{"url":"https://pro.m.jd.com/mall/active/TfzMBk2TTFcx1fD1d4YgJA2GVcP/index.html"},"isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|15||||\",\"title\":\"白条立减\",\"url\":\"https://pro.m.jd.com/mall/active/TfzMBk2TTFcx1fD1d4YgJA2GVcP/index.html\"}","busiType":2},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/107715/28/14430/4746/5ea6c2b1E8ca79ca7/3dfc596f68613f0b.png","name":"办卡免单","to":"web","params":{"url":"https://daojia.jd.com/html/index.html#activityPage/actNativeId:12000436"},"isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|16||||\",\"title\":\"办卡免单\",\"url\":\"https://daojia.jd.com/html/index.html#activityPage/actNativeId:12000436\"}","busiType":2},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/110979/15/3260/3937/5ea6c2c1Ec24e0c74/f27797b58ff54966.png","name":"支付优惠","to":"web","params":{"url":"https://daojia.jd.com/html/index.html#activityPage/actNativeId:12000022"},"isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|17||||\",\"title\":\"支付优惠\",\"url\":\"https://daojia.jd.com/html/index.html#activityPage/actNativeId:12000022\"}","busiType":2}]}],"unique":"724393d9-91c8-418c-845f-5ca0b920ea92"}
     * traceId : H5_DEV_DA47D8A0-52D2-4347-9CB6-9FEAD4EBAFF11592668544392
     * success : true
     */

    private String code;
    private String msg;
    private ResultBean result;
    private String traceId;
    private boolean success;

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public ResultBean getResult() {
        return result;
    }

    public void setResult(ResultBean result) {
        this.result = result;
    }

    public String getTraceId() {
        return traceId;
    }

    public void setTraceId(String traceId) {
        this.traceId = traceId;
    }

    public boolean isSuccess() {
        return success;
    }

    public void setSuccess(boolean success) {
        this.success = success;
    }

    public static class ResultBean {
        /**
         * channelFloorList : [{"floorStyle":"floorBanner","styleTpl":"tpl1","edge":false,"bannerFloorItemList":[{"to":"web","params":{"type":"1","url":"https://daojia.jd.com/taroh5/h5dist/#/pages/signIn-t/index?channel=appbanner"},"imgUrl":"https://img30.360buyimg.com/mobilecms/jfs/t1/119767/30/5801/99141/5ec1fddcEad3cf323/b0dcd10cf877ac19.png","userAction":"{\"spm_id\":\"floorBanner_2|2|1||||\",\"title\":\"https://daojia.jd.com/taroh5/h5dist/#/pages/signIn-t/index?channel=appbanner\"}"},{"to":"web","params":{"type":"1","url":"https://carry.m.jd.com/babelDiy/Zeus/3KSjXqQabiTuD1cJ28QskrpWoBKT/index.html?babelChannel=30"},"imgUrl":"https://img30.360buyimg.com/mobilecms/jfs/t1/116803/20/8815/70739/5ed46098E061e45e9/8ac6f4b4a215cbbb.png","userAction":"{\"spm_id\":\"floorBanner_2|2|2||||\",\"title\":\"https://carry.m.jd.com/babelDiy/Zeus/3KSjXqQabiTuD1cJ28QskrpWoBKT/index.html?babelChannel=30\"}"}],"floorType":3,"floorBusiness":-1}]
         * classifyModuleVOList : [{"busiType":"1","busiName":"功能服务","userModuleVOList":[{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/119776/35/1870/5602/5ea6c09eE660ae986/d7aacf124613fdcc.png","name":"我的关注","to":"concern","isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|1||||\",\"title\":\"我的关注\"}","busiType":1},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/119589/12/1893/5431/5ea6c0bbE7fbe19e7/1e85f731ddbce83a.png","name":"我的评价","to":"myEvaluate","isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|2||||\",\"title\":\"我的评价\"}","busiType":1},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/111095/11/3330/5265/5ea6c0d3E7a08e774/04e4a659c3df2dec.png","name":"我的地址","to":"address","isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|3||||\",\"title\":\"我的地址\"}","busiType":1},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/113252/24/3266/5476/5ea6c0ebEd564555a/c426ede6bbcb0924.png","name":"商家会员","to":"web","params":{"url":"https://daojia.jd.com/activity/multactivity/html/vipChannel.html"},"isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|4||||\",\"title\":\"商家会员\",\"url\":\"https://daojia.jd.com/activity/multactivity/html/vipChannel.html\"}","busiType":1},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/115239/40/3898/3209/5eaa967dE4c28a170/5ad63e3dbe588bf4.png","name":"V+会员","to":"web","params":{"url":"https://daojia.jd.com/taroh5/h5dist/#/pages/vpayMember-t/home/index?channel=mybaibaoxiang"},"isRedStatus":0,"userAction":"{\"spm_id\":\"act_17|3|5||||\",\"title\":\"V+会员\",\"url\":\"https://daojia.jd.com/taroh5/h5dist/#/pages/vpayMember-t/home/index?channel=mybaibaoxiang\"}","busiType":1},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/113197/2/3245/5374/5ea6c15bEd30c2d73/281fa8d98e2e160f.png","name":"签到有惊喜","to":"web","params":{"url":"https://daojia.jd.com/taroh5/h5dist/#/pages/tabBar/signIn-t/index?channel=qiandao_baibaoxiang&trench=wode"},"isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|6||||\",\"title\":\"签到有惊喜\",\"url\":\"https://daojia.jd.com/taroh5/h5dist/#/pages/tabBar/signIn-t/index?channel=qiandao_baibaoxiang&trench=wode\"}","busiType":1},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/112542/16/3261/5236/5ea6c1a2E8747541c/cc04474fada775c8.png","name":"售后退款","to":"afterSale","isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|7||||\",\"title\":\"售后退款\"}","busiType":1},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/115212/14/3299/3070/5ea6c1f5Ec5d8088f/b7e9ffe9b7a92bbd.png","name":"客服与帮助","to":"web","params":{"url":"https://daojia.jd.com/html/index.html?&needPin=yes#orderDetailBridge/type:3"},"isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|9||||\",\"title\":\"客服与帮助\",\"url\":\"https://daojia.jd.com/html/index.html?&needPin=yes#orderDetailBridge/type:3\"}","busiType":1}]},{"busiType":"2","busiName":"更多推荐","userModuleVOList":[{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/108382/3/14756/4984/5ea6c288Ec8fe4d69/ffef369a8d84999c.png","name":"关于我们","to":"aboutUs","isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|11||||\",\"title\":\"关于我们\"}","busiType":2},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/111163/28/3293/5716/5ea6c263E2ede6d39/df672c7b28dc7d2e.png","name":"配送员注册","to":"web","params":{"url":"https://knight.imdada.cn/app/#/download/invite?channel=123"},"isRedStatus":0,"userAction":"{\"spm_id\":\"act_17|3|12||||\",\"title\":\"配送员注册\",\"url\":\"https://knight.imdada.cn/app/#/download/invite?channel=123\"}","busiType":2},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/111584/9/3313/6034/5ea6c2d8E3fa1afe1/571399161e79c410.png","name":"商家入驻","to":"web","params":{"url":"https://ruzhu.jddj.com/"},"isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|13||||\",\"title\":\"商家入驻\",\"url\":\"https://ruzhu.jddj.com/\"}","busiType":2},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/112282/8/3243/5355/5ea6c2a6E91aeb237/4b5528a010e1a578.png","name":"金融权益","to":"jdweb","params":{"url":"https://m.jr.jd.com/member/rightsCenter/#/choiceness?channel=02-jddj&callapp=1"},"isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|14||||\",\"title\":\"金融权益\",\"url\":\"https://m.jr.jd.com/member/rightsCenter/#/choiceness?channel=02-jddj&callapp=1\"}","busiType":2},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/114514/18/10191/3623/5ee83d1dEdae682e3/69a62a0ca4e4b10e.png","name":"白条立减","to":"jdweb","params":{"url":"https://pro.m.jd.com/mall/active/TfzMBk2TTFcx1fD1d4YgJA2GVcP/index.html"},"isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|15||||\",\"title\":\"白条立减\",\"url\":\"https://pro.m.jd.com/mall/active/TfzMBk2TTFcx1fD1d4YgJA2GVcP/index.html\"}","busiType":2},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/107715/28/14430/4746/5ea6c2b1E8ca79ca7/3dfc596f68613f0b.png","name":"办卡免单","to":"web","params":{"url":"https://daojia.jd.com/html/index.html#activityPage/actNativeId:12000436"},"isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|16||||\",\"title\":\"办卡免单\",\"url\":\"https://daojia.jd.com/html/index.html#activityPage/actNativeId:12000436\"}","busiType":2},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/110979/15/3260/3937/5ea6c2c1Ec24e0c74/f27797b58ff54966.png","name":"支付优惠","to":"web","params":{"url":"https://daojia.jd.com/html/index.html#activityPage/actNativeId:12000022"},"isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|17||||\",\"title\":\"支付优惠\",\"url\":\"https://daojia.jd.com/html/index.html#activityPage/actNativeId:12000022\"}","busiType":2}]}]
         * unique : 724393d9-91c8-418c-845f-5ca0b920ea92
         */

        private String unique;
        private List<ChannelFloorListBean> channelFloorList;
        private List<ClassifyModuleVOListBean> classifyModuleVOList;

        public String getUnique() {
            return unique;
        }

        public void setUnique(String unique) {
            this.unique = unique;
        }

        public List<ChannelFloorListBean> getChannelFloorList() {
            return channelFloorList;
        }

        public void setChannelFloorList(List<ChannelFloorListBean> channelFloorList) {
            this.channelFloorList = channelFloorList;
        }

        public List<ClassifyModuleVOListBean> getClassifyModuleVOList() {
            return classifyModuleVOList;
        }

        public void setClassifyModuleVOList(List<ClassifyModuleVOListBean> classifyModuleVOList) {
            this.classifyModuleVOList = classifyModuleVOList;
        }

        public static class ChannelFloorListBean {
            /**
             * floorStyle : floorBanner
             * styleTpl : tpl1
             * edge : false
             * bannerFloorItemList : [{"to":"web","params":{"type":"1","url":"https://daojia.jd.com/taroh5/h5dist/#/pages/signIn-t/index?channel=appbanner"},"imgUrl":"https://img30.360buyimg.com/mobilecms/jfs/t1/119767/30/5801/99141/5ec1fddcEad3cf323/b0dcd10cf877ac19.png","userAction":"{\"spm_id\":\"floorBanner_2|2|1||||\",\"title\":\"https://daojia.jd.com/taroh5/h5dist/#/pages/signIn-t/index?channel=appbanner\"}"},{"to":"web","params":{"type":"1","url":"https://carry.m.jd.com/babelDiy/Zeus/3KSjXqQabiTuD1cJ28QskrpWoBKT/index.html?babelChannel=30"},"imgUrl":"https://img30.360buyimg.com/mobilecms/jfs/t1/116803/20/8815/70739/5ed46098E061e45e9/8ac6f4b4a215cbbb.png","userAction":"{\"spm_id\":\"floorBanner_2|2|2||||\",\"title\":\"https://carry.m.jd.com/babelDiy/Zeus/3KSjXqQabiTuD1cJ28QskrpWoBKT/index.html?babelChannel=30\"}"}]
             * floorType : 3
             * floorBusiness : -1
             */

            private String floorStyle;
            private String styleTpl;
            private boolean edge;
            private int floorType;
            private int floorBusiness;
            private List<BannerFloorItemListBean> bannerFloorItemList;

            public String getFloorStyle() {
                return floorStyle;
            }

            public void setFloorStyle(String floorStyle) {
                this.floorStyle = floorStyle;
            }

            public String getStyleTpl() {
                return styleTpl;
            }

            public void setStyleTpl(String styleTpl) {
                this.styleTpl = styleTpl;
            }

            public boolean isEdge() {
                return edge;
            }

            public void setEdge(boolean edge) {
                this.edge = edge;
            }

            public int getFloorType() {
                return floorType;
            }

            public void setFloorType(int floorType) {
                this.floorType = floorType;
            }

            public int getFloorBusiness() {
                return floorBusiness;
            }

            public void setFloorBusiness(int floorBusiness) {
                this.floorBusiness = floorBusiness;
            }

            public List<BannerFloorItemListBean> getBannerFloorItemList() {
                return bannerFloorItemList;
            }

            public void setBannerFloorItemList(List<BannerFloorItemListBean> bannerFloorItemList) {
                this.bannerFloorItemList = bannerFloorItemList;
            }

            public static class BannerFloorItemListBean {
                /**
                 * to : web
                 * params : {"type":"1","url":"https://daojia.jd.com/taroh5/h5dist/#/pages/signIn-t/index?channel=appbanner"}
                 * imgUrl : https://img30.360buyimg.com/mobilecms/jfs/t1/119767/30/5801/99141/5ec1fddcEad3cf323/b0dcd10cf877ac19.png
                 * userAction : {"spm_id":"floorBanner_2|2|1||||","title":"https://daojia.jd.com/taroh5/h5dist/#/pages/signIn-t/index?channel=appbanner"}
                 */

                private String to;
                private ParamsBean params;
                private String imgUrl;
                private String userAction;

                public String getTo() {
                    return to;
                }

                public void setTo(String to) {
                    this.to = to;
                }

                public ParamsBean getParams() {
                    return params;
                }

                public void setParams(ParamsBean params) {
                    this.params = params;
                }

                public String getImgUrl() {
                    return imgUrl;
                }

                public void setImgUrl(String imgUrl) {
                    this.imgUrl = imgUrl;
                }

                public String getUserAction() {
                    return userAction;
                }

                public void setUserAction(String userAction) {
                    this.userAction = userAction;
                }

                public static class ParamsBean {
                    /**
                     * type : 1
                     * url : https://daojia.jd.com/taroh5/h5dist/#/pages/signIn-t/index?channel=appbanner
                     */

                    private String type;
                    private String url;

                    public String getType() {
                        return type;
                    }

                    public void setType(String type) {
                        this.type = type;
                    }

                    public String getUrl() {
                        return url;
                    }

                    public void setUrl(String url) {
                        this.url = url;
                    }
                }
            }
        }

        public static class ClassifyModuleVOListBean {
            /**
             * busiType : 1
             * busiName : 功能服务
             * userModuleVOList : [{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/119776/35/1870/5602/5ea6c09eE660ae986/d7aacf124613fdcc.png","name":"我的关注","to":"concern","isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|1||||\",\"title\":\"我的关注\"}","busiType":1},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/119589/12/1893/5431/5ea6c0bbE7fbe19e7/1e85f731ddbce83a.png","name":"我的评价","to":"myEvaluate","isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|2||||\",\"title\":\"我的评价\"}","busiType":1},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/111095/11/3330/5265/5ea6c0d3E7a08e774/04e4a659c3df2dec.png","name":"我的地址","to":"address","isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|3||||\",\"title\":\"我的地址\"}","busiType":1},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/113252/24/3266/5476/5ea6c0ebEd564555a/c426ede6bbcb0924.png","name":"商家会员","to":"web","params":{"url":"https://daojia.jd.com/activity/multactivity/html/vipChannel.html"},"isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|4||||\",\"title\":\"商家会员\",\"url\":\"https://daojia.jd.com/activity/multactivity/html/vipChannel.html\"}","busiType":1},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/115239/40/3898/3209/5eaa967dE4c28a170/5ad63e3dbe588bf4.png","name":"V+会员","to":"web","params":{"url":"https://daojia.jd.com/taroh5/h5dist/#/pages/vpayMember-t/home/index?channel=mybaibaoxiang"},"isRedStatus":0,"userAction":"{\"spm_id\":\"act_17|3|5||||\",\"title\":\"V+会员\",\"url\":\"https://daojia.jd.com/taroh5/h5dist/#/pages/vpayMember-t/home/index?channel=mybaibaoxiang\"}","busiType":1},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/113197/2/3245/5374/5ea6c15bEd30c2d73/281fa8d98e2e160f.png","name":"签到有惊喜","to":"web","params":{"url":"https://daojia.jd.com/taroh5/h5dist/#/pages/tabBar/signIn-t/index?channel=qiandao_baibaoxiang&trench=wode"},"isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|6||||\",\"title\":\"签到有惊喜\",\"url\":\"https://daojia.jd.com/taroh5/h5dist/#/pages/tabBar/signIn-t/index?channel=qiandao_baibaoxiang&trench=wode\"}","busiType":1},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/112542/16/3261/5236/5ea6c1a2E8747541c/cc04474fada775c8.png","name":"售后退款","to":"afterSale","isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|7||||\",\"title\":\"售后退款\"}","busiType":1},{"img":"https://img30.360buyimg.com/mobilecms/jfs/t1/115212/14/3299/3070/5ea6c1f5Ec5d8088f/b7e9ffe9b7a92bbd.png","name":"客服与帮助","to":"web","params":{"url":"https://daojia.jd.com/html/index.html?&needPin=yes#orderDetailBridge/type:3"},"isRedStatus":1,"userAction":"{\"spm_id\":\"act_17|3|9||||\",\"title\":\"客服与帮助\",\"url\":\"https://daojia.jd.com/html/index.html?&needPin=yes#orderDetailBridge/type:3\"}","busiType":1}]
             */

            private String busiType;
            private String busiName;
            private List<UserModuleVOListBean> userModuleVOList;

            public String getBusiType() {
                return busiType;
            }

            public void setBusiType(String busiType) {
                this.busiType = busiType;
            }

            public String getBusiName() {
                return busiName;
            }

            public void setBusiName(String busiName) {
                this.busiName = busiName;
            }

            public List<UserModuleVOListBean> getUserModuleVOList() {
                return userModuleVOList;
            }

            public void setUserModuleVOList(List<UserModuleVOListBean> userModuleVOList) {
                this.userModuleVOList = userModuleVOList;
            }

            public static class UserModuleVOListBean {
                /**
                 * img : https://img30.360buyimg.com/mobilecms/jfs/t1/119776/35/1870/5602/5ea6c09eE660ae986/d7aacf124613fdcc.png
                 * name : 我的关注
                 * to : concern
                 * isRedStatus : 1
                 * userAction : {"spm_id":"act_17|3|1||||","title":"我的关注"}
                 * busiType : 1
                 * params : {"url":"https://daojia.jd.com/activity/multactivity/html/vipChannel.html"}
                 */

                private String img;
                private String name;
                private String to;
                private int isRedStatus;
                private String userAction;
                private int busiType;
                private ParamsBeanX params;

                public String getImg() {
                    return img;
                }

                public void setImg(String img) {
                    this.img = img;
                }

                public String getName() {
                    return name;
                }

                public void setName(String name) {
                    this.name = name;
                }

                public String getTo() {
                    return to;
                }

                public void setTo(String to) {
                    this.to = to;
                }

                public int getIsRedStatus() {
                    return isRedStatus;
                }

                public void setIsRedStatus(int isRedStatus) {
                    this.isRedStatus = isRedStatus;
                }

                public String getUserAction() {
                    return userAction;
                }

                public void setUserAction(String userAction) {
                    this.userAction = userAction;
                }

                public int getBusiType() {
                    return busiType;
                }

                public void setBusiType(int busiType) {
                    this.busiType = busiType;
                }

                public ParamsBeanX getParams() {
                    return params;
                }

                public void setParams(ParamsBeanX params) {
                    this.params = params;
                }

                public static class ParamsBeanX {
                    /**
                     * url : https://daojia.jd.com/activity/multactivity/html/vipChannel.html
                     */

                    private String url;

                    public String getUrl() {
                        return url;
                    }

                    public void setUrl(String url) {
                        this.url = url;
                    }
                }
            }
        }
    }
}
