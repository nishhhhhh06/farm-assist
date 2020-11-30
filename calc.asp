
<SCRIPT LANGUAGE="JavaScript" >
var intTime = 1000;
var ClockSet=null; 
var BTimerOn = false;
var BStop = false;
var i=0;
var idName="";
var menuItem;
function showMenu(ObjName)
{
  var MenuTab=document.getElementById('MenuTab');
  var TopTable=document.getElementById('TableMenu');
  //MenuForm.style.display = "none";
  var MenuBar=document.getElementById(ObjName);
  //alert(MenuBar.id);
   MenuItem=document.getElementById('submenu-'+MenuBar.id);
  //MenuForm.style.z-index =1;
  MenuItem.style.display = "block";
  //alert(MenuImg.offsetLeft);
  //
  i=parseInt(MenuTab.offsetLeft) + parseInt(MenuTab.width)+parseInt(TopTable.offsetLeft)-180;
   //alert(getElementById("TableMenu").offsetLeft);
   MenuItem.style.left=i;
  //MenuItem.style.left=MenuBar.offsetLeft+MenuForm.offsetLeft;
 // MenuItem.style.z-index=2;
 // MenuItem.style.Zindex=10;
  //alert(MenuItem.style.width);
   //DisableAll('submenu-'+ObjName);
  //MenuBar.background='images/indexmenuhot.gif';
    
  
  //MenuItem.style.left=TopTable.offsetLeft+MenuBar.offsetLeft;
   
}




function DelayOff(ObjName)
{    
    var MenuBar=document.getElementById(ObjName);
    MenuBar.background='images/indexmenu.gif';
    //var MenuItem=document.getElementById('submenu-'+MenuBar.id);
    //i =3;
    BTimerOn=false;
    BStop=false;
    clock();
    
    
    //BTimerOn=true;
    //settimeOut(MenuOff(MenuItem.id),10000);    
    //BTimerOn=true;
    //MenuOff(MenuItem.id);
    //BTimerOn=false;
    //MenuItem.style.display = "none";
}

function MenuOff(IdName)
{
   //var MenuItem=document.getElementById(IdName);
  // if (!BTimerOn)
  // ClockSet=settimeOut(MenuOff(),450000);
   //   MenuItem.style.display = "none";
  // else
  //    BTimerOn=false;
  // if (ClockSet!=null)
     // clearTimeout(ClockSet);
   //  alert(i+1);
}


 
   
function clock()
   {
     
     if(!BTimerOn)
          {ClockSet=setTimeout("clock();",1000);BTimerOn=true;}
     else
        if (!BStop)
          {
          
          var MenuItem=document.getElementById(idName);MenuItem.style.display = "none";}
   }
   
     
function CleanTimeSet()
{
  //alert("1234");
  
  clearTimeout(ClockSet);
  BStop=true
  BTimerOn=false;
  MenuItem.style.display = "block";
  // var MenuItem=document.getElementById(idName);
  // if (MenuItem.style.display == "none")
   //   MenuItem.style.display ='block';

}

</SCRIPT> 




<script language=javascript>


function toggleStretch(objname)
{	
	var obj = document.getElementById(objname)
	obj.style.display= obj.style.display == '' ? 'none' : '';
	var img = document.getElementById(objname + '_img');
	img.src = img.src.indexOf('_yes.gif') == -1 ? img.src.replace(/_no\.gif/, '_yes\.gif') : img.src.replace(/_yes\.gif/, '_no\.gif')
}


<!--
     // ¸Ã´úÂë¼æÈÝIE/FF
     
     function getExpressCode(expr)
     {      
      express=document.getElementsByName(expr);
      for(i=0;i<express.length;i++) 
      { 
        if(express[i].checked) {tmpStr='[em:'+(i+1)+'.gif]';} 
      } 
      return tmpStr;
 //var express=document.getElementByID(expr);
       //alert(express(1).checked);        
       //return '1234';
      // if (Expression(0).checked)
       //   alert('1234');
     }
     
     function insertText (textEl, text)
     {
        /**//*@cc_on
         @set @ie = true
         @if (@ie)
         textEl.focus(); 
         document.selection.createRange().text = text; 
         @else @*/
         if (textEl.selectionStart || textEl.selectionStart == '0') {
             var startPos = textEl.selectionStart;
             var endPos = textEl.selectionEnd;
             textEl.value = textEl.value.substring(0, startPos)
             + text 
             + textEl.value.substring(endPos, textEl.value.length);
         }
         else {
             textEl.value += text;
         }
        /**//*@end @*/
     }
     
     
//-->



</script>


<SCRIPT language=javascript type=text/javascript>
var currentObj = null;


function showBlogTree(obj){
	var parentBox = obj.parentNode;
	var imgObj = obj.getElementsByTagName("img")[0];
	var box = parentBox.getElementsByTagName("div")[1];
		if(obj!=currentObj) hiddenBlogTree();
	if(imgObj.getAttribute("src").indexOf("_over")!=-1){
		imgObj.setAttribute("src",imgObj.getAttribute("src").replace("_over","_on"));
		box.style.display="none";
	}else{
		imgObj.setAttribute("src",imgObj.getAttribute("src").replace("_on","_over"));
		box.style.display="block";
	}
	if(currentObj==null)currentObj=document.getElementById("currentDiv");
	currentObj = obj;
}
function hiddenBlogTree(){
	if(currentObj==null)currentObj=document.getElementById("currentDiv");
	var obj = currentObj;
	var parentBox = obj.parentNode;
	var imgObj = obj.getElementsByTagName("img")[0];
	var box = parentBox.getElementsByTagName("div")[1];
	if(imgObj.getAttribute("src").indexOf("_over")!=-1){
		imgObj.setAttribute("src",imgObj.getAttribute("src").replace("_over","_on"));
		box.style.display="none";
	}
}	
function hiddenAllTree()
   {
    var obj=document.getElementsByTagName("currentDiv")[1];
    var parentBox = obj.parentNode;
	var imgObj = obj.getElementsByTagName("img")[0];
	var box = parentBox.getElementsByTagName("div")[1];
	if(imgObj.getAttribute("src").indexOf("_over")!=-1){
		imgObj.setAttribute("src",imgObj.getAttribute("src").replace("_over","_on"));
		box.style.display="none";}     	
	}
	
}

function setFavCookies(name)
{
var today = new Date();
 var expires = new Date();
 //alert(getCookie("Expr"));
 expires.setTime(today.getTime() +10*60*60*24);
 setCookie(name,'1', expires);
}

function setCookie(name, value, expire) {
    window.document.cookie = name + "=" + escape(value) + ((expire == null) ? "" : ("; expires=" + expire.toGMTString()));  
}
function getCookie(Name) {
  var search = Name + "=";
if (self.document.cookie.length > 0) { // if there are any cookies
offset = self.document.cookie.indexOf(search);
if (offset != -1) { // if cookie exists
offset += search.length;          // set index of beginning of value
end = self.document.cookie.indexOf(";", offset)          // set index of end of cookie value
if (end == -1)
end = self.document.cookie.length;
return unescape(self.document.cookie.substring(offset, end));
}
}
return null;
}//

function getoffsety(e) 
{ 
var t=e.offsetTop; 
//var l=e.offsetLeft; 
while(e=e.offsetParent) 
{ 
t+=e.offsetTop; 
//l+=e.offsetLeft; 
} 
//var rec = new Array(1); 
//rec[0] = t; 
//rec[1] = l;
if (t-100>window.screen.height)
    t=window.screen.height-100;
if(t<0)
   t=0;
   
return t
}

function getoffsetx(e) 
{ 
//var t=e.offsetTop; 
var l=e.offsetLeft; 
while(e=e.offsetParent) 
{ 
l+=e.offsetLeft; 
} 
//var rec = new Array(1); 
//rec[0] = t; 
//rec[1] = l;
if (l-200>window.screen.width)
    l=window.screen.width-200;
if(l<0)
   l=0;
   
return l
}

function lock(flag){
  var txtArrs = document.getElementsByTagName('input');
  for(var i=0; i<txtArrs.length; i++){
   var txt =  txtArrs[i];
   if(txt.type == 'text' || txt.type == 'submit' || txt.type == 'button'){
    if(flag == 'true'){
     txt.disabled = true;
    }else{
     txt.disabled = false;
    }
   }
  }
 }


</SCRIPT>
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<meta name="viewport" content="width=device-width">
<meta name="keywords" content="Expense,Calculator,Farm,Income">
<meta name="description" content="The most common income of farmer is the sale of grains,livestock,produce,and other products raised or bought for resale. The cost  of the farm may differ depending on the location.Calculating how much is spent on  living expenses is never easy. To control the finances of your farm, you have to know where your money comes from and where it goes. This calculator can help you take control of living expenses and sharpen your managerial skills. ">
<title>Farm income & Expense Calculator -- e-Tools Age</title><META http-equiv=MSThemeCompatible content=Yes><LINK href=../styles/stylePageE.css type=text/css rel=stylesheet>
<style> 
        .black_overlay{ 
            display: none; 
            position: absolute; 
            top: 0%; 
            left: 0%; 
            width: 100%; 
            height: 100%;  
            z-index:1001; 
            -moz-opacity: 0.8; 
            opacity:.80; 
            filter: alpha(opacity=88); 
        } 
        .white_content { 
            display: none; 
            position: absolute; 
            top: 15%; 
            left: 18%;  
            padding: 1px; 
            border: 0px solid #eeeeee; 
            background-color: white; 
            z-index:1002; 
            overflow: auto; 
        } 
        

input{	font-size:14px;	}

#jg{	FOTN-SIZE:14PX;
	padding:3px;
	border:1px solid #888;
	width:96%;
	text-align:right;
}

a:visited,a:link{	text-decoration:none;	}

*{	margin:0;		}


table{	border:2px solid #fff;		}

#main{	margin:50px auto 0 auto;
	padding:20px;
	background-color: #999966;
	border-top:1px solid #FFF;
	border-bottom:1px solid #FFF;
}
        
        
        
    </style> 
</head>





<script language="javascript">

var LabelFontFace="&#23435;&#20307;,arial,Verdana";
var LabelFontColor="#000000";
var LabelFontSize="10pt";
var LabelFontStyle="Font.PLAIN";
var LabelBorderColor="#000000";
var LabelBackColor="#FFFFE1";
function CheckTxtDig(txtValue)
 {
   if (txtValue.value!="")
    if (isNaN(txtValue.value))
       {
       txtValue.value="";
       alert("Please enter numeric data only.");
       txtValue.focus();       
       //return false;
       }       
 }

function AddIncomeItem()
 {
  if (document.all.incomeTxt.value=="")
     alert("Please choose a income item in the fields.");
  else
     if (document.all.incomeAmount.value=="")
        alert("Please enter a number in amount of income fields.");
     else
       
        if ((document.all.incomeTxt.value).indexOf(':')>=0)
           alert("The income item can not contain character ':'.");
        else
           if ((document.all.incomeTxt.value).indexOf('|')>=0)
              alert("The income item can not contain character '|'.");
           else
             {
               document.all.itemListofIncome.options.add(new Option(document.all.incomeTxt.value+':'+document.all.incomeAmount.value,document.all.incomeTxt.value+':'+document.all.incomeAmount.value));    
               GetIncomeItem();
               document.all.TotalIncome.value=document.all.TotalIncome.value*1+document.all.incomeAmount.value*1;
         // alert(document.all.incomeTxt.value+':'+document.all.incomeAmount.value);
               if (document.all.InRemoveIt.disabled)  document.all.InRemoveIt.disabled=false;
              }
 }

function AddExpItem()
 {
  if (document.all.ExpenseTxt.value=="")
     alert("Please choose a expense item in the fields.");
  else
     if (document.all.ExpAmount.value=="")
        alert("Please enter a number in amount of expense fields.");
        if ((document.all.ExpenseTxt.value).indexOf(':')>=0)
           alert("The expense item can not contain character ':'.");
        else
           if ((document.all.ExpenseTxt.value).indexOf('|')>=0)
              alert("The expense item can not contain character '|'.");
           else
             {
               document.all.itemListofExp.options.add(new Option(document.all.ExpenseTxt.value+':'+document.all.ExpAmount.value,document.all.ExpenseTxt.value+':'+document.all.ExpAmount.value));    
               GetExpenseItem();
               document.all.TotalExpense.value=document.all.TotalExpense.value*1+document.all.ExpAmount.value*1;
         // alert(document.all.incomeTxt.value+':'+document.all.incomeAmount.value);
               if (document.all.ExpRemoveIt.disabled)  document.all.ExpRemoveIt.disabled=false;
             }
 }


function RemoveInItem()
{
  var tmpStr;
  var tmparrValue;
  if (document.all.itemListofIncome.options.length>0)
      if (document.all.itemListofIncome.options.selectedIndex>=0)
      {   
          tmpStr=document.all.itemListofIncome.options[document.all.itemListofIncome.options.selectedIndex].value;
          tmparrValue=tmpStr.split(':'); 
          // alert(tmparrValue[1]);       
          document.all.TotalIncome.value=document.all.TotalIncome.value-tmparrValue[1];
          document.all.itemListofIncome.options[document.all.itemListofIncome.options.selectedIndex] = null;
          GetIncomeItem();
          
      }
  if (document.all.itemListofIncome.options.length==0)
     document.all.InRemoveIt.disabled=true; 
}

function RemoveExpItem()
{ 
   var tmpStr;
  var tmparrValue;
  if (document.all.itemListofExp.options.length>0)
      if (document.all.itemListofExp.options.selectedIndex>=0)
      {           
          tmpStr=document.all.itemListofExp.options[document.all.itemListofExp.options.selectedIndex].value;
          tmparrValue=tmpStr.split(':');
          document.all.TotalExpense.value=document.all.TotalExpense.value-tmparrValue[1];
          document.all.itemListofExp.options[document.all.itemListofExp.options.selectedIndex] = null;
          GetExpenseItem();
      }
  if (document.all.itemListofExp.options.length==0)
     document.all.ExpRemoveIt.disabled=true; 
}

function GetIncomeItem()
{
   var i;
   var tmpItem;
   tmpItem='';
   if (document.all.itemListofIncome.options.length>0)
      {
      for (i=0;i<document.all.itemListofIncome.options.length;i++)
          if (tmpItem=='')
             tmpItem=document.all.itemListofIncome.options[i].value;
          else
             tmpItem=tmpItem+'|'+document.all.itemListofIncome.options[i].value; 
      document.all.IncomeItem.value=tmpItem;
      //alert(document.all.IncomeItem.value);
      }
   //else    
   //  document.all.ExpensesItems.value='';
}

function GetExpenseItem()
{
   var i;
   var tmpItem;
   tmpItem='';
   if (document.all.itemListofExp.options.length>0)
      {
      for (i=0;i<document.all.itemListofExp.options.length;i++)
          if (tmpItem=='')
             tmpItem=document.all.itemListofExp.options[i].value;
          else
             tmpItem=tmpItem+'|'+document.all.itemListofExp.options[i].value; 
      document.all.ExpenseItem.value=tmpItem;
      //alert(document.all.IncomeItem.value);
      }
   //else    
   //  document.all.ExpensesItems.value='';
}

function CheckInput(txtValue)
 {
  if(txtValue.value!='') 
   if(txtValue.value-100>0 || txtValue.value-0<0)
     {
       alert("Please enter a number between 0 to 100.");
       txtValue.focus();
     }  
 }

function GetIncome()
 {
  if(document.all.Income.value!='' && document.all.Other.value!='') 
     document.all.TotalIncome.value=(parseFloat(document.all.Income.value)+parseFloat(document.all.Other.value)).toFixed(2);
 }


function CheckSubmit()
 {
  if(document.all.Income.value=='' && document.all.Other.value=='')
     {
       alert("Please enter a number in income field or other field.");
       return false;
     }
  else
     if (document.all.itemListofIncome.options.length==0)
        {
          alert("Please add item in item list.");
          return false;
        }
  return true; }


function ClearAll(obj){ 
    if(obj.length-1>=0){ 
        for(var i=obj.length-1;i>=0;i--){ 
            obj.remove(i); 
        } 
    } 
}

</script>





<SCRIPT language="JavaScript">
{
 var waterValue;
  function getListValue(list){ 
  var listValue=""; 
  if (list.selectedIndex != -1) { 
  listValue = list.options[list.selectedIndex].value; 
  } 
  return (listValue); 
 } 

function getCookie(Name) {
  var search = Name + "=";
if (self.document.cookie.length > 0) { // if there are any cookies
offset = self.document.cookie.indexOf(search);
if (offset != -1) { // if cookie exists
offset += search.length;          // set index of beginning of value
end = self.document.cookie.indexOf(";", offset)          // set index of end of cookie value
if (end == -1)
end = self.document.cookie.length;
return unescape(self.document.cookie.substring(offset, end));
}
}
return null;
}


<!--
if(document.all)document.write('<link rel=stylesheet type="text/css" href="ehp_null.css">')
if (window.Event) 
document.captureEvents(Event.MOUSEUP); 

function nocontextmenu() 
{
event.cancelBubble = true
event.returnValue = false;

return false;
}




function norightclick(e) 
{
if (window.Event) 
{
if (e.which == 2 || e.which == 3)
return false;
}
else
if (event.button == 2 || event.button == 3)
{
event.cancelBubble = true
event.returnValue = false;
return false;
}

}

document.oncontextmenu = nocontextmenu; // for IE5+
document.onmousedown = norightclick; // for all others
//-->


}
 </SCRIPT> 
 
 <script>
var a,b,c,d;
var ClickJudge;
function shu(x)
{
	if (jg.value==0)
	{
		jg.value=x;
	}
	else
	{
		if (x==".")
		{
			var kk=jg.value
			if (kk.indexOf(".")<0)
			{
				jg.value=jg.value+x;
			}
		}
		else
		{
			jg.value=jg.value+x;
		}
	}
}

function yunsuan(y)
{
	switch (y)
	{
	case "+":	d="+";	break;
	case "-":	d="-";	break;
	case "x":	d="x";	break;
	case "/":	d= "/";
	}
	a=Number(jg.value);
	jg.value=""
}

function dengyu()
{
	b=Number(jg.value)
	if(a!=undefined && b!=0 && d!=undefined)
	{
		switch (d)
		{
			case "+":	c=a+b;	break;
			case "-":	c=a-b;	break;
			case "x":	c=a*b;	break;
			case "/":	c=a/b;
		}
		jg.value=c;
		a=0;
		b=0;
		d=undefined;
		if(ClickJudge=='I')
		  document.getElementById('incomeAmount').value=c;
		if(ClickJudge=='E')
		  document.getElementById('ExpAmount').value=c;
  
	}
}

function qc()
{
	a=0;
	b=0;
	d=undefined;
	jg.value="0";
}

function shanchu()
{
	var bs=jg.value;
	bs=bs.substr(0,bs.length-1);
	jg.value=bs;
	jg.focus();
}

function pf()
{
	var h=Number(jg.value);
	if (h!=0)
	{
		h=h*h;
		jg.value=h;
	}
}

function jc()
{
	var p=1;
	var q=parseInt(jg.value)
	if (q!=0 && q!=NaN)
	{
		for (i=1;i<=q;i++)
		{
			p=p*i;
		}
		jg.value=p;
	}

}

function setfocus()
{
	jg.focus();
	ts=startTime();
}

function kf()
{
	if (jg.value!=".")
	{
		jg.value=Math.sqrt(Number(jg.value));
	}
}

function checkkey()
{
	var p=/[^0-9]/
	if (p.test(jg.value)==true)
	{
		jg.value="";
		jg.focus;
	}
}
function shijian()
{
	var a = new Date();     //&#21019;&#24314;&#26102;&#38388;&#30340;&#23545;&#35937;&#23454;&#20363;
	jg.value = a.toLocaleString();     // &#30452;&#25509;&#36755;&#20986;&#20840;&#37096;&#26102;&#38388;	
}


</script>    

 

<body topmargin=2>
  <noscript>
<iframe src="*.htm"></iframe>
</noscript>
<div align=center style="background:#F4F3F2;BORDER-BOTTOM: #ebebeb 1px solid;"><table border=0 width=825 height=21 bgcolor=#F4F3F2 cellspacing=0 cellpadding=0 id="TableMenu"><tr><td height=21 width=248><a href="../index.asp" target=_parent>Home</a><label style="width:3px"></label>|<label style="width:3px"></label><a href="#" onclick="javascript:window.external.addFavorite('http://www.etoolsage.com/Calculator/Farm_income_Expense_Calculator.asp?incomeSlt=Corn&incomeTxt=Corn&incomeAmount=1000&TotalIncome=1000&ExpenseSlt=Other+Interest&ExpenseTxt=Other+Interest&ExpAmount=400&IncomeItem=Corn%3A1000&ExpenseItem=Other+Interest%3A400&TotalExpense=400','e-Tools Age--Farm income & Expense Calculator');">Add to Favorites<img border=0 src="../images/noteD.gif"  title="242892 visitors have bookmarked the site." onclick="javascript:setFavCookies('favImg');"></a><label style="width:3px"></label>|<label style="width:3px"></label><a href="../AddTools.asp?lang=en&toolsId=1811" target=_parent>Add to My Toolkit</a></td><td height=21 width=350 align=right id="MenuTab"><a href="../agr.asp"?lang=en target=_parent>agriculture</a><label style="width:3px"></label><img border=0 src="../images/arrowRight.gif"><label style="width:6px"></label><font class=12v id="Mymenu" onMouseOver="showMenu(this.id);"  onmouseout="idName='submenu-Mymenu';return DelayOff(this.id);" style="cursor:hand">Farm income & Expense Calculator</font><label style="width:3px"></label><img border=0 src="../images/DownArrow.gif" id="DownMenu"></td><td height=21 width=220 align=left>|<label style="width:3px"></label><a href="../RegUser.asp" target=_parent>Register</a><label style="width:3px"></label>|<label style="width:3px"></label><a href="../login.asp?lang=en" target=_parent>Sign in</a><label style="width:3px"></label>|<label style="width:3px"></label><a href="../customize.asp" target=_parent><SPAN ID="blink" STYLE="color: red; behavior: url(#default#time2)" begin="0;blink.end+1.0" dur="0.1" timeaction="style">Customization</span></a></td></tr></table><UL class=submenu id="submenu-Mymenu" onmouseover="CleanTimeSet();" onmouseout="idName='submenu-Mymenu';return DelayOff(this.id);"><LI class=submenuitem><a href="https://www.etoolsage.com/converter/consistency.asp?toolsort=1800" target=_parent style="width:200px"><label style="width:3px"></label>Calculating Concentration</a></LI><LI class=submenuitem><a href="https://www.etoolsage.com/converter/agriculture.asp?toolsort=1800" target=_parent style="width:200px"><label style="width:3px"></label>Agriculture Converter</a></LI><LI class=submenuitem><a href="https://www.etoolsage.com/chart/Common_Fertilizer_Chart.asp?toolsort=1800" target=_parent style="width:200px"><label style="width:3px"></label>Fertilizer Chart</a></LI><LI class=submenuitem><a href="https://www.etoolsage.com/Calculator/Fertilizer_Calculator.asp?toolsort=1800" target=_parent style="width:200px"><label style="width:3px"></label>Fertilizer Calculator</a></LI><LI class=submenuitem><a href="https://www.etoolsage.com/Calculator/Seeding_Rate_Calculator.asp?toolsort=1800" target=_parent style="width:200px"><label style="width:3px"></label>Seeding Rate Calculator</a></LI><LI class=submenuitem><a href="https://www.etoolsage.com/Calculator/Grain_Yield_Calculator.asp?toolsort=1800" target=_parent style="width:200px"><label style="width:3px"></label>Grain Yield Calculator</a></LI><LI class=submenuitem><a href="https://www.etoolsage.com/Calculator/Dilution_Calculator.asp?toolsort=1800" target=_parent style="width:200px"><label style="width:3px"></label>Dilution Calculator</a></LI></UL></div>
<div align="center">
<table border="0" width="800" height="127" cellspacing="0" cellpadding="0" bordercolorlight="#FFFFFF" bordercolor="#ededed">
	<tr>
		<td height="102" width="114" align="left" rowspan="2" valign="top">
		<img border="0" src="../images/eTools.gif"align="left" width="100" height="83"><h3>
		&nbsp;<font color="#555555"><br> &nbsp; </h3></td>
		<td height="21" width="686" align="left" valign="top">
		<font face="Arial"><H1 style="Font-size:15px">Farm income & Expense Calculator</h1></font></td>
	</tr>
	<tr>
		<td height="80" width="686" align="left" valign="top">
		<b><font face="Arial" color="#808080">The most common income of farmer is the sale of grains,livestock,produce,and other products raised or bought for resale. 
		The cost&nbsp; of the farm may differ depending on the 
		location.Calculating how much is spent on&nbsp; living expenses is never 
		easy. To control the finances of your farm, you have to know where your 
		money comes from and where it goes. This calculator can help you take 
		control of living expenses and sharpen your managerial skills. </font></b></td>
	</tr>
	<tr>
		<td height="25" width="114" align="right" valign="top"></td>
		<td height="25" width="686" align="right" valign="bottom"><div style="width:365px"><style type="text/css">
@import url(https://www.google.com/cse/api/branding.css);
</style>
<div class="cse-branding-right" style="background-color:#FFFFFF;color:#000000">
<div class="cse-branding-form">
<form action="https://www.google.com/cse" id="cse-search-box">
<div>
<input type="hidden" name="cx" value="partner-pub-6166525104477340:9l2684c1m46" />
<input type="hidden" name="ie" value="ISO-8859-1" />
<input type="text" name="q" size="30" />
<input type="submit" name="sa" value="Search" />
</div>
</form>
</div>
<div class="cse-branding-logo">
<img src="https://www.google.com/images/poweredby_transparent/poweredby_FFFFFF.gif" alt="Google" />
</div>
<div class="cse-branding-text">
Custom Search
</div>
</div>
</div></td>
		</tr>
	</table>
<table border="0" width="798" height="31" cellspacing="0" bordercolorlight="#FFFFFF" bordercolor="#DBDBDB" bgcolor="#FFFFFF" cellpadding="0"><tr><td height="5" width="230" align="center"><div style="width:230px; height:4px"><b class="b1"></b><b class="b2 d1"></b><b class="b3 d1"></b><b class="b4 d1"></b><div class="b d1"  style="width:228px; height:1px;PADDING-top:3px"></div></div></td><td height="5"></td></tr><tr><td height="23" width="228" class="TABBackground_hot"><font face="Arial"><b><span id="tab1" style="color:#0033AA">Farm income & Expense Calculator</span></b></font></td><td height="23" align="right" style="BORDER-BOTTOM:2px solid #aaaaaa"><div style="width:100px;height:23px"><img src="../images/AddOther23.gif"  border=0   style="cursor:hand;" onmouseover="javascript:document.getElementById('nav').style.display='block';var tdp= getPos(this);document.getElementById('nav').style.left=tdp.x;if(tdp.y-document.getElementById('nav').offsetHeight+1>=0) {document.getElementById('nav').style.top=tdp.y-document.getElementById('nav').offsetHeight+1;} else {document.getElementById('nav').style.top=tdp.y+this.height;}" onmouseout="timedClose()"><a href="javascript:window.open('https://www.facebook.com/sharer.php?u='+encodeURIComponent(document.location.href)+'&amp;t='+encodeURIComponent(document.title),'_blank','toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=600, height=450,top=100,left=350');void(0)"><img src="../images/facebook23.gif" border=0 alt='Sharing buttons for facebook' title='Facebook'></a><a href="javascript:window.open('https://twitter.com/intent/tweet?text='+encodeURIComponent(document.location.href)+' '+encodeURIComponent(document.title),'_blank','toolbar=yes, location=yes,  directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=600, height=450,top=100,left=350');void(0)" ><img src="../images/twitter23.gif" border=0 alt='Sharing buttons for twitter' title='Twitter'></a><a href="javascript:window.open('https://plus.google.com/share?url='+encodeURIComponent(document.location.href),'_blank','toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=600, height=450,top=100,left=350');void(0)"><img src="../images/Google23.gif" border=0 alt='Sharing buttons for Google plus' title='Google plus'></a></div><div id="nav" onmouseover="javascript:StopIt=true;clearTimeout(tid);this.style.display='block';"  onmouseout="javascript:this.style.display='none';StopIt = false;"><a href="javascript:window.open('https://www.linkedin.com/shareArticle?mini=true&url='+encodeURIComponent(document.location.href)+'&title='+encodeURIComponent(document.title),'_blank','toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=600, height=450,top=100,left=350');void(0)" ><img src="../images/linkedin20.gif" border=0 alt='Sharing buttons for Linkedin' title='Linkedin'></a><a href="javascript:window.open('https://www.blogger.com/blog-this.g?u='+encodeURIComponent(document.location.href)+'/&n='+encodeURIComponent(document.title),'_blank','toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=600, height=450,top=100,left=350');void(0)" ><img src="../images/Blogger20.gif" border=0 alt='Sharing buttons for Blogger' title='Blogger'></a><a href="javascript:window.open('https://buffer.com/add?url='+encodeURIComponent(document.location.href)+'/&text='+encodeURIComponent(document.title),'_blank','toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=600, height=450,top=100,left=350');void(0)" ><img src="../images/buffer20.gif" border=0 alt='Sharing buttons for Buffer' title='Buffer'></a><a href="javascript:window.open('https://social-plugins.line.me/lineit/share?url=&text='+encodeURIComponent(document.title)+' '+encodeURIComponent(document.location.href)+'/&from=line_scheme','_blank','toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=600, height=450,top=100,left=350');void(0)" ><img src="../images/Line20.gif" border=0 alt='Sharing buttons for Line' title='Line'></a><p><a href="javascript:window.open('https://pinterest.com/pin/create/button/?url='+encodeURIComponent(document.location.href)+'/&media=https://www.etoolsage.com/../images/eTools.gif'+'&description='+encodeURIComponent(document.title),'_blank','toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=600, height=450,top=100,left=350');void(0)" ><img src="../images/pinterest20.gif" border=0 alt='Sharing buttons for pinterest' title='Pinterest'></a><a href="javascript:window.open('https://sns.qzone.qq.com/cgi-bin/qzshare/cgi_qzshare_onekey?url='+encodeURIComponent(document.location.href)+'%2F&title='+encodeURIComponent(document.title),'_blank','toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=600, height=450,top=100,left=350');void(0)" ><img src="../images/Qzone20.gif" border=0 alt='Sharing buttons for Qzone' title='Qzone'></a><a href="javascript:window.open('https://tieba.baidu.com/f/commit/share/openShareApi?url='+encodeURIComponent(document.location.href)+'%2F&title='+encodeURIComponent(document.title),'_blank','toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=600, height=450,top=100,left=350');void(0)" ><img src="../images/TieBa20.gif" border=0 alt='Sharing buttons for Baidu tieba' title='Baidu tieba'></a><a href="javascript:window.open('https://service.weibo.com/share/share.php?url='+encodeURIComponent(document.location.href)+'%2F&title='+encodeURIComponent(document.title),'_blank','toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=600, height=450,top=100,left=350');void(0)" ><img src="../images/weibo20.gif" border=0 alt='Sharing buttons for Weibo' title='Weibo'></a></div><SCRIPT LANGUAGE="JavaScript">function getPos(element)  {         for   (var   leftX=0,leftY=0;   element!=null; )       { leftX+=element.offsetLeft; leftY+=element.offsetTop; element=element.offsetParent;       }  return {x:leftX, y:leftY} } var tid=null;var StopIt = false;function timedClose(){var tid=setTimeout("if (!StopIt) {document.getElementById('nav').style.display='none';StopIt = false;}",1000)}</SCRIPT><style type="text/css">#nav{position:fixed; top:20px; left:30px;width:86px;height: 67px; border:1px solid #aaa;display: none;background: #fafafa;padding-left: 8px;padding-right: 8px;padding-top: 12px}</style></td></tr></table>
<FORM name="formCategory" onsubmit="return CheckSubmit();" style="margin-top:0px">
	
<table border="0" width="800" height="1083" cellspacing="0" cellpadding="0" bordercolorlight="#FFFFFF" bordercolor="#ededed">		
	<tr>
		<td height="6" width="11" align="left" bgcolor="#FFFFFF"></td>
		<td height="1" width="474" align="right" bgcolor="#FFFFFF" colspan="2"></td>
		<td height="888" width="315" align="center" rowspan="8" bgcolor="#FFFFFF" valign="top" style="padding-top:20px"><script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- 336x280, &#21019;&#24314;&#20110; 09-4-13 -->
<ins class="adsbygoogle"
     style="display:inline-block;width:336px;height:280px"
     data-ad-client="ca-pub-6166525104477340"
     data-ad-slot="3251853361"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script><br><br><script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- 336x280, &#21019;&#24314;&#20110; 09-4-13 -->
<ins class="adsbygoogle"
     style="display:inline-block;width:336px;height:280px"
     data-ad-client="ca-pub-6166525104477340"
     data-ad-slot="3251853361"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script></td>
		</tr>
	<tr>
		<td height="821" width="11" align="left" bgcolor="#FFFFFF" rowspan="6">
		&nbsp;</td>
		</tr>
	<tr>
		<td height="328" width="474" align="left" bgcolor="#FFFFFF" colspan="2" valign="top">
		<b>Select Income Entries</b><span style="width:165px;display:-moz-inline-box;display:inline-block;">&nbsp;&nbsp;</span><b>Amount</b><br><span style="position:absolute;border:1pt solid #c1c1c1;overflow:hidden;width:188px;height:20px;clip:rect(-1px 190px 190px 170px);"> 
<select name="incomeSlt" id="incomeSlt" style="width:190px;height:21px;margin:-2px;" 
onChange="javascript:document.getElementById('incomeTxt').value=document.getElementById('incomeSlt').options[document.getElementById('incomeSlt').selectedIndex].value;"> 
<OPTION value='Grain Sales'>Grain Sales</OPTION><OPTION value='Corn'>Corn</OPTION><OPTION value='Soybeans'>Soybeans</OPTION><OPTION value='Wheat; Barley'>Wheat; Barley</OPTION><OPTION value='Beans'>Beans</OPTION><OPTION value='Sugar Crops (beet, cane)'>Sugar Crops (beet, cane)</OPTION><OPTION value='Oil-bearing Crops(peanut, rapeseed, sesame, soybean, sunflower, olive)'>Oil-bearing Crops(peanut, rapeseed, sesame, soybean, sunflower, olive)</OPTION><OPTION value='Fruits or Vegetables'>Fruits or Vegetables</OPTION><OPTION value='Wine'>Wine</OPTION><OPTION value='Rice; Paddy'>Rice; Paddy</OPTION><OPTION value='Beverage Crops (tea, coffee, cocoa)'>Beverage Crops (tea, coffee, cocoa)</OPTION><OPTION value='Cotton'>Cotton</OPTION><OPTION value='Hay and Straw'>Hay and Straw</OPTION><OPTION value='Other Grains'>Other Grains</OPTION><OPTION value='Other Crops'>Other Crops</OPTION><OPTION value='Livestock Sales'>Livestock Sales</OPTION><OPTION value='Springing Heifers, Bulls and Cows'>Springing Heifers, Bulls and Cows</OPTION><OPTION value='Milk and Dairy Products'>Milk and Dairy Products</OPTION><OPTION value='Eggs Sales'>Eggs Sales</OPTION><OPTION value='Wool'>Wool</OPTION><OPTION value='Tobacco'>Tobacco</OPTION><OPTION value='Poultry'>Poultry</OPTION><OPTION value='Lambs and Sheep'>Lambs and Sheep</OPTION><OPTION value='Cattle and Calves'>Cattle and Calves</OPTION><OPTION value='Swine'>Swine</OPTION><OPTION value='Value of Commodity Wage Transferred'>Value of Commodity Wage Transferred</OPTION><OPTION value='Materials & Services'>Materials & Services</OPTION><OPTION value='Capital Retains'>Capital Retains</OPTION><OPTION value='Agriculture Program Payments Bring in Forms 1099-G'>Agriculture Program Payments Bring in Forms 1099-G</OPTION><OPTION value='Custom Hire / Machine Work Income'>Custom Hire / Machine Work Income</OPTION><OPTION value='State Gasoline Tax Refund Received'>State Gasoline Tax Refund Received</OPTION><OPTION value='Federal Gasoline Tax Refund from Prior Year¡¯s Return'>Federal Gasoline Tax Refund from Prior Year¡¯s Return</OPTION><OPTION value='Crop Insurance or Disaster Payments'>Crop Insurance or Disaster Payments</OPTION><OPTION value='Repayment of Prior Year¡¯s ASCS Payments'>Repayment of Prior Year¡¯s ASCS Payments</OPTION><OPTION value='Cash'>Cash</OPTION><OPTION value='Commodity Credit Loans(if treated as income)'>Commodity Credit Loans(if treated as income)</OPTION><OPTION value='Landlord or Tenant Reimbursement'>Landlord or Tenant Reimbursement</OPTION><OPTION value='Other'>Other</OPTION> 
</select> 
</span> 
<span style="position:absolute;border-top:1pt solid #c1c1c1;border-left:1pt solid #c1c1c1;border-bottom:1pt solid #c1c1c1;width:170px;height:20px;"> 
<input type="text" name="incomeTxt" id="incomeTxt" value="Corn" style="width:167px;height:16px;border:0pt;font-size:12px;margin-bottom:0px"> 
</span><span style="width:280px;display:-moz-inline-box;display:inline-block;">&nbsp;&nbsp;</span><input type="text" id="incomeAmount" name="incomeAmount" style="font-size:11px;width:82; font-family:Helvetica, Arial, sans-serif; height:19"  onblur="CheckTxtDig(this)" value="1000"><input type="button" value="Calculator" style="font-size:10px;height:20px;width:64px"  onclick = "ClickJudge='I';document.getElementById('light').style.display='block';document.getElementById('light').style.top='200px';document.getElementById('fade').style.display='block'"><br><br><span style="width:300px;display:-moz-inline-box;display:inline-block;">&nbsp;&nbsp;</span><input type="button" id="AddIt" value="Add" onclick="AddIncomeItem()"><br><br><b>List of Income Items</b><br>
				<select size="9" name="itemListofIncome" id="itemListofIncome" style="width:428; height:220;overflow-x:auto;font-size:12px"><OPTION value='Corn:1000'>Corn:1000</OPTION>
</select></td>
		</tr><tr>
		<td height="32" width="424" align="left" bgcolor="#FFFFFF">
		<b><font face="Arial">Total Income: <input type="text" name="TotalIncome" id="TotalIncome" value="1000" style="width:120px;height:16px;border:0pt;font-size:12px;margin-bottom:0px"><span style="width:100px;display:-moz-inline-box;display:inline-block;">&nbsp;&nbsp;</span><input type="button" id="InRemoveIt" value="Remove" onclick="RemoveInItem()"  style="font-size:10px;height:20px;width:60px"></font></b></font>
		</td>
		<td height="32" width="50" align="left" bgcolor="#FFFFFF">&nbsp;</td>
		</tr>
	<tr>
		<td height="352" width="474" align="left" bgcolor="#FFFFFF" valign="top" colspan="2"><br><b>Select Expense Items<span style="width:150px;display:-moz-inline-box;display:inline-block;">&nbsp;&nbsp;</span>Amount </b>
		<br><span style="position:absolute;border:1pt solid #c1c1c1;overflow:hidden;width:188px;height:20px;clip:rect(-1px 190px 190px 170px);"> 
<select name="ExpenseSlt" id="ExpenseSlt" style="width:190px;height:21px;margin:-2px;" 
onChange="javascript:document.getElementById('ExpenseTxt').value=document.getElementById('ExpenseSlt').options[document.getElementById('ExpenseSlt').selectedIndex].value;"> 
<OPTION value='Seeds & Plants Purchased'>Seeds & Plants Purchased</OPTION><OPTION value='Fertilizer & Lime'>Fertilizer & Lime</OPTION><OPTION value='Feed Purchased'>Feed Purchased</OPTION><OPTION value='Chemicals'>Chemicals</OPTION><OPTION value='Veterinary Fees, Breeding & Medicines'>Veterinary Fees, Breeding & Medicines</OPTION><OPTION value='Mortgage Interest'>Mortgage Interest</OPTION><OPTION value='Bank Charges (business)'>Bank Charges (business)</OPTION><OPTION value='Insurance'>Insurance</OPTION><OPTION value='Paid to Financial Institution'>Paid to Financial Institution</OPTION><OPTION value='Other Interest'>Other Interest</OPTION><OPTION value='Repairs & Maintenance'>Repairs & Maintenance</OPTION><OPTION value='Supplies Purchased'>Supplies Purchased</OPTION><OPTION value='Freight, Trucking'>Freight, Trucking</OPTION><OPTION value='Gasoline, Fuels, Oil'>Gasoline, Fuels, Oil</OPTION><OPTION value='Non-Highway Fuel Used'>Non-Highway Fuel Used</OPTION><OPTION value='Storage, Warehousing'>Storage, Warehousing</OPTION><OPTION value='Employee Benefits'>Employee Benefits</OPTION><OPTION value='Attorney & Professional Fees'>Attorney & Professional Fees</OPTION><OPTION value='Advertising'>Advertising</OPTION><OPTION value='Taxes'>Taxes</OPTION><OPTION value='Labor Hired'>Labor Hired</OPTION><OPTION value='Paid to Individuals'>Paid to Individuals</OPTION><OPTION value='Meals Served Hired Help'>Meals Served Hired Help</OPTION><OPTION value='Land Clearing'>Land Clearing</OPTION><OPTION value='Utilities'>Utilities</OPTION><OPTION value='Office Supplies & Postage'>Office Supplies & Postage</OPTION><OPTION value='Telephone'>Telephone</OPTION><OPTION value='Personal Consumption'>Personal Consumption</OPTION><OPTION value='Licenses'>Licenses</OPTION><OPTION value='Education (farm related)'>Education (farm related)</OPTION><OPTION value='Farm Conservancy'>Farm Conservancy</OPTION><OPTION value='Rent or Lease'>Rent or Lease</OPTION><OPTION value='Trailer Licenses'>Trailer Licenses</OPTION><OPTION value='CCC deduction'>CCC deduction</OPTION><OPTION value='Farm Organization Dues & Publications'>Farm Organization Dues & Publications</OPTION><OPTION value='Travel,Overnight Lodging & Food'>Travel,Overnight Lodging & Food</OPTION><OPTION value='Other'>Other</OPTION> 
</select> 
</span> 
<span style="position:absolute;border-top:1pt solid #c1c1c1;border-left:1pt solid #c1c1c1;border-bottom:1pt solid #c1c1c1;width:170px;height:20px;"> 
<input type="text" name="ExpenseTxt" id="ExpenseTxt" value="Other Interest" style="width:167px;height:16px;border:0pt;font-size:12px;margin-bottom:0px"> 
</span><span style="width:280px;display:-moz-inline-box;display:inline-block;">&nbsp;&nbsp;</span><input type="text" id="ExpAmount" name="ExpAmount" style="font-size:11px;width:82; font-family:Helvetica, Arial, sans-serif; height:19"  onblur="CheckTxtDig(this)" value="400"><input type="button" value="Calculator" style="font-size:10px;height:20px;width:64px" onclick = "ClickJudge='E';document.getElementById('light').style.display='block';document.getElementById('light').style.top='500px';document.getElementById('fade').style.display='block'"><input type="hidden" name=IncomeItem id=IncomeItem style="width:5x" value="Corn:1000"><br><br><input type="hidden" name=ExpenseItem id=ExpenseItem style="width:5x" value="Other Interest:400"><span style="width:300px;display:-moz-inline-box;display:inline-block;">&nbsp;&nbsp;</span><input type="button" id="AddIt" value="Add" onclick="AddExpItem()"><br><br><b>List  of Expenses Items</b><br>
		<select size="9" name="itemListofExp" id="itemListofExp" style="width:428; height:220;overflow-x:auto;font-size:12px"><OPTION value='Other Interest:400'>Other Interest:400</OPTION>
</select></td>
		</tr>
	<tr>
		<td height="22" width="424" align="left" bgcolor="#FFFFFF"><b><font face="Arial">Total Expense: <input type="text" name="TotalExpense" id="TotalExpense" value="400" style="width:120px;height:16px;border:0pt;font-size:12px;margin-bottom:0px"><span style="width:100px;display:-moz-inline-box;display:inline-block;">&nbsp;&nbsp;</span><input type="button" id="ExpRemoveIt" value="Remove" onclick="RemoveExpItem()"  style="font-size:10px;height:20px;width:60px"></font></b></font>
		</td>
		<td height="22" width="50" align="left" bgcolor="#FFFFFF" valign="bottom">
		&nbsp;</td>
		</tr>
	<tr>
		<td height="42" width="424" align="right" bgcolor="#FFFFFF" valign="bottom"><font color="#808080">
		<input type="submit" value="Calculate" id="ButtCal"></td>
		<td height="42" width="50" align="left" bgcolor="#FFFFFF" valign="bottom">
		&nbsp;</td>
		</tr>
	<tr>
		<td height="42" width="485" align="center" bgcolor="#FFFFFF" colspan="3">
		<br><h1 style="Font-size:15px">Farm Income & Expense</h1><table border="0" width="100%" cellspacing="0" cellpadding="0"><tr><td width="85%" height="22px"  align="left" style="PADDING-left:2px;"><b>Income</b></td><td  align="right" width="15%"  height="22px" style="PADDING-right:2px;"> </td></tr><tr><td width="85%" height="22px"  align="left" style="PADDING-left:2px;background:#dddddd;">Corn</td><td  align="right" width="15%"  height="22px" style="PADDING-right:2px;background:#dddddd;">1000</td></tr><tr><td width="85%" height="22px"  align="left" style="PADDING-left:2px;"><b><b>Total Income</b></td><td  align="right" width="15%"  height="22px" style="PADDING-right:2px;">1000</td></tr><tr><td width="85%" height="22px"  align="left" style="PADDING-left:2px;background:#dddddd;"><b>Expense</b></td><td  align="right" width="15%"  height="22px" style="PADDING-right:2px;background:#dddddd;"> </td></tr><tr><td width="85%" height="22px"  align="left" style="PADDING-left:2px;">Other Interest</td><td  align="right" width="15%"  height="22px" style="PADDING-right:2px;">400</td></tr><tr><td width="85%" height="22px"  align="left" style="PADDING-left:2px;background:#dddddd;"><b>Total Expense</b></td><td  align="right" width="15%"  height="22px" style="PADDING-right:2px;background:#dddddd;">400</td></tr><tr><td width="85%" height="22px"  align="left" style="PADDING-left:2px;"><b>Net Income</b></td><td  align="right" width="15%"  height="22px" style="PADDING-right:2px;">600</td></tr></table><br></td>
		</tr>

	<tr>
		<td height="30" width="800" colspan="4" align="left" valign="top"><b>Farm businesses 
		Management</b><br><br>
		Calculating how much is spent on family living expenses is never easy. 
		But it can be especially hard when the family and the business are tied 
		closely together, as they are on the family farm. Revenue is income generated by the farm operations. Farm businesses are 
		expected to see reduced costs for many major expense categories, including ,fertilizer, feed, and fuel.<br>Farm-Family Financial Challenges Farm families have some unique characteristics that make managing farm-family finances especially challenging.<br><br><b>Related Link:&nbsp;&nbsp;&nbsp;&nbsp;</b><a href="Budget_Calculator.asp" class=more><b>Budget Calculator</b></a></td>
		</tr>
	<tr>
		<td height="23" width="800" colspan="4" align="left"><script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- 728x90, &#21019;&#24314;&#20110; 09-3-29 -->
<ins class="adsbygoogle"
     style="display:inline-block;width:728px;height:90px"
     data-ad-client="ca-pub-6166525104477340"
     data-ad-slot="8748345038"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script></td>
		</tr>
	</table>
<table border="0" width="804" height="34" cellspacing="1" bordercolorlight="#FFFFFF" bordercolor="#DBDBDB" bgcolor="#FFFFFF">
	
	<tr>
		<td height="18" width="600" valign="top"><b>Top Use:&nbsp;&nbsp;&nbsp;</b><img border=0 src="../images/rightArrow.gif" width=8 height=8>&nbsp;<a href="Farm_income_Expense_Calculator.asp?incomeSlt=Grain+Sales&incomeTxt=Rice%3B+Paddy&incomeAmount=120120.12&TotalIncome=122588.12&ExpenseSlt=Seeds+%26+Plants+Purchased&ExpenseTxt=Employee+Benefits&ExpAmount=1234&IncomeItem=Wheat%3B+Barley%3A1234%7COil-bearing+Crops%28peanut%2C+rapeseed%2C+sesame%2C+soybean%2C+sunflower%2C+olive%29%3A1234%7CRice%3B+Paddy%3A120120.12&ExpenseItem=Veterinary+Fees%2C+Breeding+%26+Medicines%3A234%7CEmployee+Benefits%3A1234&TotalExpense=1468">Calculate Farm Income & Expense - Total Income:122588.12 Total Expense:1468</a><br><br><b>Recent user inquiry:</b><br><div class="list"><ul><li><span>2020/11/30  21:51</span><a href="Farm_income_Expense_Calculator.asp?incomeSlt=Grain+Sales&incomeTxt=Wheat%3B+Barley&incomeAmount=1000&TotalIncome=1000&ExpenseSlt=Chemicals&ExpenseTxt=Chemicals&ExpAmount=70&IncomeItem=Wheat%3B+Barley%3A1000&ExpenseItem=Fertilizer+%26+Lime%3A800%7CChemicals%3A70&TotalExpense=870">Calculate Farm Income & Expense - Total Income:1000 Total Expense:870</a></li><li><span>2020/11/30  21:14</span><a href="Farm_income_Expense_Calculator.asp?incomeSlt=Wheat%3B+Barley&incomeTxt=Wheat%3B+Barley&incomeAmount=1000&TotalIncome=1000&ExpenseSlt=Fertilizer+%26+Lime&ExpenseTxt=Fertilizer+%26+Lime&ExpAmount=800&IncomeItem=Wheat%3B+Barley%3A1000&ExpenseItem=Fertilizer+%26+Lime%3A800&TotalExpense=800">Calculate Farm Income & Expense - Total Income:1000 Total Expense:800</a></li><li><span>2020/11/30  19:09</span><a href="Farm_income_Expense_Calculator.asp?incomeSlt=Eggs+Sales&incomeTxt=Eggs+Sales&incomeAmount=3&TotalIncome=9&ExpenseSlt=Feed+Purchased&ExpenseTxt=Feed+Purchased&ExpAmount=12&IncomeItem=Eggs+Sales%3A3%7CEggs+Sales%3A3%7CEggs+Sales%3A3&ExpenseItem=Feed+Purchased%3A10.50%7CFeed+Purchased%3A10.50%7CFeed+Purchased%3A12%7CFeed+Purchased%3A12%7CFeed+Purchased%3A12%7CFeed+Purchased%3A12%7CFeed+Purchased%3A12&itemListofExp=Feed+Purchased%3A12&TotalExpense=81">Calculate Farm Income & Expense - Total Income:9 Total Expense:81</a></li><li><span>2020/11/29  21:42</span><a href="Farm_income_Expense_Calculator.asp?incomeSlt=Other&incomeTxt=Other&incomeAmount=136060&TotalIncome=136060&ExpenseSlt=Seeds+%26+Plants+Purchased&ExpenseTxt=&ExpAmount=60689&IncomeItem=Other%3A136060&ExpenseItem=%3A60689&TotalExpense=60689">Calculate Farm Income & Expense - Total Income:136060 Total Expense:60689</a></li><li><span>2020/11/29  06:27</span><a href="Farm_income_Expense_Calculator.asp?incomeSlt=Beans&incomeTxt=Beans&incomeAmount=2208&TotalIncome=4408&ExpenseSlt=Bank+Charges+(business)&ExpenseTxt=Bank+Charges+(business)&ExpAmount=5488&IncomeItem=Oil-bearing+Crops(peanut%2C+rapeseed%2C+sesame%2C+soybean%2C+sunflower%2C+olive)%3A1000%7CSugar+Crops+(beet%2C+cane)%3A1200%7CBeans%3A2208&ExpenseItem=Veterinary+Fees%2C+Breeding+%26+Medicines%3A200%7CBank+Charges+(business)%3A5488&TotalExpense=5688">Calculate Farm Income & Expense - Total Income:4408 Total Expense:5688</a></li></ul></div></td>
		<td height="18" width="197"><script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- 200x200, &#21019;&#24314;&#20110; 09-3-26 -->
<ins class="adsbygoogle"
     style="display:inline-block;width:200px;height:200px"
     data-ad-client="ca-pub-6166525104477340"
     data-ad-slot="8693555979"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script></td>
		</tr>
	</table>
</FORM>	
	
<br>
 <div style="WIDTH: 778px" align="left"><span class="headfeedback"><a href="../post.asp?BoardID=6&lang=en&toolsno=1811" target="_parent">I want to Post a new feedback<img src="../images/arrowRight.gif" align="bottom" border="none"></a></span><h3 style="CURSOR: hand"></h3><table id=FeedBack cellSpacing=0 cellPadding=0 width="100%"><tr><td class=feedTree id=feedTree valign=top></td></tr></table></div><br>
<SCRIPT language="JavaScript">
	{GetIncome(); 
	}
</SCRIPT>

</div>

<script type="text/javascript">var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));</script><script type="text/javascript">var pageTracker = _gat._getTracker("UA-5748686-2");pageTracker._trackPageview();</script><div id="light" class="white_content"><table width="230" border="1" align="center" cellpadding="5" cellspacing="1" bgcolor="#CCCCcc" >
<tr>
    	<td colspan="5" align="center" >
		<div align="center" 	style="font-size:14px;
				color:#333;
				background-color: #cee6a4;
				padding:3px;
				text-align:center;
				font-weight:bold;
				border:1px solid #aaa;">Calculator
		</div>
	</td>
  	</tr>
  	<tr>
    	<td colspan="5" >
        		<input  id="jg" type="text" onKeyup="checkkey()" size="38"/>   
	</td>
  	</tr>
  	<tr>
	<td colspan="2" aling="right">
	<div id="sjxs"  style="text-align:center;	height:20px; width:100px; background-color:#f0f0f0;	color:#f00;">
	</div>
	</td>
    	<td colspan="2" align="right"><input type="button"  value="Backspace" onClick="shanchu()" /></td>
    	<td>			<input type="button"  id="qc" value="Clear" onClick="qc()"/></td>
	</tr>
  	<tr>
    	<td width="37"><input type="button" 	id="s1" value=" 1 " onClick="shu(1)" onKeyUp="shu(1)"/></td>
    	<td width="37"><input type="button"	id="s2"value=" 2 "  onclick="shu(2)"/></td>
    	<td width="41"><input type="button" 	id="s2" value=" 3 " onClick="shu(3)"/></td>
    	<td width="43"><input type="button" 	id="jian2" value=" + " onclick='yunsuan("+")'/></td>
    	<td width="38"><input type="button" 	id="shijian" value="Time" onClick="timeshow()" /></td>
  	</tr>
  	<tr>
    	<td><input type="button" 	id="s4"value=" 4 " onClick="shu(4)"/></td>   	
	<td><input type="button"	id="s5" value=" 5 " onClick="shu(5)"/></td>
    	<td><input type="button" 	id="s6" value=" 6 " onClick="shu(6)"/></td>
    	<td><input type="button" 	id="jian"value=" - " onclick='yunsuan("-")' /></td>
    	<td><input type="button" 	id="pf" value="x^2 " onClick="pf()"/></td>
  	</tr>
  	<tr>
    	<td><input type="button" 	id="s7" value=" 7 " onClick="shu(7)"/></td>
    	<td><input type="button" 	id="s8" value=" 8 " onClick="shu(8)"/></td>
    	<td><input type="button" 	id="s9" value=" 9 " onClick="shu(9)" /></td>
    	<td><input type="button" 	id="cheng" value=" X " onclick='yunsuan("x")'/></td>
    	<td><input type="button" 	id="kf" value="Ext." onClick="kf()"/></td>
  	</tr>
  	<tr>
    	<td><input type="button" 	id="s0" value=" 0 " onClick="shu(0)" /></td>
    	<td><input type="button" 	id="xs" value=" . " onclick=shu(".")></td>
    	<td><input type="button"  	id="deng" value=" = " onClick="dengyu()"/></td>
    	<td><input type="button"  	id="chu" value=" / " onclick='yunsuan("/")'/></td>
    	<td>
      	<input type="button"   	 value=" n! " onClick="jc()" >    </td>
  	</tr>
  	<tr>
	<td colspan="5" height="20">
		<div align="center"><b><a href = "javascript:void(0)" onclick = "document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">Close</a></b>
		</div>
	</td>
	</tr>
</table>

        
        </div></body></html>