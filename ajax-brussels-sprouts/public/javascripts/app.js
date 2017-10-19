$(document).ready(function(){
  $('#get-dish').on('click', (event) => {
    event.preventDefault();
    let form = $()
    $.ajax({
      method: 'GET',
      url: '/dishes/random.json'
    }).done((data) => {
      alert(data);
    });

    // $.ajax(...).done(...)
  });
});

// add event listener to get dish button the alert that pops up is equal to the json request
