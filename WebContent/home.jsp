<%@page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*,dao.erDAO,entity.er,java.lang.*,dao.spendDAO"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>物业管理系统</title>
</head>
<script src="jquery.min.js"></script>
<link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<script src="js/bootstrap/3.3.6/bootstrap.min.js"></script>

<style>
p{
  margin-left:10px;
  margin-top:10px;
}



</style>
<ul id="myTab" class="nav nav-tabs" >
   
   <li class="active" >
      <a href="#dota" data-toggle="tab" style="margin-left:200px">
         用户业主信息
      </a>
   </li>
   <li><a href="#lol" data-toggle="tab" style="margin-left:100px">查询费用</a></li>
   <li><a href="#s" data-toggle="tab" style="margin-left:100px">季和年报表</a></li>
   
</ul>
<div id="myTabContent" class="tab-content">
   <div class="tab-pane fade in active" id="dota">
      <div class="well" style="width:350px;height:150px;margin-left:100px;margin-top:10px;border:3px solid #66cc99">
         <span class="glyphicon glyphicon-user text-success" style="width:30px;height:30px"></span>
         <span class="text-muted" style="font-size:25px">业主姓名:</span>
         <span style="font-size:25px">
          <%
           String names=request.getParameter("name");
           int id=Integer.valueOf(names);
           er ers=new erDAO().get(id); 
           String name=ers.getName();
           out.println(name);
         %>
         </span>
        
         
      </div>
      <div class="well" style="width:350px;height:150px;margin-left:100px;border:3px solid #66cc99">
         <span class="glyphicon glyphicon-home text-success" style="width:30px;height:30px"></span>
         <span class="text-muted" style="font-size:25px">房间号:</span>
         <span style="font-size:25px">
          <%
           
           String homeNum=ers.getHomeNum();
           out.println(homeNum);
         %>
         </span>
      </div>
   </div>
   
   <div class="tab-pane fade" id="lol">
       <ul id="myTab" class="nav nav-tabs">
   
   <li class="dropdown">
      <a href="#" id="myTabDrop1" class="dropdown-toggle"
         data-toggle="dropdown">月份
         <b class="caret"></b>
      </a>
      <ul class="dropdown-menu" role="menu" aria-labelledby="myTabDrop1">
         <li><a href="#0m" tabindex="-1" data-toggle="tab">1月</a></li>
         <li><a href="#1m" tabindex="-1" data-toggle="tab">2月</a></li>
         <li><a href="#2m" tabindex="-1" data-toggle="tab">3月</a></li>
         <li><a href="#3m" tabindex="-1" data-toggle="tab">4月</a></li>
         <li><a href="#4m" tabindex="-1" data-toggle="tab">5月</a></li>
         <li><a href="#5m" tabindex="-1" data-toggle="tab">6月</a></li>
         <li><a href="#6m" tabindex="-1" data-toggle="tab">7月</a></li>
         <li><a href="#7m" tabindex="-1" data-toggle="tab">8月</a></li>
         <li><a href="#8m" tabindex="-1" data-toggle="tab">9月</a></li>
         <li><a href="#9m" tabindex="-1" data-toggle="tab">10月</a></li>
         <li><a href="#10m" tabindex="-1" data-toggle="tab">11月</a></li>
         <li><a href="#11m" tabindex="-1" data-toggle="tab">12月</a></li>
      </ul>
   </li>
</ul>
<div id="myTabContent" class="tab-content">
   <div class="tab-pane fade in active" id="0m">
      <table class="table table-striped">
  <thead>
     <th>类别</th>
     <th>费用</th>
  </thead>
     <tbody>
      <%
      String[] category=new String[] {"物业管理费","水费","电费","煤气费","有线电视费","供暖费","业主房款缴纳费"};
		Calendar c0=Calendar.getInstance();
		c0.set(2020, 12-1, 1);
		Date d0=c0.getTime();
		Calendar c00=Calendar.getInstance();
		c00.set(2021, 1-1, 1);
		c00.add(Calendar.DATE, -1);
		Date d00=c00.getTime();
		
		spendDAO s0=new spendDAO();
		int[] spends0=s0.list(d0, d00);
		for(int i=0;i<category.length;i++) {%>
		  <tr>
		     <td><%=category[i]%></td>
		     <td><%=spends0[i]%></td>
		  </tr>
		<%}
      %>
     </tbody>
  </table>
   </div>
   <div class="tab-pane fade in active" id="1m">
      <table class="table table-striped">
  <thead>
     <th>类别</th>
     <th>费用</th>
  </thead>
     <tbody>
      <%
      
		Calendar c1=Calendar.getInstance();
		c1.set(2021, 1-1, 1);
		Date d1=c1.getTime();
		Calendar c11=Calendar.getInstance();
		c11.set(2021, 2-1, 1);
		c11.add(Calendar.DATE, -1);
		Date d11=c11.getTime();
		
		spendDAO s=new spendDAO();
		int[] spends=s.list(d1, d11);
		for(int i=0;i<category.length;i++) {%>
		  <tr>
		     <td><%=category[i]%></td>
		     <td><%=spends[i]%></td>
		  </tr>
		<%}
      %>
     </tbody>
  </table>
   </div>
   <div class="tab-pane fade in active" id="2m">
      <table class="table table-striped">
  <thead>
     <th>类别</th>
     <th>费用</th>
  </thead>
     <tbody>
      <%
      
		Calendar c2=Calendar.getInstance();
		c2.set(2021, 2-1, 1);
		Date d2=c1.getTime();
		Calendar c22=Calendar.getInstance();
		c22.set(2021, 3-1, 1);
		c22.add(Calendar.DATE, -1);
		Date d22=c22.getTime();
		
		int[] spends2=s.list(d2, d22);
		for(int i=0;i<category.length;i++) {%>
		  <tr>
		     <td><%=category[i]%></td>
		     <td><%=spends2[i]%></td>
		  </tr>
		<%}
      %>
     </tbody>
  </table>
   </div>
   <div class="tab-pane fade in active" id="3m">
      <table class="table table-striped">
  <thead>
     <th>类别</th>
     <th>费用</th>
  </thead>
     <tbody>
      <%
      
		Calendar c3=Calendar.getInstance();
		c3.set(2021, 3-1, 1);
		Date d3=c3.getTime();
		Calendar c33=Calendar.getInstance();
		c33.set(2021, 4-1, 1);
		c33.add(Calendar.DATE, -1);
		Date d33=c33.getTime();
		
		int[] spends3=s.list(d3, d33);
		for(int i=0;i<category.length;i++) {%>
		  <tr>
		     <td><%=category[i]%></td>
		     <td><%=spends3[i]%></td>
		  </tr>
		<%}
      %>
     </tbody>
  </table>
   </div>
   <div class="tab-pane fade in active" id="4m">
      <table class="table table-striped">
  <thead>
     <th>类别</th>
     <th>费用</th>
  </thead>
     <tbody>
      <%
      
		Calendar c4=Calendar.getInstance();
		c4.set(2021, 4-1, 1);
		Date d4=c4.getTime();
		Calendar c44=Calendar.getInstance();
		c44.set(2021, 5-1, 1);
		c44.add(Calendar.DATE, -1);
		Date d44=c44.getTime();
		
		int[] spends4=s.list(d4, d44);
		for(int i=0;i<category.length;i++) {%>
		  <tr>
		     <td><%=category[i]%></td>
		     <td><%=spends4[i]%></td>
		  </tr>
		<%}
      %>
     </tbody>
  </table>
   </div>
   <div class="tab-pane fade in active" id="5m">
      <table class="table table-striped">
  <thead>
     <th>类别</th>
     <th>费用</th>
  </thead>
     <tbody>
      <%
		Calendar c5=Calendar.getInstance();
		c5.set(2021, 5-1, 1);
		Date d5=c5.getTime();
		Calendar c55=Calendar.getInstance();
		c55.set(2021, 6-1, 1);
		c55.add(Calendar.DATE, -1);
		Date d55=c55.getTime();
		
		int[] spends5=s.list(d5, d55);
		for(int i=0;i<category.length;i++) {%>
		  <tr>
		     <td><%=category[i]%></td>
		     <td><%=spends5[i]%></td>
		  </tr>
		<%}
      %>
     </tbody>
  </table>
   </div>
    <div class="tab-pane fade in active" id="6m">
      <table class="table table-striped">
  <thead>
     <th>类别</th>
     <th>费用</th>
  </thead>
     <tbody>
      <%
		Calendar c6=Calendar.getInstance();
		c6.set(2021, 6-1, 1);
		Date d6=c6.getTime();
		Calendar c66=Calendar.getInstance();
		c66.set(2021, 7-1, 1);
		c66.add(Calendar.DATE, -1);
		Date d66=c66.getTime();
		
		int[] spends6=s.list(d6, d66);
		for(int i=0;i<category.length;i++) {%>
		  <tr>
		     <td><%=category[i]%></td>
		     <td><%=spends6[i]%></td>
		  </tr>
		<%}
      %>
     </tbody>
  </table>
   </div>
    <div class="tab-pane fade in active" id="7m">
      <table class="table table-striped">
  <thead>
     <th>类别</th>
     <th>费用</th>
  </thead>
     <tbody>
      <%
		Calendar c7=Calendar.getInstance();
		c7.set(2021, 7-1, 1);
		Date d7=c7.getTime();
		Calendar c77=Calendar.getInstance();
		c77.set(2021, 8-1, 1);
		c77.add(Calendar.DATE, -1);
		Date d77=c77.getTime();
		
		int[] spends7=s.list(d7, d77);
		for(int i=0;i<category.length;i++) {%>
		  <tr>
		     <td><%=category[i]%></td>
		     <td><%=spends7[i]%></td>
		  </tr>
		<%}
      %>
     </tbody>
  </table>
   </div>
    <div class="tab-pane fade in active" id="8m">
      <table class="table table-striped">
  <thead>
     <th>类别</th>
     <th>费用</th>
  </thead>
     <tbody>
      <%
		Calendar c8=Calendar.getInstance();
		c8.set(2021, 8-1, 1);
		Date d8=c8.getTime();
		Calendar c88=Calendar.getInstance();
		c88.set(2021, 9-1, 1);
		c88.add(Calendar.DATE, -1);
		Date d88=c88.getTime();
		
		int[] spends8=s.list(d8, d88);
		for(int i=0;i<category.length;i++) {%>
		  <tr>
		     <td><%=category[i]%></td>
		     <td><%=spends8[i]%></td>
		  </tr>
		<%}
      %>
     </tbody>
  </table>
   </div>
    <div class="tab-pane fade in active" id="9m">
      <table class="table table-striped">
  <thead>
     <th>类别</th>
     <th>费用</th>
  </thead>
     <tbody>
      <%
		Calendar c9=Calendar.getInstance();
		c9.set(2021, 9-1, 1);
		Date d9=c9.getTime();
		Calendar c99=Calendar.getInstance();
		c99.set(2021, 10-1, 1);
		c99.add(Calendar.DATE, -1);
		Date d99=c99.getTime();
		
		int[] spends9=s.list(d9, d99);
		for(int i=0;i<category.length;i++) {%>
		  <tr>
		     <td><%=category[i]%></td>
		     <td><%=spends9[i]%></td>
		  </tr>
		<%}
      %>
     </tbody>
  </table>
   </div>
    <div class="tab-pane fade in active" id="10m">
      <table class="table table-striped">
  <thead>
     <th>类别</th>
     <th>费用</th>
  </thead>
     <tbody>
      <%
		Calendar c10=Calendar.getInstance();
		c10.set(2021, 10-1, 1);
		Date d10=c10.getTime();
		Calendar c1010=Calendar.getInstance();
		c1010.set(2021, 11-1, 1);
		c1010.add(Calendar.DATE, -1);
		Date d1010=c1010.getTime();
		
		int[] spends10=s.list(d10, d1010);
		for(int i=0;i<category.length;i++) {%>
		  <tr>
		     <td><%=category[i]%></td>
		     <td><%=spends10[i]%></td>
		  </tr>
		<%}
      %>
     </tbody>
  </table>
   </div>
    <div class="tab-pane fade in active" id="11m">
      <table class="table table-striped">
  <thead>
     <th>类别</th>
     <th>费用</th>
  </thead>
     <tbody>
      <%
		Calendar cx=Calendar.getInstance();
		cx.set(2021, 11-1, 1);
		Date dx=cx.getTime();
		Calendar cx1=Calendar.getInstance();
		cx1.set(2021, 12-1, 1);
		cx1.add(Calendar.DATE, -1);
		Date dx1=cx1.getTime();
		
		int[] spendsx=s.list(dx, dx1);
		for(int i=0;i<category.length;i++) {%>
		  <tr>
		     <td><%=category[i]%></td>
		     <td><%=spendsx[i]%></td>
		  </tr>
		<%}
      %>
     </tbody>
  </table>
   </div>
   
</div>
   </div>
   
   <div class="tab-pane fade" id="s">
       <div class="well" style="width:390px;height:270px;margin-left:100px;border:3px solid #99ccff;margin-top:10px">
           <span class="glyphicon glyphicon-list-alt" style="font-size:100px"></span>

       </div>
       
       <div class="well" style="width:390px;height:270px;margin-left:100px;border:3px solid #99ccff;margin-top:0px">
           <font style="font-size:35px">季报表:</font><br>
           <font style="font-size:20px;margin-top:50px">第一季：</font>
           <%
		Calendar cs=Calendar.getInstance();
		cs.set(2021, 1-1, 1);
		Date ds=cs.getTime();
		Calendar cs1=Calendar.getInstance();
		cs1.set(2021, 4-1, 1);
		cs1.add(Calendar.DATE, -1);
		Date ds1=cs1.getTime();
		
		int[] spendss=s.list(ds, ds1);
		int spe=0;
		for(int sp:spendss){
			spe+=sp;
		}
		   %>
		   <span style="font-size:20px">
		<%=spe %>元
		</span>
           <font style="font-size:20px;margin-left:20px;margin-top:50px">第二季：</font>
           <%
		Calendar cs2=Calendar.getInstance();
		cs2.set(2021, 4-1, 1);
		Date ds2=cs2.getTime();
		Calendar cs22=Calendar.getInstance();
		cs22.set(2021, 7-1, 1);
		cs22.add(Calendar.DATE, -1);
		Date ds22=cs22.getTime();
		
		int[] spendss2=s.list(ds2, ds22);
		int spe2=0;
		for(int sp:spendss2){
			spe2+=sp;
		}
		   %>
		   <span style="font-size:20px">
		<%=spe2 %>元
		</span>
           <br>
           <font style="font-size:20px;margin-top:50px">第三季：</font>
           <%
		Calendar cs3=Calendar.getInstance();
		cs3.set(2021, 7-1, 1);
		Date ds3=cs3.getTime();
		Calendar cs33=Calendar.getInstance();
		cs33.set(2021, 10-1, 1);
		cs33.add(Calendar.DATE, -1);
		Date ds33=cs33.getTime();
		
		int[] spendss3=s.list(ds3, ds33);
		int spe3=0;
		for(int sp:spendss3){
			spe3+=sp;
		}
		   %>
		   <span style="font-size:20px">
		<%=spe3 %>元
		</span>
		
           <font style="font-size:20px;margin-left:20px;margin-top:50px">第四季：</font>
           <%
		Calendar cs4=Calendar.getInstance();
		cs4.set(2021, 10-1, 1);
		Date ds4=cs4.getTime();
		Calendar cs44=Calendar.getInstance();
		cs44.set(2022, 1-1, 1);
		cs44.add(Calendar.DATE, -1);
		Date ds44=cs44.getTime();
		
		int[] spendss4=s.list(ds4, ds44);
		int spe4=0;
		for(int sp:spendss4){
			spe4+=sp;
		}
		   %>
		   <span style="font-size:20px">
		<%=spe4 %>元
		</span>
           <br>
           <br>
<button type="button" class="btn btn-info"  >打印</button>
       </div>
       
       <div class="well pull-right" style="width:800px;height:560px;margin-right:100px;border:3px solid #99ccff;margin-top:10px;position:absolute;left:500px;top:42px">
           <font style="font-size:35px">年报表:</font><br>
            <%
		Calendar cs5=Calendar.getInstance();
		cs5.set(2021, 1-1, 1);
		Date ds5=cs5.getTime();
		Calendar cs55=Calendar.getInstance();
		cs55.set(2022, 1-1, 1);
		cs55.add(Calendar.DATE, -1);
		Date ds55=cs55.getTime();
		
		int[] spendss5=s.list(ds5, ds55);
		int spe5=0;
		for(int sp:spendss5){
			spe5+=sp;
		}
		   %>
		   <span style="font-size:200px;margin:50px">
		<%=spe5 %>元
		</span>
		<br>
<button type="button" class="btn btn-info"  >打印</button>
       </div>
      
   </div>
</div>
 
<div style="height:200px"></div>
</html>