package admin.dao;

import java.util.List;
import java.util.Map;

import admin.bean.AdminMembersDTO;
import board.bean.BoardDTO;
import member.bean.MemberDTO;
import product.bean.ProductDTO;
import store.bean.StoreDTO;

public interface AdminDAO {

	public List<MemberDTO> getMemberList(Map<String, Integer> map);

	public int getTotalA();

	public List<MemberDTO> getSearchMember(Map<String, String> map);
	//검색한 후 총글
	public int getTotalB(Map<String, String> map);
	//회원상세보기
	public AdminMembersDTO getMemberView(String id);
	//판매하는물건 총개수
	public int totalSellProduct(String id);
	
	//상점출력
	public List<StoreDTO> getStoreList(Map<String, Integer> map);
	//상점총글수
	public int getTotalC();
	//상점상세보기
	public AdminMembersDTO getStoreView(String id);
	//상점상세보기_물건출력
	public List<ProductDTO> getProductList(String id);
	//상점조건 검색
	public List<StoreDTO> getSearchStoreList(Map<String, String> map);
	//상점조건 건색 페이징
	public int getTotalD(Map<String, String> map);

	public List<StoreDTO> getComplainList(Map<String, Integer> map);

	public List<BoardDTO> searchReportedMember(Map<String, String> map);

	public int getTotalReportedMember(Map<String, String> map);


}
