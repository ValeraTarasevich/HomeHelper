package bntu.fitr.practic.Tarasevich.repos;

import bntu.fitr.practic.Tarasevich.domain.Message;
import org.springframework.data.repository.CrudRepository;

public interface MessageRepos extends CrudRepository<Message, Long> {

}