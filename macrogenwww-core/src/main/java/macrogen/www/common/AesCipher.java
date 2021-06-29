package macrogen.www.common;

import java.io.UnsupportedEncodingException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.spec.AlgorithmParameterSpec;

import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

import org.apache.commons.codec.binary.Base64;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

/**
 * <pre>
 * macrogen.www.common 
 *    |_ AesCipher.java
 * AES-128 암호화
 * </pre>
 * 1.작성일 : 2018. 11. 8. 오후 3:53:15
 * 2.작성자 : eluocnc
 * @version : 
 */
@Component
public class AesCipher {

	@Value("${globals.aes128.secretKey}")
	private String secretKey;
	@Value("${globals.aes128.iv}")
	private String iv;
	
	/**
	 * <pre>
	 * encrypt
	 * 1. 개요   : 암호화
	 * 2. 작성자 : eluocnc
	 * </pre>
	 * 
	 * @param str
	 * @return
	 * @throws UnsupportedEncodingException
	 * @throws NoSuchAlgorithmException
	 * @throws NoSuchPaddingException
	 * @throws InvalidKeyException
	 * @throws InvalidAlgorithmParameterException
	 * @throws IllegalBlockSizeException
	 * @throws BadPaddingException
	 */ 	
	public String encrypt(String str) throws UnsupportedEncodingException, 
												   NoSuchAlgorithmException, NoSuchPaddingException, 
												   InvalidKeyException, InvalidAlgorithmParameterException, 
												   IllegalBlockSizeException, BadPaddingException{
		if (StringUtils.isEmpty(str)) {
			return null;
		}

		byte[] planText = str.getBytes("UTF-8");
		AlgorithmParameterSpec ivSpec = new IvParameterSpec(iv.getBytes());
		SecretKeySpec newKey = new SecretKeySpec(secretKey.getBytes("UTF-8"), "AES");
		
		Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
		cipher.init(Cipher.ENCRYPT_MODE, newKey, ivSpec);

		return new String(Base64.encodeBase64(cipher.doFinal(planText)),"UTF-8");
	}
	
	/**
	 * <pre>
	 * decrypt
	 * 1. 개요   : 복호화
	 * 2. 작성자 : eluocnc
	 * </pre>
	 * 
	 * @param str
	 * @return
	 * @throws UnsupportedEncodingException
	 * @throws InvalidKeyException
	 * @throws InvalidAlgorithmParameterException
	 * @throws NoSuchAlgorithmException
	 * @throws NoSuchPaddingException
	 * @throws IllegalBlockSizeException
	 * @throws BadPaddingException
	 */ 	
	public String decrypt(String str) throws UnsupportedEncodingException, 
												   InvalidKeyException, InvalidAlgorithmParameterException, 
												   NoSuchAlgorithmException, NoSuchPaddingException, 
												   IllegalBlockSizeException, BadPaddingException {
		if (StringUtils.isEmpty(str)) {
			return null;
		}
		
		byte[] cipherText = Base64.decodeBase64(str.getBytes("UTF-8"));
		AlgorithmParameterSpec ivSpec = new IvParameterSpec(iv.getBytes());
		SecretKeySpec newKey = new SecretKeySpec(secretKey.getBytes("UTF-8"), "AES");
		Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
		cipher.init(Cipher.DECRYPT_MODE, newKey, ivSpec);
		
		return new String(cipher.doFinal(cipherText), "UTF-8");
	}

}
