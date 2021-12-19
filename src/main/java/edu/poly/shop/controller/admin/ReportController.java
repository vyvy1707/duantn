package edu.poly.shop.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import edu.poly.shop.dao.OrderDAO;
import edu.poly.shop.dao.ProductDAO;
import edu.poly.shop.entity.Report;
import edu.poly.shop.entity.Reportt;

@Controller
public class ReportController {

	@Autowired
	ProductDAO dao;
	@Autowired
	OrderDAO daoo;

	@RequestMapping("/admin/report")
	public String inventory(Model model) {
		List<Report> items = dao.getInventoryByCategory();
		List<Reportt> itemss = daoo.getInventoryByAccount();
		Float summ = daoo.selectSum();
		Float sumMonth = daoo.selectSumMonth();
		Float sumDate = daoo.selectSumDate();
		model.addAttribute("items", items);
		model.addAttribute("itemss", itemss);
		model.addAttribute("summ", summ);
		model.addAttribute("summMonth", sumMonth);
		model.addAttribute("summDate", sumDate);
		return "admin/admin_report";
	}

}
