package ariarose.team.project.controller;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import ariarose.team.project.service.RegistService;
import ariarose.team.project.vo.UserVO;

@Controller
@RequestMapping("/regist")
public class RegistController {
	
	@Inject
	private RegistService service;
	
	@RequestMapping("/registPage")
	public void registPage(){}
	
	@RequestMapping("/userIdCheck")
	public ResponseEntity<UserVO> userIdCheck(
			@RequestBody UserVO vo){
		ResponseEntity<UserVO> entity = null;
		if(service.checkUserId(vo) && !vo.getUser_userId().equals("")){
			entity = new ResponseEntity<UserVO>(vo, HttpStatus.OK);
		} else {
			entity = new ResponseEntity<UserVO>(vo, HttpStatus.NOT_FOUND);
		}
		return entity;
	}
	
	@RequestMapping("/userRegist")
	public ResponseEntity<UserVO> userRegist(
			@RequestBody UserVO vo){
		ResponseEntity<UserVO> entity = null;
		System.out.println(vo);
		if(service.registUser(vo)){
			entity = new ResponseEntity<UserVO>(vo, HttpStatus.OK);
		} else {
			entity = new ResponseEntity<UserVO>(vo, HttpStatus.NOT_FOUND);
		}
		return entity;
	}
}
