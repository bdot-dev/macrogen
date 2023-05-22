package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.ContactVo;

public interface ContactService {

	List<ContactVo> list(ContactVo listVo) throws Exception;

	int count(ContactVo listVo) throws Exception;

	void delete(ContactVo vo) throws Exception;
	
	void insert(ContactVo vo) throws Exception;

	ContactVo view(ContactVo vo) throws Exception;
	
	ContactVo viewByPk(Long contactSn) throws Exception;
	
}
