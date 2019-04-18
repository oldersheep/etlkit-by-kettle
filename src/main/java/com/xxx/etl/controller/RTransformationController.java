package com.xxx.etl.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xxx.etl.pojo.RTransformation;
import com.xxx.etl.service.impl.RTransformationSrv;

/** 
  * 可以不要
  * @ClassName   类名 : RTransformationController
  * @Description 作用 : 如果决定画kettle的转换在kettle自己的工具的话，这个controller只需要list一下就行
  * @Author  作者 : Lilg
  * @Date 创建时间 : 2017年5月18日 下午3:20:19 
  * @Version 版本 : V1.0  
  */
@RequestMapping("/rtrans")
@Controller
public class RTransformationController {
	
	@Autowired
	private RTransformationSrv rTransformationSrv;
	
	@RequestMapping("/list")
	public String list(Model model){
		
		List<RTransformation> lists = rTransformationSrv.queryAll();
		model.addAttribute("lists", lists);
		
		for(RTransformation rTransformation : lists){
			System.out.println(rTransformation);
		}
		
		return null;
		
	}
}
