package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import entity.er;
import util.DBUtil;

public class erDAO {
	public int getTotal() {
        int total = 0;
        try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement();) {
 
            String sql = "select count(*) from er";
 
            ResultSet rs = s.executeQuery(sql);
            while (rs.next()) {
                total = rs.getInt(1);
            }
 
            System.out.println("total:" + total);
 
        } catch (SQLException e) {
 
            e.printStackTrace();
        }
        return total;
    }
 
    public void add(er er) {
 
        String sql = "insert into er values(null,?,?,?)";
        try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS)) {
            ps.setInt(1, er.eid);
        	ps.setString(2, er.name);
            ps.setString(3, er.homeNum);
            ps.execute();
            ResultSet rs = ps.getGeneratedKeys();
            if (rs.next()) {
                int id = rs.getInt(1);
                er.id = id;
            }
        } catch (SQLException e) {
 
            e.printStackTrace();
        }
    }
 
    public void update(er er) {
 
        String sql = "update er set name= ?, homeNum=? where eid = ?";
        try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {
 
            ps.setString(1, er.name);
            ps.setString(2, er.homeNum);
            ps.setInt(3, er.eid);
 
            ps.execute();
 
        } catch (SQLException e) {
 
            e.printStackTrace();
        }
 
    }
 
    public void delete(int id) {
 
        try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement();) {
 
            String sql = "delete from er where eid = " + id;
 
            s.execute(sql);
 
        } catch (SQLException e) {
 
            e.printStackTrace();
        }
    }
 
    public er get(int eid) {
        er er = null;
 
        try (Connection c = DBUtil.getConnection(); Statement s = c.createStatement();) {
 
            String sql = "select * from er where eid = " + eid;
 
            ResultSet rs = s.executeQuery(sql);
 
            if (rs.next()) {
                er = new er();
                int id=rs.getInt("id");
                String name = rs.getString("name");
                String homeNum = rs.getString("homeNum");
                er.id=id;
                er.name = name;
                er.homeNum = homeNum;
                er.eid = eid;
            }
 
        } catch (SQLException e) {
 
            e.printStackTrace();
        }
        return er;
    }
 
    public List<er> list() {
        return list(0, Short.MAX_VALUE);
    }
 
    public List<er> list(int start, int count) {
        List<er> ers = new ArrayList<er>();
 
        String sql = "select * from er order by id desc limit ?,? ";
 
        try (Connection c = DBUtil.getConnection(); PreparedStatement ps = c.prepareStatement(sql);) {
 
            ps.setInt(1, start);
            ps.setInt(2, count);
 
            ResultSet rs = ps.executeQuery();
 
            while (rs.next()) {
                er er = new er();
                int id = rs.getInt(1);
                String name = rs.getString("name");
                String homeNum = rs.getString("homeNum");
                int eid=rs.getInt("eid");
                er.id = id;
                er.eid = eid;
                er.name = name;
                er.homeNum = homeNum;
                ers.add(er);
            }
        } catch (SQLException e) {
 
            e.printStackTrace();
        }
        return ers;
    }
 
    public er getByKey(String name) {
        er er = null;
        String sql = "select * from er where name = ?" ;
        try (Connection c = DBUtil.getConnection();
                PreparedStatement ps = c.prepareStatement(sql);
            ) {
             
            ps.setString(1, name);
            ResultSet rs =ps.executeQuery();
 
            if (rs.next()) {
                er = new er();
                int id = rs.getInt("id");
                int eid=rs.getInt("eid");
                String homeNum = rs.getString("homeNum");
                er.name = name;
                er.homeNum = homeNum;
                er.id = id;
                er.eid=eid;
            }
 
        } catch (SQLException e) {
 
            e.printStackTrace();
        }
        return er;
    }
}
