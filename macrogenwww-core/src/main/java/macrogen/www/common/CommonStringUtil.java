/**
 * @file CommonStringUtil.java
 * @section 파일 생성 정보
 *    |    항  목       |      내  용       |
 *    | :-------------: | -------------   |
 *    | Project name | macrogenwww-core |    
 *    | Package | macrogen.www.common |    
 *    | File name | CommonStringUtil.java |    
 *    | Type name | CommonStringUtil |    
 *    | Company | ELUOCNC | 
 *    | Create Date | 2019. 10. 7. 오전 11:32:24 |
 *    | Author | sc.lee (yulesses@eluocnc.com) |
 *    | File Version | v1.0 |
 *    | History | sc.lee (yulesses@eluocnc.com) (2019. 10. 7.) : 신규 개발 |
 */

package macrogen.www.common;

import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;

/**
* @class CommonStringUtil
* macrogen.www.common \n
*   |_ CommonStringUtil.java
* @section 클래스 작성 정보
*    |    항  목       |      내  용       |
*    | :-------------: | -------------   |
*    | Company | ELUOCNC |    
*    | Author | sc.lee (yulesses@eluocnc.com) |
*    | Date | 2019. 10. 7. 오전 11:32:24 |
*    | Class Version | v1.0 |
*    | 작업자 | sc.lee (yulesses@eluocnc.com), Others... |
* @section 상세 설명
* - 이 클래스는OOO을 처리한다
* - # 첫번째 설명
*/

public class CommonStringUtil {

	/**
	* @fn isEmpty
	* @brief 함수 간략 설명 :
	* @remark
	* - 함수 상세 설명 : 
	* @param str
	* @return 
	*/
	public static boolean isEmpty(String str) 
	{
		return str == null || str.length() == 0;
	}
	
    /**
    * @fn remove
    * @brief 함수 간략 설명 :
    * @remark
    * - 함수 상세 설명 : 
    * @param str
    * @param remove
    * @return 
    */
    public static String remove(String str, char remove) 
    {
        if (isEmpty(str) || str.indexOf(remove) == -1) {
            return str;
        }
        char[] chars = str.toCharArray();
        int pos = 0;
        for (int i = 0; i < chars.length; i++) {
            if (chars[i] != remove) {
                chars[pos++] = chars[i];
            }
        }
        return new String(chars, 0, pos);
    }
    
    /**
    * @fn replace
    * @brief 함수 간략 설명 :
    * @remark
    * - 함수 상세 설명 : 
    * @param source
    * @param subject
    * @param object
    * @return 
    */
    public static String replace(String source, String subject, String object) 
    {
        StringBuffer rtnStr = new StringBuffer();
        String preStr = "";
        String nextStr = source;
        String srcStr  = source;
        
        while (srcStr.indexOf(subject) >= 0) {
            preStr = srcStr.substring(0, srcStr.indexOf(subject));
            nextStr = srcStr.substring(srcStr.indexOf(subject) + subject.length(), srcStr.length());
            srcStr = nextStr;
            rtnStr.append(preStr).append(object);
        }
        rtnStr.append(nextStr);
        return rtnStr.toString();
    }
    
    /**
    * @fn split
    * @brief 함수 간략 설명 :
    * @remark
    * - 함수 상세 설명 : 
    * @param source
    * @param separator
    * @return
    * @throws NullPointerException 
    */
    public static String[] split(String source, String separator) throws NullPointerException 
    {
        String[] returnVal = null;
        int cnt = 1;

        int index = source.indexOf(separator);
        int index0 = 0;
        while (index >= 0) {
            cnt++;
            index = source.indexOf(separator, index + 1);
        }
        returnVal = new String[cnt];
        cnt = 0;
        index = source.indexOf(separator);
        while (index >= 0) {
            returnVal[cnt] = source.substring(index0, index);
            index0 = index + 1;
            index = source.indexOf(separator, index + 1);
            cnt++;
        }
        returnVal[cnt] = source.substring(index0);
        
        return returnVal;
    }
    
    public static String getFormatToday(String format)
    {
        Date today = new Date();
        return (new SimpleDateFormat(format)).format(new Timestamp(today.getTime()));
    }
    
	/**
	* @fn toS
	* @brief 함수 간략 설명 :
	* @remark
	* - 함수 상세 설명 : 
	* @param o
	* @return 
	*/
	public static String toS(final Object o) {
		if (o == null) {
			return new String("");
		} else {
			return o.toString().trim();
		}
	}
	
	/**
	* @fn toS
	* @brief 함수 간략 설명 :
	* @remark
	* - 함수 상세 설명 : 
	* @param o
	* @param defalultValue
	* @return 
	*/
	public static String toS(final Object o, final String defalultValue) {
		if (o == null) {
			return defalultValue;
		} else {
			return o.toString().trim();
		}
	}
	
	/**
     * select  가져올 때
     * @param content
     * @return
     */
	public static String replaceEditorTag(String content) { 
		String str = content;
		if(str != null && !str.equals("")){ 
			str = str.replaceAll("&amp;", "&"); 
			str = str.replaceAll("&lt;", "<"); 
			str = str.replaceAll("&gt;", ">"); 
			str = str.replaceAll("&ldquo;", "\""); 
			str = str.replaceAll("&rdquo;", "\""); 
		}else{ 
			str = ""; 
		} 
		return str; 
	} 
	
    
	/**
     * select  가져올 때
     * @param content
     * @return
     */
	public static String replaceEventHander(String content) {
        String cont = content;
 
        cont = cont.replaceAll("(?i)javascript","");
        cont = cont.replaceAll("(?i)eval","");
        cont = cont.replaceAll("(?i)innerhtml","");
        cont = cont.replaceAll("(?i)onload","");
        cont = cont.replaceAll("(?i)onmousewheel","");
        cont = cont.replaceAll("(?i)onactive","");
        cont = cont.replaceAll("(?i)onfocusout","");
        //cont = cont.replaceAll("(?i)expression","");
        cont = cont.replaceAll("(?i)charset","");
        cont = cont.replaceAll("(?i)ondataavailable","");
        cont = cont.replaceAll("(?i)oncut","");
        cont = cont.replaceAll("(?i)onkeyup","");
        cont = cont.replaceAll("(?i)applet","");
        //cont = cont.replaceAll("(?i)document","");
        cont = cont.replaceAll("(?i)onafteripudate","");
        cont = cont.replaceAll("(?i)onclick","");
        cont = cont.replaceAll("(?i)onkeypress","");
        cont = cont.replaceAll("(?i)onmousedown","");
        cont = cont.replaceAll("(?i)onchange","");
        cont = cont.replaceAll("(?i)onbounce","");
        cont = cont.replaceAll("(?i)onbeforeactivate","");
        cont = cont.replaceAll("(?i)onbeforecut","");
        cont = cont.replaceAll("(?i)onmouseenter","");
        cont = cont.replaceAll("(?i)onbeforecopy","");
        cont = cont.replaceAll("(?i)ondbclick","");
        cont = cont.replaceAll("(?i)onmouseout","");
        cont = cont.replaceAll("(?i)binding","");
        cont = cont.replaceAll("(?i)onbeforedeactivate","");
        cont = cont.replaceAll("(?i)ondeactivate","");
        cont = cont.replaceAll("(?i)onmouseover","");
        //cont = cont.replaceAll("(?i)style","");
        //cont = cont.replaceAll("(?i)alert","");
        cont = cont.replaceAll("(?i)ondatasetchaged","");
        cont = cont.replaceAll("(?i)ondrag","");
        cont = cont.replaceAll("(?i)onsubmit","");
        cont = cont.replaceAll("(?i)script","");
        cont = cont.replaceAll("(?i)msgbox","");
        cont = cont.replaceAll("(?i)cnbeforeprint","");
        cont = cont.replaceAll("(?i)ondragend","");
        cont = cont.replaceAll("(?i)onmouseend","");
        cont = cont.replaceAll("(?i)embed","");
        cont = cont.replaceAll("(?i)refresh","");
        cont = cont.replaceAll("(?i)cnbeforepaste","");
        cont = cont.replaceAll("(?i)ondragenter","");
        cont = cont.replaceAll("(?i)onresizestart","");
       //cont = cont.replaceAll("(?i)object","");
        cont = cont.replaceAll("(?i)void","");
        cont = cont.replaceAll("(?i)onbeforeeditfocus","");
        cont = cont.replaceAll("(?i)ondragleave","");
        cont = cont.replaceAll("(?i)onuload","");
        //cont = cont.replaceAll("(?i)iframe","");
        cont = cont.replaceAll("(?i)cookie","");
        cont = cont.replaceAll("(?i)onbeforeuload","");
        cont = cont.replaceAll("(?i)ondragover","");
        cont = cont.replaceAll("(?i)onselectstart","");
        cont = cont.replaceAll("(?i)frame","");
        cont = cont.replaceAll("(?i)onbeforeupdate","");
        cont = cont.replaceAll("(?i)ondragstart","");
        cont = cont.replaceAll("(?i)onreset","");
        cont = cont.replaceAll("(?i)frameset","");
        cont = cont.replaceAll("(?i)onpaste","");
        cont = cont.replaceAll("(?i)onpropertychange","");
        cont = cont.replaceAll("(?i)ondrop","");
        cont = cont.replaceAll("(?i)ondblclick","");
        cont = cont.replaceAll("(?i)onmove","");
        cont = cont.replaceAll("(?i)ilayer","");
        cont = cont.replaceAll("(?i)onresize","");
        cont = cont.replaceAll("(?i)ondatasetcomplete","");
        cont = cont.replaceAll("(?i)onerror","");
        cont = cont.replaceAll("(?i)oncontextmenu","");
        cont = cont.replaceAll("(?i)layer","");
        cont = cont.replaceAll("(?i)onselect","");
        cont = cont.replaceAll("(?i)oncellchange","");
        cont = cont.replaceAll("(?i)onfinish","");
        cont = cont.replaceAll("(?i)onrowexit","");
        cont = cont.replaceAll("(?i)bgsound","");
        cont = cont.replaceAll("(?i)base","");
        cont = cont.replaceAll("(?i)onlayoutcomplete","");
        cont = cont.replaceAll("(?i)onfocus","");
        cont = cont.replaceAll("(?i)onerrorupdate","");
        cont = cont.replaceAll("(?i)onblur","");
        cont = cont.replaceAll("(?i)vbscript","");
        cont = cont.replaceAll("(?i)onselectionchange","");
        cont = cont.replaceAll("(?i)onstop","");
        cont = cont.replaceAll("(?i)onfilterchage","");
        cont = cont.replaceAll("(?i)onbefore","");
        cont = cont.replaceAll("(?i)onstart","");
        cont = cont.replaceAll("(?i)onrowsinserted","");
        cont = cont.replaceAll("(?i)onkeydown","");
        cont = cont.replaceAll("(?i)onlosecapture","");
        cont = cont.replaceAll("(?i)onmouseup","");
        cont = cont.replaceAll("(?i)onfocusin","");
        cont = cont.replaceAll("(?i)oncontrolselected","");
        cont = cont.replaceAll("(?i)onrowsdelete","");
        cont = cont.replaceAll("(?i)onmousemove","");
        cont = cont.replaceAll("(?i)onrowenter","");
        cont = cont.replaceAll("(?i)onhelp","");
        cont = cont.replaceAll("(?i)onreadystatechange","");
        cont = cont.replaceAll("(?i)onmouseleave","");
        cont = cont.replaceAll("(?i)onanimation","");
    
        cont = cont.replaceAll("(?i)ontransitionend","");
        cont = cont.replaceAll("(?i)onafterscriptexecute","");
        cont = cont.replaceAll("(?i)oncopy","");
        cont = cont.replaceAll("(?i)onpointerdown","");
        cont = cont.replaceAll("(?i)onpointerenter","");
        cont = cont.replaceAll("(?i)onpointerleave","");
        cont = cont.replaceAll("(?i)onpointermove","");
        cont = cont.replaceAll("(?i)onpointerout","");
        cont = cont.replaceAll("(?i)onpointerover","");
        cont = cont.replaceAll("(?i)onpointerrawupdate","");
        cont = cont.replaceAll("(?i)onpointerup","");
        
        cont = cont.replaceAll("(?i)xss","");
        cont = cont.replaceAll("(?i)script","");

        return cont;
    }
	
	/**
     * insert, update
     * @param content
     * @return
     */
	public static String replaceEditorTagRev(String content) {  
		String str = content; 
		if(str != null && !str.equals("")){ 
			str = str.replaceAll("&", "&amp;"); 
			str = str.replaceAll("<", "&lt;"); 
			str = str.replaceAll(">", "&gt;"); 
			str = str.replaceAll("·", "&middot;"); 
		}else{ 
			str = ""; 
		} 
		return str; 
	}
	
	public static String cleanXSS(String value) { 
		String [] checkStr_arr  = {
				"eval",
				"innerhtml",
				"onload",
				"onmousewheel",
				"onactive",
				"onfocusout",
				//"expression",
				"charset",
				"ondataavailable",
				"oncut",
				"onkeyup",
				"applet",
				//"document",
				"onafteripudate",
				"onclick",
				"onkeypress",
				"onmousedown",
				"onchange",
				"onbounce",
				"onbeforeactivate",
				"onbeforecut",
				"onmouseenter",
				"onbeforecopy",
				"ondbclick",
				"onmouseout",
				"binding",
				"onbeforedeactivate",
				"ondeactivate",
				"onmouseover",
				//"alert",
				"ondatasetchaged",
				"ondrag",
				"onsubmit",
				"script",
				"msgbox",
				"cnbeforeprint",
				"ondragend",
				"onmouseend",
				//"embed",
				"refresh",
				"cnbeforepaste",
				"ondragenter",
				"onresizestart",
				//"object",
				"void",
				"onbeforeeditfocus",
				"ondragleave",
				"onuload",
				//"iframe",
				"cookie",
				"onbeforeuload",
				"ondragover",
				"onselectstart",
				//"frame",
				"onbeforeupdate",
				"ondragstart",
				"onreset",
				"frameset",
				"onpaste",
				"onpropertychange",
				"ondrop",
				"ondblclick",
				"onmove",
				"ilayer",
				"onresize",
				"ondatasetcomplete",
				"onerror",
				"oncontextmenu",
				"layer",
				"onselect",
				"oncellchange",
				"onfinish",
				"onrowexit",
				"bgsound",
				"base",
				"onlayoutcomplete",
				"onfocus",
				"onerrorupdate",
				"onblur",
				"vbscript",
				"onselectionchange",
				"onstop",
				"onfilterchage",
				"onbefore",
				"onstart",
				"onrowsinserted",
				"onkeydown",
				"onlosecapture",
				"onmouseup",
				"onfocusin",
				"oncontrolselected",
				"onrowsdelete",
				"onmousemove",
				"onrowenter",
				"onhelp",
				"onreadystatechange",
				"onmouseleave",
				"javascript",
				"script",
				"xss",
				"onanimation",
				"ontransitionend",
				"onafterscriptexecute",
				"oncopy",
				"onpointerdown",
				"onpointerenter",
				"onpointerleave",
				"onpointermove",
				"onpointerout",
				"onpointerover",
				"onpointerrawupdate",
				"onpointerup"
				
		};
		
		StringBuffer sb = null;
		
		for(String checkStr:checkStr_arr){
			while(value.indexOf(checkStr)!=-1){
				value=value.replaceAll(checkStr, "");
			}
			while(value.toLowerCase().indexOf(checkStr)!=-1){
				sb = new StringBuffer(value);
				sb = sb.replace(value.toLowerCase().indexOf(checkStr), value.toLowerCase().indexOf(checkStr)+checkStr.length(), "");
				value = sb.toString();
			}
		}

		return value; 
	} 
	
	/** random 문자열 생성 
	 * <pre>
	 * randomStrCreate
	 * 1. 개요   : 
	 * 2. 작성자 : eluocnc
	 * </pre>
	 * 
	 * @param gbn
	 * @param size
	 * @return
	 */ 	
	public static String randomStrCreate(int size){
		StringBuffer sb = new StringBuffer(4);
		Random random = new Random();

		String chars[] = "A,B,C,D,E,F,G,H,I,J,K,L,M,N,O,P,Q,R,S,T,U,V,W,X,Y,Z,a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z,0,1,2,3,4,5,6,7,8,9".split(",");

		int sizeTmp = size;
		for (int i = 0; i < sizeTmp; i++) {
			sb.append(chars[random.nextInt(chars.length)]);
		}
		return sb.toString();
	}
	
	
	public static String getClientIp(HttpServletRequest request) {
        String ip = request.getHeader("X-FORWARDED-FOR");
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("WL-Proxy-Client-IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_CLIENT_IP");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getHeader("HTTP_X_FORWARDED_FOR");
        }
        if (ip == null || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
            ip = request.getRemoteAddr();
        }
//        if (ip != null && ip.indexOf(",") > -1) {
//            String[] proxyIps = ip.split(",");
//            ip = proxyIps[proxyIps.length - 1];
//        }
        return ip;
    }
}
