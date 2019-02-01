package pl.coderslab.dao;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import pl.coderslab.model.Category;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import java.util.List;

@Repository
@Transactional
public class CategoryDao {
    @PersistenceContext
    private EntityManager entityManager;

    public void saveCategory(Category category) {
        entityManager.persist(category);
    }

    public Category findById(long id) {
        return entityManager.find(Category.class, id);
    }

    public void update(Category category) {
        entityManager.merge(category);
    }

    public boolean deleteById(long id) {
        Category category = findById(id);
        if (category != null) {
            entityManager.remove(category);
            return true;
        }
        return false;
    }

    public List<Category> getAllCategories() {
        Query query = entityManager.createQuery("SELECT a FROM Category a");
        return query.getResultList();
    }
    
}
