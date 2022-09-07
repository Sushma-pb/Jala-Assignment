const person = {
    fullName:
    function (city, country) 
    {
      return (
        this.firstName + " " + this.lastName + ", " + city + ", " + country
      );
    },
  };

  const person1 = {
    firstName: "Rakul",
    lastName: "b",
  };
  
  document.getElementById("demo").innerHTML = person.fullName.apply(
    person1,
    ["Hyd", "India"]
  );
  document.getElementById("demo").innerHTML = person.fullName.call(
    person1,
    "Hyd",
    "India"
  );
