<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import="java.util.*"%>
<%@ page session="false"%>

<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="utf-8">
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<title>ING</title>
<meta content="" name="descriptison">
<meta content="" name="keywords">

<!-- Favicons -->
<link
   href="${pageContext.request.contextPath}/resources/img/favicon.png"
   rel="icon">
<link
   href="${pageContext.request.contextPath}/resources/img/apple-touch-icon.png"
   rel="apple-touch-icon">

<!-- Google Fonts -->
<link
   href="https://fonts.googleapis.com/css?family=Raleway:400,500,700|Roboto:400,900"
   rel="stylesheet">

<!-- Vendor CSS Files -->
<link
   href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.min.css"
   rel="stylesheet">
<link
   href="${pageContext.request.contextPath}/resources/vendor/venobox/venobox.css"
   rel="stylesheet">
<link
   href="${pageContext.request.contextPath}/resources/vendor/font-awesome/css/font-awesome.min.css"
   rel="stylesheet">

<!-- Template Main CSS File -->
<link href="${pageContext.request.contextPath}/resources/css/style.css"
   rel="stylesheet">

<!-- bootstrap icon -->

<link rel="stylesheet"
   href="${pageContext.request.contextPath}/resources/css/search.css">

<style type="text/css">
li {
   list-style: none;
   padding: 5px;
}

ul {
   padding: 0px;
}

.test {
   column-count: 2;
   column-gap: 16px;
   column-rule-color: gray;
   column-rule-style: dotted;
   column-rule-width: 2px;
   border-top: 1px solid gray;
   min-height: 300px;
}

.comment {
   overflow: hidden;
   padding: 6px;
}

.progress {
   width: 300px;
   margin-right: 20px;
   margin-top: 20px;
}

.pageend {
   border-top: 1px solid black;
}

#problems {
   height: 250px;
}

#correct{
   color:green;
}
#wrong{
   color:red;
}
</style>

</head>
<body>
   <jsp:include page="../../static/nav.jsp"></jsp:include>
   <main id="main">
   <%
      List<String> ans = new ArrayList<String>();
      List<String> answersheets = new ArrayList<String>();
      List<Boolean> resualt = new ArrayList<Boolean>();
      for (int i = 0; i < 10; i++) {
         ans.add("1");
         String param = "choiceview" + (i+1);
         answersheets.add(request.getParameter(param));
      }
      
      for (int i = 0; i < 10; i++) {
         System.out.println(i+"="+answersheets.get(i));
         if(ans.get(i).equals(answersheets.get(i))){
            resualt.add(true);
         }
         else{
            resualt.add(false);
         }
      } 
   %>
      <!-- 각자 제작한 것 추가해주세요 -->
      <div class="container">
            <div class="test">
               <ul>
                  <%
                     int i;
                     for (i = 1; i < 11; i++) {
                  %>
                  <li id="problems">
                     <div class="question"><%=i + ". "%>아래의 선택지 중에서 어떤 것이 단일 비트
                        오류에 대해 가장 잘 설명하였는가?
                     </div>
                     <div class="answer">
                        
                        <input type="radio" value="1" name=<%="choiceview" + i%> <%if(answersheets.get(i-1).equals("1")) { %>checked<%} %> disabled>보기 1<br> 
                        <input type="radio" value="2" name=<%="choiceview" + i%> <%if(answersheets.get(i-1).equals("2")) { %>checked<%} %> disabled>보기 2<br> 
                        <input type="radio" value="3" name=<%="choiceview" + i%> <%if(answersheets.get(i-1).equals("3")) { %>checked<%} %> disabled>보기 3<br> 
                        <input type="radio" value="4" name=<%="choiceview" + i%> <%if(answersheets.get(i-1).equals("4")) { %>checked<%} %> disabled>보기 4<br> 
                        <input type="radio" value="5" name=<%="choiceview" + i%> <%if(answersheets.get(i-1).equals("5")) { %>checked<%} %> disabled>보기 5<br> 
                     
                     </div>
                        <%if(resualt.get(i-1)){ %>
                           <p id="correct">정답입니다.</p>
                        <%} else{%>
                           <p id ="wrong">오답입니다. 정답은 <%=ans.get(i-1) %> 입니다.</p>
                        <%} %>                     
                  </li>
                  <%
                     }
                     if (i % 2 == 0) {
                  %>
                  <li id="problems"></li>
                  <%
                     }
                  %>

               </ul>               
            </div>
         
         <div class="pageend ">
            <ul class="pagination justify-content-center">
               <li class="page-item"><a class="page-link" href="#">Previous</a></li>
               <li class="page-item"><a class="page-link" href="#">1</a></li>
               <li class="page-item"><a class="page-link" href="#">Next</a></li>
            </ul>
            <div align="right" style="margin-bottom: 3px;"></div>
         </div>
      </div>
   </main>
   <jsp:include page="../../static/footer.jsp"></jsp:include>
   <a class="scrolltop" href="#"><span class="fa fa-angle-up"></span></a>
   <!-- 
   
   <!-- Vendor JS Files -->
   <script
      src="${pageContext.request.contextPath}/resources/vendor/jquery/jquery.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/vendor/jquery.easing/jquery.easing.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/vendor/php-email-form/validate.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/vendor/counterup/counterup.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/vendor/tether/js/tether.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/vendor/jquery-sticky/jquery.sticky.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/vendor/venobox/venobox.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/vendor/lockfixed/jquery.lockfixed.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/vendor/waypoints/jquery.waypoints.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/vendor/superfish/superfish.min.js"></script>
   <script
      src="${pageContext.request.contextPath}/resources/vendor/hoverIntent/hoverIntent.js"></script>

   <!-- Template Main JS File -->
   <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>

</body>

</html>