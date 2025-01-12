package com.chetanchandane.springboot.firstpersonalproject.todo;

import jakarta.validation.Valid;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;
import java.util.function.Predicate;

@Service
public class TodoService {
    private static List<Todo> todos = new ArrayList<>();
    private static int todosCount = 0;
    static {
        todos.add(new Todo(++todosCount,
                "chetan",
                "Learn AWS",
                LocalDate.now().plusYears(1),
                false ));
        todos.add(new Todo(++todosCount,
                "chetan",
                "Learn Azure",
                LocalDate.now().plusYears(2),
                false ));
        todos.add(new Todo(++todosCount,
                "chetan",
                "Learn GCP",
                LocalDate.now().plusYears(3),
                false ));
    }

    public List<Todo> findByUsername(String username){
        return todos;
    }

    public void addTodo(String username, String description, LocalDate targetDate, boolean status){
        Todo todo = new Todo(++todosCount, username, description, targetDate, status);
        todos.add(todo);
    }
    
    public static void deleteById(int id){
        Predicate<? super Todo> predicate = todo -> todo.getId()==id;
        todos.removeIf(predicate);
    }
    public Todo findById(int id){
        Predicate<? super Todo> predicate = todo -> todo.getId()==id;
        return todos.stream().filter(predicate).findFirst().get();
    }

    public void updateTodo(@Valid Todo todo){
        Todo existingTodo = findById(todo.getId());
        if(existingTodo != null){
//            System.out.println(existingTodo);
            existingTodo.setDescription(todo.getDescription());
            existingTodo.setTargetDate(todo.getTargetDate());
            existingTodo.setStatus(todo.isStatus());
        }
        else {
            System.out.println("Todo is missing! id="+ todo.getId());
        }

    }
}
