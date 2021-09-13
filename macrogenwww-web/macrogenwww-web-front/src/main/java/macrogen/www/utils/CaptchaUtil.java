package macrogen.www.utils;

import java.awt.Color;
import java.awt.Font;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import nl.captcha.Captcha;
import nl.captcha.backgrounds.GradiatedBackgroundProducer;
import nl.captcha.servlet.CaptchaServletUtil;
import nl.captcha.text.producer.NumbersAnswerProducer;
import nl.captcha.text.renderer.DefaultWordRenderer;

/**
 * <pre>
 * macrogen.www.utils
 *    |_ CaptchaUtil.java
 * 개요 :
 * </pre>
 * 1. 작성일 : 2021. 9. 13. 오후 1:53:00
 * 2. 작성자 : eluocnc
 * @version :
 */
public class CaptchaUtil {
	private static int width = 160;
	private static int height = 60;

	public void getImgCaptcha(HttpServletRequest req, HttpServletResponse res) {
		List<Font> fontList = new ArrayList<Font>();
		fontList.add(new Font("", Font.HANGING_BASELINE, 40));
		fontList.add(new Font("Courier", Font.ITALIC, 40));
		fontList.add(new Font("", Font.PLAIN, 40));

		List<Color> colorList = new ArrayList<Color>();
		colorList.add(Color.BLACK);

		Captcha captcha = new Captcha.Builder(width, height)
				.addText(new NumbersAnswerProducer(6), new DefaultWordRenderer(colorList, fontList))
				.addNoise().addBorder()
				.addBackground(new GradiatedBackgroundProducer())
				.build();

		req.getSession().setAttribute(Captcha.NAME, captcha);
		CaptchaServletUtil.writeImage(res, captcha.getImage());
	}
}
