<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR" import="kr.ac.jbnu.entity.model.*"
   import="kr.ac.jbnu.entity.dao.NoteDao" import="java.util.List"
   import="java.util.ArrayList" import="java.sql.Connection"
   import="java.sql.ResultSet" import="java.sql.Statement"
   import="java.sql.DriverManager" import="jsp.util.*"%>
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

#correct {
   color: green;
}

#wrong {
   color: red;
}
</style>

</head>
<body>
   <jsp:include page="../../static/nav.jsp"></jsp:include>
   <main id="main">
      <section class="breadcrumbs">
         <div class="container">

            <div class="d-flex justify-content-between align-items-center">
               <h2>오답노트</h2>
               <ol>
                  <li><a href="${pageContext.request.contextPath}/main">Home</a></li>
                  <li>오답노트</li>
               </ol>
            </div>
         </div>
      </section>
      <!-- End Breadcrumbs Section -->
      <!-- 각자 제작한 것 추가해주세요 -->
      <div class="container">
         <div class="test">
            <ul>
               <%
                  List<String> answersheets = new ArrayList<String>();
                  String tmp = request.getParameter("choiceview0");
                  String pnum[] = new String[Integer.parseInt(tmp.split("_")[1])];
                  String vougi[] = new String[Integer.parseInt(tmp.split("_")[1])];
                  String ans[] = new String[Integer.parseInt(tmp.split("_")[1])];
                  System.out.println(tmp);
                  for (int i = 0; i < Integer.parseInt(tmp.split("_")[1]); i++) {
                     pnum[i] = request.getParameter("choiceview" + i).split("_")[0];
                     answersheets.add(request.getParameter("choiceview" + i).split("_")[2]);
                     vougi[i] = request.getParameter("choiceview" + i).split("_")[3];
                     for(int k = 0; k<5; k++){
                        if(vougi[i].charAt(k)==(answersheets.get(i).charAt(0))){
                           ans[i] = Integer.toString(k+1);
                           System.out.println(ans[i] +" "+ vougi[i].charAt(k) + " " + answersheets.get(i).charAt(0) );
                        }
                     }
                  }
                  try {
                     Class.forName("com.mysql.cj.jdbc.Driver");

                     Connection conn = null;
                     Statement stmt = null;
                     ResultSet rs = null;

                     DBConnection dbc = new DBConnection();
         			conn = DriverManager.getConnection(dbc.getDataUrl(), dbc.getUser(), dbc.getPassword());
                     stmt = conn.createStatement();

                     int i;
                     for (i = 0; i < pnum.length; i++) {
                        rs = stmt.executeQuery("select * from note where id=" + pnum[i] + ";");
                        while (rs.next()) {
               %>
               <li id="problems">
                  <div class="question"><%=(i + 1) + ". " + rs.getString("content")%>
                  </div>
                  <div class="answer">
                     <%
                        for (int k = 1; k < 6; k++) {
                     %>
                     
                     <input type="radio" value=<%=k %> name=<%="choiceview" + i%>
                        <%if (answersheets.get(i).equals(Integer.toString(k))) {%> checked <%}%>
                        disabled><%=rs.getString("choice" + vougi[i].charAt(k - 1))%><br>                        
                     <%
                        }
                     %>

                  </div> <%
    if (rs.getString("answer").equals(ans[i])) {
 %>
                  <p id="correct">정답입니다.</p> <%
    } else {
 %>
                  <p id="wrong">
                     오답입니다. 정답은
                     <%for(int k = 0; k<5; k++){
                        if(vougi[i].charAt(k)==rs.getString("answer").charAt(0)){
                           %>
                              "<%=k+1%>번"입니다.<br>해설 : <br>
                           <%
                        break;
                        }
                     } %>
                     
                     <%=rs.getString("description")%>
                  </p> <%
    }
 %>
               </li>
               <%
                  }
               %>
               <%
                  }
                     if (i % 2 != 0) {
               %>
               <li id="problems"></li>
               <%
                  }
                     rs.close();
                     stmt.close();
                     conn.close();
                  } catch (ClassNotFoundException e) { // TODO Auto-generated catch block
                     e.printStackTrace();
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