package com.example.test.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.test.mapper.UserMapper;
import com.example.test.vo.UserVO;
@Service
public class UserService {
	@Autowired
	private UserMapper userMapper;
	
	public List<UserVO> getUsers(UserVO user){
		return userMapper.selectUsers(user);
	}
	public UserVO getUser(int uiNum) {
		return userMapper.selectUser(uiNum);
	}
	public UserVO login(UserVO user) {
		return userMapper.selectUserByIdAndPwd(user);
	}
	public int insertUser(UserVO user) {
		return userMapper.insertUser(user);
	}
	public int updateUser(UserVO user) {
		return userMapper.updateUser(user);
	}
	public int deleteUser(int uiNum) {
		return userMapper.deleteUser(uiNum);
	}
}
