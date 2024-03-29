package human.smart.totalMall.dao;

import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import human.smart.totalMall.vo.MemberVO;
import human.smart.totalMall.vo.SearchVO;
import human.smart.totalMall.vo.VocVO;
import lombok.RequiredArgsConstructor;

@Repository
@RequiredArgsConstructor
public class MemberDAO {
	public static final String MAPPER = "human.smart.totalMall.MemberMapper";
	
	private final SqlSession sqlSession;
	
	//회원가입하기
	public int join(MemberVO vo) throws SQLException{
		return sqlSession.insert(MAPPER+".join",vo);
	}
	//로그인 처리하기
	public MemberVO login(String member_id) throws SQLException{
		return sqlSession.selectOne(MAPPER+".login", member_id);
	}
	//비밀번호 가져오기
	public String getPassword(String member_id) {
		return sqlSession.selectOne(MAPPER+".getPassword", member_id);
	}
	//아이디 찾기
	public MemberVO findId(String member_name, String email) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("member_name", member_name);
		map.put("email", email);
		
		return sqlSession.selectOne(MAPPER+".findId", map);
	}
	
	//비밀번호 찾기
	public MemberVO findPw(String member_id, String email) {
		Map<String, String> map = new HashMap<String, String>();
		map.put("member_id", member_id);
		map.put("email", email);
		
		return sqlSession.selectOne(MAPPER+".findPw", map);
	}
	
	//비밀번호 변경하기
	public MemberVO findPwProcess(MemberVO vo) throws SQLException{
		MemberVO newVO = null;		
		if(sqlSession.update(MAPPER+".findPwProcess", vo) == 1) {//비밀번호 업데이트 성공
			newVO = getMember(vo.getM_idx());
		}
		return newVO;
	}
	
	//한명의 회원정보 가져오기
	public MemberVO getMember(int m_idx){
		return sqlSession.selectOne(MAPPER+".getMember", m_idx);
	}
	
	//회원정보 전체 가져오기
	public List<MemberVO> getMembers(SearchVO vo){
		return sqlSession.selectList(MAPPER+".getMembers", vo);
	}
		
	//회원등급 변경
	public int gradeUpdate(MemberVO vo) {
		return sqlSession.update(MAPPER+".gradeUpdate", vo);
	}
	
	//개인회원 회원정보 수정하기
	public MemberVO BuyerUpdateProcess(MemberVO vo) throws SQLException{
		MemberVO newVO = null;
		
		if(sqlSession.update(MAPPER+".buyerUpdateProcess", vo) == 1) {
			newVO = getMember(vo.getM_idx());
		}
		return newVO;
	}
	//기업회원 회원정보 수정하기
	public MemberVO SellerUpdateProcess(MemberVO vo) throws SQLException{
		MemberVO newVO = null;
		
		if(sqlSession.update(MAPPER+".sellerUpdateProcess", vo) == 1) {
			newVO = getMember(vo.getM_idx());
		}
		return newVO;
	}
	//회원 탈퇴하기
	public int cancel(int m_idx) throws SQLException {
		return sqlSession.update(MAPPER+".cancel", m_idx);
	}

	//문의 사항 리스트
	public List<VocVO> getInquirylist(){
		return sqlSession.selectList(MAPPER+".getInquirylist");
	}
	public List<VocVO> getInquirylistp(){
		return sqlSession.selectList(MAPPER+".getInquirylistp");
	}

}
