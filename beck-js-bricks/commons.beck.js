function elementEmpty(categoryliid) {
	$("#" + categoryliid).empty();
}

function getInt() {
	return parseInt(Math.random() * 100000);
}

function timeBig(time1, time2) {
	var thetime1 = new Date(time1.replace("-", "/").replace("-", "/"));
	var thetime2 = new Date(time2.replace("-", "/").replace("-", "/"));

	if (thetime1 > thetime2) {
		return true;
	}
	return false;
}

function isFuture(time) {
	var thetime = new Date(time.replace("-", "/").replace("-", "/"));
	var cultime = new Date();
	if (thetime > cultime) {
		return true;
	}
	return false;
}

function isInteger(obj) {
	return typeof obj === 'number' && obj % 1 === 0;
}

function checkNameGroup(elementName, msg) {
	var elementArray = document.getElementsByName(elementName);
	for (var i = 0; i < elementArray.length; i++) {
		if (elementArray[i].value == '') {
			elementArray[i].focus();
			alert(msg);
			return false;
		}
	}
	return true;
}

function fileSize(fileId) {
	return document.getElementById(fileId).files[0].size;
}

function fileSizeOfKB(fileId) {
	return Math.ceil(fileSize(fileId) / 1024);
}

function isDigit(s) {
	var r, re;
	re = /\d*/;
	r = s.match(re);
	return (r == s) ? true : false;
}

function windowDialog(urlstr,width,height){
	var isChrome = navigator.userAgent.toLowerCase().match(/chrome/) != null;
	if(isChrome){
		return windowOpen(urlstr,width,height);
	}else{
		return showModal(urlstr,width,height);
	}
}

function showModal(urlstr,width,height){
  var  obj,x,y,argments,culdate;
  culdate = new Date().getTime();
  urlstr = urlstr +'&time=' + culdate;
  obj =new Object();
  x=(screen.availWidth-width)/2;
  y=(screen.availHeight-height)/2;
  argments = 'dialogWidth='+width +'px;dialogHeight='+height+'px;help:no;status:no;scroll:no;dialogLeft='+x+';dialogTop='+y;
  return window.showModalDialog(urlstr,obj,argments);
}

function windowOpen(urlstr,width,height){
  var  obj,x,y,argments,culdate;
  culdate = new Date().getTime();
  urlstr = urlstr +'&time=' + culdate;
  obj =new Object();
  x=(screen.availWidth-width)/2;
  y=(screen.availHeight-height)/2;
  argments = 'height='+height+', width='+width+', top='+y+', left='+x+', toolbar=no, menubar=no, scrollbars=no, resizable=no,location=no, status=no';
  var win =  window.open(urlstr,obj,argments);
  window.onfocus = function() {
		win.focus();
	};
	window.onclick = function() {
		win.focus();
	};
	
}

function clearParams(parentElementID){
  $("#"+parentElementID+" input").each(function(){
    $(this).val("");
  });
  
  $("#"+parentElementID+" select").each(function(){
     $(this)[0].selectedIndex = 0;
  });
}