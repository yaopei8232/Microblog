package com.Microblog.model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Permissions implements Serializable {
   private Integer pid;
   private String pname;
   private String pcontent;
   private String premarks;
   public Permissions(){}
   public Permissions(Integer pid,String pname,String pcontent,String premarks){
	   this.pid=pid;
	   this.pname=pname;
	   this.pcontent=pcontent;
	   this.premarks=premarks;
   }
   public Permissions(String pname,String pcontent,String premarks){
	   this.pname=pname;
	   this.pcontent=pcontent;
	   this.premarks=premarks;
   }
	public Integer getPid() {
		return pid;
	}
	public void setPid(Integer pid) {
		this.pid = pid;
	}
	public String getPname() {
		return pname;
	}
	public void setPname(String pname) {
		this.pname = pname;
	}
	public String getPcontent() {
		return pcontent;
	}
	public void setPcontent(String pcontent) {
		this.pcontent = pcontent;
	}
	public String getPremarks() {
		return premarks;
	}
	public void setPremarks(String premarks) {
		this.premarks = premarks;
	}
}
