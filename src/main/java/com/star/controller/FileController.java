package com.star.controller;

import com.star.utils.Result;
import org.springframework.core.io.Resource;
import org.springframework.core.io.UrlResource;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

@RestController
@RequestMapping("/api/file")
public class FileController {

    private final String uploadPath = System.getProperty("user.dir") + "/uploads/";



    @PostMapping("/upload")
    public Result<String> upload(@RequestParam("file") MultipartFile file) {
        try {
            String fileName = UUID.randomUUID().toString() +
                file.getOriginalFilename().substring(file.getOriginalFilename().lastIndexOf("."));

            File uploadDir = new File(uploadPath);
            if (!uploadDir.exists()) {
                uploadDir.mkdirs();
            }

            File dest = new File(uploadPath + fileName);
            file.transferTo(dest);

            return Result.success(fileName);
        } catch (IOException e) {
            return Result.error("上传失败：" + e.getMessage());
        }
    }

    @GetMapping("/get/{fileName}")
    public ResponseEntity<Resource> getFile(@PathVariable String fileName) {
        try {
            Path filePath = Paths.get(uploadPath + fileName);
            Resource resource = new UrlResource(filePath.toUri());

            // 处理pdf场景
            if (fileName.toLowerCase().endsWith(".pdf")) {  
                return ResponseEntity.ok()
                    .contentType(MediaType.APPLICATION_PDF)
                    .body(resource);
            } else {
                return ResponseEntity.ok()
                    .contentType(MediaType.IMAGE_JPEG)
                    .body(resource);
            }
        } catch (IOException e) {
            return ResponseEntity.notFound().build();
        }
    }
}
