$(document).ready(function () {
  
	var [m, h, s, ms] = [0, 0, 0, 0];
	var interval = 0;


	$(".start").on("click", function() {
	  interval = setInterval(setTime, 16);
	  $(this).hide();
	  $(".stop").show();
	});

	function setTime() {
	  ms += 16;
	  if (ms >= 999) {
	    s++;
	    ms = 0;
	    if (s >= 60) {
	      m++;
	      s = 0;
	      if (m >= 60) {
	        s++;
	        m = 0;
	      }
	    }
	  }
	  $(".display").html(`${String(h).padStart(2, "0")} : ${String(m).padStart(2,"0")} : ${String(s).padStart(2,"0")} : ${String(ms).padStart(3, "0")}`);
	}

	$(".stop").on("click", function() {
	  $(".display").html("00 : 00 : 00 : 000");
	  h = 0;
	  m = 0;
	  s = 0;
	  ms = 0;
	  clearInterval(interval);
	  $(this).hide();
	  $(".start").show();
	});

	$(".pause").on("click", function() {
	  clearInterval(interval);
	});

})