package service;

import model.Blog;

import java.util.List;

public interface BlogService {
    List<Blog> findAll();

    void save(Blog blog);

    Blog findById(int id);

    void update(int id, Blog blog);

    void remove(int id);

    List<Blog> findBySearch(String title);
}
