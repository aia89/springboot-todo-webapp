<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Add Todo</title>

  <!-- Bootstrap CSS from WebJars -->
  <link href="/webjars/bootstrap/5.1.3/css/bootstrap.min.css" rel="stylesheet">

  <!-- Custom Styles -->
  <style>
    body {
      background-color: #f8f9fa;
    }
    .todo-container {
      max-width: 600px;
      margin: 50px auto;
      padding: 30px;
      background-color: #ffffff;
      border-radius: 10px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
    }
    .btn-submit {
      background-color: #007bff;
      color: #fff;
    }
    .btn-submit:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>

<div class="container">
  <div class="todo-container">
    <h2 class="text-center mb-4">Add a New Todo</h2>
    <form:form method="POST" modelAttribute="todo">
      <form:hidden path="id" />
      <form:hidden path="status" />
      <div class="mb-3">
        <form:label path="description" class="form-label">Description</form:label>
        <form:textarea path="description" class="form-control" id="todoDescription" rows="4" required="required"></form:textarea>
      </div>
      <div class="mb-3">
        <form:label path="targetDate" class="form-label">Deadline</form:label>
        <form:input path="targetDate" type="date" class="form-control" id="todoDeadline" required="required" />
        <form:errors path="targetDate" cssClass="text-warning"/>
      </div>
      <button type="submit" class="btn btn-submit w-100">Add Todo</button>
    </form:form>
  </div>
</div>

<!-- Bootstrap JS from WebJars -->
<script src="/webjars/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>

<!-- jQuery from WebJars -->
<script src="/webjars/jquery/3.6.0/jquery.min.js"></script>

</body>
</html>
