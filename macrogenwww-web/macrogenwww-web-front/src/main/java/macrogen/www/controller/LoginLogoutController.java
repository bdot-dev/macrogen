package macrogen.www.controller;

import java.util.Locale;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import macrogen.www.common.AesCipher;
import macrogen.www.common.CookieUtil;

@Controller
public class LoginLogoutController {
	private static final Logger LOGGER = LoggerFactory.getLogger(LoginLogoutController.class);

	@Resource(name="aesCipher")
	private AesCipher aesCipher;

	@RequestMapping("/login")
	public ModelAndView loginForm(Model model, HttpServletRequest request, HttpServletResponse response, Locale locale) throws Exception {

		// 쿠키로 저장된 아이디(컨트롤러의 처리 결과를 보여줄 뷰와 뷰에 전달할 값을 저장하는 용도로 사용된다.)
		ModelAndView mav = new ModelAndView("jsonView");

		/**
		 *  비동기 요청일 경우, request.getHeader("x-requested-with") = "XMLHttpRequest" 로 들어옴.
		 *  동적인 뷰로 전환하고, $.ajax, $.ajaxSubmit 등을 wrapping function에서 비동기 오류코드를 처리
		 *
		 *  spring에서 interceprot를 이용해서 세션 체크하고, 세션이 끊이면 로그인 화면으로 리다이렉트 시킬때 Ajax 요청일때 리다이렉트가 되지 않는데
		 *  이때 내가 요청한게 Ajax 인지 아닌지를 확인하는 방법중에 Ajax 요청 헤더에 x-requested-with 라는 키로 XMLHttpRequest 값을 가지고 있는데 이걸 비교하면 Ajax 인지 아닌지 알수 있음
		 */
		if ("XMLHttpRequest".equals(request.getHeader("x-requested-with"))) {	//Ajax 요청이면

			response.setStatus(HttpStatus.UNAUTHORIZED.value());	//Ajax 예외처리

		}
		else {	// Ajax 요청이 아니면

			if (StringUtils.hasText(CookieUtil.getCookie(request, "mber_id"))) {	//쿠키에서 뽑아온 아이디 값 에 즉 문자열에 공백이 들어가 있는지 검사

				try {

					model.addAttribute("savedMberId", aesCipher.decrypt(CookieUtil.getCookie(request, "mber_id")) );	//AES-128 복호화

				}
				catch (Exception e) {
					LOGGER.debug(e.getMessage());
				}
			}

			mav.setViewName("login/login");
		}

		// retrurn url 지정
		if (!StringUtils.isEmpty(request.getParameter("returnUrl"))) {

			mav.addObject("returnUrl", request.getParameter("returnUrl"));
		}

		return mav;

	}

}
