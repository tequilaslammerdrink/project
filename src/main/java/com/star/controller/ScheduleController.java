package com.star.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.star.entity.Schedule;
import com.star.service.ScheduleService;
import com.star.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.bind.annotation.*;

import java.util.Date;
import java.util.List;

@RestController
@RequestMapping("/api/schedule")
public class ScheduleController {

    @Autowired
    private ScheduleService scheduleService;

    @GetMapping("/list")
    public Result<List<Schedule>> list(
            @RequestParam(required = false) Long artistId,
            @RequestParam(required = false) @DateTimeFormat(pattern = "yyyy-MM") String month) {
        return Result.success(scheduleService.getScheduleList(artistId, month));
    }

    @GetMapping("/{id}")
    public Result<Schedule> getById(@PathVariable Long id) {
        return Result.success(scheduleService.getScheduleById(id));
    }

    @PostMapping
    public Result<Void> save(@RequestBody Schedule schedule) {
        scheduleService.saveSchedule(schedule);
        return Result.success();
    }

    @PutMapping
    public Result<Void> update(@RequestBody Schedule schedule) {
        scheduleService.updateSchedule(schedule);
        return Result.success();
    }

    @DeleteMapping("/{id}")
    public Result<Void> delete(@PathVariable Long id) {
        scheduleService.deleteSchedule(id);
        return Result.success();
    }
} 