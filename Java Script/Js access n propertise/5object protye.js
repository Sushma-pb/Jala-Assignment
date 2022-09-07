<html>
  <body>
    <h2>Q5 Addign properties with object prototype</h2>

    <p id="demo"></p>

    <script>
      function Person (first, last, age, eye) 
      
        this.firstName = first;
        this.lastName = last;
        this.age = age;
        this.eyeColor = eye;
      

      Person.prototype.nationality = "Indian";

      const me = new Person("Rahul", "K", 21, "black");
      document.getElementById("demo").innerHTML =
        "My nationality is " + me.nationality;
    </script>
  </body>
</html>
