<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>EventBridge - Bookings</title>
  <link rel="stylesheet" href="css/styles.css" />
</head>

<body>
  <div class="app-shell">
    <aside class="sidebar">
      <div class="sidebar-top">
        <a class="brand" href="index.jsp"><img src="assets/logo-eventbridge.png" alt="EventBridge logo"></a>
        <nav class="side-nav"><a class="nav-link " href="index.jsp">
            <img src="assets/nav-dashboard-active.png" alt="">
            <span>Dashboard</span>
          </a>
          <a class="nav-link " href="users.jsp">
            <img src="assets/nav-users.png" alt="">
            <span>Users</span>
          </a>
          <a class="nav-link " href="venues.jsp">
            <img src="assets/nav-venues.png" alt="">
            <span>Venues</span>
          </a>
          <a class="nav-link active" href="bookings.jsp">
            <img src="assets/nav-bookings.png" alt="">
            <span>Bookings</span>
          </a>
          <a class="nav-link " href="expenses.jsp">
            <img src="assets/nav-expenses.png" alt="">
            <span>Expenses</span>
          </a>
          <a class="nav-link " href="payments.jsp">
            <img src="assets/nav-payments.png" alt="">
            <span>Payments</span>
          </a>
          <a class="nav-link " href="profile.jsp">
            <img src="assets/nav-profile.png" alt="">
            <span>Profile</span>
          </a>
        </nav>
      </div>
      <a class="logout-link" href="login.jsp">
        <img src="assets/nav-logout.png" alt="">
        <span>Logout</span>
      </a>
    </aside>

    <main class="main">
      <header class="topbar">

        <label class="searchbar">
          <span class="search-icon"></span>
          <input id="globalSearch" type="text" placeholder="Search by Booking ID..." />
        </label>
        <div class="topbar-right">
          <a class="admin-chip" href="profile.jsp">
            <span>Admin</span>
            <img src="assets/avatar-admin.png" alt="Admin avatar">
          </a>
        </div>
      </header>


      <section class="page-header">
        <div class="page-title">
          <h1>Bookings</h1>
          <p>Manage reservations, booking status, and assigned vendors.</p>
        </div>
        <div class="head-actions">
          <div class="summary-card">
            <div class="icon-wrap"><img src="assets/icon-bookings-card.png" alt=""></div>
            <div><small>TOTAL BOOKINGS</small><strong>0</strong></div>
          </div>
        </div>
      </section>

      <section class="table-card">
        <div class="table-foot" style="border-top:none">
          <div class="tabs">
            <button class="tab active" type="button">All</button>
            <button class="tab" type="button">Confirmed</button>
            <button class="tab" type="button">Pending</button>
            <button class="tab" type="button">Cancelled</button>
          </div>
          <div class="total" id="bookingsTotal">Total entries: 0</div>
        </div>
        <div class="table-head bookings-head">
          <div>BOOKING ID</div>
          <div>VENUE</div>
          <div>EVENT TYPE</div>
          <div>DATE</div>
          <div>STATUS</div>
        </div>
        <div class="table-body" id="bookingsBody"></div>
        <div class="table-foot">
          <div class="total" id="usersTotal">Total entries: <span>0</span></div>
          <div class="pagination" id="bookingsPagination"></div>
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