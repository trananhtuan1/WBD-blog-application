package controller;

import model.Blog;
import service.BlogService;
import service.BlogServiceImpl;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@javax.servlet.annotation.WebServlet(name = "BlogServlet", urlPatterns = "/display")
public class BlogServlet extends javax.servlet.http.HttpServlet {
    private static BlogService blogService = new BlogServiceImpl();

    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response)
            throws javax.servlet.ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createBlog(request, response);
                break;
            case "edit":
                editBlog(request, response);
                break;
            case "delete":
                deleteBlog(request, response);
                break;
        }
    }

    private void deleteBlog(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));

        Blog blog = this.blogService.findById(id);
        RequestDispatcher dispatcher;
        if (blog == null) {
            dispatcher = request.getRequestDispatcher("/error.jsp");
        } else {
            this.blogService.remove(id);
            dispatcher = request.getRequestDispatcher("/delete.jsp");
        }
        try {
            response.sendRedirect("/display");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void editBlog(HttpServletRequest request, HttpServletResponse response) {
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        int id = Integer.parseInt(request.getParameter("id"));

        Blog blog = this.blogService.findById(id);
        RequestDispatcher dispatcher;
        if (blog == null) {
            dispatcher = request.getRequestDispatcher("/error.jsp");
        } else {
            this.blogService.update(id, blog);
            blog.setTitle(title);
            blog.setContent(content);
            dispatcher = request.getRequestDispatcher("/edit.jsp");
            request.setAttribute("edit", blog);
            request.setAttribute("message", "done");
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createBlog(HttpServletRequest request, HttpServletResponse response) {
        String title = request.getParameter("title");
        String content = request.getParameter("content");
        int id = (int) (Math.random() * 10);

        Blog blog = new Blog(id, title, content);
        this.blogService.save(blog);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/create.jsp");
        request.setAttribute("message", "done");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request,
                         javax.servlet.http.HttpServletResponse response)
            throws javax.servlet.ServletException, IOException {
        String action = request.getParameter("action");
        if (action == null) {
            action = "";
        }
        switch (action) {
            case "create":
                createFormBlog(request, response);
                break;
            case "edit":
                showEditBlog(request, response);
                break;
            case "delete":
                showDeleteBlog(request, response);
                break;
            default:
                showListBlog(request, response);
                break;
        }
    }

    private void showDeleteBlog(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));

        Blog blog = this.blogService.findById(id);
        RequestDispatcher dispatcher;
        if (blog == null) {
            dispatcher = request.getRequestDispatcher("/error.jsp");
        } else {
            dispatcher = request.getRequestDispatcher("/delete.jsp");
            request.setAttribute("delete", blog);
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void showEditBlog(HttpServletRequest request, HttpServletResponse response) {
        int id = Integer.parseInt(request.getParameter("id"));

        Blog blog = this.blogService.findById(id);
        RequestDispatcher dispatcher;
        if (blog == null) {
            dispatcher = request.getRequestDispatcher("/error.jsp");
        } else {
            dispatcher = request.getRequestDispatcher("/edit.jsp");
            request.setAttribute("edit", blog);
        }
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private void createFormBlog(HttpServletRequest request, HttpServletResponse response) {
        RequestDispatcher dispatcher = request.getRequestDispatcher("/create.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    private void showListBlog(HttpServletRequest request, HttpServletResponse response) {
        List<Blog> blogList = this.blogService.findAll();

        request.setAttribute("x1", blogList);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/list.jsp");
        try {
            dispatcher.forward(request, response);
        } catch (ServletException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}