<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Register User</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f8f9fa;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }
    .register-container {
      background-color: #ffffff;
      padding: 20px 30px;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      width: 350px;
    }
    .register-container h2 {
      text-align: center;
      margin-bottom: 20px;
    }
    .form-group {
      margin-bottom: 15px;
    }
    .form-group label {
      display: block;
      margin-bottom: 5px;
      font-weight: bold;
    }
    .form-group input {
      width: 100%;
      padding: 10px;
      border: 1px solid #ddd;
      border-radius: 5px;
      font-size: 14px;
    }
    .form-group button {
      width: 100%;
      padding: 10px;
      background-color: #28a745;
      border: none;
      color: white;
      font-size: 16px;
      border-radius: 5px;
      cursor: pointer;
    }
    .form-group button:hover {
      background-color: #218838;
    }
    .form-footer {
      text-align: center;
      margin-top: 15px;
    }
    .form-footer a {
      text-decoration: none;
      color: #007bff;
    }
    .form-footer a:hover {
      text-decoration: underline;
    }
  </style>
</head>
<body>

<div class="register-container">
  <h2>Register</h2>
  <form action="/register" method="post">
    <div class="form-group">
      <label for="firstname">First Name</label>
      <input type="text" id="firstname" name="firstname" required>
    </div>
    <div class="form-group">
      <label for="lastname">Last Name</label>
      <input type="text" id="lastname" name="lastname" required>
    </div>
    <div class="form-group">
      <label for="email">Email</label>
      <input type="email" id="email" name="email" required>
    </div>
    <div class="form-group">
      <label for="username">Username</label>
      <input type="text" id="username" name="username" required>
    </div>
    <div class="form-group">
      <label for="password">Password</label>
      <input type="password" id="password" name="password" required>
    </div>
    <div class="form-group">
      <button type="submit">Register</button>
    </div>
  </form>
  <div class="form-footer">
    <p>Already have an account? <a href="/login">Login here</a></p>
  </div>
</div>

</body>
</html>
