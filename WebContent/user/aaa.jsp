<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

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

</script>