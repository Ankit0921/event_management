<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>EventBridge - Payments</title>
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css_a/styles.css" />
</head>

<body>
  <div class="app-shell">
    <aside class="sidebar">
      <div class="sidebar-top">
        <a class="brand" href="index.jsp"><img src="<%= request.getContextPath() %>/assets_a/logo-eventbridge.png" alt="EventBridge logo"></a>
        <nav class="side-nav"><a class="nav-link " href="index.jsp">
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
          <a class="nav-link active" href="payments.jsp">
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
          <h1>Payments</h1>
          <p>Review transaction records, payment methods, and current statuses.</p>
        </div>


      </section>

      <section class="metrics-row">
        <article class="metric-banner">
          <div class="metric-top">
            <h3>Revenue Trend</h3>
            <img src="<%= request.getContextPath() %>/assets_a/icon-trend.png" alt="" style="width:26px;height:26px;object-fit:contain">
          </div>
          <div class="metric-value">Rs. 0</div>
          <div class="metric-sub">
            <span>Total Revenue of EventBridge</span>
          </div>
        </article>
      </section>

      <section class="table-card">
        <div class="table-head payments-head">
          <div>PAYMENT ID</div>
          <div>EXPENSE ID</div>
          <div>AMOUNT</div>
          <div>PAYMENT METHOD</div>
          <div>PAYMENT DATE</div>
          <div>STATUS</div>
          <div>ACTION</div>
        </div>
        <div class="table-body" id="paymentsBody"></div>
        <div class="table-foot">
          <div class="total" id="usersTotal">Total entries: <span>0</span></div>
          <div class="pagination" id="paymentsPagination"></div>
        </div>
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