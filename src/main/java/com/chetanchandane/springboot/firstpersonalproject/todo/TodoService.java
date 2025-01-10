package com.chetanchandane.springboot.firstpersonalproject.todo;

import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

@Service
public class TodoService {
    private static List<Todo> todos = new ArrayList<>();

    static {
        todos.add(new Todo(1,
                "chetan",
                "Learn AWS",
                LocalDate.now().plusYears(1),
                false ));
        todos.add(new Todo(1,
                "chetan",
                "Learn Azure",
                LocalDate.now().plusYears(2),
                false ));
        todos.add(new Todo(1,
                "chetan",
                "Learn GCP",
                LocalDate.now().plusYears(3),
                false ));
    }

    public List<Todo> findByUsername(String username){
        return todos;
    }
}
