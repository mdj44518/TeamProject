package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import dao.BoardDAO;
import model.BoardDTO;
import model.Criteria;
import model.PageMaker;
import model.ReplyDTO;

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
	@GetMapping(value = "/board-insert")
	public String boardInsert() throws Exception{
		return "join";
	}

	@PostMapping(value = "/board-insert")
	public String boardInsert(BoardDTO dto) throws Exception {
		dao.insert(dto);
		//create  DB 연동 후 뷰페이지로 넘기기
		return "redirect:/hello/board-allPage";
	}
	
	@PostMapping(value = "/board-reply")
	public String boardReply(BoardDTO dto,@RequestParam("boardId")int boardId) throws Exception{
		dao.replyCreate(dto);
		return "redirect:board-read?boardId="+ boardId;
	}
	
	@GetMapping(value = "/allList")
	public String allList(Model model) throws Exception{
		model.addAttribute("list", dao.listAll());
		return "board";
	}
	
	@GetMapping(value = "/board-read")
	public String boardRead(Model model,@RequestParam("boardId")int boardId) throws Exception {
		model.addAttribute("read", dao.read(boardId));
		model.addAttribute("reply", dao.listReply());
		//read  DB 연동 후 뷰페이지로 넘기기
		return "contents";
	}
	
	@GetMapping(value = "/board-update")
	public String boardUpdate(int boardId,Model model) throws Exception {
		model.addAttribute("update",dao.read(boardId));
		//update  DB 연동 후 뷰페이지로 넘기기
		return "update";
	}
	@PostMapping(value = "/board-update")
	public String boardUpdate(BoardDTO dto) throws Exception{
		dao.update(dto);
		return "redirect:/hello/board-allPage";
	}
	@GetMapping(value = "/board-delete")
	public String boarDelete(@RequestParam("boardId")int boardId) throws Exception {
		dao.delete(boardId);
		//delete  DB 연동 후 뷰페이지로 넘기기
		return "redirect:/hello/board-allPage";
	}
	@GetMapping(value = "/board-page")
	public String listPage(int page,Model model) throws Exception{
		model.addAttribute("page", dao.listPage(page));
		return "boardPage";
	}
	@GetMapping(value = "/board-allPage")
	public String listAllPage(Criteria cri,Model model) throws Exception{
		model.addAttribute("allpage", dao.listAllPage(cri));
		
		PageMaker pagemaker = new PageMaker();
		pagemaker.setCri(cri);
		pagemaker.setTotalCount(dao.totalBoard());
		model.addAttribute("pagemaker", pagemaker);
		return "boardAllPage";
	}
}
