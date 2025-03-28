<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>body {
  display: flex;
  justify-content: center;
  align-items: center;
  height: 100vh;
  background-color: #70c1b3;
}

button {
  position: relative;
  top:80px;
  padding: 15px 50px;
  color: #fff;
  background-color: #f4d35e;
  border: none;
  font-size: 20px;
  border-radius: 20px; 
  box-shadow: 1px 3px #50514F;
  outline: none;
  transition: .3s; 
}

button:hover, button:active {
  outline: none;
  background: #50514F;
  cursor: pointer;
  transform: translateY(15px); 
}

.game {
  position: relative;
  width: auto;
  height: 100%;
  display: flex;
  flex-direction: column;
  align-items: center;
}

.dice-container {
  display: flex;
  justify-content: center;
  gap: 20px;
  margin-top: 200px;
}

.container {
  position: relative;
  display: inline-block;
}

.dice {
  position: relative;
  width: 100px;
  height: 100px;
  transform-style: preserve-3d;
  transition: transform 1s; 
}

.selected {
  opacity: 0.5;
  pointer-events: none;
}

.dot {
  position: absolute;
  width: 20px;
  height: 20px;
  margin: -10px 5px 5px -10px;
  border-radius: 20px;
  background-color: #f25f5c;
  box-shadow: inset 2px 2px #d90429;
}

.side {
  position: absolute;
  background-color: #ffF;
  border-radius:5px;
  width: 100px;
  height: 100px;
  border: 1px solid #e5e5e5;
  text-align: center;
  line-height: 2em;
}

.side:nth-child(1) {
  transform: translateZ(3.1em); }

.side:nth-child(6) {
  transform: rotateY(90deg) translateZ(3.1em); }

.side:nth-child(3) {
  transform: rotateY(-90deg) translateZ(3.1em); }

.side:nth-child(4) {
  transform: rotateX(90deg) translateZ(3.1em); }

.side:nth-child(5) {
  transform: rotateX(-90deg) translateZ(3.1em); }

.side:nth-child(2) {
  transform: rotateY(-180deg) translateZ(3.1em); }

.show-1 {
  transform: rotateX(720deg) rotateZ(-720deg); }

.show-6 {
  transform: rotateX(-900deg) rotateZ(1080deg); }

.show-3 {
  transform: rotateY(-450deg) rotateZ(-1440deg); }

.show-4 {
  transform: rotateY(810deg) rotateZ(720deg); }

.show-5 {
  transform: rotateX(-810deg) rotateZ(-1080deg); }

.show-2 {
  transform: rotateX(450deg) rotateZ(-720deg); }

.two-1, .three-1, .four-1, .five-1, .six-1 {
  top: 20%;
  left: 20%; 
}

.four-3, .five-3, .six-4 {
  top: 20%;
  left: 80%; }

.one-1, .three-2, .five-5 {
  top: 50%;
  left: 50%; }

.four-2, .five-2, .six-3 {
  top: 80%;
  left: 20%; }

.two-2, .three-3, .four-4, .five-4, .six-6 {
  top: 80%;
  left: 80%; }

.six-2 {
  top: 50%;
  left: 20%; }

.six-5 {
  top: 50%;
  left: 80%; 
}
</style>
</head>
<body>
<div class="game">
  <div class="dice-container">
    <div class="container">
      <div id='dice1' class="dice">
        <div id="dice-one-side-one" class='side one'>
          <div class="dot one-1"></div>
        </div>
        <div id="dice-one-side-two" class='side two'>
          <div class="dot two-1"></div>
          <div class="dot two-2"></div>
        </div>
        <div id="dice-one-side-three" class='side three'>
          <div class="dot three-1"></div>
          <div class="dot three-2"></div>
          <div class="dot three-3"></div>
        </div>
        <div id="dice-one-side-four" class='side four'>
          <div class="dot four-1"></div>
          <div class="dot four-2"></div>
          <div class="dot four-3"></div>
          <div class="dot four-4"></div>
        </div>
        <div id="dice-one-side-five" class='side five'>
          <div class="dot five-1"></div>
          <div class="dot five-2"></div>
          <div class="dot five-3"></div>
          <div class="dot five-4"></div>
          <div class="dot five-5"></div>
        </div>
        <div id="dice-one-side-six" class='side six'>
          <div class="dot six-1"></div>
          <div class="dot six-2"></div>
          <div class="dot six-3"></div>
          <div class="dot six-4"></div>
          <div class="dot six-5"></div>
          <div class="dot six-6"></div>
        </div>
      </div>
    </div>
    <div class="container">
      <div id='dice2' class="dice">
        <div id="dice-two-side-one" class='side one'>
          <div class="dot one-1"></div>
        </div>
        <div id="dice-two-side-two" class='side two'>
          <div class="dot two-1"></div>
          <div class="dot two-2"></div>
        </div>
        <div id="dice-two-side-three" class='side three'>
          <div class="dot three-1"></div>
          <div class="dot three-2"></div>
          <div class="dot three-3"></div>
        </div>
        <div id="dice-two-side-four" class='side four'>
          <div class="dot four-1"></div>
          <div class="dot four-2"></div>
          <div class="dot four-3"></div>
          <div class="dot four-4"></div>
        </div>
        <div id="dice-two-side-five" class='side five'>
          <div class="dot five-1"></div>
          <div class="dot five-2"></div>
          <div class="dot five-3"></div>
          <div class="dot five-4"></div>
          <div class="dot five-5"></div>
        </div>
        <div id="dice-two-side-six" class='side six'>
          <div class="dot six-1"></div>
          <div class="dot six-2"></div>
          <div class="dot six-3"></div>
          <div class="dot six-4"></div>
          <div class="dot six-5"></div>
          <div class="dot six-6"></div>
        </div>
      </div>
    </div>
    <div class="container">
      <div id='dice3' class="dice">
        <div id="dice-three-side-one" class='side one'>
          <div class="dot one-1"></div>
        </div>
        <div id="dice-three-side-two" class='side two'>
          <div class="dot two-1"></div>
          <div class="dot two-2"></div>
        </div>
        <div id="dice-three-side-three" class='side three'>
          <div class="dot three-1"></div>
          <div class="dot three-2"></div>
          <div class="dot three-3"></div>
        </div>
        <div id="dice-three-side-four" class='side four'>
          <div class="dot four-1"></div>
          <div class="dot four-2"></div>
          <div class="dot four-3"></div>
          <div class="dot four-4"></div>
        </div>
        <div id="dice-three-side-five" class='side five'>
          <div class="dot five-1"></div>
          <div class="dot five-2"></div>
          <div class="dot five-3"></div>
          <div class="dot five-4"></div>
          <div class="dot five-5"></div>
        </div>
        <div id="dice-three-side-six" class='side six'>
          <div class="dot six-1"></div>
          <div class="dot six-2"></div>
          <div class="dot six-3"></div>
          <div class="dot six-4"></div>
          <div class="dot six-5"></div>
          <div class="dot six-6"></div>
        </div>
      </div>
    </div>
    <div class="container">
      <div id='dice4' class="dice">
        <div id="dice-four-side-one" class='side one'>
          <div class="dot one-1"></div>
        </div>
        <div id="dice-four-side-two" class='side two'>
          <div class="dot two-1"></div>
          <div class="dot two-2"></div>
        </div>
        <div id="dice-four-side-three" class='side three'>
          <div class="dot three-1"></div>
          <div class="dot three-2"></div>
          <div class="dot three-3"></div>
        </div>
        <div id="dice-four-side-four" class='side four'>
          <div class="dot four-1"></div>
          <div class="dot four-2"></div>
          <div class="dot four-3"></div>
          <div class="dot four-4"></div>
        </div>
        <div id="dice-four-side-five" class='side five'>
          <div class="dot five-1"></div>
          <div class="dot five-2"></div>
          <div class="dot five-3"></div>
          <div class="dot five-4"></div>
          <div class="dot five-5"></div>
        </div>
        <div id="dice-four-side-six" class='side six'>
          <div class="dot six-1"></div>
          <div class="dot six-2"></div>
          <div class="dot six-3"></div>
          <div class="dot six-4"></div>
          <div class="dot six-5"></div>
          <div class="dot six-6"></div>
        </div>
      </div>
    </div>
    <div class="container">
      <div id='dice5' class="dice">
        <div id="dice-five-side-one" class='side one'>
          <div class="dot one-1"></div>
        </div>
        <div id="dice-five-side-two" class='side two'>
          <div class="dot two-1"></div>
          <div class="dot two-2"></div>
        </div>
        <div id="dice-five-side-three" class='side three'>
          <div class="dot three-1"></div>
          <div class="dot three-2"></div>
          <div class="dot three-3"></div>
        </div>
        <div id="dice-five-side-four" class='side four'>
          <div class="dot four-1"></div>
          <div class="dot four-2"></div>
          <div class="dot four-3"></div>
          <div class="dot four-4"></div>
        </div>
        <div id="dice-five-side-five" class='side five'>
          <div class="dot five-1"></div>
          <div class="dot five-2"></div>
          <div class="dot five-3"></div>
          <div class="dot five-4"></div>
          <div class="dot five-5"></div>
        </div>
        <div id="dice-five-side-six" class='side six'>
          <div class="dot six-1"></div>
          <div class="dot six-2"></div>
          <div class="dot six-3"></div>
          <div class="dot six-4"></div>
          <div class="dot six-5"></div>
          <div class="dot six-6"></div>
        </div>
      </div>
    </div>
  </div>
  <div id='roll' class='roll-button'><button>Roll dice!</button></div>
</div>
<script>
var elDiceOne = document.getElementById("dice1");
var elDiceTwo = document.getElementById("dice2");
var elDiceThree = document.getElementById("dice3");
var elDiceFour = document.getElementById("dice4");
var elDiceFive = document.getElementById("dice5");
var elComeOut = document.getElementById("roll");

// 주사위를 클릭하면 선택/선택해제할 수 있게 합니다
var diceElements = document.querySelectorAll('.dice');
diceElements.forEach(function(dice) {
  dice.addEventListener('click', function() {
    this.classList.toggle('selected');
  });
});

elComeOut.onclick = function () {
  rollDice();
};

function rollDice() {
  var diceOne = Math.floor(Math.random() * 6 + 1);
  var diceTwo = Math.floor(Math.random() * 6 + 1);
  var diceThree = Math.floor(Math.random() * 6 + 1);
  var diceFour = Math.floor(Math.random() * 6 + 1);
  var diceFive = Math.floor(Math.random() * 6 + 1);

  console.log(diceOne + " " + diceTwo + " " + diceThree + " " + diceFour + " " + diceFive);

  // 선택되지 않은 주사위만 굴립니다
  if (!elDiceOne.classList.contains('selected')) {
    for (var i = 1; i <= 6; i++) {
      elDiceOne.classList.remove("show-" + i);
      if (diceOne === i) {
        elDiceOne.classList.add("show-" + i);
      }
    }
  }

  if (!elDiceTwo.classList.contains('selected')) {
    for (var k = 1; k <= 6; k++) {
      elDiceTwo.classList.remove("show-" + k);
      if (diceTwo === k) {
        elDiceTwo.classList.add("show-" + k);
      }
    }
  }

  if (!elDiceThree.classList.contains('selected')) {
    for (var j = 1; j <= 6; j++) {
      elDiceThree.classList.remove("show-" + j);
      if (diceThree === j) {
        elDiceThree.classList.add("show-" + j);
      }
    }
  }

  if (!elDiceFour.classList.contains('selected')) {
    for (var l = 1; l <= 6; l++) {
      elDiceFour.classList.remove("show-" + l);
      if (diceFour === l) {
        elDiceFour.classList.add("show-" + l);
      }
    }
  }

  if (!elDiceFive.classList.contains('selected')) {
    for (var m = 1; m <= 6; m++) {
      elDiceFive.classList.remove("show-" + m);
      if (diceFive === m) {
        elDiceFive.classList.add("show-" + m);
      }
    }
  }
}
</script>
</body>
</html>