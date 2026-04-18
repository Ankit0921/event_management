<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>EventBridge - Dashboard</title>
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css_a/styles.css" />
</head>

<body>
  <div class="app-shell">
    <aside class="sidebar">
      <div class="sidebar-top">
        <a class="brand" href="index.jsp"><img src="<%= request.getContextPath() %>/assets_a/logo-eventbridge.png" alt="EventBridge logo"></a>
        <nav class="side-nav"><a class="nav-link active" href="index.jsp">
            <img src="<%= request.getContextPath() %>/assets_a/nav-dashboard-active.png" alt="">
            <span>Dashboard</span>
          </a>
          <a class="nav-link " href="users.jsp">
            <img src="<%= request.getContextPath() %>/assets_a/nav-users.png" alt="">
            <span>Users</span>
          </a>
          <a class="nav-link " href="venues.jsp">
            <img src="<%= request.getContextPath() %>/assets_a/nav-venues.png" alt="">
            <span>Venues</span>
          </a>
          <a class="nav-link " href="bookings.jsp">
            <img src="<%= request.getContextPath() %>/assets_a/nav-bookings.png" alt="">
            <span>Bookings</span>
          </a>
          <a class="nav-link " href="expenses.jsp">
            <img src="<%= request.getContextPath() %>/assets_a/nav-expenses.png" alt="">
            <span>Expenses</span>
          </a>
          <a class="nav-link " href="payments.jsp">
            <img src="<%= request.getContextPath() %>/assets_a/nav-payments.png" alt="">
            <span>Payments</span>
          </a>
          <a class="nav-link " href="profile.jsp">
            <img src="<%= request.getContextPath() %>/assets_a/nav-profile.png" alt="">
            <span>Profile</span>
          </a>
        </nav>
      </div>
      <a class="logout-link" href="login.jsp">
        <img src="<%= request.getContextPath() %>/assets_a/nav-logout.png" alt="">
        <span>Logout</span>
      </a>
    </aside>

    <main class="main">
      <header class="topbar">
        <div></div>
        <div class="topbar-right">
          <a class="admin-chip" href="profile.jsp">
            <span>Admin</span>
            <img src="<%= request.getContextPath() %>/assets_a/avatar-admin.png" alt="Admin avatar">
          </a>
        </div>
      </header>



      <section class="page-header">
        <div class="page-title">
          <h1>Admin Dashboard</h1>
          <p>Monitor bookings, payments, users, and venue activity from one place.</p>
        </div>
      </section>

      <section class="stats-grid" id="dashboardStats">
        <article class="stat-card">
          <div class="stat-icon"><img src="<%= request.getContextPath() %>/assets_a/stat-users.png" alt=""></div>
          <p>Total Users</p>
          <h3 id="dashboardUsers">0</h3>
        </article>
        <article class="stat-card">
          <div class="stat-icon"><img src="<%= request.getContextPath() %>/assets_a/stat-venues.png" alt=""></div>
          <p>Total Venues</p>
          <h3 id="dashboardVenues">0</h3>
        </article>
        <article class="stat-card">
          <div class="stat-icon"><img src="<%= request.getContextPath() %>/assets_a/stat-bookings.png" alt=""></div>
          <p>Total Bookings</p>
          <h3 id="dashboardBookings">0</h3>
        </article>
        <article class="stat-card">
          <div class="stat-icon"><img src="<%= request.getContextPath() %>/assets_a/stat-revenue.png" alt=""></div>
          <p>Total Revenue</p>
          <h3 id="dashboardRevenue">Rs. 0</h3>
        </article>
      </section>

      <section class="content-grid">
        <section class="panel large-panel">
          <div class="panel-head">
            <h3>Recent Bookings</h3>
            <a class="link-action" href="bookings.jsp">View All</a>
          </div>
          <div class="table-head bookings-head">
            <div>BOOKING ID</div>
            <div>THEME NAME</div>
            <div>EVENT TYPE</div>
            <div>DATE</div>
            <div>STATUS</div>
          </div>
          <div class="table-body" id="recentBookings"></div>
        </section>

        <aside class="panel side-panel">
          <div class="panel-head">
            <h3>Recent Payments</h3>
            <a class="link-action" href="payments.jsp">View All</a>
          </div>
          <div class="payment-stack" id="recentPayments"></div>
        </aside>
      </section>

    </main>
  </div>

  <div class="modal-backdrop" id="modalBackdrop">
    <div class="modal">
      <div class="modal-head">
        <h3 id="modalTitle">Edit record</h3>
        <button class="close-btn" id="modalClose" type="button">✕</button>
      </div>
      <div class="modal-body" id="modalContent"></div>
      <div class="modal-foot">
        <button class="btn btn-light" type="button">Cancel</button>
        <button class="btn btn-primary" id="modalSubmit" type="button">Save</button>
      </div>
    </div>
  </div>

</body>

</html>