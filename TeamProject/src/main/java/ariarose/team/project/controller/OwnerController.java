package ariarose.team.project.controller;

import javax.inject.Inject;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;

import ariarose.team.project.service.AccomService;
import ariarose.team.project.vo.AccomVO;


@Controller
@RequestMapping("/owner")
public class OwnerController {
	
	@Inject
	private AccomService service;
	
	@RequestMapping("/ownerPage")
	public void ownerPage(){}
	
	@RequestMapping("/accom/accomPage")
	public void accomPage(){}
	
	@RequestMapping("/accom/accomRegistPage")
	public void accomRegistPage(){}
	
	@RequestMapping("/accom/accomRegist")
	public ResponseEntity<AccomVO> accomRegist(
			@RequestBody AccomVO vo){
		ResponseEntity<AccomVO> entity = null;
		System.out.println(vo);
		if(service.registAccom(vo)){
			entity = new ResponseEntity<AccomVO>(vo, HttpStatus.OK);
		} else {
			entity = new ResponseEntity<AccomVO>(vo, HttpStatus.NOT_FOUND);
		}
		return entity;
	}
	
}
