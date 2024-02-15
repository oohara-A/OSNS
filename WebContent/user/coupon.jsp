<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="../couponmenu.jsp"%>
<style>
body{
	 background:radial-gradient(#ed384d, #ad4483);
}
h1{
	display: inline-block;
    vertical-align: top;
    font-size: 200%;
    font-weight: bold;
    margin-bottom: 20%;
    width: 145%;
}
p{
	display: inline-block;
    vertical-align: top;
    font-size: 152%;
    font-weight: bold;
}
</style>
<div class="text">
	<h1>クーポン獲得！！</h1><br>
	<p>
		<span class="word wisteria">おめでとう！!</span> <span class="word belize">クーポン一覧で</span>
		<span class="word pomegranate">クーポンコードを</span> <span class="word green">確認してね</span>
		<!-- <span class="word midnight">cheap.</span> -->
	</p>
</div>

<a href="Couponadd.action" class="border_btn08"><span class=>トップに戻る</span></a>
<div id="particles-js"></div>

<div id="editor-drag-cover" class="drag-cover"></div>


<script
	src="https://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script>
<script
	src="http://coco-factory.jp/ugokuweb/wp-content/themes/ugokuweb/data/move02/5-8/js/5-8.js"></script>

<script>
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