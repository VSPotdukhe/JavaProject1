package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import conn.DBConn;
import model.Product;

public class ProductDAO
{
	Connection conn;
	public ProductDAO() throws Exception
	{
		conn=DBConn.getConn();
	}
	
	public boolean deleteProduct(int productId) throws Exception
	{
		PreparedStatement psmt=conn.prepareStatement("delete from Product where productid=?");
		
		psmt.setInt(1, productId);
		
		int row_eff=psmt.executeUpdate();
		
		if(row_eff>0)
			return true;
		else
			return false;
	}
	
	public List<Product> getProductList() throws Exception
	{
		ArrayList<Product> productList=new ArrayList<Product>();
		
		Statement statement=conn.createStatement();
		
		ResultSet rs=statement.executeQuery("select * from Product");
		
		while(rs.next())
		{
			Product product=new Product();
			
			product.setProductId(rs.getInt(1));
			product.setProductName(rs.getString(2));
			product.setPrice(rs.getInt(3));
			product.setDescription(rs.getString(4));
			product.setStock(rs.getInt(5));
			product.setCategory(rs.getString(6));
			product.setSupplier(rs.getString(7));
			
			productList.add(product);
		}
		
		statement.close();
		return productList;
	}
	
	public boolean insertProduct(Product productObj) throws Exception
	{
		PreparedStatement psmt=conn.prepareStatement("insert into product(productname,price,productdesc,stock,category,supplier) values(?,?,?,?,?,?)");
		
		psmt.setString(1, productObj.getProductName());
		psmt.setInt(2, productObj.getPrice());
		psmt.setString(3, productObj.getDescription());
		psmt.setInt(4, productObj.getStock());
		psmt.setString(5, productObj.getCategory());
		psmt.setString(6, productObj.getSupplier());
		
		int row_eff=psmt.executeUpdate();
		
		psmt.close();
		
		if(row_eff>0)
			return true;
		else
			return false;
	}
}
