package com.mickey.controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.mickey.model.MyUser;

@RestController
public class AoiController {
	@RequestMapping("/apiget")
	public String api1()
{
	MyUser u=new MyUser();
	u.setName("kom");
	return "rewa";
}

}
