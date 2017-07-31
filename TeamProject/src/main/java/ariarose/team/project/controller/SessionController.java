package ariarose.team.project.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import ariarose.team.project.vo.UserVO;

@Controller
@RequestMapping("/session")
public class SessionController {

	@RequestMapping("/getSession")
	public ResponseEntity<UserVO> getSession(
			@RequestBody UserVO vo, HttpServletRequest request){
		ResponseEntity<UserVO> entity = null;
		HttpSession session = request.getSession();
		vo.setUser_id(Integer.parseInt(session.getAttribute("getSessionId").toString()));
		/*System.out.println(vo.getUser_id());*/
		entity = new ResponseEntity<UserVO>(vo, HttpStatus.OK);
		return entity;
	}
}
