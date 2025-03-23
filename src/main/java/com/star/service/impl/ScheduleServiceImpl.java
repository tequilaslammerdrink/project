package com.star.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.star.entity.Schedule;
import com.star.mapper.ScheduleMapper;
import com.star.service.ScheduleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

@Service
public class ScheduleServiceImpl implements ScheduleService {

    @Autowired
    private ScheduleMapper scheduleMapper;

    @Override
    public List<Schedule> getScheduleList(Long artistId, String month) {
        LambdaQueryWrapper<Schedule> wrapper = new LambdaQueryWrapper<>();
        
        if (artistId != null) {
            wrapper.eq(Schedule::getArtistId, artistId);
        }
        
        if (month != null) {
            try {
                SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
                Date date = sdf.parse(month);
                Calendar calendar = Calendar.getInstance();
                calendar.setTime(date);
                
                // 设置月初
                calendar.set(Calendar.DAY_OF_MONTH, 1);
                calendar.set(Calendar.HOUR_OF_DAY, 0);
                calendar.set(Calendar.MINUTE, 0);
                calendar.set(Calendar.SECOND, 0);
                Date startDate = calendar.getTime();
                
                // 设置月末
                calendar.add(Calendar.MONTH, 1);
                calendar.add(Calendar.SECOND, -1);
                Date endDate = calendar.getTime();
                
                wrapper.ge(Schedule::getStartTime, startDate)
                      .le(Schedule::getStartTime, endDate);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        
        wrapper.orderByAsc(Schedule::getStartTime);
        return scheduleMapper.selectList(wrapper);
    }

    @Override
    public Schedule getScheduleById(Long id) {
        return scheduleMapper.selectById(id);
    }

    @Override
    public void saveSchedule(Schedule schedule) {
        schedule.setCreateTime(new Date());
        schedule.setUpdateTime(new Date());
        scheduleMapper.insert(schedule);
    }

    @Override
    public void updateSchedule(Schedule schedule) {
        schedule.setUpdateTime(new Date());
        scheduleMapper.updateById(schedule);
    }

    @Override
    public void deleteSchedule(Long id) {
        scheduleMapper.deleteById(id);
    }
} 