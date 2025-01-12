<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Todo List</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f9f9f9;
      margin: 0;
      padding: 20px;
    }
    h1 {
      text-align: center;
      color: #333;
    }
    table {
      width: 80%;
      margin: 20px auto;
      border-collapse: collapse;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    th, td {
      padding: 10px;
      text-align: left;
      border: 1px solid #ddd;
    }
    th {
      background-color: #007bff;
      color: white;
    }
    tr:nth-child(even) {
      background-color: #f2f2f2;
    }
    tr:hover {
      background-color: #e6f7ff;
    }
    .status {
      text-align: center;
    }
  </style>
</head>
<body>

<h1>Todo List</h1>

<table>
  <thead>
    <tr>
      <th>ID</th>
      <th>Username</th>
      <th>Description</th>
      <th>Target Date</th>
      <th>Status</th>
      <th></th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <!-- Dynamic content will go here -->
    <c:forEach var="todo" items="${todos}">
      <tr>
        <td>${todo.id}</td>
        <td>${todo.username}</td>
        <td>${todo.description}</td>
        <td>${todo.targetDate}</td>
        <td class="status">${todo.status ? "Completed" : "Pending"}</td>
        <td>
                          <form action="/api/v1/update-todo" method="GET" style="display: inline;">
                            <input type="hidden" name="id" value="${todo.id}" />
                            <button type="submit" class="btn btn-success">Update</button>
                          </form>
        </td>
        <td>
                  <form action="/api/v1/delete-todo" method="POST" style="display: inline;">
                    <input type="hidden" name="id" value="${todo.id}" />
                    <button type="submit" class="btn btn-warning">Delete</button>
                  </form>
        </td>
      </tr>
    </c:forEach>
  </tbody>
</table>
<a href="/api/v1/add-todo" class="btn btn-success add-todo-btn">Add Todo</a>
<!-- Bootstrap JS from WebJars -->
<script src="/webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>

<!-- jQuery from WebJars -->
<script src="/webjars/jquery/3.6.0/jquery.min.js"></script>

</body>
</html>