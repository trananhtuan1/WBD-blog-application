package service;

import model.Blog;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class BlogServiceImpl implements BlogService {
    private static Map<Integer, Blog> blogMap;

    static {
        blogMap = new HashMap<>();
    }

    @Override
    public List<Blog> findAll() {
        return new ArrayList<>(blogMap.values());
    }

    @Override
    public void save(Blog blog) {
        blogMap.put(blog.getId(), blog);
    }

    @Override
    public Blog findById(int id) {
        return blogMap.get(id);
    }

    @Override
    public void update(int id, Blog blog) {
        blogMap.put(id, blog);
    }

    @Override
    public void remove(int id) {
        blogMap.remove(id);
    }

    @Override
    public List<Blog> findBySearch(String title) {
        List<Blog> blogs = new ArrayList<>();
        for (Blog blog : blogMap.values()) {
//            System.out.println(blog);
            if (blog.getTitle().contains(title)) {
                blogs.add(blogMap.get(blog.getId()));
            }
        }
        return blogs;
    }
}
