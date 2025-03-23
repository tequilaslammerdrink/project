package com.star.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.star.entity.SocialMedia;
import com.star.mapper.SocialMediaMapper;
import com.star.service.SocialMediaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

@Service
public class SocialMediaServiceImpl implements SocialMediaService {

    @Autowired
    private SocialMediaMapper socialMediaMapper;

    @Override
    public List<SocialMedia> getSocialList() {
        LambdaQueryWrapper<SocialMedia> wrapper = new LambdaQueryWrapper<>();
        wrapper.orderByDesc(SocialMedia::getFollowersCount);
        return socialMediaMapper.selectList(wrapper);
    }

    @Override
    public SocialMedia getById(Long id) {
        return socialMediaMapper.selectById(id);
    }

    @Override
    public void saveSocial(SocialMedia socialMedia) {
        socialMedia.setCreateTime(new Date());
        socialMedia.setUpdateTime(new Date());
        socialMediaMapper.insert(socialMedia);
    }

    @Override
    public void updateSocial(SocialMedia socialMedia) {
        socialMedia.setUpdateTime(new Date());
        socialMediaMapper.updateById(socialMedia);
    }

    @Override
    public void deleteSocial(Long id) {
        socialMediaMapper.deleteById(id);
    }
} 