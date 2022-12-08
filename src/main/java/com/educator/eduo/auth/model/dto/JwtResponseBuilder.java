package com.educator.eduo.auth.model.dto;

import com.educator.eduo.auth.model.entity.Token;
import java.util.List;

public class JwtResponseBuilder {

    private String accessToken;
    private String refreshToken;
    private String userId;
    private String name;
    private List<String> roles;

    public JwtResponseBuilder() {
    }

    public JwtResponseBuilder token(Token token) {
        this.accessToken = token.getAccessToken();
        this.refreshToken = token.getRefreshToken();
        return this;
    }

    public JwtResponseBuilder userId(String userId) {
        this.userId = userId;
        return this;
    }

    public JwtResponseBuilder name(String name) {
        this.name = name;
        return this;
    }

    public JwtResponseBuilder roles(List<String> roles) {
        this.roles = roles;
        return this;
    }

    public JwtResponse build() {
        return new JwtResponse(this.accessToken, this.refreshToken, this.userId, this.name, this.roles);
    }

}
