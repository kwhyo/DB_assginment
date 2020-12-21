package com.kwce.controller;
import java.io.File;
import java.util.Iterator;
import java.util.List;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.kwce.domain.Criteria;
import com.kwce.domain.BoardVO;
import com.kwce.service.BoardService;
import com.kwce.domain.PageMaker;
import com.kwce.domain.SearchCriteria;

@Controller
@RequestMapping("/board/*")
public class BoardController{
	
	private static final Logger logger = LoggerFactory.getLogger(BoardController.class);
	
	@Autowired
	private BoardService service;
	
	 @RequestMapping(value = "/read_actor", method = RequestMethod.GET)
	   public String read_actor(@RequestParam("a_name")String a_name, Model model)throws Exception{
	   logger.info("read page get...");
	   List<BoardVO> list = service.read_actor(a_name);
	   model.addAttribute("read_actor", list);
	   //model.addAttribute();
	   
	   return "board/read_actor";
	}
	   	
	@RequestMapping(value = "/list")
    public String list(@ModelAttribute("criteria") SearchCriteria criteria, Model model) throws Exception {
        logger.info("list() : called...");
        logger.info(criteria.toString());
        List<BoardVO> list = service.list(criteria);
        
        PageMaker pageMaker = new PageMaker();
        pageMaker.setCriteria(criteria);
        pageMaker.setTotalCount(service.listCount(criteria));
        
        model.addAttribute("list", list);
        model.addAttribute("pageMaker", pageMaker);
        
        model.addAttribute("totalCount", service.listCount(criteria));
        return "board/list";
    }
	
	@RequestMapping(value="/register")//, method = RequestMethod.GET)
	public String registerGET(BoardVO board, Model model)throws Exception{
		logger.info("register page get......");
		return "board/register";
	}
	
	@RequestMapping(value="/register", method = RequestMethod.POST)
	public String registPOST(BoardVO board, RedirectAttributes rttr)throws Exception{
	logger.info("register page post......");
	logger.info(board.toString());
	service.regist(board);
	rttr.addFlashAttribute("msg", "SUCCESS");
	return "redirect:/board/list";
}
	@RequestMapping(value = "/read", method = RequestMethod.GET)
	public String read(@RequestParam("m_ID")int m_ID, Model model)throws Exception{
	logger.info("read page get...");
	model.addAttribute(service.read(m_ID));
	return "board/read";
	}
	
	@RequestMapping(value = "/modify", method = RequestMethod.GET)
	public String modifyGET(@RequestParam("m_ID")int m_ID, Model model)throws Exception{
	logger.info("modify page get...");
	model.addAttribute(service.read(m_ID));
	return "board/modify";
	}
	@RequestMapping(value="/modify", method = RequestMethod.POST)
	public String modifyPOST(BoardVO board, RedirectAttributes rttr)throws Exception{
	logger.info("modify page post......");
	logger.info(board.toString());
	service.modify(board);
	rttr.addFlashAttribute("msg", "SUCCESS");
	return "redirect:/board/list";
}
	@RequestMapping(value = "/remove", method = RequestMethod.POST)
	public String remove(@RequestParam("m_ID") int m_ID, RedirectAttributes rttr) throws Exception{
	service.remove(m_ID);
	logger.info("remove page post......");
	rttr.addFlashAttribute("msg", "SUCCESS");
	return "redirect:/board/list";
	}
	@RequestMapping(value = "/listCriteria", method = RequestMethod.GET)
	public String listCriteria(Model model, Criteria criteria)throws Exception{
		logger.info("listCriteria...");
		model.addAttribute("boards",service.listCriteria(criteria));
		return "/board/list_criteria";
	}
	
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login(Model model, String error, String logout) {
		logger.info("login page get...");
		return "board/login";
	}
	
	@RequestMapping(value="/callback", method=RequestMethod.GET)
	public String naverlogin(Model model, String error, String logout) {
		logger.info("login page get...");
		return "board/list";
	}
	
	@RequestMapping(value="/homepage")
	public String homepage(Model model, String error, String logout) {
		logger.info("homepage get...");
		return "board/homepage";
	}
	@RequestMapping(value="/mypage")
	public String mypage(Model model, String error, String logout) {
		logger.info("mypage get...");
		return "board/mypage";
	}
	@RequestMapping(value = "/list_anima")
    public String list_anima(@ModelAttribute("criteria") SearchCriteria criteria, Model model) throws Exception {
        logger.info("list_anima() : called...");
        logger.info(criteria.toString());
        List<BoardVO> list = service.listAnima(criteria);
        
        PageMaker pageMaker = new PageMaker();
        pageMaker.setCriteria(criteria);
        pageMaker.setTotalCount(service.listCount(criteria));
        
        model.addAttribute("list", list);
        model.addAttribute("pageMaker", pageMaker);
        
        model.addAttribute("totalCount", service.listCount(criteria));
        return "board/list";
    }
	
	@RequestMapping(value = "/list_drama")
    public String list_drama(@ModelAttribute("criteria") SearchCriteria criteria, Model model) throws Exception {
        logger.info("list_drama() : called...");
        logger.info(criteria.toString());
        List<BoardVO> list = service.listDrama(criteria);
        
        PageMaker pageMaker = new PageMaker();
        pageMaker.setCriteria(criteria);
        pageMaker.setTotalCount(service.listCount(criteria));
        
        model.addAttribute("list", list);
        model.addAttribute("pageMaker", pageMaker);
        
        model.addAttribute("totalCount", service.listCount(criteria));
        return "board/list";
    }
	
	@RequestMapping(value = "/list_sf")
    public String list_sf(@ModelAttribute("criteria") SearchCriteria criteria, Model model) throws Exception {
        logger.info("list_sf() : called...");
        logger.info(criteria.toString());
        List<BoardVO> list = service.listSF(criteria);
        
        PageMaker pageMaker = new PageMaker();
        pageMaker.setCriteria(criteria);
        pageMaker.setTotalCount(service.listCount(criteria));
        
        model.addAttribute("list", list);
        model.addAttribute("pageMaker", pageMaker);
        
        model.addAttribute("totalCount", service.listCount(criteria));
        return "board/list";
    }

	@RequestMapping(value = "/list_actor20")
    public String list_actor20(@ModelAttribute("criteria") SearchCriteria criteria, Model model) throws Exception {
        logger.info("list_actor20() : called...");
        logger.info(criteria.toString());
        List<BoardVO> list = service.listActor20(criteria);
        logger.info(list.toString());
        PageMaker pageMaker = new PageMaker();
        pageMaker.setCriteria(criteria);
        pageMaker.setTotalCount(service.listCount(criteria));
        
        model.addAttribute("listActor20", list);
        model.addAttribute("pageMaker", pageMaker);
        
        model.addAttribute("totalCount", service.listCount(criteria));
        return "board/list_actor20";
    }
	
	@RequestMapping(value = "/list_actor30")
    public String list_actor30(@ModelAttribute("criteria") SearchCriteria criteria, Model model) throws Exception {
        logger.info("list_actor30() : called...");
        logger.info(criteria.toString());
        List<BoardVO> list = service.listActor30(criteria);
        
        PageMaker pageMaker = new PageMaker();
        pageMaker.setCriteria(criteria);
        pageMaker.setTotalCount(service.listCount(criteria));
        
        model.addAttribute("listActor30", list);
        model.addAttribute("pageMaker", pageMaker);
        
        model.addAttribute("totalCount", service.listCount(criteria));
        return "board/list_actor30";
    }
	
	@RequestMapping(value = "/list_actor40")
    public String list_actor40(@ModelAttribute("criteria") SearchCriteria criteria, Model model) throws Exception {
        logger.info("list_actor40() : called...");
        logger.info(criteria.toString());
        List<BoardVO> list = service.listActor40(criteria);
        
        PageMaker pageMaker = new PageMaker();
        pageMaker.setCriteria(criteria);
        pageMaker.setTotalCount(service.listCount(criteria));
        
        model.addAttribute("listActor40", list);
        model.addAttribute("pageMaker", pageMaker);
        
        model.addAttribute("totalCount", service.listCount(criteria));
        return "board/list_actor40";
    }
	
	@RequestMapping(value = "/list_jgcgv")
    public String list_jgcgv(@ModelAttribute("criteria") SearchCriteria criteria, Model model) throws Exception {
        logger.info("list_jgcgv() : called...");
        logger.info(criteria.toString());
        List<BoardVO> list = service.listJGcgv(criteria);
        
        PageMaker pageMaker = new PageMaker();
        pageMaker.setCriteria(criteria);
        pageMaker.setTotalCount(service.listCount(criteria));
        
        model.addAttribute("listJGcgv", list);
        model.addAttribute("pageMaker", pageMaker);
        
        model.addAttribute("totalCount", service.listCount(criteria));
        return "board/list_jgcgv";
    }
	
	@RequestMapping(value = "/list_nwlt")
    public String list_nwlt(@ModelAttribute("criteria") SearchCriteria criteria, Model model) throws Exception {
        logger.info("list_jgcgv() : called...");
        logger.info(criteria.toString());
        List<BoardVO> list = service.listNWlt(criteria);
        
        PageMaker pageMaker = new PageMaker();
        pageMaker.setCriteria(criteria);
        pageMaker.setTotalCount(service.listCount(criteria));
        
        model.addAttribute("listNWlt", list);
        model.addAttribute("pageMaker", pageMaker);
        
        model.addAttribute("totalCount", service.listCount(criteria));
        return "board/list_nwlt";
    }
	
	@RequestMapping(value = "/list_macgv")
    public String list_macgv(@ModelAttribute("criteria") SearchCriteria criteria, Model model) throws Exception {
        logger.info("list_macgv() : called...");
        logger.info(criteria.toString());
        List<BoardVO> list = service.listMAcgv(criteria);
        logger.info(list.toString());
        PageMaker pageMaker = new PageMaker();
        pageMaker.setCriteria(criteria);
        pageMaker.setTotalCount(service.listCount(criteria));
        
        model.addAttribute("listMAcgv", list);
        model.addAttribute("pageMaker", pageMaker);
        
        model.addAttribute("totalCount", service.listCount(criteria));
        return "board/list_macgv";
    }
//파일업로드	
	@RequestMapping(value = "/read")
    public void ajaxUpload(MultipartHttpServletRequest multi) {
		   // 
    	String path="C:/uploadFile/";   
        File dir = new File(path);
        if(!dir.isDirectory()){
            dir.mkdir();
        }
         
        Iterator<String> files = multi.getFileNames();
        while(files.hasNext()){
            String uploadFile = files.next();         
            MultipartFile mFile = multi.getFile(uploadFile);
            String fileName = mFile.getOriginalFilename();
            try {
                mFile.transferTo(new File(path+fileName));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return;
	}
}