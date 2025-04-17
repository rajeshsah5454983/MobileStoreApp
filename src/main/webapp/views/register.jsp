<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Mobile Store</title>
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
        .register-container {
            max-width: 1000px;
            width: 100%;
            margin: 20px;
        }
        .register-card {
            border: none;
            border-radius: 20px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            overflow: hidden;
        }
        .register-image {
            background: url('https://images.unsplash.com/photo-1511707171634-5f897ff02aa9?ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80');
            background-size: cover;
            background-position: center;
            height: 100%;
            display: flex;
            align-items: center;
            justify-content: center;
            position: relative;
        }
        .register-image::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background: rgba(0, 0, 0, 0.5);
        }
        .register-image-content {
            position: relative;
            color: white;
            text-align: center;
            padding: 20px;
        }
        .register-image-content h2 {
            font-size: 2.5rem;
            margin-bottom: 20px;
        }
        .register-image-content p {
            font-size: 1.1rem;
            opacity: 0.9;
        }
        .register-form {
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
        .btn-register {
            padding: 12px;
            border-radius: 10px;
            background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
            border: none;
            font-weight: 600;
            letter-spacing: 1px;
            text-transform: uppercase;
        }
        .btn-register:hover {
            background: linear-gradient(135deg, #764ba2 0%, #667eea 100%);
            transform: translateY(-2px);
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
        }
        .profile-preview {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            border: 5px solid white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 0 auto;
            display: block;
            transition: all 0.3s;
        }
        .profile-preview:hover {
            transform: scale(1.05);
        }
        .upload-btn {
            position: relative;
            overflow: hidden;
            display: inline-block;
            margin-top: 15px;
        }
        .upload-btn input[type=file] {
            position: absolute;
            left: 0;
            top: 0;
            opacity: 0;
            cursor: pointer;
        }
        .upload-btn .btn {
            padding: 10px 20px;
            border-radius: 10px;
            background: #f8f9fa;
            color: #667eea;
            font-weight: 500;
            transition: all 0.3s;
        }
        .upload-btn .btn:hover {
            background: #e9ecef;
            transform: translateY(-2px);
        }
        .form-check-input:checked {
            background-color: #667eea;
            border-color: #667eea;
        }
        .login-link {
            color: #667eea;
            font-weight: 600;
            text-decoration: none;
        }
        .login-link:hover {
            color: #764ba2;
        }
    </style>
</head>
<body>
    <div class="register-container">
        <div class="card register-card">
            <div class="row g-0">
                <div class="col-lg-6 d-none d-lg-block">
                    <div class="register-image">
                        <div class="register-image-content">
                            <h2>Join Our Community!</h2>
                            <p>Create an account to start shopping and enjoy exclusive benefits</p>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <div class="register-form">
                        <h3 class="mb-4">Create Account</h3>
                        
                        <form action="${pageContext.request.contextPath}/register" method="post" enctype="multipart/form-data">
                            <div class="text-center mb-4">
                                <img src="https://via.placeholder.com/150" alt="Profile Preview" 
                                     class="profile-preview mb-3" id="profilePreview">
                                <div class="upload-btn">
                                    <button type="button" class="btn">
                                        <i class="fas fa-camera"></i> Upload Photo
                                    </button>
                                    <input type="file" name="photo" id="photo" accept="image/*" 
                                           onchange="previewImage(this)">
                                </div>
                            </div>
                            
                            <div class="mb-4">
                                <label for="username" class="form-label">Username</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-user"></i></span>
                                    <input type="text" class="form-control" id="username" name="username" 
                                           placeholder="Choose a username" required>
                                </div>
                            </div>
                            
                            <div class="mb-4">
                                <label for="email" class="form-label">Email</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-envelope"></i></span>
                                    <input type="email" class="form-control" id="email" name="email" 
                                           placeholder="Enter your email" required>
                                </div>
                            </div>
                            
                            <div class="mb-4">
                                <label for="password" class="form-label">Password</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                    <input type="password" class="form-control" id="password" name="password" 
                                           placeholder="Create a password" required>
                                </div>
                            </div>
                            
                            <div class="mb-4">
                                <label for="confirmPassword" class="form-label">Confirm Password</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-lock"></i></span>
                                    <input type="password" class="form-control" id="confirmPassword" name="confirmPassword" 
                                           placeholder="Confirm your password" required>
                                </div>
                                <div class="invalid-feedback" id="passwordError">
                                    Passwords do not match
                                </div>
                            </div>
                            
                            <div class="mb-4">
                                <label for="phone" class="form-label">Phone Number</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-phone"></i></span>
                                    <input type="tel" class="form-control" id="phone" name="phone" 
                                           placeholder="Enter your phone number" required>
                                </div>
                            </div>
                            
                            <div class="mb-4">
                                <label for="address" class="form-label">Address</label>
                                <div class="input-group">
                                    <span class="input-group-text"><i class="fas fa-map-marker-alt"></i></span>
                                    <input type="text" class="form-control" id="address" name="address" 
                                           placeholder="Enter your address" required>
                                </div>
                            </div>
                            
                            <div class="mb-4 form-check">
                                <input type="checkbox" class="form-check-input" id="is_admin" name="is_admin">
                                <label class="form-check-label" for="is_admin">Register as Admin</label>
                            </div>
                            
                            <button type="submit" class="btn btn-primary btn-register w-100">Create Account</button>
                        </form>
                        
                        <div class="text-center mt-4">
                            Already have an account? <a href="login.jsp" class="login-link">Sign In</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function previewImage(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    document.getElementById('profilePreview').src = e.target.result;
                }
                reader.readAsDataURL(input.files[0]);
            }
        }

        // Password validation
        document.querySelector('form').addEventListener('submit', function(e) {
            const password = document.getElementById('password').value;
            const confirmPassword = document.getElementById('confirmPassword').value;
            const passwordError = document.getElementById('passwordError');
            
            if (password !== confirmPassword) {
                e.preventDefault();
                document.getElementById('confirmPassword').classList.add('is-invalid');
                passwordError.style.display = 'block';
            } else {
                document.getElementById('confirmPassword').classList.remove('is-invalid');
                passwordError.style.display = 'none';
            }
        });

        // Real-time password matching check
        document.getElementById('confirmPassword').addEventListener('input', function() {
            const password = document.getElementById('password').value;
            const confirmPassword = this.value;
            const passwordError = document.getElementById('passwordError');
            
            if (password !== confirmPassword) {
                this.classList.add('is-invalid');
                passwordError.style.display = 'block';
            } else {
                this.classList.remove('is-invalid');
                passwordError.style.display = 'none';
            }
        });
    </script>
</body>
</html> 