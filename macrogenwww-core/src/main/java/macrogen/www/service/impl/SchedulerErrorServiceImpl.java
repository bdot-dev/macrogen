package macrogen.www.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import macrogen.www.mapper.SchedulerErrorMapper;
import macrogen.www.service.SchedulerErrorService;
import macrogen.www.vo.SchedulerErrorVo;

/**
 * <pre>
 * macrogen.www.service.impl 
 *    |_ SchedulerErrorServiceImpl.java
 * 개요 : 
 * </pre>
 * 1. 작성일 : 2019. 3. 8. 오후 1:35:41
 * 2. 작성자 : eluocnc
 * @version : 
 */
@Service("schedulerErrorService")
public class SchedulerErrorServiceImpl extends EgovAbstractServiceImpl implements SchedulerErrorService {
	
	@Resource(name="schedulerErrorMapper")
	private SchedulerErrorMapper schedulerErrorMapper;

	/*@Override
	public int count(SchedulerErrorVo schedulerErrorVo) throws Exception {
		return schedulerErrorMapper.count(schedulerErrorVo);
	}

	@Override
	public List<SchedulerErrorVo> list(SchedulerErrorVo schedulerErrorVo) throws Exception {
		return schedulerErrorMapper.list(schedulerErrorVo);
	}

	@Override
	public SchedulerErrorVo view(SchedulerErrorVo schedulerErrorVo) throws Exception {
		return schedulerErrorMapper.view(schedulerErrorVo);
	}

	@Override
	public void insert(SchedulerErrorVo schedulerErrorVo) throws Exception {
		schedulerErrorMapper.insert(schedulerErrorVo);
	}

	@Override
	public void insert(String schedulerId, String errorCn, String refrnId) {
		SchedulerErrorVo schedulerErrorVo = new SchedulerErrorVo();
		schedulerErrorVo.setSchedulerId(schedulerId);
		schedulerErrorVo.setErrorCn(errorCn);
		schedulerErrorVo.setRefrnId(refrnId);
		schedulerErrorMapper.insert(schedulerErrorVo);
	}*/

}
