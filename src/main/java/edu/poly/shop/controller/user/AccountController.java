package edu.poly.shop.controller.user;

import java.io.IOException;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
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

import edu.poly.shop.dao.AccountDAO;
import edu.poly.shop.entity.Account;
import edu.poly.shop.service.AccountService;
import edu.poly.shop.service.ParamService;

@Controller
public class AccountController {
	@Autowired
	AccountService accountService;
	@Autowired
	ParamService paramService;
	@Autowired
	AccountDAO accountDao;

	@GetMapping("/user/newAccount")
	public String account(Model model) {
		model.addAttribute("ACCOUNTS", new Account());
		return "user/user_account_new";
	}

	@PostMapping("/user/SaveUserAccount")
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
				ac.setActivated(true);
				ac.setAdmin(false);
				accountDao.save(ac);
				paramService.save(multipartFile, uploadDir);
				model.addAttribute("ACCOUNTS", new Account());
				// Xuất ra thông báo chúc mừng
				model.addAttribute("messagee", "Chúc mừng bạn nhập dữ liệu thành công");
			}
		}

		return "user/user_account_new";
	}

	@PostMapping("/user/UpdateUserAccount")
	public String updateAccount(@Valid @ModelAttribute("ACCOUNTS") Account ac, Errors errors, Model model,
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
				ac.setAdmin(false);
				accountDao.save(ac);
				paramService.save(multipartFile, uploadDir);
				Account item = accountDao.findById(ac.getUsername()).get();
				String imgg = item.getPhoto();
				model.addAttribute("imgg", imgg);
				model.addAttribute("ACCOUNTS", item);
				/* model.addAttribute("ACCOUNTS", new Account()); */
				// Xuất ra thông báo chúc mừng
				model.addAttribute("messagee", "Chúc mừng bạn cập nhật thành công");
				return "user/user_account_edit";
			}
		}

		return "user/user_account_edit";
	}

	@RequestMapping("/user/editUserAccount/{id}")
	public String editAccount(Model model, @PathVariable("id") String id) {
		Account item = accountDao.findById(id).get();
		String imgg = item.getPhoto();
		model.addAttribute("imgg", imgg);
		model.addAttribute("ACCOUNTS", item);
		return "user/user_account_edit";
	}

}
