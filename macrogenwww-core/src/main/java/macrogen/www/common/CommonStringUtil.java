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
        cont = cont.replaceAll("(?i)expression","");
        cont = cont.replaceAll("(?i)charset","");
        cont = cont.replaceAll("(?i)ondataavailable","");
        cont = cont.replaceAll("(?i)oncut","");
        cont = cont.replaceAll("(?i)onkeyup","");
        cont = cont.replaceAll("(?i)applet","");
        cont = cont.replaceAll("(?i)document","");
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
        cont = cont.replaceAll("(?i)alert","");
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
        cont = cont.replaceAll("(?i)object","");
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

        cont = cont.replaceAll("(?i)a2","");
        cont = cont.replaceAll("(?i)abbr","");
        cont = cont.replaceAll("(?i)acronym","");
        cont = cont.replaceAll("(?i)address","");
        cont = cont.replaceAll("(?i)animate","");
        cont = cont.replaceAll("(?i)animatemotion","");
        cont = cont.replaceAll("(?i)animatetransform","");
        cont = cont.replaceAll("(?i)applet","");
        cont = cont.replaceAll("(?i)area","");
        cont = cont.replaceAll("(?i)article","");
        cont = cont.replaceAll("(?i)aside","");
        cont = cont.replaceAll("(?i)audio","");
        cont = cont.replaceAll("(?i)audio2","");
        cont = cont.replaceAll("(?i)bdi","");
        cont = cont.replaceAll("(?i)bdo","");
        cont = cont.replaceAll("(?i)big","");
        cont = cont.replaceAll("(?i)blink","");
        cont = cont.replaceAll("(?i)blockquote","");
        cont = cont.replaceAll("(?i)button","");
        cont = cont.replaceAll("(?i)canvas","");
        cont = cont.replaceAll("(?i)caption","");
        cont = cont.replaceAll("(?i)cite","");
        cont = cont.replaceAll("(?i)code","");
        cont = cont.replaceAll("(?i)col","");
        cont = cont.replaceAll("(?i)colgroup","");
        cont = cont.replaceAll("(?i)command","");
        cont = cont.replaceAll("(?i)content","");
        cont = cont.replaceAll("(?i)custom tags","");
        cont = cont.replaceAll("(?i)data","");
        cont = cont.replaceAll("(?i)datalist","");
        cont = cont.replaceAll("(?i)dd","");
        cont = cont.replaceAll("(?i)del","");
        cont = cont.replaceAll("(?i)details","");
        cont = cont.replaceAll("(?i)dfn","");
        cont = cont.replaceAll("(?i)dialog","");
        cont = cont.replaceAll("(?i)dir","");
        //cont = cont.replaceAll("(?i)div","");
        cont = cont.replaceAll("(?i)dl","");
        cont = cont.replaceAll("(?i)dt","");
        cont = cont.replaceAll("(?i)element","");
        cont = cont.replaceAll("(?i)fieldset","");
        cont = cont.replaceAll("(?i)figcaption","");
        cont = cont.replaceAll("(?i)figure","");
        cont = cont.replaceAll("(?i)footer","");
        cont = cont.replaceAll("(?i)form","");
        cont = cont.replaceAll("(?i)frameset","");
        cont = cont.replaceAll("(?i)h1","");
        cont = cont.replaceAll("(?i)head","");
        cont = cont.replaceAll("(?i)header","");
        cont = cont.replaceAll("(?i)hgroup","");
        cont = cont.replaceAll("(?i)hr","");
        cont = cont.replaceAll("(?i)html","");
        //cont = cont.replaceAll("(?i)i","");
        cont = cont.replaceAll("(?i)iframe2","");
        cont = cont.replaceAll("(?i)image","");
        cont = cont.replaceAll("(?i)image2","");
        cont = cont.replaceAll("(?i)image3","");
        cont = cont.replaceAll("(?i)img2","");
        cont = cont.replaceAll("(?i)input","");
        cont = cont.replaceAll("(?i)input2","");
        cont = cont.replaceAll("(?i)input3","");
        cont = cont.replaceAll("(?i)input4","");
        cont = cont.replaceAll("(?i)ins","");
        cont = cont.replaceAll("(?i)kbd","");
        cont = cont.replaceAll("(?i)keygen","");
        cont = cont.replaceAll("(?i)label","");
        cont = cont.replaceAll("(?i)legend","");
        cont = cont.replaceAll("(?i)listing","");
        cont = cont.replaceAll("(?i)main","");
        cont = cont.replaceAll("(?i)map","");
        cont = cont.replaceAll("(?i)mark","");
        cont = cont.replaceAll("(?i)marquee","");
        cont = cont.replaceAll("(?i)menu","");
        cont = cont.replaceAll("(?i)menuitem","");
        cont = cont.replaceAll("(?i)meta","");
        cont = cont.replaceAll("(?i)meter","");
        cont = cont.replaceAll("(?i)multicol","");
        cont = cont.replaceAll("(?i)nav","");
        cont = cont.replaceAll("(?i)nextid","");
        cont = cont.replaceAll("(?i)nobr","");
        cont = cont.replaceAll("(?i)noembed","");
        cont = cont.replaceAll("(?i)noframes","");
        cont = cont.replaceAll("(?i)noscript","");
        cont = cont.replaceAll("(?i)object","");
        cont = cont.replaceAll("(?i)optgroup","");
        cont = cont.replaceAll("(?i)option","");
        cont = cont.replaceAll("(?i)output","");
        cont = cont.replaceAll("(?i)param","");
        cont = cont.replaceAll("(?i)picture","");
        cont = cont.replaceAll("(?i)plaintext","");
        cont = cont.replaceAll("(?i)pre","");
        cont = cont.replaceAll("(?i)progress","");
        //cont = cont.replaceAll("(?i)q","");
        cont = cont.replaceAll("(?i)rb","");
        cont = cont.replaceAll("(?i)rp","");
        cont = cont.replaceAll("(?i)rt","");
        cont = cont.replaceAll("(?i)rtc","");
        cont = cont.replaceAll("(?i)ruby","");
        cont = cont.replaceAll("(?i)samp","");
        cont = cont.replaceAll("(?i)script","");
        cont = cont.replaceAll("(?i)section","");
        cont = cont.replaceAll("(?i)select","");
        cont = cont.replaceAll("(?i)set","");
        cont = cont.replaceAll("(?i)shadow","");
        cont = cont.replaceAll("(?i)slot","");
        cont = cont.replaceAll("(?i)small","");
        cont = cont.replaceAll("(?i)source","");
        cont = cont.replaceAll("(?i)spacer","");
        cont = cont.replaceAll("(?i)strike","");
        cont = cont.replaceAll("(?i)sub","");
        cont = cont.replaceAll("(?i)summary","");
        cont = cont.replaceAll("(?i)sup","");
        cont = cont.replaceAll("(?i)svg","");
        cont = cont.replaceAll("(?i)template","");
        cont = cont.replaceAll("(?i)textarea","");
        cont = cont.replaceAll("(?i)tfoot","");
        cont = cont.replaceAll("(?i)time","");
        cont = cont.replaceAll("(?i)track","");
        cont = cont.replaceAll("(?i)var","");
        cont = cont.replaceAll("(?i)video","");
        cont = cont.replaceAll("(?i)video2","");
        cont = cont.replaceAll("(?i)wbr","");
        cont = cont.replaceAll("(?i)xmp","");
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
				"expression",
				"charset",
				"ondataavailable",
				"oncut",
				"onkeyup",
				"applet",
				"document",
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
				"alert",
				"ondatasetchaged",
				"ondrag",
				"onsubmit",
				"script",
				"msgbox",
				"cnbeforeprint",
				"ondragend",
				"onmouseend",
				/* "embed", */
				"refresh",
				"cnbeforepaste",
				"ondragenter",
				"onresizestart",
				"object",
				"void",
				"onbeforeeditfocus",
				"ondragleave",
				"onuload",
				/* "iframe", */
				"cookie",
				"onbeforeuload",
				"ondragover",
				"onselectstart",
				/* "frame", */
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
				"a2",
				"abbr",
				"acronym",
				"address",
				"animate",
				"animatemotion",
				"animatetransform",
				"applet",
				"area",
				"article",
				"aside",
				"audio",
				"audio2",
				"bdi",
				"bdo",
				"big",
				"blink",
				"blockquote",
				"button",
				"canvas",
				"caption",
				"cite",
				"code",
				"col",
				"colgroup",
				"command",
				"content",
				"custom tags",
				"data",
				"datalist",
				"dd",
				"del",
				"details",
				"dfn",
				"dialog",
				"dir",
				//"div",
				"dl",
				"dt",
				"element",
				"fieldset",
				"figcaption",
				"figure",
				"footer",
				"form",
				"frameset",
				"h1",
				"head",
				"header",
				"hgroup",
				"hr",
				"html",
				//"i",
				"iframe2",
				"image",
				"image2",
				"image3",
				"img2",
				"input",
				"input2",
				"input3",
				"input4",
				"ins",
				"kbd",
				"keygen",
				"label",
				"legend",
				"listing",
				"main",
				"map",
				"mark",
				"marquee",
				"menu",
				"menuitem",
				"meta",
				"meter",
				"multicol",
				"nav",
				"nextid",
				"nobr",
				"noembed",
				"noframes",
				"noscript",
				"object",
				"optgroup",
				"option",
				"output",
				"param",
				"picture",
				"plaintext",
				"pre",
				"progress",
				//"q",
				"rb",
				"rp",
				"rt",
				"rtc",
				"ruby",
				"samp",
				"script",
				"section",
				"select",
				"set",
				"shadow",
				"slot",
				"small",
				"source",
				"spacer",
				"strike",
				"sub",
				"summary",
				"sup",
				"svg",
				"template",
				"textarea",
				"tfoot",
				"time",
				"track",
				"var",
				"video",
				"video2",
				"wbr",
				"xmp"
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
	
}
