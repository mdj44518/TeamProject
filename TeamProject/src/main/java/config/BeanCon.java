package config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.ImportResource;

import controller.HelloController;
import dao.BoardDAO;
import model.BoardDTO;

@Configuration
@ImportResource("classpath:/root-context.xml")
public class BeanCon {
	
	@Bean
	public BoardDAO boardDAO() {
		return new BoardDAO();
	}
	
	@Bean
	public HelloController helloController() {
		return new HelloController();
	}
	
	@Bean
	public BoardDTO boardDTO() {
		return new BoardDTO();
	}
}
