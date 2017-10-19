// Exercise: Find the top navbar by query for the element type, which is <nav>.
$('nav');
// Exercise: Find the sidebar on the right by using it's id.
$('#sidebar-right');
// Exercise: Find the "Pages" and "Groups" sections of the sidebar by using their class.
$('.groups');
$('.pages');
// Exercise: Find all of the comments on the page.
$('.comments');
// Exercise: Find the first comment on the page.
$('.comments:first');
// Exercise: Find the last comment on the page.
$('.comments:last');
// Exercise: Find the first comment nested under the third post.
let $post = $($('.post')[2]);
$($post.find('.panel')[0]);
// Exercise: Find one of the ads in the sidebar and use .hide() to hide it.
$($('.ad-slot')[0]).hide();
// Exercise: Use .show() to make the ad that you hid in the previous step visible again.
$($('.ad-slot')[0]).show();
// Exercise: Use .toggle() to toggle the display of the nav bar at the top of the page.
$('.top-bar').toggle();
// Exercise: Use .attr() to change src attribute of one of the ads in the sidebar. Here's an image source if you need one: http://placebear.com/200/300.
let $newAD = $($('.ad-slot img')[0]);
$newAD.attr('src', 'http://placebear.com/200/300');

// Exercise: Find Sam's post and change it's text to something incredible.
let $post = $($('.post')[3]);
let $sam = $($post.find('p')[0]);
$sam.text('Something incredible');
// Exercise: Find the first post and use .addClass() to add the .post-liked class to it.
let $firstPost = $('.post:first');
$firstPost.addClass(' post-liked');
// Exercise: Find the second post and use .removeClass() to remove the .post-liked class.
let $secondPost = $('.post:nth-child(2)');
$secondPost.removeClass('post-liked');
// Exercise: Find any post and use .toggleClass() to toggle the .post-liked class.
$secondPost.toggleClass('post-liked');
