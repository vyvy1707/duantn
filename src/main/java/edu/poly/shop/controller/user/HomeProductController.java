package edu.poly.shop.controller.user;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import edu.poly.shop.dao.AccountDAO;
import edu.poly.shop.dao.ProductDAO;
import edu.poly.shop.entity.Account;
import edu.poly.shop.entity.Category;
import edu.poly.shop.entity.Product;
import edu.poly.shop.service.CategoryService;
import edu.poly.shop.service.SessionService;
import edu.poly.shop.service.ShoppingCartService;

@Controller
public class HomeProductController {
	@Autowired
	ProductDAO productDAO;
	@Autowired
	CategoryService categoryService;
	@Autowired
	SessionService session;
	@Autowired
	ShoppingCartService shoppingCartService;

	@RequestMapping("/user/mainProduct")
	public String index(Model model, @RequestParam("p") Optional<Integer> p) {
		List<Category> cattte = categoryService.findAll();
		session.set("cattte", cattte);
		session.set("keywords", "");
		Pageable pageable = PageRequest.of(p.orElse(0), 8);
		Page<Product> page = productDAO.findAll(pageable);
		model.addAttribute("page", page);
		model.addAttribute("Count", shoppingCartService.getCount());
		return "user/main_product";
	}

	@RequestMapping("/user/searchmax")
	public String search(Model model, @RequestParam("min") Optional<Double> min,
			@RequestParam("max") Optional<Double> max) {
		double minPrice = min.orElse(Double.MIN_VALUE);
		double maxPrice = max.orElse(Double.MAX_VALUE);
		List<Product> items = productDAO.findByPriceBetween(minPrice, maxPrice);
		model.addAttribute("items", items);
		return "user/main_product_min_max";
	}

	@RequestMapping("/user/searchCatte")
	public String searchAndPage(Model model, @RequestParam("categoryNamee") Optional<String> kw,
			@RequestParam("p") Optional<Integer> p) {
		String kwords = kw.orElse(session.get("categoryNamee", ""));
		session.set("categoryNamee", kwords);
		Pageable pageable = PageRequest.of(p.orElse(0), 8);
		Page<Product> page = productDAO.findByCategoryNameLike("%" + kwords + "%", pageable);
		model.addAttribute("page", page);
		return "user/main_product";
		/* return "redirect:/user/index"; */
	}

	@RequestMapping("/product/sort")
	public String sort(Model model, @RequestParam("field") Optional<String> field) {
		Sort sort = Sort.by(Direction.DESC, field.orElse("price"));
		model.addAttribute("field", field.orElse("price").toUpperCase());
		List<Product> items = productDAO.findAll(sort);
		model.addAttribute("items", items);
		return "user/main_product_min_max";
	}

	/*
	 * @RequestMapping("/user/search") public String searchAndPage(Model
	 * model, @RequestParam("keywords") Optional<String> kw,
	 * 
	 * @RequestParam("p") Optional<Integer> p) { String kwords =
	 * kw.orElse(session.get("keywords", "")); session.set("keywords", kwords);
	 * Pageable pageable = PageRequest.of(p.orElse(0), 8); Page<Product> page =
	 * productDAO.findAllByNameLike("%" + kwords + "%", pageable);
	 * model.addAttribute("page", page); return "user/main"; }
	 */

}
