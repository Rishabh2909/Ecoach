<%String sta= request.getParameter("sta"); %>
<script>
  async function loc() {
    const response = await fetch('india.json');
    const users = await response.json();
    return users;
  }
  var c = loc();
  var dis = new Array();
  i = 0;
  c.then((data) => {
    //console.log(data.states[0].districts[0]);
    data.states.forEach(myFunction1);
    function myFunction1(item, index) {
    	
      if ("<%=sta%>" == item.state) {
        
        item.districts.forEach(myFunction1);
        function myFunction1(element, index) {
          dis[i] = element;
          i = i + 1;
        }

      }
    }


    dis.forEach(myFunction);
    function myFunction(item, index) {

      ele = item;
      console.log(ele);
      document.getElementById("district").innerHTML += "<option>" + ele + "</option>";
      document.getElementById("district2").innerHTML += "<option>" + ele + "</option>";
      document.getElementById("district3").innerHTML += "<option>" + ele + "</option>";
    }



  });


</script>