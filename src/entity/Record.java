package entity;

import java.util.Date;

public class Record {
 public int id;
 public int spend;
 public int cid;
 public Date date;
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
public int getSpend() {
	return spend;
}
public void setSpend(int spend) {
	this.spend = spend;
}
public int getCid() {
	return cid;
}
public void setCid(int cid) {
	this.cid = cid;
}
public Date getDate() {
	return date;
}
public void setDate(Date date) {
	this.date = date;
}
}
