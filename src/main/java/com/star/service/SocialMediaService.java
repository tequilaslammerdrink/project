package com.star.service;

import com.star.entity.SocialMedia;
import java.util.List;

public interface SocialMediaService {
    List<SocialMedia> getSocialList();
    SocialMedia getById(Long id);
    void saveSocial(SocialMedia socialMedia);
    void updateSocial(SocialMedia socialMedia);
    void deleteSocial(Long id);
} 