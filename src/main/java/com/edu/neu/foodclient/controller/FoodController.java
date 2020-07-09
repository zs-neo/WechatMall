package com.edu.neu.foodclient.controller;

import com.github.pagehelper.PageInfo;
import com.edu.neu.foodclient.entity.Food;
import com.edu.neu.foodclient.service.FoodService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("/food")
public class FoodController {

    @Value("${upload.path}")
    private String uploadPath;

    private String fileName;

    @Autowired
    private FoodService foodService;

    /**
     * 获取全部美食数据
     * @return 美食列表
     */
    @RequestMapping("/getAll")
    public List<Food> getAll(){
        System.out.println(1);
        return foodService.getAll();
    }
    /**
     * 根据第二类别id获取美食苏剧
     * @param stid 第二类别id
     * @return 美食列表
     */
    @RequestMapping("/getFoodBySecondType")
    public List<Food> getFoodBySecondType(@RequestParam("stid") int stid){
        return foodService.getFoodBySecondType(stid);
    }

    /**
     * 根据美食名称模糊查询
     * @param fname 输入的名称
     * @return 美食列表
     */
    @RequestMapping("/getFoodByName")
    public List<Food> getFoodByName(@RequestParam("fname") String fname){
        System.out.println(fname);
        return foodService.getFoodByName(fname);
    }

    /**
     * 美食列表分页
     * @param pageNum 第几页
     * @param pageSize 每页的大小
     * @param stid 第二类别id，即所选中的类别的id
     * @return 美食每页的列表
     */
    @RequestMapping("/getPageFood")
    public PageInfo<Food> getPageFood(@RequestParam("pageNum")int pageNum, @RequestParam("pageSize")int pageSize, @RequestParam("stid")int stid){
        System.out.println(foodService.getPageFood(pageNum,pageSize,stid));
        return foodService.getPageFood(pageNum,pageSize,stid);
    }

    /**
     * 上传图片
     * @param mf 图片
     * @return 是否上传成功
     */
    @RequestMapping("/uploadImg")
    public int getImg(@RequestParam("file") MultipartFile mf){
        System.out.println(mf.getOriginalFilename());
        String	newFilename = UUID.randomUUID().toString().replaceAll("-", "")+"_"+mf.getOriginalFilename();
        fileName=newFilename;
        File path = new File(this.uploadPath);
        if(!path.exists()) {
            path.mkdir();
        }
        try {
            mf.transferTo(new File(this.uploadPath+"/"+newFilename));
            return 1;
        } catch (IllegalStateException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (IOException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
        return 0;
    }
    @RequestMapping("/getFoodByFid")
    public Food getFoodByFid(@RequestParam("fid") int fid){
        return foodService.getFoodByFid(fid);
    }
    @RequestMapping("/getRecommendFood")
    public List<Food> getRecommendFood(){
        return foodService.getRecommendFood();
    }
}
