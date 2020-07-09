package com.edu.neu.foodclient.service;

import com.github.pagehelper.PageInfo;
import com.edu.neu.foodclient.entity.Food;


import java.util.List;

public interface FoodService {

    List<Food> getAll();
    List<Food> getFoodBySecondType(int stid);
    List<Food> getFoodByName(String fname);
    PageInfo<Food> getPageFood(int pageNum, int pageSize, int stid);
    Food getFoodByFid(int fid);
    List<Food> getRecommendFood();
}
