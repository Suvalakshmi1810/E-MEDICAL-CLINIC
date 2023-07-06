function searchCars() {
    var pickup = $("#test").val();
  
    
    $.ajax({
        url: "search_cars.php",
        type: "post",
        data: {
            pickup: pickup,
           
        },
        success: function(response) {
            $("#car_results").html(response);
        }
    });
}

