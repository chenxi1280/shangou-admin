package com.lh.shangou.controller.pages.back.upload;

import com.alibaba.fastjson.JSON;
import com.lh.shangou.controller.BaseController;
import com.lh.shangou.pojo.dto.PageDTO;
import com.lh.shangou.pojo.dto.ResponseDTO;
import com.lh.shangou.pojo.entity.ImgCache;
import com.lh.shangou.pojo.entity.Permission;
import com.lh.shangou.pojo.query.PermissionQuery;
import com.lh.shangou.pojo.vo.RoleVO;
import com.lh.shangou.service.ImgCacheService;
import com.lh.shangou.service.PermissionService;
import org.springframework.stereotype.Controller;
import org.springframework.util.MultiValueMap;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.annotation.Resource;
import java.util.Collection;
import java.util.List;
import java.util.Map;

/**
 * creator：杜夫人
 * date: 2020/5/29
 */
@RestController
@RequestMapping("/pages/back/upload")
public class UploadController extends BaseController {

    @Resource
    ImgCacheService imgCacheService;

    //    img1,img2
//    img1
    @RequestMapping("uploadFiles")
    ResponseDTO uploadFiles(MultipartHttpServletRequest request) {
        Collection<MultipartFile> values = request.getFileMap().values();
        StringBuffer buffer = new StringBuffer();
        String uploadPath = "/upload/";
        String dir = request.getParameter("dir");

        if (!StringUtils.isEmpty(dir)) {
            if (dir.endsWith("/")) {// dir必须按照/结尾
                uploadPath += dir;
            } else {
                uploadPath += dir + "/";//没有结尾我帮你结尾
            }
        }
        for (MultipartFile f : values) {
            String s = saveFile(f, uploadPath);// 保存图片
            if (!StringUtils.isEmpty(s)) {// 保存成功，应该把这个地址放进缓存之中，然后写个定时任务，定时去删除缓存中的图片
                if(imgCacheService.addCache(s)){
                    buffer.append(s).append(",");
                }
            }
        }
        if (buffer.length() > 0) {
            buffer.delete(buffer.length() - 1, buffer.length());
        }
        return ResponseDTO.ok("上传成功", buffer.toString());
    }


}
