package com.star.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.star.entity.Contract;
import com.star.service.ContractService;
import com.star.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/contract")
public class ContractController {

    @Autowired
    private ContractService contractService;

    @GetMapping("/list")
    public Result<Page<Contract>> list(
            @RequestParam(defaultValue = "1") Integer pageNum,
            @RequestParam(defaultValue = "10") Integer pageSize,
            @RequestParam(required = false) Long artistId) {
        return Result.success(contractService.getContractList(pageNum, pageSize, artistId));
    }

    @GetMapping("/{id}")
    public Result<Contract> getById(@PathVariable Long id) {
        return Result.success(contractService.getContractById(id));
    }

    @PostMapping
    public Result<Void> save(@RequestBody Contract contract) {
        contractService.saveContract(contract);
        return Result.success();
    }

    @PutMapping
    public Result<Void> update(@RequestBody Contract contract) {
        contractService.updateContract(contract);
        return Result.success();
    }

    @DeleteMapping("/{id}")
    public Result<Void> delete(@PathVariable Long id) {
        contractService.deleteContract(id);
        return Result.success();
    }
} 