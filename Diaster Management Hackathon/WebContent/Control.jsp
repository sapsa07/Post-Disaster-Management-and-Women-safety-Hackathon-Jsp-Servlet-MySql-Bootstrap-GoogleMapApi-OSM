<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.util.Base64" import="java.io.UnsupportedEncodingException" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<!DOCTYPE html>
<html lang="en">

  <head>

	<link rel="icon" type="image/png" href="Error/pic.jpg"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Admin page</title>
   

    <!-- Bootstrap core CSS-->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template-->
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Page level plugin CSS-->
    <link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="css/sb-admin.css" rel="stylesheet">

  </head>



  <body id="page-top">

    <nav class="navbar navbar-expand navbar-dark bg-dark static-top">

      <a class="navbar-brand mr-1" href="AdminHome.jsp">GetSaved.com</a>

      <button class="btn btn-link btn-sm text-white order-1 order-sm-0" id="sidebarToggle" href="#">
        <i class="fas fa-bars"></i>
      </button>

      <!-- Navbar Search -->
      <form class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
        <div class="input-group">
         
        </div>
      </form> 

      <!-- Navbar -->
      <ul class="navbar-nav ml-auto ml-md-0">
        
       
        <li class="nav-item dropdown no-arrow">
          <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-user-circle fa-fw"></i>
          </a>
          <div class="dropdown-menu dropdown-menu-right" aria-labelledby="userDropdown">
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="Logout" data-toggle="modal" data-target="#logoutModal">Logout</a>
          </div>
        </li>

      </ul>

    </nav>

    <div id="wrapper">

      <!-- Sidebar -->
      <ul class="sidebar navbar-nav">
  
       <li class="nav-item active">
          <a class="nav-link" href="Control.jsp">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Disaster Dashboard</span>
          </a>
        </li>
	 <li class="nav-item  ">
          <a class="nav-link" href="http://localhost/webapp/user-map.php">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Disaster Map</span>
          </a>
        </li>
          <li class="nav-item  ">
          <a class="nav-link " href="ControlSafety.jsp">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Women Safety</span>
          </a>
        </li>
         </li>
          <li class="nav-item  ">
          <a class="nav-link " href="http://localhost/webapp/womenmap.php">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Women Map</span>
          </a>
        </li>
       <!--  <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="pagesDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <i class="fas fa-fw fa-folder"></i>
            <span>Pages</span>
          </a>
          <div class="dropdown-menu" aria-labelledby="pagesDropdown">
            <h6 class="dropdown-header">Login Screens:</h6>
            <a class="dropdown-item" href="login.html">Login</a>
            <a class="dropdown-item" href="register.html">Register</a>
            <a class="dropdown-item" href="forgot-password.html">Forgot Password</a>
            <div class="dropdown-divider"></div>
            <h6 class="dropdown-header">Other Pages:</h6>
            <a class="dropdown-item" href="404.html">404 Page</a>
            <a class="dropdown-item" href="blank.html">Blank Page</a>
          </div>
        </li>--> 
      
      </ul>

      <div id="content-wrapper">

        <div class="container-fluid">

          <!-- Breadcrumbs-->
          <ol class="breadcrumb">
            <li class="breadcrumb-item">
              <a href="AdminHome.jsp">Dashboard</a>
            </li>
            <li class="breadcrumb-item active">Overview</li>
          </ol>

          <!-- Icon Cards-->
         

          <!-- Area Chart Example
          <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-chart-area"></i>
              Area Chart Example</div>
            <div class="card-body">
              <canvas id="myAreaChart" width="100%" height="30"></canvas>
            </div>
            <div class="card-footer small text-muted">Updated yesterday at 11:59 PM</div>
          </div> -->

          <!-- DataTables Example -->
        

           
          <div class="card mb-3">
            <div class="card-header">
              <i class="fas fa-table"></i>
              Data Table </div>
            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                  <thead>
                    <tr>
                     	<th>Id</th>
                      <th>Name</th>
                      <th>type</th>
                         <th>Age</th>
                      <th>Blood Group</th>
                      <th>Phone</th>
                      <th>Get Location</th>
                      <th>Police Station</th>
                       <th>Fire Brigade</th>
                        <th>Hospital</th>
                        <th>Time</th>
                       <th>Lattitude</th>
                      <th>Longitude</th>
                      
                    </tr>
                  </thead>
                  <tfoot>
                    <tr> 		
                    	<th>Id</th>
                      <th>Name</th>
                          <th>type</th>
                         <th>Age</th>
                      <th>Blood Group</th>
                      <th>Phone</th>
                      <th>Get Location</th>
                      <th>Police Station</th>
                       <th>Fire Brigade</th>
                        <th>Hospital</th>
                        <th>Time</th>
                       <th>Lattitude</th>
                      <th>Longitude</th>
                    </tr>
                  <tbody>
        
          <%String data,user,pass;%>
       <%
       ServletContext ct=getServletContext();
	  data=ct.getInitParameter("path");
	  user=ct.getInitParameter("user");
	  pass=ct.getInitParameter("pass");
	  %>
       
          <sql:setDataSource
	        var="con"
	        driver="com.mysql.jdbc.Driver"
	       url="<%=data %>"
	        user="<%=user %>" 
	        password="<%=pass %>"  /> 
	    
	
	     
	    <sql:query var="listUsers"   dataSource="${con}">
	        SELECT * FROM hack ;
	    </sql:query>
    
    
                    <c:forEach var="user"
                     items="${listUsers.rows}">
           
                    <tr>
                   
                         <td><strong>${user.id}<strong></strong></td>
                      <td>${user.name}</td>
                         <td>${user.type}</td>
                      <td>${user.age}</td>
                      <td>${user.blood}</td>
                      <td>${user.ph}</td>
                       
            <td style="color:blue;"><strong><a href="https://www.google.co.in/maps/@${user.latt},${user.longi},20z">Get Location</a></strong></td>
                  
                     <td style="color:red;"><strong><a href=" https://www.google.com/maps/search/police+stations/@${user.latt},${user.longi},13z/data=!3m1!4b1"  style="color:Crimson ;">Police Station</a></strong></td>
                 
               <td ><strong ><a href=" https://www.google.com/maps/search/fire+brigade/@${user.latt},${user.longi},13z/data=!3m1!4b1"  style="color:LightSlateGrey;">Fire Brigade</a></strong></td>
                   
                     <td><strong><a href=" https://www.google.com/maps/search/hospitals/@${user.latt},${user.longi},13z/data=!3m1!4b1"  style="color:LimeGreen ;">Hospital</a></strong></td>
                
                      <td>${user.time}</td>
                      <td>${user.latt}</td>
                      
                        <td>${user.longi}</td>
                     
                    </tr>
                  
                </c:forEach>
                  
                  </tbody>
                </table>
              </div>
            </div>
            <div class="card-footer small text-muted">GetSaved.com</div>
          </div>

        <!-- /.container-fluid -->

        <!-- Sticky Footer -->
        <footer class="sticky-footer">
          <div class="container my-auto">
            <div class="copyright text-center my-auto">
              <span>Copyright � Hackathon UEMK 2019</span>
            </div>
          </div>
        </footer>

      </div>
      <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- Scroll to Top Button-->
    <a class="scroll-to-top rounded" href="#page-top">
      <i class="fas fa-angle-up"></i>
    </a>

    <!-- Logout Modal-->
   
   
    <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
            <button class="close" type="button" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">�</span>
            </button>
          </div>
          <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
          <div class="modal-footer">
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <a class="btn btn-primary" href="Logout">Logout</a>
          </div>
        </div>
      </div>
    </div>

   
   
   
    <!-- Bootstrap core JavaScript-->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>

    <!-- Page level plugin JavaScript-->
    <script src="vendor/chart.js/Chart.min.js"></script>
    <script src="vendor/datatables/jquery.dataTables.js"></script>
    <script src="vendor/datatables/dataTables.bootstrap4.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="js/sb-admin.min.js"></script>

    <!-- Demo scripts for this page-->
    <script src="js/demo/datatables-demo.js"></script>
    <script src="js/demo/chart-area-demo.js"></script>

  </body>

</html>
