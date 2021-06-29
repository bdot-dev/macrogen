package macrogen.www.service;

import java.util.List;

import macrogen.www.vo.MngrurlVo;

public interface MngrurlService {

	MngrurlVo view(MngrurlVo urlVo) throws Exception;

	MngrurlVo likeView(MngrurlVo urlVo) throws Exception;

	List<MngrurlVo> list(MngrurlVo mngrurlVo) throws Exception;

	void insert(MngrurlVo mngrurlVo) throws Exception;

	void update(MngrurlVo mngrurlVo) throws Exception;

	void delete(MngrurlVo mngrurlVo) throws Exception;

	int count(MngrurlVo mngrurlVo) throws Exception;

	MngrurlVo likeOne(String path) throws Exception;
}
