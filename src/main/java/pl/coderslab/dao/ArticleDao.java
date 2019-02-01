package pl.coderslab.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.model.Article;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Repository
@Transactional
public class ArticleDao {
    @PersistenceContext
    private EntityManager entityManager;

    public void saveArticle(Article article) {
        entityManager.persist(article);
    }

    public Article findById(long id) {
        return entityManager.find(Article.class, id);
    }

    public void update(Article article) {
        entityManager.merge(article);
    }

    public boolean deleteById(long id) {
        Article article = findById(id);
        if (article != null) {
            entityManager.remove(article);
            return true;
        }
        return false;
    }

    public List<Article> getAllArticles() {
        Query query = entityManager.createQuery("SELECT a FROM Article a");
        return query.getResultList();
    }

    public List<Article> getLastFiveArticles() {
        Query query = entityManager.createQuery("SELECT a FROM Article a ORDER BY a.created DESC");
        query.setMaxResults(5);
        return query.getResultList();
    }
    
}
