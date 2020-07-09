package com.edu.neu.foodclient.controller;

import com.edu.neu.foodclient.entity.FirstType;
import com.edu.neu.foodclient.entity.Food;
import com.edu.neu.foodclient.entity.FoodListVO;
import com.edu.neu.foodclient.entity.SecondType;
import com.edu.neu.foodclient.service.FoodService;
import com.edu.neu.foodclient.service.FoodTypeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/foodtype")
public class FoodTypeController {
	@Autowired
	private FoodTypeService foodTypeService;
	
	@Autowired
	private FoodService foodService;
	
	
	/**
	 * 根据第一分类id获取第二分类
	 *
	 * @param ftid 第一分类id
	 * @return 第二分类列表
	 */
	@RequestMapping("/getSecondTypeByFtid")
	public List<SecondType> getSecondTypeByFtid(@RequestParam("ftid") int ftid) {
		return foodTypeService.getSecondTypeByFtid(ftid);
	}
	
	/**
	 * 获取全部第一分类列表
	 *
	 * @return 第一分类列表
	 */
	@RequestMapping("/getFirstType")
	public List<FirstType> getFirstType() {
		return foodTypeService.getFirstType();
	}
	
	/**
	 * 获取二级分类及所有的分类下食物
	 */
	@RequestMapping("/getSecondTypedFood")
	public List<FoodListVO> getSecond() {
		//result list
		List<FoodListVO> foodListVOS = new ArrayList<>();
		List<FirstType> firstTypes = getFirstType();
		for (int i = 0; i < firstTypes.size(); i++) {
			FirstType firstType = firstTypes.get(i);
			List<Food> foodList = new ArrayList<>();
			List<SecondType> secondTypes = getSecondTypeByFtid(firstType.getFtid());
			for (int j = 0; j < secondTypes.size(); j++) {
				int secondId = secondTypes.get(j).getStid();
				List<Food> foods = foodService.getFoodBySecondType(secondId);
				foodList.addAll(foods);
			}
			FoodListVO foodListVO = new FoodListVO();
			foodListVO.setFirstType(firstType);
			foodListVO.setFoods(foodList);
			foodListVOS.add(foodListVO);
		}
		return foodListVOS;
	}
	
	/**
	 * 获取含有第二分类列表的第一分类列表
	 *
	 * @return 含有第二分类列表的第一分类列表
	 */
	@RequestMapping("/getFirstTypeWithSecondType")
	public List<FirstType> getFirstTypeWithSecondType() {
		return foodTypeService.getFirstTypeWithSecondType();
	}
	
	@RequestMapping("/getSecondTypeByStid")
	public SecondType getSecondTypeByStid(@RequestParam("stid") int stid) {
		return foodTypeService.getSecondTypeByStid(stid);
	}
	
	
}
