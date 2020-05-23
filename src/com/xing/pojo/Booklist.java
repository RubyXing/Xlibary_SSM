package com.xing.pojo;


import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;

@Data
@Accessors(chain = true)
public class Booklist {

  private long bid;
  //书名
  private String bname;
  //作者
  private String bauthor;
  //  价格
  private double bprice;
  //  出版时间
  private Date bdate;
  //  出版社
  private String bpress;
  //  基本描述
  private String bdescription;
  //  藏书数量
  private long bkeepnum;
  //  外借数量
  private long boutnum;
  //  遗失数量
  private long blostnum;


}
