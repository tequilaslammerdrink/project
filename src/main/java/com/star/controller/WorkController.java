package com.star.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.star.entity.Work;
import com.star.service.WorkService;
import com.star.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/work")
public class WorkController {

    @Autowired
    private WorkService workService;

    @GetMapping("/list")
    public Result<Page<Work>> list(
            @RequestParam(defaultValue = "1") Integer pageNum,
            @RequestParam(defaultValue = "10") Integer pageSize,
            @RequestParam(required = false) Long artistId) {
        return Result.success(workService.getWorkList(pageNum, pageSize, artistId));
    }

    @GetMapping("/{id}")
    public Result<Work> getById(@PathVariable Long id) {
        return Result.success(workService.getWorkById(id));
    }

    @PostMapping
    public Result<Void> save(@RequestBody Work work) {
        workService.saveWork(work);
        return Result.success();
    }

    @PutMapping
    public Result<Void> update(@RequestBody Work work) {
        workService.updateWork(work);
        return Result.success();
    }

    @DeleteMapping("/{id}")
    public Result<Void> delete(@PathVariable Long id) {
        workService.deleteWork(id);
        return Result.success();
    }
} 