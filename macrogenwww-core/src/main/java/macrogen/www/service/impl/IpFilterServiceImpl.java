package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.IpFilterMapper;
import macrogen.www.service.IpFilterService;
import macrogen.www.vo.IpFilterVo;


@Service("ipFilterService")
public class IpFilterServiceImpl extends EgovAbstractServiceImpl implements IpFilterService {

	@Resource(name="ipFilterMapper")
	private IpFilterMapper ipFilterMapper;

	@Override
	public List<IpFilterVo> list(IpFilterVo ipFilterVo) throws Exception{
		return ipFilterMapper.list(ipFilterVo);
	}

	@Override
	public List<IpFilterVo> listAll() throws Exception {
		// TODO Auto-generated method stub
		return ipFilterMapper.listAll();
	}

	@Override
	public int count(IpFilterVo ipFilterVo) throws Exception {
		return ipFilterMapper.count(ipFilterVo);
	}

	@Override
	public IpFilterVo view(IpFilterVo ipFilterVo) throws Exception{
		return ipFilterMapper.view(ipFilterVo);
	}

	@Override
	public void insert(IpFilterVo ipFilterVo) throws Exception{
		ipFilterMapper.insert(ipFilterVo);

	}

	@Override
	public void update(IpFilterVo ipFilterVo) throws Exception{
		ipFilterMapper.update(ipFilterVo);

	}

	@Override
	public void delete(IpFilterVo ipFilterVo) throws Exception{

		ipFilterMapper.delete(ipFilterVo);
	}


}
