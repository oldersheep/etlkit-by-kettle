package com.xxx.etl.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xxx.etl.pojo.RJob;
import com.xxx.etl.pojo.RJobHop;
import com.xxx.etl.service.impl.RJobHopSrv;
import com.xxx.etl.service.impl.RJobSrv;
import com.xxx.etl.service.impl.RJobentryCopySrv;
import com.xxx.etl.service.impl.RJobentrySrv;
import com.xxx.etl.utils.JsonUtil;
import com.xxx.etl.vo.ZFlowLineVO;
import com.xxx.etl.vo.ZFlowNodeVO;

/**
 * 
 * @ClassName 类名 : TestController
 * @Description 作用 : 根据前台的框架，组合相应的JSON，展示流程图。
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年6月5日 下午3:38:22
 * @Version 版本 : V1.0
 */
@Controller
@RequestMapping("/flow")
public class JobFlowController {

	@Autowired
	private RJobSrv rJobSrv;

	@Autowired
	private RJobHopSrv rJobHopSrv;

	@Autowired
	private RJobentrySrv rJobentrySrv;
	
	@Autowired
	private RJobentryCopySrv rJobentryCopySrv;

	/**
	 * 根据前台流程图框架GooFlow来组合json，并返回到前台页面
	 * 由于查询节点的sql已经更改，这里的内容不需要做什么修改了
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月5 日 下午3:43:11
	 * @Version: V1.0
	 */
	@RequestMapping("/show/{idJob}")
	public String show(Model model, @PathVariable Integer idJob) {

		StringBuffer json = new StringBuffer();

		// 拼接tittle属性
		RJob rJob = rJobSrv.queryById(idJob);
		json.append("{\"title\":\"").append(rJob.getName());

		// 拼接nodes
		json.append("\",\"nodes\":");

		List<ZFlowNodeVO> nodeLists = rJobentrySrv.getFlowNodes(idJob);

		Map<String, ZFlowNodeVO> nodes = new HashMap<String, ZFlowNodeVO>();

		for (ZFlowNodeVO node : nodeLists) {
			nodes.put(node.getKey().toString(), node);
		}

		json.append(JsonUtil.toJSon(nodes));

		// 拼接lines
		json.append(",\"lines\":");

		// 取得当前作业下并行点与并行结束点的集合
		List<Integer> froms = rJobHopSrv.getLRFroms(idJob);
		List<Integer> tos = rJobHopSrv.getLRTos(idJob);

		// 拼接lines的关键在于从r_job_hop中查出后，得到一个list，然后遍历，进而封装到ZFlowLineVO中
		// 封装ZFlowLineVO时，主要要判断type的值，以及type取lr时m的值得计算
		RJobHop rJobHop = new RJobHop();
		rJobHop.setIdJob(idJob);

		List<RJobHop> hopLists = rJobHopSrv.queryListByWhere(rJobHop);

		Map<String, ZFlowLineVO> lines = new HashMap<String, ZFlowLineVO>();

		for (RJobHop hop : hopLists) {
			ZFlowLineVO zFlowLineVO = new ZFlowLineVO();
			// 这个看情况是不是选择不要
			// zFlowLineVO.setKey(hop.getIdJobHop().toString());
			zFlowLineVO.setFrom(hop.getIdJobentryCopyFrom().toString());
			zFlowLineVO.setTo(hop.getIdJobentryCopyTo().toString());
			zFlowLineVO.setName("");

			if (froms.contains(hop.getIdJobentryCopyFrom())) {
				zFlowLineVO.setType("lr");
				// 分散时，折点的位置为（最左侧+开始节点+块的宽度）/2，即空白中间位置
				int m = (nodes.get(zFlowLineVO.getTo()).getLeft() + nodes.get(zFlowLineVO.getFrom()).getLeft()
						+ nodes.get(zFlowLineVO.getFrom()).getWidth()) / 2;
				zFlowLineVO.setM(new Integer(m));
			} else if (tos.contains(hop.getIdJobentryCopyTo())) {
				zFlowLineVO.setType("lr");
				// 合并时，折点的位置为（最左侧+开始节点+块的宽度）/2 ，即空白中间位置
				int m = (nodes.get(zFlowLineVO.getTo()).getLeft() + nodes.get(zFlowLineVO.getFrom()).getLeft()
						+ nodes.get(zFlowLineVO.getFrom()).getWidth()) / 2;
				zFlowLineVO.setM(new Integer(m));
			} else {
				zFlowLineVO.setType("sl");
				zFlowLineVO.setM(24);
			}

			lines.put(hop.getIdJobHop().toString(), zFlowLineVO);
		}

		// "m" 转变为 "M"，不然页面展示不了线段
		json.append(JsonUtil.toJSon(lines).replaceAll("\"m\"", "\"M\""));

		json.append("}");
		
		// 流程图的宽度
		String width =getFlowWidth(idJob);

		model.addAttribute("flow", json.toString());
		model.addAttribute("width", width);

		return "job_flow";
	}
	
	/**
	 * 由于每个流程图的宽度不一致，所以需要计算一下，使前台显示时不会显得滑动条太长或者是图形展示不全
	 *   
	 * @Author: Lilg 
	 * @Date 创建时间 : 2017年6月26日 上午11:46:14 
	 * @Version: V1.0
	 */
	private String getFlowWidth(Integer idJob){
		
		Integer firstLeft = rJobentryCopySrv.getMinXByIdJob(idJob);

		Integer lastLeft = rJobentryCopySrv.getMaxXByIdJob(idJob);
		
		Integer width = firstLeft + lastLeft + 100;
		
		return width.toString();
	}

}
