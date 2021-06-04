package com.in28minutes.springboot.web.repository;

import com.in28minutes.springboot.web.domain.Todo;
import com.in28minutes.springboot.web.domain.User;
import org.springframework.data.couchbase.repository.CouchbaseRepository;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TodoRepository extends CouchbaseRepository<Todo, String> {
    List<Todo> findByUsername(String username);
}