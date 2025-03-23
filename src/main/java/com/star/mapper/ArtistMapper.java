package com.star.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.star.entity.Artist;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;

@Mapper
public interface ArtistMapper extends BaseMapper<Artist> {
    
    @Select("SELECT COUNT(*) FROM artist WHERE id IN (SELECT DISTINCT artist_id FROM schedule WHERE start_time >= DATE_SUB(NOW(), INTERVAL 30 DAY))")
    Integer countActiveArtists();
}
