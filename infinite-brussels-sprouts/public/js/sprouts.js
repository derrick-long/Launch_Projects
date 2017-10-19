let tweet_getter =(array)=> {
  array.forEach((tweet)=>{
    $('.tweets').append('<li class="tweet"><div class ="body">' + tweet.text +
  ' </div> <div class="user">'  + tweet.username  + '</div>  </li>');
  });
};

let number = 0;

$(document).ready(function(){
$('.more-sprouts').on('click', (event) => {
  event.preventDefault();
  number += 1;
  $.ajax({
    method: 'GET',
    url: '/tweets.json?page=' + number
  }).done((tweets) => {
    tweet_getter(tweets);
  });
});
});


//gotta seperate out the notes and the body also try and figure out wha is currently happening
