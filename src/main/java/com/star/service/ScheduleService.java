package com.star.service;

import com.star.entity.Schedule;
import java.util.List;

public interface ScheduleService {
    List<Schedule> getScheduleList(Long artistId, String month);
    Schedule getScheduleById(Long id);
    void saveSchedule(Schedule schedule);
    void updateSchedule(Schedule schedule);
    void deleteSchedule(Long id);
} 