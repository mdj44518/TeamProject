package controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping({"/hello/*", "/hello"})
public class HelloController {

	//예제
	@GetMapping("")
	public String hello(Model model,
			@RequestParam(value = "name", required = false) String name) {
		model.addAttribute("greeting", "안녕하세요, " + name);
		return "hello";
	}
	
	@PostMapping("board")
	public String boardInsert() {
		//create  DB 연동 후 뷰페이지로 넘기기
		return "?????";
	}
	
	@GetMapping("board")
	public String boardRead() {
		//read  DB 연동 후 뷰페이지로 넘기기
		return "?????";
	}
	
	@GetMapping("board-update")
	public String boardUpdate() {
		//update  DB 연동 후 뷰페이지로 넘기기
		return "?????";
	}
	
	@GetMapping("board-delete")
	public String boarDelete() {
		//delete  DB 연동 후 뷰페이지로 넘기기
		return "?????";
	}
}
