package com.chetanchandane.springboot.firstpersonalproject.todo;

import jakarta.validation.Valid;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import java.time.LocalDate;
import java.util.List;

@Controller
@SessionAttributes("username")
public class TodoController {

    private TodoService todoService;

    public TodoController(TodoService todoService) {
        this.todoService = todoService;
    }

    //list-todos
    @RequestMapping("/api/v1/list-todos")
    public String listAllTodos(ModelMap model){
        String username = getLoggedInUsername(model);
        List<Todo> todos = todoService.findByUsername(username);
        model.addAttribute("todos", todos);
        return "listTodos";
    }


    //GET add new todo
    @RequestMapping(value = "/api/v1/add-todo", method = RequestMethod.GET)
    public String addTodo(ModelMap model){
        String username = getLoggedInUsername(model);
        Todo todo = new Todo(0, username, "", LocalDate.now().plusYears(1), false);
        model.put("todo", todo);
        return "addTodo";
    }

    //POST add new todo
    @RequestMapping(value = "/api/v1/add-todo", method = RequestMethod.POST)
    public String addNewTodoPost(ModelMap model, @Valid Todo todo, BindingResult result){

        if(result.hasErrors()){
            return "addTodo";
        }
        String username = getLoggedInUsername(model);
        todoService.addTodo(username, todo.getDescription(), todo.getTargetDate(), false);
        return "redirect:/api/v1/list-todos";
    }

    @RequestMapping("api/v1/delete-todo")
    public String deleteTodo(@RequestParam int id, ModelMap model){
        //Delete todo
        TodoService.deleteById(id);
        return "redirect:list-todos";
    }

    //Update-Get
    @RequestMapping(value = "api/v1/update-todo", method = RequestMethod.GET)
    public String showUpdatedTodoPage(@RequestParam int id, ModelMap model){
        //Update todo
        Todo todo = todoService.findById(id);
        model.addAttribute("todo", todo);
        return "addTodo";
    }

    //Update-post
    @RequestMapping(value = "/api/v1/update-todo", method = RequestMethod.POST)
    public String updateTodo(ModelMap model, @Valid Todo todo, BindingResult result){

//        System.out.println("received this todo:" + todo);
        if(result.hasErrors()){
            return "addTodo";
        }
        String username = getLoggedInUsername(model);
        todo.setUsername(username);
        todoService.updateTodo(todo);
        return "redirect:/api/v1/list-todos";
    }

    // Who is the user? Get their name-
    private static String getLoggedInUsername(ModelMap model) {
        Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
        return authentication.getName();
    }


}
