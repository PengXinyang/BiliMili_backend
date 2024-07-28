package com.buaa13.bilimili.entity;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.fasterxml.jackson.annotation.JsonFormat;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.util.Date;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class User {
    @TableId(type = IdType.AUTO)
    private int uid;//用户id
    private String account;//账户
    private String password;//密码
    private String name;//用户名
    private String description;//个性签名
    private String head;//头像链接
    private String backend;//背景图片链接
    private int gender;//性别，女性0，男性1，无性别2，默认为2
    private int experience;//经验
    private int threshold;//经验阈值
    private int level;//等级
    private int state;//用户状态,0表示正常，1表示已删除
    private int role;//角色权限，0表示普通用户，1表示管理员
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone = "Asia/Beijing")
    private Date createDate;
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm", timezone = "Asia/Beijing")
    private Date deleteDate;
    private int loginState;//登录状态，0表示未登录，1表示已登录
}
