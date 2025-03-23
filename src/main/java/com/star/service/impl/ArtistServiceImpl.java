package com.star.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.star.entity.Artist;
import com.star.mapper.ArtistMapper;
import com.star.service.ArtistService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

@Service
public class ArtistServiceImpl implements ArtistService {

    @Autowired
    private ArtistMapper artistMapper;

    @Override
    public Page<Artist> getArtistList(Integer pageNum, Integer pageSize, String keyword) {
        Page<Artist> page = new Page<>(pageNum, pageSize);
        LambdaQueryWrapper<Artist> wrapper = new LambdaQueryWrapper<>();
        if (StringUtils.hasText(keyword)) {
            wrapper.like(Artist::getName, keyword)
                  .or()
                  .like(Artist::getStageName, keyword);
        }
        wrapper.orderByDesc(Artist::getCreateTime);
        return artistMapper.selectPage(page, wrapper);
    }

    @Override
    public Artist getArtistById(Long id) {
        return artistMapper.selectById(id);
    }

    @Override
    public void saveArtist(Artist artist) {
        artistMapper.insert(artist);
    }

    @Override
    public void updateArtist(Artist artist) {
        artistMapper.updateById(artist);
    }

    @Override
    public void deleteArtist(Long id) {
        artistMapper.deleteById(id);
    }
}
