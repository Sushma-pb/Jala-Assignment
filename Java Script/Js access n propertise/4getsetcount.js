<html>
  <body>
    <h2> Getter and Setter Counter</h2>

    <p id="demo"></p>

    <script>
      const obj =  counter 0;

      
      Object.defineProperty(obj, "reset", 
      
        getfunction () 
        this.counter = 0;
      
      Object.defineProperty(obj, "increment", 
      
        getfunction () 
        
          this.counter++;
        
      Object.defineProperty(obj, "decrement", 
      
        getfunction () 
        {
          this.counter--
        },
      
      Object.defineProperty(obj, "add", 
      
        setfunction (value) 
        {
          this.counter += value
        },
      
      Object.defineProperty(obj, "subtract", 
      
        setfunction (value) 
        this.counter -= value;
        obj.reset;
        obj.add = 70;
        obj.subtract = 20;
        obj.increment;
        obj.decrement;
        document.getElementById("demo").innerHTML = obj.counter;
    </script>
  </body>
</html>

