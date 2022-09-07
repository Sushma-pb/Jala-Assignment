<html>
  <head>
    <script>
      function validateForm() 
      
        var x = document.forms["myForm"]["fname"].value;
        if (x == "" || x == null) 
        
          alert ("Name must be filled out");
          return false;
        
      
    </script>
  </head>
  <body>
    <h2>Q2 JS validation</h2>

    <form
      name="myForm"
      action="/action_page.php"
      onsubmit="returnvalidateForm()"
      method="post"
      required
    >
      Name: <input type="text" name="fname" />
      <input type="submit" value="Submit" />
    </form>
  </body>
</html>

