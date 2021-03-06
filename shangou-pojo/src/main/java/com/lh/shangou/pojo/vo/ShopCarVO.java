package com.lh.shangou.pojo.vo;

import com.lh.shangou.pojo.entity.Merchant;
import com.lh.shangou.pojo.entity.ShopCar;
import lombok.Data;

/**
 * creator：杜夫人
 * date: 2020/6/10
 */
@Data
public class ShopCarVO extends ShopCar {
    private Merchant merchant;
    private GoodsVO goodsVO;

    private String shopName;

    public String getShopName() {
        if (merchant != null) {
            return merchant.getShopName();
        }
        return shopName;
    }

}
