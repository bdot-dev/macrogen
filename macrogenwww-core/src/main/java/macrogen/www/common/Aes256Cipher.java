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

/**
 * <pre>
 * macrogen.www.common 
 *    |_ Aes256Cipher.java
 * AES-256 암호화 : jdk_home/jre/lib/securitylocal_policy.jar, US_export_policy.jar 업데이트 필요
 * </pre>
 * 1.작성일 : 2018. 11. 8. 오후 3:47:19
 * 2.작성자 : eluocnc
 * @version : 
 */
@Component
public class Aes256Cipher {

	@Value("${globals.aes256.secretKey}")
	private String secretKey;
	@Value("${globals.aes256.iv}")
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
		byte[] planText = str.getBytes("UTF-8");
		AlgorithmParameterSpec ivSpec = new IvParameterSpec(iv.getBytes());
		SecretKeySpec newKey = new SecretKeySpec(secretKey.getBytes("UTF-8"), "AES");
		Cipher cipher = null;
		cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
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
												   IllegalBlockSizeException, BadPaddingException{
		byte[] cipherText = Base64.decodeBase64(str.getBytes("UTF-8"));
		AlgorithmParameterSpec ivSpec = new IvParameterSpec(iv.getBytes());
		SecretKeySpec newKey = new SecretKeySpec(secretKey.getBytes("UTF-8"), "AES");
		Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
		cipher.init(Cipher.DECRYPT_MODE, newKey, ivSpec);
		
		return new String(cipher.doFinal(cipherText), "UTF-8");
	}

}
