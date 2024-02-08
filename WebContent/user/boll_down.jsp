<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../couponmenu.jsp"%>
 <style>
        #ball {
            position: absolute;
        }

        .base {
            height: 150px;
            width: 150px;
            border-radius: 50%;
            box-shadow: -20px -10px 40px rgba(0, 0, 0, .5) inset;
            background: linear-gradient(red 46%, red 46%, red 54%, white 54%);
            display: grid;
            place-items: center;
            position: relative;
            overflow: hidden;
        }

        .shadow {
            content: "";
            margin: auto;
            width: 100px;
            height: 4px;
            border-radius: 50%;
            background-color: rgba(0, 0, 0, 0.8);
            filter: blur(6px);
        }

        .center {
            border-radius: 50%;
            border: 7px solid red;
            height: 25%;
            width: 25%;
            background-color: #f5f5f5;
            display: grid;
            place-items: center;
        }

        .center-button {
            border-radius: 50%;
            border: none;
            display: block;
            height: 20px;
            width: 20px;
            box-shadow:
                2px 2px 4px rgba(0, 0, 0, 0.2),
                -3px -3px 4px rgba(255, 255, 255, 0.2);
            background-color: #ffffff;
        }

        .center-button:active {
            box-shadow:
                inset 3px 2px 3px rgba(0, 0, 0, 0.2),
                inset -3px -3px 3px rgba(255, 255, 255, 0.2);
        }

        /* ボールを中心に移動している */
 body {
   background:radial-gradient(#ed384d, #ad4483);
}
    </style>

    <div class="base" id="ball">
        <div class="center">
            <button class="center-button"></button>
        </div>
    </div>

    <!-- <div class="shadow"></div>
    <div id="loadArea-2" class="loadTo"></div>
    <span id="ball"></span> -->


    <script>
        function ball() {
            var ball = document.getElementById("ball")
                , bh = ball.offsetHeight
                , bw = ball.offsetWidth
                , left = (window.innerWidth / 2) - (bw / 2)
                , top = -ball.offsetHeight
                , ground = (window.innerHeight / 2) - (bh / 2);
            ball.style.left = left + "px";
            ball.style.top = top + "px";

            var r = Math.floor(Math.random() * 1000 + 1);
            if (r < 1) {
                ball.className = "gold";
            } else if (r < 11) {
                ball.className = "silver";
            }

            setTimeout(function () {
                var y = top
                    , b = ground
                    , v = 0
                    , R = 0.48;
                function gravity() {
                    y += ++v;
                    if (y >= b) {
                        y = b;
                        v *= -R;
                        if (!~~v) {
                            clearInterval(g)
                        }
                    }
                    document.getElementById("ball").style.top = y + "px";
                }
                var g = setInterval(gravity, 10);
            }, 1000);
            setTimeout(() => {
            	 location.href = "load.jsp";
                /* window.location.href = "http://localhost:8080/osns/user/load.jsp"; */
            }, 3000);
        };
        ball();

    </script>
<%@include file="../couponfooter.jsp"%>