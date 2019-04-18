package com.xxx.etl.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @ClassName 类名 : MainController
 * @Description 作用 : 页面跳转
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年5月5日 下午5:29:39
 * @Version 版本 : V1.0
 */
@Controller
public class MainController {

	@RequestMapping("{pageName}")
	public String goPage(@PathVariable String pageName) {
		return pageName;
	}

}
