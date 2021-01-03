<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

   
    <title>Add Note</title>
    <%@include file="all_js_css.jsp" %>
  </head>
  <body>
        
        <div class="container-fluid my-5 py-3">
           <%@include file="Navbar.jsp" %>
           
       </div>
       
       <div class="container"><h2>This  is Home page</h2></div>
      <!--form   -->
   <div class="container">
     <form action="saveNotes" method="post">
  <div class="mb-3">
    <label for="title" class="form-label">title</label>
    <input type="text" name="title" required class="form-control" id="title" aria-describedby="emailHelp">
  </div>
  <div class="mb-3">
    <label for="content" class="form-label">form content</label>
   
    <textarea  name="content" type="text"   id="content" rows="11" cols="5"class="form-control"  required></textarea>
  </div>
  
  

  <button type="submit" class="btn btn-primary ">Submit</button>
</form>
   
   
   
   </div>      
        
        
        
        
        
        
    
  </body>
</html>
