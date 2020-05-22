package com.xing.pojo;

import lombok.Data;
import lombok.experimental.Accessors;

@Data
@Accessors(chain = true)
public class User {

  private long uid;
  private String uaccount;
  private String uname;
  private String upwd;
  private long uauthorty;



}
