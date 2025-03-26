package com.example.test.mapper;

import java.util.List;

import com.example.test.vo.BoardVO;

public interface BoardMapper {
	
	public List<BoardVO> selectBoards(BoardVO board);
	public BoardVO selectBoard(int biNum);
	public int insertBoard(BoardVO board);
	public int updateBoard(BoardVO board);
	public int deleteBoard(int biNum);

}
