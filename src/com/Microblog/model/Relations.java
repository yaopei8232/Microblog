package com.Microblog.model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Relations implements Serializable {
   private Integer rid;
   private Integer r_id;
   private Integer g_id;
   private Integer rstate;
   public Relations(){}
   public Relations(Integer rid, Integer r_id, Integer g_id, Integer rstate){
	   this.rid=rid;
	   this.r_id=r_id;
	   this.g_id=g_id;
	   this.rstate=rstate;
   }
   public Relations( Integer r_id, Integer g_id, Integer rstate){	 
	   this.r_id=r_id;
	   this.g_id=g_id;
	   this.rstate=rstate;
   }
	public Integer getRid() {
		return rid;
	}
	public void setRid(Integer rid) {
		this.rid = rid;
	}
	public Integer getR_id() {
		return r_id;
	}
	public void setR_id(Integer r_id) {
		this.r_id = r_id;
	}
	public Integer getG_id() {
		return g_id;
	}
	public void setG_id(Integer g_id) {
		this.g_id = g_id;
	}
	public Integer getRstate() {
		return rstate;
	}
	public void setRstate(Integer rstate) {
		this.rstate = rstate;
	}
   
}
