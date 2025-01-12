
# Todo Application

A **Spring Boot** Todo application that allows users to manage their tasks efficiently. This project leverages **JSP**, **Bootstrap**, and **Spring MVC** for a clean and user-friendly experience.

---

## Features

- Add, update, delete, and view todos.
- Persistent storage using a static list (can be extended to databases like MySQL, MongoDB, etc.).
- Input validation using **Spring Boot Validation**.
- Modern and responsive UI with **Bootstrap**.
- Dependency injection and RESTful endpoints.

---

## Tech Stack

- **Java**: Core programming language.
- **Spring Boot**: Backend framework.
- **JSP**: For rendering the frontend.
- **Bootstrap & jQuery**: For responsive and interactive UI.
- **Maven**: Dependency management and build tool.

---

## Dependencies

The project uses the following dependencies, defined in the `pom.xml`:

- **Spring Boot Starter Web**
- **Spring Boot DevTools**
- **Spring Boot Starter Test**
- **Tomcat Embed Jasper**
- **JSTL**
- **Spring Boot Starter Validation**
- **WebJars for Bootstrap and jQuery**

---

## Project Structure

```
src
├── main
│   ├── java
│   │   └── com.chetanchandane.springboot.firstpersonalproject
│   │       ├── FirstpersonalprojectApplication.java
│   │       └── todo
│   │           ├── Todo.java
│   │           ├── TodoController.java
│   │           └── TodoService.java
│   ├── resources
│   │   ├── application.properties
│   │   └── META-INF
│   │       └── resources
│   │           └── WEB-INF
│   │               └── jsp
│   │                   ├── listTodos.jsp
│   │                   ├── addTodo.jsp
│   │                   └── error.jsp
│   └── webapp
│       └── static
│           └── css
├── test
│   └── java
└── pom.xml
```

---

## Setup and Run

### Prerequisites

- Java 17+ installed
- Maven installed
- IDE like IntelliJ or Eclipse (Dependency vary denpending on IDE)
- PostgreSQL or MySQL (if using a database instead of static lists)

### Steps to Run

1. Clone the repository:
   ```bash
   git clone https://github.com/chetanchandane/springboot-todo-webapp.git
   cd springboot-todo-webapp
   ```

2. Install dependencies:
   ```bash
   mvn clean install
   ```

3. Run the application:
   ```bash
   mvn spring-boot:run
   ```

4. Open the browser and navigate to:
   ```
   http://localhost:8080/api/v1/list-todos
   ```

---

## Endpoints

| Endpoint               | Method | Description                |
|------------------------|--------|----------------------------|
| `/api/v1/list-todos`   | GET    | Display all todos          |
| `/api/v1/add-todo`     | GET    | Render add todo page       |
| `/api/v1/add-todo`     | POST   | Add a new todo             |
| `/api/v1/update-todo`  | GET    | Render update todo page    |
| `/api/v1/delete-todo`  | POST   | Delete a todo by `id`      |

---

## Screenshots

### Todo List Page

![Todo List](path/to/screenshot-listTodos.png)

### Add Todo Page

![Add Todo](path/to/screenshot-addTodo.png)

---

## Future Enhancements

- Connect to a database (MySQL, PostgreSQL, MongoDB).
- Add user authentication and authorization.
- Implement search and filter functionality.
- Add REST API for integration with front-end frameworks like React or Angular.
- Implement a CI(Continuous Integration) functionality using Github Actions

---

## License

This project is licensed under the [MIT License](LICENSE).

---

## Author

**Chetan Chandane**  
Email: cc5831@rit.edu  
GitHub: [github.com/chetanchandane](https://github.com/chetanchandane)

---

Feel free to modify the file based on your project specifics!
