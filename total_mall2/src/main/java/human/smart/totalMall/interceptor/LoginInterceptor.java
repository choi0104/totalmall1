package human.smart.totalMall.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;

import human.smart.totalMall.vo.MemberVO;

public class LoginInterceptor implements HandlerInterceptor {
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		boolean result = true;//Controller로 사용자 요청이 전달되게 하는 반환값
		
		//사용자가 로그인 한 상태이면 HttpSession(세션)객체에 MemberVO객체가 속성으로 저장되어 있음
		//사용자의 세션 객체를 얻는 방법: request.getSession()
		HttpSession session = request.getSession();
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		
		if(memberVO == null) {//로그인이 안된 경우
			response.sendRedirect(request.getContextPath()+"/member/login.do");
			result = false;//Controller로 사용자 요청이 전달되지 못하게 하는 반환값
		}
		
		return result;
	}	
}