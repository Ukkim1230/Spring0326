package com.example.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.test.service.UserService;
import com.example.test.vo.UserVO;

import jakarta.servlet.http.HttpSession;

@Controller
public class UserController {

	@Autowired
	private UserService userService;

	@GetMapping("/users")
	public String getUsers(UserVO user, Model m) {
		List<UserVO> users = userService.getUsers(user);
		m.addAttribute("users", users);
		return "views/user/user-list";
	}

	@GetMapping("/users/{uiNum}")
	public String getUser(Model m, @PathVariable("uiNum") int uiNum) {
		UserVO user = userService.getUser(uiNum);
		m.addAttribute("user", user);
		return "views/user/user-view";
	}

	@GetMapping("/users/update/{uiNum}")
	public String getUserForUpdate(Model m, @PathVariable("uiNum") int uiNum) {
		UserVO user = userService.getUser(uiNum);
		m.addAttribute("user", user);
		return "views/user/user-update";
	}

	@PostMapping("/users")
	public String insertUser(@ModelAttribute UserVO user, Model m) {
		int result = userService.insertUser(user);
		m.addAttribute("msg", "유저 등록이 실패하였습니다.");
		m.addAttribute("url", "/views/user/user-insert");
		if (result == 1) {
			m.addAttribute("msg", "유저 등록이 성공하였습니다.");
			m.addAttribute("url", "/users");
		}
		return "views/common/msg";
	}

	@PostMapping("/users/update")
	public String updateUser(@ModelAttribute UserVO user, Model m) {
		int result = userService.updateUser(user);
		m.addAttribute("msg", "유저 수정이 실패하였습니다.");
		m.addAttribute("url", "/users/update/" + user.getUiNum());
		if (result == 1) {
			m.addAttribute("msg", "유저 수정이 성공하였습니다.");
			m.addAttribute("url", "/users/" + user.getUiNum());
		}
		return "views/common/msg";
	}

	@PostMapping("/users/delete/{uiNum}")
	public String deleteUser(Model m, @PathVariable("uiNum") int uiNum) {
		int result = userService.deleteUser(uiNum);
		m.addAttribute("msg", "유저 삭제가 실패하였습니다.");
		m.addAttribute("url", "/users/" + uiNum);
		if (result == 1) {
			m.addAttribute("msg", "유저 삭제가 성공하였습니다.");
			m.addAttribute("url", "/users");
		}
		return "views/common/msg";
	}
	@PostMapping("/users/login")
	public String login(Model m, @ModelAttribute UserVO user, HttpSession session) {
		m.addAttribute("msg", "아이디나 비번을 확인하세요");
		m.addAttribute("url", "/views/user/login");
		UserVO loginUser = userService.login(user);
		if(loginUser!=null) {
			m.addAttribute("msg", loginUser.getUiName()+"님 반갑습니다.");
			m.addAttribute("url", "/");
			session.setAttribute("user", loginUser);
		}
		return "views/common/msg";
	}
}