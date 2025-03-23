package com.star.controller;

import com.star.entity.Partner;
import com.star.service.PartnerService;
import com.star.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/partner")
public class PartnerController {

    @Autowired
    private PartnerService partnerService;

    @GetMapping("/list")
    public Result<List<Partner>> list(
            @RequestParam(required = false) String keyword,
            @RequestParam(required = false) Integer partnerType) {
        return Result.success(partnerService.getPartnerList(keyword, partnerType));
    }

    @GetMapping("/{id}")
    public Result<Partner> getById(@PathVariable Long id) {
        return Result.success(partnerService.getById(id));
    }

    @PostMapping
    public Result<Void> save(@RequestBody Partner partner) {
        partnerService.savePartner(partner);
        return Result.success();
    }

    @PutMapping
    public Result<Void> update(@RequestBody Partner partner) {
        partnerService.updatePartner(partner);
        return Result.success();
    }

    @DeleteMapping("/{id}")
    public Result<Void> delete(@PathVariable Long id) {
        partnerService.deletePartner(id);
        return Result.success();
    }
} 