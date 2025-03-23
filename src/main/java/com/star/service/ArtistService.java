package com.star.service;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.star.entity.Artist;

public interface ArtistService {
    Page<Artist> getArtistList(Integer pageNum, Integer pageSize, String keyword);
    Artist getArtistById(Long id);
    void saveArtist(Artist artist);
    void updateArtist(Artist artist);
    void deleteArtist(Long id);
}
