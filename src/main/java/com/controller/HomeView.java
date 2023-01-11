package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.db.StockViewDBUtil;
import com.model.Inventory;

@WebServlet({ "/HomeView", "/stock-view" })
public class HomeView extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private StockViewDBUtil stockViewDBUtil;
	
    public HomeView() {
    	stockViewDBUtil = new StockViewDBUtil();
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.getWriter().append("Served at: ").append(request.getContextPath());
		
		int itemId = Integer.parseInt(request.getParameter("id"));
		
		Inventory stockViewRecord = stockViewDBUtil.getStockViewRecords(itemId);
		request.setAttribute("stockViewRecord", stockViewRecord);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("delete.jsp");
		dispatcher.forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
