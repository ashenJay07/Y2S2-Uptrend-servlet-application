package com.db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.model.Inventory;

public class StockViewDBUtil {

	private static String GET_SORTED_STOCK_RECORDS = "SELECT * FROM stock WHERE stock_type=?";
	
	public Inventory getStockViewRecords(int id) {
		
		Inventory inventory = null;
		String stockType = null;
		
		if(id == 1) {
			stockType = "men";
		} else if(id == 2) {
			stockType = "women";
		} else if(id == 3) {
			stockType = "kids";
		} else if(id == 4) {
			stockType = "unisex";
		}
		
		try (Connection connection = DBConnection.getConnection();
				PreparedStatement preStmt = connection.prepareStatement(GET_SORTED_STOCK_RECORDS);) {
			
			preStmt.setString(1, stockType);
			ResultSet rs = preStmt.executeQuery();
			
			while (rs.next()) {
				
				int invId = rs.getInt(1);
				String itemName = rs.getString(2);
				int available = rs.getInt(4);
				double sellPrice = rs.getDouble(6);
				String itemImage = rs.getString(8);
				
				System.out.println(available + " " + itemName);
				
				inventory = new Inventory(invId, itemName, available, sellPrice, itemImage);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return inventory;
		
	}
	
}
