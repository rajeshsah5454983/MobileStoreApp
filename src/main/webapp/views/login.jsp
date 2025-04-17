<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Mobile Store</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
        }
        .login-container {
            max-width: 1000px;
            width: 100%;
            margin: 20px;
        }
        .login-card {
            border: none;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            overflow: hidden;
        }
        .login-image {
            background: url('https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');
            background-size: cover;
            background-position: center;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
        }
        .login-image::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.5);
        }
        .login-image-content {
            position: relative;
            color: white;
            text-align: center;
            padding: 20px;
        }
        .login-image-content h2 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }
        .login-image-content p {
            font-size: 1.1rem;
            opacity: 0.9;
        }
        .login-form {
            padding: 40px;
        }
        .form-control {
            border-radius: 10px;
            padding: 12px 20px;
            border: 2px solid #e9ecef;
            transition: all 0.3s;
        }
        .form-control:focus {
            border-color: #667eea;
            box-shadow: 0 0 0 0.2rem rgba(102, 126, 234, 0.25);
        }
        .input-group-text {
            border-radius: 10px 0 0 10px;
            background: transparent;
            border-right: none;
        }
        .form-control {
            border-left: none;
        }
        .btn-login {
            padding: 12px;
            border-radius: 10px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border: none;
            font-weight: 600;
            letter-spacing: 1px;
            text-transform: uppercase;
        }
        .btn-login:hover {
            background: linear-gradient(135deg, #764ba2 0%, #667eea 100%);
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }
        .social-login {
            text-align: center;
            margin-top: 30px;
        }
        .social-login .btn {
            width: 45px;
            height: 45px;
            border-radius: 50%;
            margin: 0 5px;
            padding: 0;
            line-height: 45px;
            font-size: 1.2rem;
            transition: all 0.3s;
        }
        .social-login .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }
        .form-check-input:checked {
            background-color: #667eea;
            border-color: #667eea;
        }
        .forgot-password {
            color: #667eea;
            text-decoration: none;
            font-weight: 500;
        }
        .forgot-password:hover {
            color: #764ba2;
        }
        .register-link {
            color: #667eea;
            font-weight: 600;
            text-decoration: none;
        }
        .register-link:hover {
            color: #764ba2;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="card login-card">
            <div class="row g-0">
                <div class="col-lg-6 d-none d-lg-block">
                    <div class="login-image">
                        <div class="login-image-content">
                            <h2>Welcome Back!</h2>
                            <p>Sign in to access your account and continue shopping</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="login-form">
                        <h3 class="mb-4">Sign In</h3>
                        <form action="${pageContext.request.contextPath}/login" method="post">
                            <div class="mb-4">
                                <label for="username" class="form-label">Username</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                                    <input type="text" class="form-control" id="username" name="username" 
                                           placeholder="Enter your username" required>
                                </div>
                            </div>
                            <div class="mb-4">
                                <label for="password" class="form-label">Password</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                    <input type="password" class="form-control" id="password" name="password" 
                                           placeholder="Enter your password" required>
                                </div>
                            </div>
                            <div class="d-flex justify-content-between align-items-center mb-4">
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input" id="remember">
                                    <label class="form-check-label" for="remember">Remember me</label>
                                </div>
                                <a href="#" class="forgot-password">Forgot Password?</a>
                            </div>
                            <button type="submit" class="btn btn-primary btn-login w-100 mb-4">Sign In</button>
                            
                            <div class="text-center mb-4">
                                <span class="text-muted">Or sign in with</span>
                            </div>
                            
                            <div class="social-login">
                                <button type="button" class="btn btn-outline-primary">
                                    <i class="fab fa-google"></i>
                                </button>
                                <button type="button" class="btn btn-outline-primary">
                                    <i class="fab fa-facebook-f"></i>
                                </button>
                                <button type="button" class="btn btn-outline-primary">
                                    <i class="fab fa-twitter"></i>
                                </button>
                            </div>
                        </form>
                        
                        <div class="text-center mt-4">
                            Don't have an account? <a href="register.jsp" class="register-link">Register Now</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html> 