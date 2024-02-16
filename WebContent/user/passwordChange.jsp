<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@include file="../header.jsp"%>



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

        <button type="button" onclick="javascript:confirmPassword()">パスワード変更</button>
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

function confirmPassword() {
    console.log('関数が呼び出されました');

    const newPassword = document.getElementById('newPassword').value;
    const confirmPassword = document.getElementById('confirmPassword').value;

    if (newPassword === confirmPassword) {
        document.getElementById('newPasswordStep').style.display = 'none';
        document.getElementById('successMessage').style.display = 'block';
    } else {
        alert('Passwords do not match. Please enter the same password.');
    }

    // フォーム送信を防ぐ
    return false;
}

    function showCodeStep() {
        console.log('関数が呼び出されました');

        const email = document.getElementById('email').value;
        if (isValidEmail(email)) {
            document.getElementById('emailStep').style.display = 'none';
            document.getElementById('codeStep').style.display = 'block';
        } else {
            alert('Invalid email. Please enter a valid email address.');
        }
    }



    function verifyEmail() {
        console.log('関数が呼び出されました');

        const email = document.getElementById('email').value;

        // メールアドレスのバリデーションロジックを追加
        if (isValidEmail(email)) {
            // バリデーション成功時の処理
            showCodeStep();
        } else {
            // バリデーション失敗時の処理（例: エラーメッセージ表示）
            alert('Invalid email. Please enter a valid email address.');
        }

        // フォーム送信を防ぐ
        return false;
    }

    // メールアドレスのバリデーション関数
    function isValidEmail(email) {
        console.log('関数が呼び出されました');

        const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
        return emailRegex.test(email);
    }

    function verifyCode() {
        console.log('関数が呼び出されました');

        const demoVerificationCode = '0000';
        const verificationCode = document.getElementById('verificationCode').value;

        if (verificationCode === demoVerificationCode) {
            showNewPasswordStep();
        } else {
            alert('Invalid verification code. Please enter the correct code.');
        }

        // フォーム送信を防ぐ
        return false;
    }

    function enterNewPassword() {
        console.log('関数が呼び出されました');

        const newPassword = document.getElementById('newPassword').value;

        // 新しいパスワードのバリデーションロジックを追加
        if (isValidPassword(newPassword)) {
            // バリデーション成功時の処理
            showCompletionStep();  // この行で成功時に次のステップに進む例
        } else {
            // バリデーション失敗時の処理（例: エラーメッセージ表示）
            alert('Invalid password. Please enter a valid password.');
        }
    }

    function showNewPasswordStep() {
        console.log('関数が呼び出されました');

        document.getElementById('codeStep').style.display = 'none';
        document.getElementById('newPasswordStep').style.display = 'block';
    }

    // パスワードのバリデーション関数
    function isValidPassword(password) {
        console.log('関数が呼び出されました');

        const passwordRegex = /^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$/;
        return passwordRegex.test(password);
    }



    function showCompletionStep() {
        console.log('関数が呼び出されました');

        document.getElementById('successMessage').style.display = 'none';
        document.getElementById('completionStep').style.display = 'block';
    }
</script>

<%@ include file="../footer.jsp" %>