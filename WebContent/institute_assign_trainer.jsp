<!DOCTYPE html>

<html lang="en">

<head>

  <meta charset="UTF-8">

  <meta http-equiv="X-UA-Compatible" content="IE=edge">

  <meta name="viewport" content="width=device-width, initial-scale=1.0">

  <title>Assign Trainer</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>





</head>

<body>

  

   <input type="text" name="trainer_id" id="search_trainer" >
  
  <button id="get_trainer" >Search</button>
  
  
  <table>
  
  <thead>
  <th>Trainer ID</th>
  <th>Trainer First Name</th>
   <th>Trainer Last Name</th>
  <th>Trainer Email</th>
  <th>Trainer Phone</th>
  </thead>
  
  <tbody id="trainer_details">
  
  
  
  
  </tbody>
  
  </table>


<script>
		


$(document).ready(function(){




$("#get_trainer").click(function(){
	
var pt= document.getElementById("search_trainer").value;



$.post('institute_assign_trainer_2.jsp',{

	trainer_id: pt
	
},

function(data,status){

$('#trainer_details').html(data);

});


});

});


</script>
</body>

</html>