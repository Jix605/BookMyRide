package com.bookmyride.dao;

import com.bookmyride.model.RegisterUserDto;
import com.bookmyride.model.User;

import java.util.List;

public interface UserDao {

    List<User> getUsers();

    User getUserById(String id);

    User getUserByUsername(String username);

    User createUser(RegisterUserDto user);
}
