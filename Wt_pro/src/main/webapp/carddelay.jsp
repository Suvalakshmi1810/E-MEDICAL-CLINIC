<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CARD</title>

</head>
<style>
body {
  font-family: 'Lato', sans-serif;
  margin: 0px;
}

h3 {
  display: inline-flex;
  align-items: center;
  justify-content: space-between;
  width: 85%;
  font-size: 0.9rem;
  font-weight: 500;
  letter-spacing: 0.5px;
  text-transform: uppercase;
}

.chip{
  align-self: flex-start;
  justify-content: flex-start;
}

#glass-morphism {
 /* background-color: #850f9afe;*/
   background-color: #003cc3; 
  width: 100%;
  height: 98vh;
  display: flex;
  align-items: center;
  justify-content: center;
  position: relative;
}

.gradient-sphere {
  width: 200px;
  height: 200px;
  background: rgb(252, 255, 188);
  /*background: linear-gradient(90deg, #ffffff 0%, #de3edb 50%, #b11ce3 100%); */
   background: linear-gradient(90deg, #ffffff 0%, #468bd3 50%, #0095ff 100%); 
  border-radius: 50%;
  background-size: 230%;
  background-position: center;
}

#sphere-1 {
  margin: 0 90px 140px 5px
}

#sphere-2 {
  margin: 138px 0 0px 161px;
}

.credit-card {
  position: absolute;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
  backdrop-filter: blur(22px);
  box-shadow: inset 0 0 0 200px rgba(255, 255, 255, 0.074);
  color: #e6e6e6;
  padding: 30px;
  border-radius: 12px;
  gap: 15px;
  min-width: 350px;
  min-height: 190px;
  border: 3px solid rgba(255, 255, 255, 0.12);
  animation-name: example;
  animation-duration: 4s;
  animation-iteration-count: infinite;
}

.credit-card .credit-card-brand {
  font-size: 32px;
  font-weight: 900;
  font-style: italic;
  align-self: flex-end;
  justify-content: flex-start;
  opacity: 0.8;
}

.credit-card .credit-card-info {
  display: flex;
  flex-direction: column;
  justify-self: flex-end;
  gap: 10px 0;
  opacity: 0.8;
  font-size: 17px;
}

.credit-card .credit-card-info .credit-card-number {
  letter-spacing: 2px;
}

.credit-card .credit-card-info .credit-card-date {
  font-size: 11px;
  font-weight: 300;
}

.r-270 {
  transform: rotate(270deg);
}

@keyframes example {
  0% {
    margin-left: 0px;
  }

  50% {
    margin-left: 120px;
  }

  100% {
    margin-left: 0px;
  }

}

</style>
<body>
 <div id="glass-morphism">
        <div class="gradient-sphere" id="sphere-1"></div>
        <div class="gradient-sphere r-270" id="sphere-2"></div>
        <div class="credit-card">
            <img class="chip" src="images/chip.png" alt="chip" width="80" height="60">
            <span class="credit-card-brand">Credit Card</span>
            <div class="credit-card-info">
                <span class="credit-card-number">1234 5678 9101 123</span>
                <span class="credit-card-date">10/25</span>
                <span>XYZ</span>
            </div>
        </div>
    </div>
    <script>
     let my_url="http://localhost:8080/Wt_pro/card.jsp";
     setTimeout(function(){
    	 window.location.replace(my_url);
     },2000);
    </script>
</body>
</html>