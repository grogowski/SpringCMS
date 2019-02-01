package pl.coderslab.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import pl.coderslab.dao.ArticleDao;
import pl.coderslab.dao.CategoryDao;
import pl.coderslab.model.Article;
import pl.coderslab.model.Category;

import java.util.List;

@Controller
public class HomePageController {
    @Autowired
    ArticleDao articleDao;
    @Autowired
    CategoryDao categoryDao;

    @ModelAttribute("lastArticles")
    public List<Article> getLastArticles() {
        return articleDao.getLastFiveArticles();
    }

    @ModelAttribute("categories")
    public List<Category> getCategories() {
        return categoryDao.getAllCategories();
    }

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String home() {
        return "home";
    }

    @RequestMapping(value = "", method = RequestMethod.POST)
    @ResponseBody
    public String showArticlesFromCategory(@RequestParam String categoryId) {
        return categoryId;
    }
}
