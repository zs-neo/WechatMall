/*
 * Author github: https://github.com/zs-neo
 * Author Email: 2931622851@qq.com
 */
package com.edu.neu.foodclient.mapper;


import com.edu.neu.foodclient.entity.Client;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Options;


import java.util.List;

/**
 * @author zhousheng
 * @version 1.0
 * @since 2020/6/28 13:52
 */
@Mapper
public interface LoginMapper {
	
	/**
	 * 条件查询用户通用接口
	 *
	 * @return
	 */
	List<Client> get(String username, String password);
	
	/**
	 * 添加用户通用接口
	 *
	 * @param client
	 * @return
	 */
	@Options(useGeneratedKeys = true, keyProperty = "clientid", keyColumn = "clientid")
	@Insert("insert into client values(seq_client_id.nextval,#{username},#{password},#{wechat_id},null,	#{phone},sysdate,0,1,0)")
	int register(Client client);
	
	/**
	 * 更新用户密码
	 *
	 * @param username
	 * @param password
	 * @return
	 */
	int update(String username, String password);
	
}
