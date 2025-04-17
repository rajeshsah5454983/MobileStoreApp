<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Dashboard - Mobile Store</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style>
        .sidebar {
            min-height: 100vh;
            background: #343a40;
            color: white;
        }
        .sidebar .nav-link {
            color: rgba(255, 255, 255, 0.8);
            padding: 1rem;
            transition: all 0.3s;
        }
        .sidebar .nav-link:hover {
            color: white;
            background: rgba(255, 255, 255, 0.1);
        }
        .sidebar .nav-link.active {
            color: white;
            background: rgba(255, 255, 255, 0.2);
        }
        .sidebar .nav-link i {
            margin-right: 10px;
        }
        .profile-img {
            width: 150px;
            height: 150px;
            border-radius: 50%;
            object-fit: cover;
            border: 5px solid white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .card {
            transition: transform 0.3s;
            margin-bottom: 20px;
        }
        .card:hover {
            transform: translateY(-5px);
        }
        .product-card img {
            height: 200px;
            object-fit: cover;
        }
    </style>
</head>
<body>
    <div class="container-fluid">
        <div class="row">
            <!-- Sidebar -->
            <div class="col-md-3 col-lg-2 px-0 sidebar">
                <div class="text-center py-4">
                    <img src="${user.photo != null ? user.photo : 'https://via.placeholder.com/150'}" 
                         alt="Profile" class="profile-img mb-3">
                    <h5>${user.username}</h5>
                    <p class="text-muted">Customer</p>
                </div>
                
                <ul class="nav flex-column">
                    <li class="nav-item">
                        <a class="nav-link active" href="<c:url value='/views/user/dashboard.jsp'/>">
                            <i class="fas fa-home"></i> Dashboard
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/views/user/orders.jsp'/>">
                            <i class="fas fa-shopping-bag"></i> My Orders
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/views/user/wishlist.jsp'/>">
                            <i class="fas fa-heart"></i> Wishlist
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/views/user/profile.jsp'/>">
                            <i class="fas fa-user"></i> Profile
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/views/user/settings.jsp'/>">
                            <i class="fas fa-cog"></i> Settings
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="<c:url value='/logout'/>">
                            <i class="fas fa-sign-out-alt"></i> Logout
                        </a>
                    </li>
                </ul>
            </div>
            
            <!-- Main Content -->
            <div class="col-md-9 col-lg-10 px-4 py-4">
                <div class="d-flex justify-content-between align-items-center mb-4">
                    <h2>Welcome, ${user.username}!</h2>
                    <div class="dropdown">
                        <button class="btn btn-outline-secondary dropdown-toggle" type="button" 
                                data-bs-toggle="dropdown">
                            <i class="fas fa-bell"></i>
                            <span class="badge bg-danger">3</span>
                        </button>
                        <ul class="dropdown-menu dropdown-menu-end">
                            <li><a class="dropdown-item" href="#">Order #12345 shipped</a></li>
                            <li><a class="dropdown-item" href="#">New product in your wishlist</a></li>
                            <li><a class="dropdown-item" href="#">Special offer available</a></li>
                        </ul>
                    </div>
                </div>
                
                <!-- Recent Orders -->
                <div class="card mb-4">
                    <div class="card-header">
                        <h5 class="mb-0">Recent Orders</h5>
                    </div>
                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                    <tr>
                                        <th>Order ID</th>
                                        <th>Date</th>
                                        <th>Status</th>
                                        <th>Total</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td>#12345</td>
                                        <td>2024-04-15</td>
                                        <td><span class="badge bg-success">Delivered</span></td>
                                        <td>$999.99</td>
                                        <td>
                                            <button class="btn btn-sm btn-outline-primary">View Details</button>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>#12344</td>
                                        <td>2024-04-14</td>
                                        <td><span class="badge bg-warning">Processing</span></td>
                                        <td>$799.99</td>
                                        <td>
                                            <button class="btn btn-sm btn-outline-primary">View Details</button>
                                        </td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                
                <!-- Recommended Products -->
                <h4 class="mb-3">Recommended for You</h4>
                <div class="row">
                    <div class="col-md-4">
                        <div class="card product-card">
                            <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Product">
                            <div class="card-body">
                                <h5 class="card-title">iPhone 15 Pro</h5>
                                <p class="card-text">Latest Apple smartphone with advanced features.</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="h5 mb-0">$999.99</span>
                                    <button class="btn btn-primary">Add to Cart</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card product-card">
                            <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Product">
                            <div class="card-body">
                                <h5 class="card-title">Samsung Galaxy S24</h5>
                                <p class="card-text">Powerful Android smartphone with great camera.</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="h5 mb-0">$899.99</span>
                                    <button class="btn btn-primary">Add to Cart</button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <div class="card product-card">
                            <img src="https://via.placeholder.com/300x200" class="card-img-top" alt="Product">
                            <div class="card-body">
                                <h5 class="card-title">Google Pixel 8</h5>
                                <p class="card-text">Pure Android experience with AI features.</p>
                                <div class="d-flex justify-content-between align-items-center">
                                    <span class="h5 mb-0">$799.99</span>
                                    <button class="btn btn-primary">Add to Cart</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html> 