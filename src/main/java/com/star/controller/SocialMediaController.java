package com.star.controller;

import com.star.entity.SocialMedia;
import com.star.service.SocialMediaService;
import com.star.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/social")
public class SocialMediaController {

    @Autowired
    private SocialMediaService socialMediaService;

    @GetMapping("/list")
    public Result<List<SocialMedia>> list() {
        return Result.success(socialMediaService.getSocialList());
    }

    @GetMapping("/{id}")
    public Result<SocialMedia> getById(@PathVariable Long id) {
        return Result.success(socialMediaService.getById(id));
    }

    @PostMapping
    public Result<Void> save(@RequestBody SocialMedia socialMedia) {
        socialMediaService.saveSocial(socialMedia);
        return Result.success();
    }

    @PutMapping
    public Result<Void> update(@RequestBody SocialMedia socialMedia) {
        socialMediaService.updateSocial(socialMedia);
        return Result.success();
    }

    @DeleteMapping("/{id}")
    public Result<Void> delete(@PathVariable Long id) {
        socialMediaService.deleteSocial(id);
        return Result.success();
    }
} 