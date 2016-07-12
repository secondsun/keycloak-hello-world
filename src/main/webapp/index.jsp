<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    request.logout();
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome!</title>
        <!-- Material Design fonts -->
        <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/css?family=Roboto:300,400,500,700">
        <link rel="stylesheet" type="text/css" href="//fonts.googleapis.com/icon?family=Material+Icons">

        <!-- Bootstrap -->
        <link rel="stylesheet" type="text/css" href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

        <!-- Bootstrap Material Design -->
        <link rel="stylesheet" type="text/css" href="node_modules/bootstrap-material-design/dist/css/bootstrap-material-design.css">
        <link rel="stylesheet" type="text/css" href="node_modules/bootstrap-material-design/dist/css/ripples.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <!-- Dropdown.js -->
        <link href="http://cdn.rawgit.com/FezVrasta/dropdown.js/master/jquery.dropdown.css" rel="stylesheet">

        <!-- jQuery -->
        <script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
        <style>
            @media (min-width: 992px) 
                {.col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9 {
                     float: none;
                }
            }
        </style>
    </head>
    <body>
        <div class="header-panel shadow-z-2">
            <div class="col-md-12">
                <div class="navbar navbar-info">
                    <div class="container">
                        <div class="navbar-header">
                        </div>
                        <div class="navbar-material-light-blue">
                            <ul class="nav navbar-nav navbar-right">
                                <li class="">
                                    <a href="s/hello.jsp">Sign-In
                                        <div class="ripple-container"></div>
                                    </a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
            <div class="container main">
                <div class="col-lg-12">
                    <div class="row">
                        <div class="well page active">
                            
                            <h1>KeyCloak Hello World!</h1>
                            <p>
                                <br/>
                                This is a basic "Hello World" Example with KeyCloak.  
                                <br/>
                                    
                                <br/>
                                Please click "Sign-In" from the Nav Bar; if you do not have an account setup you will be able to register one.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Twitter Bootstrap -->
        <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/js/bootstrap.min.js"></script>

        <!-- Material Design for Bootstrap -->
        <script src="node_modules/bootstrap-material-design/dist/js/material.js"></script>
        <script src="node_modules/bootstrap-material-design/dist/js/ripples.min.js"></script>
        <script type="text/javascript">$.material.init()</script>
    </body>
</html>
