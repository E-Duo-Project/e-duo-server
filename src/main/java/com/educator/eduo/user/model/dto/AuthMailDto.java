package com.educator.eduo.user.model.dto;

import lombok.Builder;
import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class AuthMailDto {

    private final String from;
    private final String to;
    private final String subject;
    private String content;

    @Builder
    public AuthMailDto(String from, String to, String subject) {
        this.from = from;
        this.to = to;
        this.subject = subject;
    }

    public AuthMailDto setContentForAuthCode(String emailAuthCode) {
        this.content = new StringBuilder()
                .append("<div style='margin:100px;'>")
                .append("<div align='center' style='border:1px solid black; font-family:verdana';>")
                .append("<h3 style='color:blue;'>이메일 인증 코드입니다.</h3>")
                .append("<div style='font-size:130%'>")
                .append("CODE : <strong>").append(emailAuthCode).append("</strong><div><br/> ")
                .append("</div>")
                .toString();

        return this;
    }

    public AuthMailDto setContentForPassword(String tempPassword) {
        this.content = new StringBuilder()
                .append("<div style='margin:100px;'>")
                .append("<div align='center' style='border:1px solid black; font-family:verdana';>")
                .append("<h3 style='color:blue;'>임시 비밀번호입니다.</h3>")
                .append("<div style='font-size:130%'>")
                .append("PASSWORD : <strong>").append(tempPassword).append("</strong><div><br/> ")
                .append("</div>")
                .toString();

        return this;
    }

}
