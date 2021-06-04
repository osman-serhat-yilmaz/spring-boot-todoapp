package com.in28minutes.springboot.web.controller;

import com.in28minutes.springboot.web.domain.Todo;
import com.in28minutes.springboot.web.domain.User;
import com.in28minutes.springboot.web.repository.TodoRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import com.in28minutes.springboot.web.service.LoginService;
import com.in28minutes.springboot.web.service.TodoService;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.validation.Valid;
import java.util.Date;
import java.util.List;
import java.util.Optional;

@Controller
@SessionAttributes("name")
public class TodoController {
	
	@Autowired
	TodoService todoService;
	@Autowired
	TodoRepository todoRepository;

	@RequestMapping(value="/list-todos", method = RequestMethod.GET)
	public String showTodos(ModelMap model){
		String name = (String) model.get("name");
		System.out.println(todoRepository.findByUsername(name).toString());
		model.put("todolist", todoRepository.findByUsername(name));
		model.put("name", name);
		return "user/list-todos";
	}

	@RequestMapping(value = "/createtodo", method = RequestMethod.POST)
	public String create(ModelMap model, @Valid @RequestParam String desc,
						 @Valid @RequestParam String targetDate, RedirectAttributes redirectAttributes) {
		Todo todo = new Todo();
		String name = (String) model.get("name");
		todo.setUser(name);
		todo.setDesc(desc);
		todo.setTargetDate(targetDate);
		todo.setDone(false);
		todoService.save(todo);

		model.put("todolist", todoRepository.findByUsername(name));
		return "user/list-todos";
	}

	@RequestMapping(value="/create-todoform", method = RequestMethod.GET)
	public String createForm (ModelMap model){
		return "todo/create-todo";
	}

	@RequestMapping(value = "/deletetodo", method = RequestMethod.POST)
	public String delete(ModelMap model, @RequestParam String id) {
		todoService.delete(id);
		String name = (String) model.get("name");
		model.put("todolist", todoRepository.findByUsername(name));

		return "redirect:/list-todos";
	}
}
