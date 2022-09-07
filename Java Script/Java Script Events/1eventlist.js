<html>
  <body>
    <h2>Q1 Event listener to a button to show date</h2>

    <button id="myBtn">Try it</button>

    <p id="demo"></p>

    <script>
      document.getElementById("myBtn").addEventListener("click", displayDate);

      function displayDate() 
      
        document.getElementById("demo").innerHTML = Date();
      
    </script>
  </body>
</html>

