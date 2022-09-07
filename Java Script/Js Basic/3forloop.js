do {
    html
} while (condition); 
<html>
  <body>
    <h2> For/In Loop</h2>
    <p>The for in statement loops through the properties of an object:</p>

    <p id="demo"></p>

    <script>
      const person = (fname : "Shashwat", lname: "Ayush", age: 21 );

      let txt = "";
      for (let x in person) 

      {
        txt += person[x] + " " 
      }

      document.getElementById("demo").innerHTML = txt;
    </script>
  </body>
</html>
