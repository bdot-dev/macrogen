package macrogen.www.service.impl;

import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.AtchMapper;
import macrogen.www.service.AtchService;
import macrogen.www.vo.AtchVo;

@Service("atchService")
public class AtchServiceImpl extends EgovAbstractServiceImpl implements AtchService {

	@Resource(name="atchMapper")
	private AtchMapper atchMapper;

	@Override
	public void insert(AtchVo atchVo) throws Exception {
		UUID uuid = UUID.randomUUID();
		String atchId = uuid.toString().replaceAll("-", "");
		atchVo.setAtchId(atchId);
		atchMapper.insert(atchVo);
	}

	@Override
	public void delete(AtchVo atchVo) throws Exception {
		atchMapper.delete(atchVo);
	}

	@Override
	public AtchVo view(AtchVo atchVo) throws Exception {
		return atchMapper.view(atchVo);
	}

	@Override
	public AtchVo viewByPk(String atchId) throws Exception {
		AtchVo atchVo = new AtchVo();
		atchVo.setAtchId(atchId);
		return atchMapper.view(atchVo);
	}

}
