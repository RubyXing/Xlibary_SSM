package com.xing.pojo;

import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;

@Data
@Accessors(chain = true)
public class Borrowlist {

  private long blid;
  private Date bldate;


}
