package com.lh.shangou.pojo.vo;

import com.lh.shangou.pojo.entity.Role;
import lombok.Data;

import java.util.List;

/**
 * creator：杜夫人
 * date: 2020/5/28
 */
@Data
public class RoleVO extends Role {

    List<PermissionVO> permissionVOS;
}
