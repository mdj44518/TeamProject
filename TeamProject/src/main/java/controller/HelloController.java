package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.BoardDAO;
import model.BoardDTO;

@Controller
@RequestMapping({"/hello/*", "/hello"})
public class HelloController {
	@Autowired
	private BoardDAO dao;
	//예제
	@GetMapping("")
	public String hello(Model model,
			@RequestParam(value = "name", required = false) String name) {
		model.addAttribute("greeting", "안녕하세요, " + name);
		return "contents";
	}
	
	@PostMapping(value = "/board-insert")
	public String boardInsert(BoardDTO dto,Model model) throws Exception {
		dao.insert(dto);
		//create  DB 연동 후 뷰페이지로 넘기기
		return "?????";
	}
	
	@GetMapping(value = "/board-read")
	public String boardRead(Model model,@RequestParam("boardId")int boardId) throws Exception {
		dao.read(boardId);
		//read  DB 연동 후 뷰페이지로 넘기기
		return "?????";
	}
	
	@GetMapping(value = "/board-update")
	public String boardUpdate(BoardDTO dto, Model model) throws Exception {
		dao.update(dto);
		return "?????";
	}
	
	@GetMapping(value = "/board-delete")
	public String boarDelete(@RequestParam("boardId")int boardId, Model model) throws Exception {
		dao.delete(boardId);
		return "?????";
	}
}
