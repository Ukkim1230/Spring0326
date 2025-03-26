package com.example.test.mapper;

import java.util.List;

import com.example.test.vo.UserVO;

public interface UserMapper {
	public List<UserVO> selectUsers(UserVO user);
	public UserVO selectUser(int uiNum);
	public UserVO selectUserByIdAndPwd(UserVO user);
	public int insertUser(UserVO user);
	public int updateUser(UserVO user);
	public int deleteUser(int uiNum);
}
