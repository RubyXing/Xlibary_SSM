package com.xing.pojo;


import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;

@Data
@Accessors(chain = true)
public class Booklist {

  private long bid;
  private String bname;
  private String bauthor;
  private double bprice;
  private Date bdate;
  private String bpress;
  private String bdescription;
  private long bkeepnum;
  private long boutnum;


}
