<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Password Change</title>
    <style>
        /* Add your styles here */
        .form-step {
            display: none;
        }

        .form-step.active {
            display: block;
        }
    </style>
</head>
<body>

    <div id="emailStep" class="form-step active">
        <h2>Step 1: Enter Email</h2>
        <form onsubmit="verifyEmail(); return false;">
            <label for="email">Email:</label>
            <input type="email" id="email" required><br>
            <button type="submit">Next</button>
        </form>
    </div>

    <div id="codeStep" class="form-step">
        <h2>Step 2: Enter Verification Code</h2>
        <form onsubmit="verifyCode(); return false;">
            <label for="verificationCode">Verification Code:</label>
            <input type="text" id="verificationCode" required placeholder="Enter code (e.g., 0000)"><br>
            <button type="submit">Next</button>
        </form>
    </div>

    <div id="newPasswordStep" class="form-step">
        <h2>Step 3: Enter New Password</h2>
        <form onsubmit="enterNewPassword(); return false;">
            <label for="newPassword">New Password:</label>
            <input type="password" id="newPassword" required><br>
            <button type="submit">Next</button>
        </form>
    </div>

    <div id="confirmPasswordStep" class="form-step">
        <h2>Step 4: Confirm New Password</h2>
        <form onsubmit="confirmPassword(); return false;">
            <label for="confirmPassword">Confirm Password:</label>
            <input type="password" id="confirmPassword" required><br>
            <button type="submit">Change Password</button>
        </form>
    </div>

    <div id="successMessage" style="display: none;">
        <p>Password changed successfully!</p>
    </div>

    <script>
        let currentStep = 1;

        function showStep(step) {
            // すべてのステップを非表示
            document.querySelectorAll('.form-step').forEach(formStep => {
                formStep.classList.remove('active');
            });

            // 指定されたステップを表示
            document.getElementById(`emailStep`).classList.add('active');
        }

        function verifyEmail() {
            // ユーザーが入力した値を取得
            const email = document.getElementById('email').value;

            // ここで実際のメールアドレスの確認などを行うべき

            // メールアドレスが有効であれば次のステップに進む
            showStep(2);
        }

        function verifyCode() {
            // 仮の認証コード（デモ用）
            const demoVerificationCode = '0000';
            const verificationCode = document.getElementById('verificationCode').value;

            // デモ用の認証コードが一致するか確認
            if (verificationCode !== demoVerificationCode) {
                alert('Invalid verification code. Please enter the correct code.');
                return;
            }

            // 認証コードが有効であれば次のステップに進む
            showStep(3);
        }

        function enterNewPassword() {
            // ここで新しいパスワードのバリデーションなどを行うべき

            // パスワードが有効であれば次のステップに進む
            showStep(4);
        }

        function confirmPassword() {
            // ここで新しいパスワードの確認と更新などを行うべき

            // 仮の成功メッセージを表示
            document.querySelectorAll('.form-step').forEach(formStep => {
                formStep.style.display = 'none';
            });

            document.getElementById('successMessage').style.display = 'block';
        }

        // 最初のステップを表示
        showStep(1);
    </script>

</body>
</html>
