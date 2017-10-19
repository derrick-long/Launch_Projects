
let couponButton = document.getElementById('click-here');



let couponDiv = document.getElementById('coupon-code');


let changeDiv = () => {
  couponDiv.innerHTML = '50OFF-YOWZA!';
};



couponButton.addEventListener('click', changeDiv);
