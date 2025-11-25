package com.sims.service;

import com.sims.dao.UserDao;
import com.sims.entity.User;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class UserService {
    private UserDao userDao = new UserDao();

    public boolean login(User user) {
        List<Map> list= userDao.findUserByUsername(user.getUsername());

        if (list == null || list.size() == 0) {
            return false;
        } else {
            if (user.getPassword().equals(list.get(0).get("password").toString())) {
                user.setId((Integer) list.get(0).get("id"));
                return true;
            } else {
                return false;
            }
        }
    }
}
