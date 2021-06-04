package com.in28minutes.springboot.web.repository;

import com.in28minutes.springboot.web.domain.User;
import org.springframework.data.couchbase.repository.CouchbaseRepository;
import org.springframework.stereotype.Repository;

import java.util.Dictionary;
import java.util.List;

@Repository
public interface UserRepository extends CouchbaseRepository<User, String> {
    List<User> findByName(String name);
}