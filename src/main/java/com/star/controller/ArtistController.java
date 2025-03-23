package com.star.controller;

import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.star.entity.Artist;
import com.star.service.ArtistService;
import com.star.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/artist")
public class ArtistController {

    @Autowired
    private ArtistService artistService;

    @GetMapping("/list")
    public Result<Page<Artist>> list(
            @RequestParam(defaultValue = "1") Integer pageNum,
            @RequestParam(defaultValue = "10") Integer pageSize,
            @RequestParam(required = false) String keyword) {
        return Result.success(artistService.getArtistList(pageNum, pageSize, keyword));
    }

    @GetMapping("/{id}")
    public Result<Artist> getById(@PathVariable Long id) {
        return Result.success(artistService.getArtistById(id));
    }

    @PostMapping
    public Result<Void> save(@RequestBody Artist artist) {
        artistService.saveArtist(artist);
        return Result.success();
    }

    @PutMapping
    public Result<Void> update(@RequestBody Artist artist) {
        artistService.updateArtist(artist);
        return Result.success();
    }

    @DeleteMapping("/{id}")
    public Result<Void> delete(@PathVariable Long id) {
        artistService.deleteArtist(id);
        return Result.success();
    }
}
