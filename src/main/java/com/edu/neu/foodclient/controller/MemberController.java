package com.edu.neu.foodclient.controller;

import com.edu.neu.foodclient.entity.Client;
import com.edu.neu.foodclient.entity.Coupon;
import com.edu.neu.foodclient.entity.Member;
import com.edu.neu.foodclient.entity.RedPacket;
import com.edu.neu.foodclient.service.MemberService;
import com.edu.neu.foodclient.service.RedPacketService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/member")
public class MemberController {
	
	
	@Autowired
	private MemberService memberService;
	
	
	@RequestMapping("/getMember")
	public Object getMember(@RequestParam("clientid") int clientid) {
		Map<String, Object> map = new HashMap<String, Object>();
		Member member = memberService.getMember(clientid);
		if (member != null) {
			map.put("getMember", "success");
			map.put("member", member);
		} else {
			map.put("getMember", "fail");
		}
		return map;
	}
	
	/**
	 * 修改会员累计积分
	 *
	 * @param clientid
	 * @param accumulatescores
	 * @return
	 */
	@RequestMapping("/updateAscores")
	public Object updateAScores(@RequestParam("clientid") int clientid, @RequestParam("accumulatescores") double accumulatescores) {
		Map<String, Object> map = new HashMap<String, Object>();
		
		Member member = new Member();
		member.setClientid(clientid);
		member.setAccumulatescores(accumulatescores);
		if (memberService.updateAscores(member)) {
			map.put("updateAscores", true);
		} else {
			map.put("updateAscores", false);
		}
		return map;
	}
	
	/**
	 * 修改会员可用积分信息
	 *
	 * @param clientid
	 * @param scores
	 * @return
	 */
	@RequestMapping("/updateScores")
	public Object updateScores(@RequestParam("clientid") int clientid, @RequestParam("scores") double scores) {
		Map<String, Object> map = new HashMap<String, Object>();
		Client client = new Client();
		client.setClientid(clientid);
		client.setScores(scores);
		if (memberService.updateScores(client)) {
			map.put("updateScores", true);
		} else {
			map.put("updateScores", false);
		}
		return map;
	}
	
	@RequestMapping("/memberRegis")
	public Object memberRegis(@RequestBody Member member) {
		Map<String, Object> map = new HashMap<>();
		int status = memberService.memberRegis(member);
		if (status == 1) {
			map.put("status", true);
		} else {
			map.put("status", false);
			map.put("msg", "系统错误");
		}
		return map;
	}
}
