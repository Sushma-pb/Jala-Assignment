const myJSON = '{"name":"John", "age":30, "car":null}';
const myObj = JSON.parse(myJSON);
document.getElementById("demo").innerHTML = myObj.name;