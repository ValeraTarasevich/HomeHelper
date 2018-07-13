package bntu.fitr.practic.Tarasevich.repos;

import bntu.fitr.practic.Tarasevich.domain.User;
import org.springframework.data.jpa.repository.JpaRepository;

public interface UserRepos extends JpaRepository<User, Long>{
    User findByUsername(String username);
}
