package edu.poly.shop.dao;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import edu.poly.shop.entity.Account;
import edu.poly.shop.entity.Order;
import edu.poly.shop.entity.Reportt;

public interface OrderDAO extends JpaRepository<Order, Long> {
	List<Order> findByAccount(Account account);

	Page<Order> findByAccountFullnameLike(String keywords, Pageable pageable);

	@Query("SELECT new Reportt(o.account, sum(o.amount), count(o)) " + " FROM Order o " + " GROUP BY o.account"
			+ " ORDER BY sum(o.amount) DESC")
	List<Reportt> getInventoryByAccount();

	@Query(value = "Select sum(amount) as Tong from orders where Year(createdate) like YEAR(GETDATE())", nativeQuery = true)
	Float selectSum();

	@Query(value = "Select sum(amount) as Tong from orders where MONTH(createdate) like MONTH(GETDATE())", nativeQuery = true)
	Float selectSumMonth();

	@Query(value = "Select sum(amount) as Tong from orders where createdate like CAST(GETDATE() AS DATE)", nativeQuery = true)
	Float selectSumDate();
}