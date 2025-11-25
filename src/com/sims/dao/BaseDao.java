package com.sims.dao;

import com.sims.util.ConfigManager;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BaseDao {
    protected Connection conn = null;
    protected PreparedStatement ps = null;
    protected ResultSet rs = null;

    //打开连接方法openConnection()
    protected void openConnection() {
        String driver = ConfigManager.getInstance().getString("jdbc.driver_class");
        String url = ConfigManager.getInstance().getString("jdbc.connection.url");
        String username = ConfigManager.getInstance().getString("jdbc.connection.username");
        String password = ConfigManager.getInstance().getString("jdbc.connection.password");
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(url, username, password);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //关闭资源方法closeResource()
    protected boolean closeResource() {
        try {
            if (rs != null) rs.close();
            if (ps != null) ps.close();
            if (conn != null) conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        return true;
    }

    //新增方法doInsert()
    public int doInsert(String sql, Object[] params){
        int ID = 0;
        try {
            openConnection();
            ps = conn.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS);
            for (int i = 0; i < params.length; i++) {
                ps.setObject(i + 1, params[i]);
            }
            ps.executeUpdate();
            ResultSet rs = ps.getGeneratedKeys();
            if(rs.next()){
                ID = rs.getInt(1);
            }
            System.out.println("插入成功，自增ID为"+ID);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResource();
        }
        return ID;
    }

    //新增修改删除方法doCUD()
    public int doCUD(String sql, Object[] params) {
        int rows = 0;
        try {
            openConnection();
            ps = conn.prepareStatement(sql);
            for (int i = 0; i < params.length; i++) {
                ps.setObject(i + 1, params[i]);
            }
            rows = ps.executeUpdate();
            System.out.println("本次操作共更新数据" + rows + "条");
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResource();
        }
        return rows;
    }

    //查询方法doSelect()
    public List doSelect(String sql, Object[] params) {
        List<Map> list = new ArrayList<Map>();
        try {
            openConnection();
            ps = conn.prepareStatement(sql);
            for (int i = 0; i < params.length; i++) {
                ps.setObject(i + 1, params[i]);
            }
            rs = ps.executeQuery();
            ResultSetMetaData metaData = rs.getMetaData();
            int cols_len = metaData.getColumnCount();
            while (rs.next()) {
                Map map = new HashMap();
                for (int i = 0; i < cols_len; i++) {
                    String cols_name = metaData.getColumnName(i + 1);
                    Object cols_value = rs.getObject(cols_name);
                    if (cols_value == null) {
                        cols_value = "";
                    }
                    map.put(cols_name, cols_value);
                }
                list.add(map);
            }
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            closeResource();
        }
        return list;
    }

}
