<!DOCTYPE html>
<html>
<head>
    <title>@yield('title')</title>

    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" rel="stylesheet">

    <style>
        
        .sidebar {
            width: 260px;
            height: 100vh;
            background: #f8f9fa;
            transition: all 0.3s;
        }

        .sidebar.collapsed {
            margin-left: -260px;
        }

        .sidebar .nav-link.active {
            background: #09b39b;
            color: #fff !important;
        }

        .sidebar .nav-link {
            color: #333;
            font-size: 15px;
            border-radius: 6px;
        }

        .sidebar .nav-link i {
            font-size: 18px;
        }

        
        @media (max-width: 768px) {
            .sidebar {
                position: fixed;
                z-index: 2000;
                top: 0;
                left: 0;
            }
        }

        .content {
            flex-grow: 1;
            padding: 25px;
        }
    </style>
</head>

<body>


    <nav class="navbar navbar-light bg-white shadow-sm px-3 d-flex justify-content-between">
        
        <div>
            <button class="btn btn-outline-success" id="toggleSidebar">
                <i class="bi bi-list"></i>
            </button>
            <span class="ms-3 fw-bold">Dashboard</span>
        </div>

    
<div class="dropdown">
    <a href="#" class="d-flex align-items-center text-dark text-decoration-none"
       id="userDropdown" data-bs-toggle="dropdown" aria-expanded="false">
        <i class="bi bi-person-circle fs-3"></i>
    </a>

    <ul class="dropdown-menu dropdown-menu-end shadow" aria-labelledby="userDropdown">

        <li>
            <h6 class="dropdown-header">
                {{ auth()->user()->name ?? 'Super Admin' }}
            </h6>
        </li>

        <li><hr class="dropdown-divider"></li>

        <li>
            <form action="{{ route('logout') }}" method="POST" class="px-3">
                @csrf
                <button class="btn btn-outline-danger w-100">
                    <i class="bi bi-box-arrow-right me-1"></i> Logout
                </button>
            </form>
        </li>

    </ul>
</div>

    </nav>

    <div class="d-flex">

        <!-- Sidebar -->
        <div id="sidebar" class="sidebar p-3">
            <h5 class="mb-4">Project</h5>

            <ul class="nav nav-pills flex-column mb-auto">

             
    <!-- Dashboard -->
    <li class="nav-item mb-2">
        <a href="{{ route('dashboard') }}" 
           class="nav-link d-flex align-items-center 
           {{ request()->routeIs('dashboard') ? 'active' : '' }}">
            <i class="bi bi-house-door me-2"></i> Dashboard
        </a>
    </li>

    <!-- Users -->
    <li class="nav-item mb-2">
        <a href="{{ route('users.index') }}"
           class="nav-link d-flex align-items-center
           {{ request()->routeIs('users.*') ? 'active' : '' }}">
            <i class="bi bi-people me-2"></i> Users
        </a>
    </li>


    <!-- Payments -->
<li class="nav-item mb-2">
    <a href="{{ route('payments.index') }}"
       class="nav-link d-flex align-items-center
       {{ request()->routeIs('payments.*') ? 'active' : '' }}">
        <i class="bi bi-cash-stack me-2"></i> Payments
    </a>
</li>



                <!-- Logout -->
                <li class="nav-item mt-4">
                    <form action="{{ route('logout') }}" method="POST">
                        @csrf
                        <button class="nav-link d-flex align-items-center border-0 bg-transparent w-100 text-start">
                            <i class="bi bi-box-arrow-right me-2"></i> Logout
                        </button>
                    </form>
                </li>

            </ul>
        </div>

        
        <div class="container content">
            @yield('content')
        </div>

    </div>

    
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>

    <script>
        
        const sidebar = document.getElementById('sidebar');
        const toggleBtn = document.getElementById('toggleSidebar');

        toggleBtn.addEventListener('click', () => {
            sidebar.classList.toggle('collapsed');
        });
    </script>

</body>
</html>