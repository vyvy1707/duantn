package edu.poly.shop.controller.admin;

import java.io.IOException;
import java.util.Optional;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.StringUtils;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.poly.shop.dao.AccountDAO;
import edu.poly.shop.entity.Account;
import edu.poly.shop.service.AccountService;
import edu.poly.shop.service.ParamService;
import edu.poly.shop.service.SessionService;

@Controller
public class AccountAdminController {
	@Autowired
	AccountService accountService;
	@Autowired
	ParamService paramService;
	@Autowired
	AccountDAO accountDao;
	@Autowired
	SessionService session;

	@GetMapping("/admin/account")
	public String account(Model model) {
		model.addAttribute("ACCOUNTS", new Account());
		return "admin/admin_account_new";
	}

	@RequestMapping("/admin/SearchAccount")
	public String searchAndPage(Model model, @RequestParam("keywordss") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		String kwords = kw.orElse(session.get("keywordss", ""));
		session.set("keywordss", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Account> page = accountDao.findAllByUsernameLike("%" + kwords + "%", pageable);
		model.addAttribute("page", page);
		return "admin/admin_account_views";
		/* return "redirect:/user/index"; */
	}

	@GetMapping("/admin/account_views")
	public String viewAccount(Model model, @RequestParam("p") Optional<Integer> p) {
		session.set("keywordss", "");
		Pageable pageable = PageRequest.of(p.orElse(0), 5);
		Page<Account> page = accountDao.findAll(pageable);
		model.addAttribute("page", page);
		return "admin/admin_account_views";
	}

	@RequestMapping("/admin/edit/{id}")
	public String edit(Model model, @PathVariable("id") String id) {
		Account item = accountDao.findById(id).get();
		model.addAttribute("ACCOUNTS", item);
		return "admin/admin_account_edit";
	}

	@RequestMapping("/admin/edit_profile/{id}")
	public String edit2(Model model, @PathVariable("id") String id) {
		Account item = accountDao.findById(id).get();
		String imgg = item.getPhoto();
		model.addAttribute("imgg", imgg);
		model.addAttribute("ACCOUNTS", item);
		return "admin/admin_account_edit_profile";
	}

	@PostMapping("/admin/Save")
	public String save(@Valid @ModelAttribute("ACCOUNTS") Account ac, Errors errors, Model model,
			@RequestParam("image") MultipartFile multipartFile) throws IOException {
		if (errors.hasErrors()) {
			// Xuất ra thông báo lỗi
			model.addAttribute("message", "Vui lòng nhập các dữ liệu hợp lệ");
			if (multipartFile.isEmpty()) {
				model.addAttribute("error_photo", "Hình ảnh không được để trống");
			}
		} else {
			if (multipartFile.isEmpty()) {
				model.addAttribute("error_photo", "Hình ảnh không được để trống");
			} else {
				String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
				String uploadDir = "upload/";
				ac.setPhoto(fileName);
				accountDao.save(ac);
				paramService.save(multipartFile, uploadDir);
				model.addAttribute("ACCOUNTS", new Account());
				// Xuất ra thông báo chúc mừng
				model.addAttribute("messagee", "Chúc mừng bạn nhập dữ liệu hợp lệ");
			}
		}

		return "admin/admin_account_new";
	}

	@PostMapping("/admin/Update")
	public String update(@Valid @ModelAttribute("ACCOUNTS") Account ac, Errors errors, Model model,
			@RequestParam("image") MultipartFile multipartFile) throws IOException {
		if (errors.hasErrors()) {
			// Xuất ra thông báo lỗi
			model.addAttribute("message", "Vui lòng nhập các dữ liệu hợp lệ");
			if (multipartFile.isEmpty()) {
				model.addAttribute("error_photo", "Hình ảnh không được để trống");
			}
		} else {
			if (multipartFile.isEmpty()) {
				model.addAttribute("error_photo", "Hình ảnh không được để trống");
			} else {
				String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
				String uploadDir = "upload/";
				ac.setPhoto(fileName);
				accountDao.save(ac);
				paramService.save(multipartFile, uploadDir);
				model.addAttribute("ACCOUNTS", new Account());
				// Xuất ra thông báo chúc mừng
				model.addAttribute("messagee", "Chúc mừng bạn cập nhật thành công");
				return "admin/admin_account_new";
			}
		}

		return "admin/admin_account_edit";
	}

	@PostMapping("/admin/UpdateProfile")
	public String updateProfile(@Valid @ModelAttribute("ACCOUNTS") Account ac, Errors errors, Model model,
			@RequestParam("image") MultipartFile multipartFile) throws IOException {
		if (errors.hasErrors()) {
			// Xuất ra thông báo lỗi
			model.addAttribute("message", "Vui lòng nhập các dữ liệu hợp lệ");
			if (multipartFile.isEmpty()) {
				model.addAttribute("error_photo", "Hình ảnh không được để trống");
			}
			Account item = accountDao.findById(ac.getUsername()).get();
			String imgg = item.getPhoto();
			model.addAttribute("imgg", imgg);
		} else {
			if (multipartFile.isEmpty()) {
				model.addAttribute("error_photo", "Hình ảnh không được để trống");
				Account item = accountDao.findById(ac.getUsername()).get();
				String imgg = item.getPhoto();
				model.addAttribute("imgg", imgg);
			} else {
				String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
				String uploadDir = "upload/";
				ac.setPhoto(fileName);
				ac.setActivated(true);
				ac.setAdmin(true);
				accountDao.save(ac);
				paramService.save(multipartFile, uploadDir);
				Account item = accountDao.findById(ac.getUsername()).get();
				String imgg = item.getPhoto();
				model.addAttribute("imgg", imgg);
				model.addAttribute("ACCOUNTS", item);
				// Xuất ra thông báo chúc mừng
				model.addAttribute("messagee", "Chúc mừng bạn cập nhật thành công");
				return "admin/admin_account_edit_profile";
			}
		}

		return "admin/admin_account_edit_profile";
	}

	/*
	 * @PostMapping("/admin/SaveOfUpdate") public String
	 * save(@ModelAttribute("ACCOUNTS") Account ac, Model model,
	 * 
	 * @RequestParam("image") MultipartFile multipartFile) throws IOException {
	 * String fileName = StringUtils.cleanPath(multipartFile.getOriginalFilename());
	 * String uploadDir = "upload/"; ac.setPhoto(fileName); accountDao.save(ac);
	 * paramService.save(multipartFile, uploadDir); model.addAttribute("ACCOUNTS",
	 * new Account()); return "admin/account_admin_new"; }
	 */

	@RequestMapping("/admin/delete/{id}")
	public String create(@PathVariable("id") String id, RedirectAttributes prams) {
		Account item = accountDao.findById(id).get();
		try {
			if (item.getAdmin()) {
				prams.addAttribute("message", "Không thể xóa tài khoản đang đăng nhập");
			} else {
				accountDao.deleteById(id);
			}
		} catch (Exception e) {
			prams.addAttribute("message", "Không thể xóa tài khoản vì đang có đơn hàng");
		}

		return "redirect:/admin/SearchAccount";
	}
}
