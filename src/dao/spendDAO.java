package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import entity.Category;
import util.DBUtil;
import util.DateUtil;

public class spendDAO {
	    
	    public int[] list(Date start, Date end) {
	        String[] category=new String[] {"��ҵ�����","ˮ��","���","ú����","���ߵ��ӷ�","��ů��","ҵ��������ɷ�"};
	        int[] spend=new int[7];
	        
	 
	        String sql = "select*from category inner join record on category.id=record.cid where date >=? and date <=? ";
	 
	        try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {
	 
	        	ps.setDate(1, DateUtil.util2sql(start));
	            ps.setDate(2, DateUtil.util2sql(end));
	 
	            ResultSet rs = ps.executeQuery();
	 
	            while (rs.next()) {
	                int spends=rs.getInt("spend");
	                int cid=rs.getInt("cid");
	                spend[cid-1]+=spends;
	            }
	        } catch (SQLException e) {
	 
	            e.printStackTrace();
	        }
	        return spend;
	    }
}
