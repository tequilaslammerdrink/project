package com.star.interceptor;

import com.star.utils.JwtUtils;
import com.star.utils.UserContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.HandlerInterceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Component
public class TokenInterceptor implements HandlerInterceptor {

    @Autowired
    private JwtUtils jwtUtils;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
        // 放行登录和注册请求
        if (request.getRequestURI().contains("/api/user/login") ||
            request.getRequestURI().contains("/api/user/register")) {
            return true;
        }

        String token = request.getHeader("Authorization");
        if (token == null || !jwtUtils.validateToken(token)) {
            response.setStatus(401);
            return false;
        }

        // 设置用户上下文
        UserContext.setCurrentUserId(jwtUtils.getUserIdFromToken(token));
        UserContext.setCurrentRole(jwtUtils.getRoleFromToken(token));

        return true;
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) {
        UserContext.clear();
    }
}
