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
}
