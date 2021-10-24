package com.lxy.service;

import com.aliyun.oss.OSS;
import com.aliyun.oss.OSSClientBuilder;

import com.lxy.utils.ConstantPropertiesUtil;
import org.joda.time.DateTime;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import java.io.InputStream;
import java.util.UUID;

@Service
public class FileServiceImpl implements FileService {
    @Override
    public String upload(MultipartFile file) {

        String endPoint = "oss-cn-shanghai.aliyuncs.com";
        String accessKeyId = "LTAI5tDPfkc57yGkRucphjQc";
        String accessKeySecret = "a6uFIEdAFa5Igs4Y0dRWWvFKWpmyVM";
        String bucketName = "sms-lxy";
        OSS ossClient = null;


        try {
            // 创建OSSClient实例。
            ossClient = new OSSClientBuilder().build(endPoint, accessKeyId, accessKeySecret);

            String filename = file.getOriginalFilename();
            InputStream inputStream = file.getInputStream();

            //分区管理
            UUID uuid = UUID.randomUUID();
            filename = uuid+filename;

            String filePath = new DateTime().toString("yyyy/MM/dd");
            filename = filePath +"/"+ filename;
            String url ="https://"+bucketName+"."+endPoint+"/"+filename;

            ossClient.putObject(bucketName, filename, inputStream);
            // 关闭OSSClient。
            ossClient.shutdown();

            return url;
        } catch (Exception e) {
            e.printStackTrace();
            return null;
        }


    }
}
