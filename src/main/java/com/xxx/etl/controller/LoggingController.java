package com.xxx.etl.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.xxx.etl.service.impl.MScheduleResultSrv;
import com.xxx.etl.vo.ZTaskLogDetailVO;

/**
 * @ClassName 类名 : LoggingController
 * @Description 作用 : 日志统计的
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年6月26日 下午5:00:21
 * @Version 版本 : V1.0
 */
@Controller
@RequestMapping("/logging")
public class LoggingController {

	@Autowired
	private MScheduleResultSrv mScheduleResultSrv;

	/**
	 * 日志的统计页面，展示任务的执行结果，以及每一个转换的操作条数，并将正确错误的数目展示到进度条
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月29日 上午11:30:16
	 * @Version: V1.0
	 */
	@RequestMapping("/list")
	public String list(Model model, Integer pageNum, String startTime, String endTime, String taskName) {

		if (pageNum == null)
			pageNum = 1;

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		if (StringUtils.isEmpty(startTime))
			startTime = sdf.format(new Date()) + " 00:00:00";
		if (StringUtils.isEmpty(endTime))
			endTime = sdf.format(new Date(new Date().getTime() + 24 * 60 * 60 * 1000)) + " 00:00:00";

		Integer pageSize = 6;
		PageHelper.startPage(pageNum, pageSize);

		List<ZTaskLogDetailVO> results = mScheduleResultSrv.getTaskLog(startTime, endTime, taskName);

		PageInfo<ZTaskLogDetailVO> pageInfo = new PageInfo<ZTaskLogDetailVO>(results);

		Integer total = mScheduleResultSrv.getLogTotalCount(startTime, endTime, taskName);
		Integer error = mScheduleResultSrv.getErrorLogCount(startTime, endTime, taskName);

		model.addAttribute("pageInfo", pageInfo);
		model.addAttribute("startTime", startTime);
		model.addAttribute("endTime", endTime);
		model.addAttribute("taskName", taskName);

		model.addAttribute("total", total);
		model.addAttribute("error", error);

		return "log_list";
	}

}
