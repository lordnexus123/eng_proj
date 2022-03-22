function logChange() {
	
	var log1 = document.getElementById("log1");
	var log2 = document.getElementById("log2");
	var log3 = document.getElementById("log3");
	var showLog1 = document.getElementById("listGroupCheckableRadios1");
	var showLog2 = document.getElementById("listGroupCheckableRadios2");
	var showLog3 = document.getElementById("listGroupCheckableRadios3");
	
	log1.style.display = showLog1.checked ? "block" : "none";
	log2.style.display = showLog2.checked ? "block" : "none";
	log3.style.display = showLog3.checked ? "block" : "none";
}

function regChange() {
	
	var reg1 = document.getElementById("reg1");
	var reg2 = document.getElementById("reg2");
	var showReg1 = document.getElementById("listGroupCheckableRadios1");
	var showReg2 = document.getElementById("listGroupCheckableRadios2");
	
	reg1.style.display = showReg1.checked ? "block" : "none";
	reg2.style.display = showReg2.checked ? "block" : "none";
}