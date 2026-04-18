<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>EventBridge Login</title>
    <link rel="stylesheet" href="<%= request.getContextPath() %>/css_a/styles.css" />
</head>

<body>
    <div class="l-page">
        <div class="l-wrapper">
            <div class="l-brand">
                <h1 class="l-brand__title">EventBridge</h1>
                <p class="l-brand__subtitle">Event Booking Management</p>
            </div>

            <div class="l-card">
                <form action="login" method="post" class="l-form">
                    <div class="l-field">
                        <label for="email" class="l-field__label">EMAIL ADDRESS</label>
                        <input type="email" id="email" name="email" class="l-field__input" required />
                    </div>

                    <div class="l-field">
                        <label for="password" class="l-field__label">PASSWORD</label>
                        <input type="password" id="password" name="password" class="l-field__input" required />
                    </div>

                    <div class="l-form__actions">
                        <a href="forgot-password.jsp" class="l-form__link">Forgot Password?</a>
                    </div>

                    <button type="submit" class="l-btn l-btn--primary">Login</button>

                    <div class="l-note">
                        <p class="l-note__line">Authorized Access Only.</p>
                        <p class="l-note__line">Contact support for credential inquiries.</p>
                    </div>
                </form>
            </div>

            <div class="l-footer">
                <a href="#" class="l-footer__link">Privacy Policy</a>
            </div>
        </div>
    </div>
</body>

</html>