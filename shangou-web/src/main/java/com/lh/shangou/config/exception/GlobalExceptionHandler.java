package com.lh.shangou.config.exception;
/**
 * creator：杜夫人
 * date: 2020/5/28
 */

import com.lh.shangou.pojo.dto.ResponseDTO;
import org.apache.shiro.authz.AuthorizationException;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

@ControllerAdvice
public class GlobalExceptionHandler {
    @ExceptionHandler(value = AuthorizationException.class)
// 捕获的授权异常
    String handUnAuthException(Exception e, Model model) {
        model.addAttribute("errorMsg", e.getMessage());
        return "unAuthPage";
    }

    @ExceptionHandler(value = IllegalArgumentException.class)// 捕获参数异常
    @ResponseBody
    ResponseDTO handIllegalArgumentException(Exception e) {
        return ResponseDTO.fail(e.getMessage());
    }

}
