 <%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR" import="kr.ac.jbnu.entity.model.*"
   import="kr.ac.jbnu.entity.dao.NoteDao" import="java.util.List"
   import="java.sql.Connection" import="java.sql.ResultSet"
   import="java.sql.Statement" import="java.sql.DriverManager"
   import="java.util.Random" import="jsp.util.DBConnection"%>
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
   overflow: false;
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
   height: 200px;
}
</style>

</head>
<body>

   <jsp:include page="../../static/nav.jsp"></jsp:include>
   <main id="main">
   <!-- ======= Breadcrumbs Section ======= -->
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
      <div class="container">
         <form name="answerSheet"
            action="${pageContext.request.contextPath}/template/problem/testResualt"
            method="post">
            <div class="test">
               <ul>
                  <%
                     String[] pnum = request.getParameterValues("pnum");
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
                              boolean arr[] = {false, false, false, false, false};
                              String vougi = "";
                                          
                              for(int k = 1; k<6; k++){
                                 int ran;
                                 Random rand = new Random();
                                 ran = rand.nextInt(5);
                                 while(arr[ran]){
                                    ran = rand.nextInt(5);
                                 }
                                 arr[ran] = true;
                                 ran+=1;
                                 vougi += Integer.toString(ran);
                              }
                              for(int k = 1; k<6; k++){
                             %>
                        <input type="radio" value=<%=pnum[i] + "_" + Integer.toString(pnum.length) + "_" + k +"_"+vougi %>
                           name=<%="choiceview" + i%>><%=rs.getString("choice"+vougi.charAt(k-1))%><br>
                               <%
                              }  
                             %>
                     </div>
                        
                     <p id="checked"></p>
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
            <input type="submit" class="btn bnt-middle form-control"
               value="채점하기">
         </form>
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