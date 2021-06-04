package com.in28minutes.springboot.web.service;

import java.beans.Transient;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import com.in28minutes.springboot.web.repository.TodoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.in28minutes.springboot.web.domain.Todo;
import org.springframework.transaction.annotation.Transactional;

@Service
public class TodoService {

    @Autowired
    TodoRepository todoRepository;

    @Transactional(readOnly = false)
    public Todo save(Todo todo) {
        return todoRepository.save(todo);
    }

    public Todo findOne(String id) {
        return todoRepository.findById(id).get();
    }

    @Transactional(readOnly = false)
    public void delete(String id) {
        todoRepository.deleteById(id);
    }
}