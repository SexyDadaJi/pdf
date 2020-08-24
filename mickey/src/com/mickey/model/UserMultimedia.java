package com.mickey.model;

import org.apache.pdfbox.pdmodel.PDPage;
import org.springframework.web.multipart.MultipartFile;

public class UserMultimedia {
String name;
MultipartFile userfile;
String password;
PDPage page;
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public PDPage getPage() {
	return page;
}
public void setPage(PDPage page) {
	this.page = page;
}
MultipartFile userfile1;

public MultipartFile getUserfile1() {
	return userfile1;
}
public void setUserfile1(MultipartFile userfile1) {
	this.userfile1 = userfile1;
}
MultipartFile userfiles[];
MultipartFile f[];

public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public MultipartFile getUserfile() {
	return userfile;
}
public void setUserfile(MultipartFile userfile) {
	this.userfile = userfile;
}
public MultipartFile[] getUserfiles() {
	return userfiles;
}
public void setUserfiles(MultipartFile[] userfiles) {
	this.userfiles = userfiles;
}
public MultipartFile[] getF() {
	return f;
}
public void setF(MultipartFile[] f) {
	this.f = f;
}
}
