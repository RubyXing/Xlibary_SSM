package com.xing.pojo;

import lombok.Data;
import lombok.experimental.Accessors;
import org.hibernate.validator.constraints.NotBlank;

@Data
@Accessors(chain = true)
public class User {

  private long uid;
//  账号
private String uaccount;
    //  用户名
    private String uname;
    //  密码
    private String upwd;
    //  权限
    private long uauthorty;



}
