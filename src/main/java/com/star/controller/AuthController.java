package com.star.controller;

import com.star.entity.User;
import com.star.service.UserService;
import com.star.utils.JwtUtils;
import com.star.utils.Result;
import com.star.vo.LoginVO;
import com.star.vo.RegisterVO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping("/api/auth")
public class AuthController {

    @Autowired
    private UserService userService;

    @Autowired
    private JwtUtils jwtUtils;

    @PostMapping("/login")
    public Result<Map<String, String>> login(@RequestBody LoginVO loginVO) {
        User user = userService.login(loginVO.getUsername(), loginVO.getPassword());
        String token = jwtUtils.generateToken(user);
        Map<String, String> map = new HashMap<>();
        map.put("token", token);
        return Result.success(map);
    }

    @PostMapping("/register")
    public Result<Void> register(@RequestBody RegisterVO registerVO) {
        userService.register(registerVO.getUsername(), registerVO.getPassword());
        return Result.success();
    }
}
