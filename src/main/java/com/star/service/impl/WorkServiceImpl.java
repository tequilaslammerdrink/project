package com.star.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.star.entity.Work;
import com.star.mapper.WorkMapper;
import com.star.service.WorkService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class WorkServiceImpl implements WorkService {

    @Autowired
    private WorkMapper workMapper;

    @Override
    public Page<Work> getWorkList(Integer pageNum, Integer pageSize, Long artistId) {
        Page<Work> page = new Page<>(pageNum, pageSize);
        LambdaQueryWrapper<Work> wrapper = new LambdaQueryWrapper<>();
        if (artistId != null) {
            wrapper.eq(Work::getArtistId, artistId);
        }
        wrapper.orderByDesc(Work::getReleaseDate);
        return workMapper.selectPage(page, wrapper);
    }

    @Override
    public Work getWorkById(Long id) {
        return workMapper.selectById(id);
    }

    @Override
    public void saveWork(Work work) {
        workMapper.insert(work);
    }

    @Override
    public void updateWork(Work work) {
        workMapper.updateById(work);
    }

    @Override
    public void deleteWork(Long id) {
        workMapper.deleteById(id);
    }
} 