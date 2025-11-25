package com.sims.dao;

import com.sims.entity.User;

import java.util.List;
import java.util.Map;

public class UserDao extends BaseDao  {
    public List<Map> findUserByUsername(String username) {
        String sql = "SELECT * from `user` WHERE username=?";
        Object[] params = new Object[] { username };
        List<Map> list = doSelect(sql, params);
        return  list;
    }
}
