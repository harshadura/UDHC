<%--
    Document : displayInputs
    Created on : 9 Jun, 2012, 1:43:39 PM
    Author : root
--%>

<!DOCTYPE html>
<html>
<script src="http://yui.yahooapis.com/3.5.0/build/yui/yui-min.js"></script>
  
    
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/menu/assets/skins/sam/menu.css" />
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/button/assets/skins/sam/button.css" />
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/fonts/fonts-min.css" />
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/container/assets/skins/sam/container.css" />
<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/editor/assets/skins/sam/editor.css" />
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/yahoo-dom-event/yahoo-dom-event.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/element/element-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/container/container-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/menu/menu-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/button/button-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/editor/editor-min.js"></script>



<link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/2.9.0/build/fonts/fonts-min.css" />
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/yahoo/yahoo-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/event/event-min.js"></script>
<script type="text/javascript" src="http://yui.yahooapis.com/2.9.0/build/connection/connection-min.js"></script>

<link rel="stylesheet" href="<%=request.getContextPath()%>/mystyle.css" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/INPUT/script.js"></script>

<%@ page import="bose.*" %>
<%@ page import="java.util.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Health Records Interface</title>
    </head>
    
    <input id="context_path" type="hidden" value="<%=request.getContextPath()%>">
    
    <body>
        
        


        
                <div><%@include file="../hpanel.jsp" %></div>

        
        <div id="displayInputs_narrative_list">
            
            <div id="displayInputs_add_new" align="center"> <a href="<%=request.getContextPath()%>/INPUT/care-seeker-input.jsp">ADD  A NEW HEALTH RECORD</a> &nbsp;&nbsp; &nbsp;
                <a href="displayMyInputs.jsp"> MY RECORDS </a>
                
                
                <br>
                <br></div>
                
                <div align="center" id="displayInputs_heading"> <b>PREVIOUSLY ADDED RECORDS </b> </div>
            
            
<%



        ArrayList<HealthRecord> alhr= HealthRecord.getAllHealthRecords();
        
         for (HealthRecord n : alhr)
         {
                      int topic_id=Integer.parseInt(n.getTopic_id());
                      String problem_id =n.getProblem_id();
                      String problem_title=n.getTopic();
                      String problem_topic_id=n.getTopic_id();
                       String con=request.getContextPath();

%>
           
            
            <div class="displayInputs_problems" onclick="showIssue(<%=problem_topic_id%>)"> <%= problem_title%> </div>
        
            <% } %>
            
        </div>
        
        <div id="displayInputs_narrative_details">
   
            
            
        </div>
        
        
             
             
    </body>
</html>