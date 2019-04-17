package com.niit.erp.model;



import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name ="leave")
public class Leave {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "lid")
	private int lid;
	
	@Column(name = "leavetitle")
	private String leavetitle;
	
	@Column(name = "startdate")
	private Date startdate;
	
	@Column(name = "enddate")
	private Date enddate;
	
	
	@Column(name = "eid")
	private int eid;


public Leave() {
		
	}


public int getLid() {
	return lid;
}


public void setLid(int lid) {
	this.lid = lid;
}


public String getLeavetitle() {
	return leavetitle;
}


public void setLeavetitle(String leavetitle) {
	this.leavetitle = leavetitle;
}


public Date getStartdate() {
	return startdate;
}


public void setStartdate(Date startdate) {
	this.startdate = startdate;
}


public Date getEnddate() {
	return enddate;
}


public void setEnddate(Date enddate) {
	this.enddate = enddate;
}


public int getEid() {
	return eid;
}


public void setEid(int eid) {
	this.eid = eid;
}


@Override
public String toString() {
	return "Leave [lid=" + lid + ", leavetitle=" + leavetitle + ", startdate=" + startdate + ", enddate=" + enddate
			+ ", eid=" + eid + "]";
}

	

}
