package admin.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.AdminBoardPaging;
import admin.bean.AdminMembersDTO;
import admin.service.AdminService;
import member.bean.MemberDTO;
import store.bean.StoreDTO;


@Controller
@RequestMapping(value="admin")
public class AdminController {
	@Autowired
	private AdminService adminService;
	
	//메인페이지
	@RequestMapping(value="/adminIndex", method=RequestMethod.GET)
	public String index() {
		return "/admin/adminIndex";
	}
	//로그인
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login() {
		return "/admin/login";
	}
	//전체회원리스트
	@RequestMapping(value="/memberList", method=RequestMethod.GET)
	public String memberList(@RequestParam(required=false, defaultValue="1") String pg,
							 @RequestParam(required=false, defaultValue="20") String viewNum,
							 Model model) {
		System.out.println("컨트롤러= "+ pg+","+viewNum);
		model.addAttribute("pg", pg);
		model.addAttribute("viewNum", viewNum);
		return "/admin/adminPage/memberList";
	}
	//신고된회원리스트
	@RequestMapping(value="/reportedMemberList", method=RequestMethod.GET)
	public String reportedMemberList() {
		return "/admin/adminPage/reportedMemberList";
	}
	//전체상품리스트
	@RequestMapping(value="/productList", method=RequestMethod.GET)
	public String productList() {
		return "/admin/adminPage/productList";
	}
	//신고된상품리스트
	@RequestMapping(value="/reportedProductList", method=RequestMethod.GET)
	public String reportedProductList() {
		return "/admin/adminPage/reportedProductList";
	}
	//전체상품리스트
	@RequestMapping(value="/storeList", method=RequestMethod.GET)
	public String storeList(@RequestParam(required=false, defaultValue="1") String pg,
							Model model) {
		model.addAttribute("pg", pg);
		return "/admin/adminPage/storeList";
	}
	//게시글리스트
	@RequestMapping(value="/boardList", method=RequestMethod.GET)
	public String boardList() {
		return "/admin/adminPage/boardList";
	}
	//일대일문의리스트
	@RequestMapping(value="/memberQnaList", method=RequestMethod.GET)
	public String memberQnaList() {
		return "/admin/adminPage/memberQnaList";
	}
	//공지사항등록
	@RequestMapping(value="/noticeWrite", method=RequestMethod.GET)
	public String noticeWrite() {
		return "/admin/adminPage/noticeWrite";
	}
	
	
	
	//회원정보출력
	@RequestMapping(value="/getMemberList", method=RequestMethod.GET)
	public ModelAndView getMemberList(@RequestParam(required=false, defaultValue="1") String pg,
									  @RequestParam(required=false, defaultValue="20") String viewNum) {
		System.out.println("컨트롤러, list로 들어가는 viewNum = "+viewNum);
		List<MemberDTO> list = adminService.getMemberList(pg,viewNum);
		//페이징처리
		System.out.println("컨트롤러, 페이징으로 들어가는 viewNum = "+viewNum);
		AdminBoardPaging adminBoardPaging = adminService.boardPaging(pg,viewNum);
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("list", list);
		mav.addObject("pg", pg);
		mav.addObject("viewNum", viewNum);
		mav.addObject("adminBoardPaging", adminBoardPaging);
		mav.setViewName("jsonView");
		return mav;
	}
	//회원검색
	@RequestMapping(value="/getSearchMember", method=RequestMethod.POST)
		public ModelAndView getSearchMember(@RequestParam Map<String,String> map) {
		List<MemberDTO> list = adminService.getSearchMember(map); //pg, keyword, searchType, viewNum
		
		//페이징 처리
		AdminBoardPaging adminBoardPaging = adminService.searchBoardPaging(map);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("pg", map.get("pg"));
		mav.addObject("list", list);
		mav.addObject("adminBoardPaging", adminBoardPaging);
		mav.setViewName("jsonView");
		return mav;
	}
	//회원정보
	@RequestMapping(value="/memberView", method=RequestMethod.POST)
	public ModelAndView memberView(@RequestParam String id) {	
		
		AdminMembersDTO adminMembersDTO= adminService.getMemberView(id);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("adminMembersDTO", adminMembersDTO);
		mav.setViewName("jsonView");
	
		return mav;
	}
	
	
	//상점전체 출력
	@RequestMapping(value="/getStoreList", method=RequestMethod.GET)
	public ModelAndView getStoreList(@RequestParam(required=false, defaultValue="1") String pg) {
		List<StoreDTO> storeList = adminService.getStoreList(pg);
		//페이징처리
		AdminBoardPaging adminStoreBP = adminService.StoreBP(pg);
				
		ModelAndView mav = new ModelAndView();
		mav.addObject("storeList", storeList);
		mav.addObject("pg", pg);
		mav.addObject("adminStoreBP", adminStoreBP);
		mav.setViewName("jsonView");
		return mav;
	}
	//상점정보
	@RequestMapping(value="/storeView", method=RequestMethod.POST)
	public ModelAndView getstoreView(@RequestParam String id) {	
		
		StoreDTO storeDTO= adminService.getStoreView(id);
		
		ModelAndView mav = new ModelAndView();
		mav.addObject("storeDTO", storeDTO);
		mav.setViewName("jsonView");
	
		return mav;
	}
		

	
	
	
	
}
