package web.service;

import web.model.User;

import java.util.List;

public interface UserService {
    void add(User user);
    public List<User> getAllUsers();
    public User getUser(long id);
    public void deleteUser(long id);
}
