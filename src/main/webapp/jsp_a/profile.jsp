<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>EventBridge - Profile</title>
  <link rel="stylesheet" href="<%= request.getContextPath() %>/css_a/styles.css" />
</head>

<body>
  <div class="app-shell">
    <aside class="sidebar">
      <div class="sidebar-top">
        <a class="brand" href="index.html"><img src="<%= request.getContextPath() %>/assets_a/logo-eventbridge.png" alt="EventBridge logo"></a>
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
          <a class="nav-link " href="payments.jsp">
            <img src="<%= request.getContextPath() %>/assets_a/nav-payments.png" alt="">
            <span>Payments</span>
          </a>
          <a class="nav-link active" href="profile.jsp">
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
          <h1>Profile</h1>
          <p>View profile details, account information, and security settings.</p>
        </div>
      </section>

      <section class="profile-grid">
        <aside class="profile-card profile-sidebar">
          <div class="avatar-card">
            <div class="avatar-illus">
              <img src="<%= request.getContextPath() %>/assets_a/admin-profile-m.png" alt="">
            </div>
            <h3>Ankit Pyakurel</h3>
            <p>Admin of EventBridge</p>
          </div>

          <div class="quick-info">
            <div class="label">
              <img src="<%= request.getContextPath() %>/assets_a/icon-info.png" alt="">
              <span>Quick Stats</span>
            </div>
            <div class="info-row"><span>Last Log</span><strong>10\04\2026</strong></div>
            <div class="info-row"><span>Member Since</span><strong>05\01\2024</strong></div>
          </div>
        </aside>

        <div class="profile-main">
          <section class="info-card">
            <div class="card-head">
              <div class="title"><img src="<%= request.getContextPath() %>/assets_a/icon-person.png" alt=""><span>Personal Information</span></div>
              <button class="btn btn-light" type="button"><img src="<%= request.getContextPath() %>/assets_a/icon-edit.png" alt=""> Edit Profile</button>
            </div>
            <div class="info-grid">
              <div class="info-item"><small>FULL NAME</small><strong>Ankit Pyakurel</strong></div>
              <div class="info-item"><small>ROLE</small><span>Admin</span></div>
              <div class="info-item"><small>EMAIL ADDRESS</small><span>ankit.pyakurel@eventbridge.com.np</span></div>
              <div class="info-item"><small>MOBILE NUMBER</small><span>9845352233</span></div>
              <div class="info-item"><small>ADDRESS</small><span>Kapan, Kathmandu</span></div>
              <div class="info-item"><small>STATUS</small><span class="badge green">Active</span></div>
            </div>
          </section>

          <section class="info-card">
            <div class="card-head">
              <div class="title"><img style="height: 20px; width: 20px" src="<%= request.getContextPath() %>/assets_a/icon-shield.png"
                  alt=""><span>Account Security</span></div>
            </div>

            <div class="security-panel">
              <div class="security-head">
                <div class="left"><img style="height: 22px; width: 22px" src="<%= request.getContextPath() %>/assets_a/icon-lock.png"
                    alt=""><span>Password Management</span></div>
                <button class="btn btn-primary" type="button">Change Password</button>
              </div>
              <div class="password-row">
                <div class="password-status">
                  <span>Password last updated recently. Review it regularly to keep your account secure.</span>
                </div>
              </div>
            </div>

            <div class="security-panel">
              <div class="security-head">
                <div class="left"><img style="height: 30px; width: 30px" src="<%= request.getContextPath() %>/assets_a/icon-log.png"
                    alt=""><span>Logout</span></div>
                <button class="btn btn-light" type="button"><a href="login.jsp">Logout</a></button>
              </div>
              <div class="note">Logout from admin panel.
              </div>
          </section>
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