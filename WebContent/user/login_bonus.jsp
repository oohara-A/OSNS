<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../couponmenu.jsp"%>

    <style>

        body {
            margin: 0;
             background:radial-gradient(#ed384d, #ad4483);
        }

        p {
            margin: 10px;
        }

        .container {
            display: flex;
        }

        .item {
            width: 80px;
            height: 80px;
            background:radial-gradient(#ed384d, #ad4483);
            margin: 20px;
        }


        .rever {
            position: absolute;
            background: transparent;
            border: none;
            left: 157px;
            /* transform: translateX(-343px); */
            top: 545px;

        }
    </style>
     <div id="editor-drag-cover" class="drag-cover"></div>
      <div class="text">
                <p>ログインボーナス！！</p>
                <p>
                    <span class="word belize">レバーをクリックしてね</span>
                    <span class="word pomegranate">クリックで抽選</span> <span class="word green">開始！！！</span>
                </p>
            </div>
    <div id="particles-js">

            <div class='gacha-body'>
                <img src="https://lallapallooza.jp/wp-content/uploads/2020/07/gacha.png">
                 <button type="submit" class="rever rotate"><img onClick="Rotation();"  src="<%=request.getContextPath() %>/assets/image/gacha-rever.png"></button>
            </div>
            <div id="editor-drag-cover" class="drag-cover"></div>
        </div>


        <script>
            let flag = false;
            function Rotation() {
                // rotate()
                document.querySelector(`.rotate`).animate(
                    [
                        { transform: 'rotate(0deg)' },
                        { transform: 'rotate(360deg)' }

                    ],
                    {
                        duration: 1000,
                        easing: 'linear',
                        iterations: 1.5
                    }
                );
                setTimeout(() => {
                    /* window.location.href = "http://localhost:8080/osns/user/boll_down.jsp"; */
                     location.href = "boll_down.jsp";
                	/* window.location.href = "boll_down.jsp"; */
                }, 2100);



            }

            var words = document.getElementsByClassName('word');
            var wordArray = [];
            var currentWord = 0;

            words[currentWord].style.opacity = 1;
            for (var i = 0; i < words.length; i++) {
              splitLetters(words[i]);
            }

            function changeWord() {
              var cw = wordArray[currentWord];
              var nw = currentWord == words.length-1 ? wordArray[0] : wordArray[currentWord+1];
              for (var i = 0; i < cw.length; i++) {
                animateLetterOut(cw, i);
              }

              for (var i = 0; i < nw.length; i++) {
                nw[i].className = 'letter behind';
                nw[0].parentElement.style.opacity = 1;
                animateLetterIn(nw, i);
              }

              currentWord = (currentWord == wordArray.length-1) ? 0 : currentWord+1;
            }

            function animateLetterOut(cw, i) {
              setTimeout(function() {
                cw[i].className = 'letter out';
              }, i*80);
            }

            function animateLetterIn(nw, i) {
              setTimeout(function() {
                nw[i].className = 'letter in';
              }, 340+(i*80));
            }

            function splitLetters(word) {
              var content = word.innerHTML;
              word.innerHTML = '';
              var letters = [];
              for (var i = 0; i < content.length; i++) {
                var letter = document.createElement('span');
                letter.className = 'letter';
                letter.innerHTML = content.charAt(i);
                word.appendChild(letter);
                letters.push(letter);
              }

              wordArray.push(letters);
            }

            changeWord();
            setInterval(changeWord, 4000);

        </script>
<%@include file="../couponfooter.jsp"%>