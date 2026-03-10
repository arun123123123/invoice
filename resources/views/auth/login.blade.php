<!DOCTYPE html>
<html>
<head>
    <title>Login</title>

    
    <link 
        href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" 
        rel="stylesheet">

    <style>
        body {
            background: #09b39b; /* Green background like image */
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .login-card {
            background: #ffffff;
            width: 380px;
            border-radius: 8px;
            padding: 25px 30px;
            box-shadow: 0px 4px 15px rgba(0, 0, 0, 0.15);
        }

        .login-header {
            background: #0ba68d;
            padding: 15px;
            color: #fff;
            text-align: center;
            border-radius: 6px 6px 0 0;
            margin-top: -25px;
            margin-left: -30px;
            margin-right: -30px;
            margin-bottom: 20px;
        }

        .form-control {
            height: 45px;
        }

        .btn-login {
            background: #0ba68d;
            color: #fff;
            height: 45px;
            width: 100%;
            border-radius: 5px;
            border: none;
            font-size: 16px;
        }

        .btn-login:hover {
            background: #07957d;
        }

        a {
            text-decoration: none;
        }
    </style>
</head>

<body>

    <div class="login-card">
        <div class="login-header">
            <h4 class="mb-0">Login Form</h4>
        </div>

        <form action="{{ route('login.submit') }}" method="POST">
            @csrf

            
            <div class="mb-3">
    <div class="input-group">
        <span class="input-group-text">
            <i class="bi bi-person-fill"></i>
        </span>
        <input type="email" class="form-control" name="email" placeholder="Email">
    </div>

    @error('email')
        <div class="text-danger mt-1">{{ $message }}</div>
    @enderror
</div>

            
            <div class="mb-3">
    <div class="input-group">
        <span class="input-group-text">
            <i class="bi bi-lock-fill"></i>
        </span>
        <input type="password" class="form-control" name="password" placeholder="Password">
    </div>

    @error('password')
        <div class="text-danger mt-1">{{ $message }}</div>
    @enderror
</div>

            

            <button type="submit" class="btn-login">Login</button>


        </form>
    </div>

    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css" rel="stylesheet">

</body>
</html>