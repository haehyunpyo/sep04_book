package com.book.web.controller;

import java.util.Map;

import javax.mail.Session;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.book.web.service.LoginService;

@Controller
public class LoginController {

	@Autowired
	private LoginService loginService;
	
	@GetMapping("/login")
	public String login() {
		return "login";
	}
	
	
	@PostMapping("/login")
	public String login(@RequestParam Map<String, Object> map, HttpSession session) {
		
		Map<String, Object> result = loginService.login(map);
		//System.out.println(result);
		if(String.valueOf(result.get("count")).equals("1")) {
			
			session.setAttribute("mid", result.get("mid"));
			session.setAttribute("mname", result.get("mname"));
			//System.out.println(session.getAttribute("mname"));
			
			return "redirect:/";
		}
			return "login";
	}
	
	
	@GetMapping("/logout")
	public String logout(HttpSession session) {
		
		session.invalidate();
		
		return "login";
	}
	
	
	@GetMapping("/login/kakao")
	public String kakaoLogin(@RequestParam(required = false) String code) {
	        
		// URL에 포함된 code를 이용하여 액세스 토큰 발급
	        //System.out.println(code);
	        String access_Token = loginService.getKakaoToken(code);
	        //System.out.println(accessToken);
	        String email = loginService.getKakaoUser(access_Token);
	        
	       if(email != null) {
	    	   return "redirect:/";
	       } else {
	    	   return "redirect:login";
	       }
	}
	
	@GetMapping("/logout/kakao")
	public String kakaoLogout() {
		System.out.println("성공");
		
 	   return "redirect:/login";
	}
	
	
	
}
