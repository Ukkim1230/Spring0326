package com.example.test.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.example.test.service.BoardService;
import com.example.test.vo.BoardVO;

@Controller
public class BoardController {
	@Autowired
	private BoardService boardService;

	@GetMapping("/boards")
	public String getBoards(BoardVO board, Model m) {
		List<BoardVO> boards = boardService.selectBoards(board);
		m.addAttribute("boards", boards);
		return "/views/board/board-list";
	}

	@GetMapping("/boards/{biNum}")
	public String getBoard(Model m, @PathVariable("biNum") int biNum) {
		BoardVO board = boardService.selectBoard(biNum);
		m.addAttribute("board", board);
		return "views/board/board-view";
	}

	@GetMapping("/boards/update/{biNum}")
	public String getBoardForUpdate(Model m, @PathVariable("biNum") int biNum) {
		BoardVO board = boardService.selectBoard(biNum);
		m.addAttribute("board", board);
		return "/views/board/board-update";
	}

	@PostMapping("/boards/insert")
	public String insertBoard(@ModelAttribute BoardVO board, Model m) {
		if (boardService.insertBoard(board) == 1) {
			m.addAttribute("msg", "게시판 등록에 성공하였습니다.");
			m.addAttribute("url", "/boards");
		}
		return "views/common/msg";
	}

	@PostMapping("/boards/update")
	public String updateBoard(@ModelAttribute BoardVO board, Model m) {
		int result = boardService.updateBoard(board);
		m.addAttribute("msg", "게시판 수정을 실패하였습니다.");
		m.addAttribute("url", "/boards/update" + board.getBiNum());
		if (result == 1) {
			m.addAttribute("msg", "게시판 수정을 성공하였습니다.");
			m.addAttribute("url", "/boards/" + board.getBiNum());
		}
		return "views/common/msg";
	}
	
	@PostMapping("/boards/delete/{biNum}")
	public String deleteBoard(Model m, @PathVariable("biNum") int biNum) {
		int result = boardService.deleteBoard(biNum);
		m.addAttribute("msg", "게시판 삭제를 실패하였습니다.");
		m.addAttribute("url", "/boards/" + biNum);
		if (result == 1) {
			m.addAttribute("msg", "게시판 삭제를 성공하였습니다.");
			m.addAttribute("url", "/boards");
		}
		return "views/common/msg";
	}
}