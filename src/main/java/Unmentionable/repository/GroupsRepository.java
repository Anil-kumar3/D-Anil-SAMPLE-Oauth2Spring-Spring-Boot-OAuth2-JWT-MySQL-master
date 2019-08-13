package Unmentionable.repository;

import Unmentionable.model.Groups;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

/**
 * Gives to JPA the ability to communicate with database
 */
@Repository
public interface GroupsRepository extends JpaRepository<Groups, Long>{
    // Todo add the custom search query
}
