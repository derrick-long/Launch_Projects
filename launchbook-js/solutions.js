// Exercise: Find the top navbar, using a query for the HTML element type. The navbar's type is `<nav>`.
document.getElementsByTagName('nav');
// Exercise: Find the sidebar on the left by using its id.
document.getElementById('sidebar-left');
// Exercise: Find the 'Pages' and 'Groups' sections of the sidebar by using their class.
document.getElementsByClassName('pages');
document.getElementsByClassName('groups');
// Exercise: Find all of the comments on the page.
document.getElementsByClassName('comments');
// Exercise: Find the first comment on the page.
document.getElementsByClassName('comments')[0];
// Exercise: Find the last comment on the page.
let comments = document.getElementsByClassName('comments');
let lastIndex = comments.length - 1;
comments[lastIndex];
// Exercise: Find the fourth comment on the page. Make sure you grab the fourth *comment* rather than the fourth *block* of comments. You may need more than one line of code!
let comments = document.getElementsByClassName('comments');
let newComment = comments[2];
newComment.getElementsByClassName('panel')[0];
// Exercise: Find one of the ads in the sidebar and hide them.
let ad = document.getElementsByClassName('ad-slot');
ad[0].style.visibility = 'hidden';
// Exercise: Set the visibility on the ad that you hid in the previous exercise to make it visible again.
ad[0].style.visibility = 'visible';
// Exercise: Use `setAttribute` to change `src` attribute of one of the ads in the sidebar.
let adOne = document.getElementsByClassName('ad-slot')[0];
let newAdOne = adOne.getElementsByTagName('img')[0];
newAdOne.setAttribute('src', 'http://placebear.com/200/300');
// Exercise: Find Sam's post and change its text to something incredible.
let post = document.getElementsByClassName('post');
let sam = post[3];
let newOne = Sam.getElementsByTagName('p')[0];
newOne.innerHTML = 'Something Incredible!';
// Exercise: Find the first post and add the `.post-liked` class to it.
let posts = document.getElementsByClassName('posts');
posts[0].className += ' post-liked';
// Exercise: Find the second post and remove the `.post-liked` class.
let post = document.getElementsByClassName('post');
post[1].className = 'post';
