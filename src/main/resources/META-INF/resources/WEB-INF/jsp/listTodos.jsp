<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<p>${todos}</p>
<table>
  <thead>
    <tr>
      <th>ID</th>
      <th>Username</th>
      <th>Description</th>
      <th>Target Date</th>
      <th>Status</th>
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
      </tr>
    </c:forEach>
  </tbody>
</table>

</body>
</html>
