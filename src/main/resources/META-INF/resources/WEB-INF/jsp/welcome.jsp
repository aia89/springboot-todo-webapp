<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Welcome</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      background-color: #f0f0f0;
      display: flex;
      justify-content: center;
      align-items: center;
      height: 100vh;
      margin: 0;
    }
    .welcome-container {
      background-color: #ffffff;
      padding: 30px 40px;
      border-radius: 8px;
      box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
      text-align: center;
    }
    .welcome-container h1 {
      font-size: 2rem;
      margin-bottom: 20px;
      color: #333;
    }
    .welcome-container p {
      font-size: 1rem;
      color: #555;
    }
    .welcome-container a {
      display: inline-block;
      margin-top: 20px;
      padding: 10px 20px;
      font-size: 1rem;
      background-color: #007bff;
      color: white;
      text-decoration: none;
      border-radius: 5px;
    }
    .welcome-container a:hover {
      background-color: #0056b3;
    }
  </style>
</head>
<body>

<div class="welcome-container">
  <h1>Welcome, ${username}!</h1>
  <p>You have successfully logged in.</p>
  <a href="/dashboard">Go to Dashboard</a>
</div>

</body>
</html>
