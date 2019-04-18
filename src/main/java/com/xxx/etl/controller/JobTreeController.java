package com.xxx.etl.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.xxx.etl.pojo.RDirectory;
import com.xxx.etl.pojo.RJob;
import com.xxx.etl.service.impl.RDirectorySrv;
import com.xxx.etl.service.impl.RJobSrv;
import com.xxx.etl.utils.JsonUtil;
import com.xxx.etl.vo.ZLayTreeNodeVO;
import com.xxx.etl.vo.ZTreeNodeVO;

/**
 * @ClassName 类名 : JobTreeController
 * @Description 作用 : 作业树的展示，提供了两种方式，zTree和LayuiTree，只针对当前数据库模式下的拼接node
 *              build对应LayUI的访问方式，zinit对应zTree的访问方式
 * @Author 作者 : Lilg
 * @Date 创建时间 : 2017年6月9日 上午10:07:43
 * @Version 版本 : V1.0
 */
@Controller
@RequestMapping("/tree")
public class JobTreeController {

	@Autowired
	private RJobSrv rJobSrv;

	@Autowired
	private RDirectorySrv rDirectorySrv;

	/**
	 * 将数据库中存放的所有作业按照目录路径构造成树，展示到前台 LayUI Tree
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月9日 下午4:32:13
	 * @Version: V1.0
	 */
	@RequestMapping("/build")
	public String build(Model model,Integer taskId) {

		StringBuffer json = new StringBuffer();

		// 根节点
		ZLayTreeNodeVO rootNode = new ZLayTreeNodeVO();
		rootNode.setId(0);
		rootNode.setName("/");
		rootNode.setSpread(true);
		rootNode.setHref("");

		List<ZLayTreeNodeVO> lists = recursiveTree(rootNode);

		rootNode.setChildren(lists);

		json.append("[").append(JsonUtil.toJSon(rootNode)).append("]");

		model.addAttribute("json", json.toString());
		model.addAttribute("taskId", taskId);

		return "job_tree_layui";
	}

	/**
	 * 根据一个构造的LayUITree的对象，在数据库中依次遍历，返回此tree下面的所有子tree与节点
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月9日 下午4:17:42
	 * @Version: V1.0
	 */
	public List<ZLayTreeNodeVO> recursiveTree(ZLayTreeNodeVO tree) {

		List<ZLayTreeNodeVO> lists = new ArrayList<ZLayTreeNodeVO>();

		// 下级文件夹
		RDirectory rDirectory = new RDirectory();
		rDirectory.setIdDirectoryParent(tree.getId());

		List<RDirectory> dirs = rDirectorySrv.queryListByWhere(rDirectory);

		// 如果不为空，则代表需要继续找下级目录
		if (dirs != null && dirs.size() > 0) {
			for (RDirectory dir : dirs) {
				ZLayTreeNodeVO ordinaryNode = new ZLayTreeNodeVO();
				ordinaryNode.setId(dir.getIdDirectory());
				ordinaryNode.setName(dir.getDirectoryName());
				ordinaryNode.setHref("");
				ordinaryNode.setSpread(true);
				// 轮循此文件夹
				ordinaryNode.setChildren(recursiveTree(ordinaryNode));
				lists.add(ordinaryNode);
			}
		}

		// 作业
		List<RJob> jobs = rJobSrv.queryJobByIdDirectory(tree.getId());
		if (jobs != null && jobs.size() > 0) {

			// 添加作业节点，所有的作业都是叶子节点，所以href不为空
			for (RJob job : jobs) {
				ZLayTreeNodeVO leafNode = new ZLayTreeNodeVO();
				leafNode.setId(job.getIdJob());
				leafNode.setName(job.getName());
				leafNode.setHref("");
				leafNode.setSpread(false);
				leafNode.setChildren(null);

				lists.add(leafNode);
			}
		}

		return lists;

	}

	/**
	 * 根据ZTree的node规格来拼接json，返回前台，展示树的效果 zTree的node设计与数据库存放的数据比较贴合，无需特殊的处理
	 * 只有在id和pId这块需要避免重合造成目录混乱，加上了一个标识
	 * 
	 * @Author: Lilg
	 * @Date 创建时间 : 2017年6月12日 下午1:09:59
	 * @Version: V1.0
	 */
	@RequestMapping("/zinit")
	public String zinit(Model model) {

		List<ZTreeNodeVO> zNodes = new ArrayList<ZTreeNodeVO>();

		// 总体根目录，这个总是存在的
		ZTreeNodeVO rootNodes = new ZTreeNodeVO();
		rootNodes.setId(0 + "dir");
		rootNodes.setpId(0 + "dir");
		rootNodes.setName("/");
//		rootNodes.setIcon("src/zTree/css/zTreeStyle/img/diy/home.png");
		rootNodes.setOpen(true);
		rootNodes.setIsParent(true);
		zNodes.add(rootNodes);

		// 目录层次
		List<RDirectory> dirs = rDirectorySrv.queryAll();
		if (dirs != null && dirs.size() > 0) {
			for (RDirectory dir : dirs) {
				ZTreeNodeVO zNode = new ZTreeNodeVO();
				zNode.setId(dir.getIdDirectory() + "dir");
				zNode.setpId(dir.getIdDirectoryParent() + "dir");
				zNode.setName(dir.getDirectoryName());
//				zNode.setIcon("src/zTree/css/zTreeStyle/img/diy/7.png");
				zNode.setOpen(true);
				zNode.setIsParent(true);

				zNodes.add(zNode);
			}
		}

		// 作业添加
		List<RJob> jobs = rJobSrv.queryAll();
		if (jobs != null && jobs.size() > 0) {
			for (RJob job : jobs) {
				ZTreeNodeVO zNode = new ZTreeNodeVO();
				zNode.setId(job.getIdJob() + "job");
				zNode.setpId(job.getIdDirectory() + "dir");
				zNode.setName(job.getName());
//				zNode.setIcon("src/zTree/css/zTreeStyle/img/diy/8.png");
				zNode.setOpen(false);
				zNode.setIsParent(false);
				zNode.setUrl("flow/show/" + job.getIdJob());
				zNode.setTarget("frame_right");

				zNodes.add(zNode);
			}

		}

		model.addAttribute("json", JsonUtil.toJSon(zNodes));

		return "job_tree_ztree";
	}

}
