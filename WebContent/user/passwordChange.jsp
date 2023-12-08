<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="../header.jsp" %>


<hr>
<div id="emailStep" class="form-step active">
    <h2>Step 1: Enter Email</h2>
    <form onsubmit="return verifyEmail();">
        <label for="email">Email:</label>
        <input type="email" id="email" required><br>
        <button type="button" onclick="showCodeStep()">Next</button>
    </form>
</div>

<div id="codeStep" class="form-step" style="display: none;">
    <h2>Step 2: Enter Verification Code</h2>
    <form onsubmit="return verifyCode();">
        <label for="verificationCode">Verification Code:</label>
        <input type="text" id="verificationCode" required placeholder="Enter code (e.g., 0000)"><br>
        <button type="button" onclick="showNewPasswordStep()">Next</button>
    </form>
</div>

<div id="newPasswordStep" class="form-step" style="display: none;">
    <h2>Step 3: Enter New Password</h2>
    <form onsubmit="return enterNewPassword();">
        <label for="newPassword">New Password:</label>
        <input type="password" id="newPassword" required><br>

        <label for="confirmPassword">Confirm Password:</label>
        <input type="password" id="confirmPassword" required><br>

        <button type="button" onclick="confirmPassword()">Change Password</button>
    </form>
</div>

<div id="successMessage" class="success-message" style="display: none;">
    <p>Password changed successfully!</p>
    <button type="button" onclick="showCompletionStep()">OK</button>
</div>

<div id="completionStep" class="form-step" style="display: none;">
    <h2>Password Change Completed</h2>
    <p>Your password has been successfully changed.</p>
</div>

<script>
    function showCodeStep() {
        const email = document.getElementById('email').value;
        if (isValidEmail(email)) {
            document.getElementById('emailStep').style.display = 'none';
            document.getElementById('codeStep').style.display = 'block';
        } else {
            alert('Invalid email. Please enter a valid email address.');
        }
    }

    function showNewPasswordStep() {
        document.getElementById('codeStep').style.display = 'none';
        document.getElementById('newPasswordStep').style.display = 'block';
    }

    function verifyEmail() {
        // メールアドレスの検証ロジックを追加
        // 成功したら showCodeStep() を呼ぶ
        // 失敗したらエラーメッセージを表示するか適切な処理を行う
    }

    function verifyCode() {
        const demoVerificationCode = '0000';
        const verificationCode = document.getElementById('verificationCode').value;

        if (verificationCode === demoVerificationCode) {
            showNewPasswordStep();
        } else {
            alert('Invalid verification code. Please enter the correct code.');
        }
    }

    function enterNewPassword() {
        // 新しいパスワードのバリデーションロジックを追加
        // 成功したら次のステップに進む処理を追加
        // 失敗したらエラーメッセージを表示するか適切な処理を行う
    }

    function confirmPassword() {
        const newPassword = document.getElementById('newPassword').value;
        const confirmPassword = document.getElementById('confirmPassword').value;

        if (newPassword === confirmPassword) {
            document.querySelectorAll('.form-step').forEach(formStep => {
                formStep.style.display = 'none';
            });
            document.getElementById('successMessage').style.display = 'block';
        } else {
            alert('Passwords do not match. Please enter the same password.');
        }
    }

    function showCompletionStep() {
        document.getElementById('successMessage').style.display = 'none';
        document.getElementById('completionStep').style.display = 'block';
    }

    function isValidEmail(email) {
        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return emailRegex.test(email);
    }
</script>

<%@ include file="../footer.jsp" %>
