package macrogen.www.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.ContactMapper;
import macrogen.www.service.ContactService;
import macrogen.www.vo.ContactVo;

@Service("contactService")
public class ContactServiceImpl extends EgovAbstractServiceImpl implements ContactService {

	@Autowired
	private ContactMapper contactMapper;
	
	
	@Override
	public List<ContactVo> list(ContactVo vo) throws Exception {
		// TODO Auto-generated method stub
		return contactMapper.list(vo);
	}
	
	@Override
	public int count(ContactVo vo) throws Exception {
		// TODO Auto-generated method stub
		return contactMapper.count(vo);
	}
	
	@Override
	public ContactVo view(ContactVo vo) throws Exception {
		// TODO Auto-generated method stub
		return contactMapper.view(vo);
	}
	
	@Override
	public void insert(ContactVo vo) {
		vo.setContactSn(contactMapper.seq());
		contactMapper.insert(vo);		
	}
	
	@Override
	public ContactVo viewByPk(Long contactSn) throws Exception {
	
		ContactVo vo = new ContactVo();
		vo.setContactSn(contactSn);		
		return view(vo);
	}
	
	@Override
	public void delete(ContactVo vo) {
		// TODO Auto-generated method stub
		contactMapper.delete(vo);
	}
	
}
