$(function () {
  let lec_new = [
    { title: '낭만을 즐기는 카라반 캠핑, 당신의 캠프닉', price: 80000, total_rw: 5.0, fname: 'img_cls9.jpg' },
    { title: '하나뿐인 우리집 반려동물 옷 만들기 AtoZ', price: 350000, total_rw: 4.5, fname: 'img_cls7.jpg' },
    { title: '바삭바삭 파이와 컵케이크로 홈카페 느낌내기', price: 179500, total_rw: 4.7, fname: 'img_cls1.jpg' },
    { title: '누구나 할 수 있는 쉽고 특별한 영상디자인', price: 200000, total_rw: 4.5, fname: 'img_cls2.jpg' },
    { title: '전업투자자가 알려주는 트레이딩 기법', price: 400000, total_rw: 4.2, fname: 'img_cls4.jpg' },
  ];

  function lectureList() {
    $.each(lec_new, function (i, data) {
      let lecture = $('<div></div>').addClass('lecture');
      let a = $('<a></a>').attr('href', 'lecture_detail.html');
      let img_lecture = $('<div></div>').addClass('img_lecture');
      let img = $('<img/>').attr({
        src: `../images/main/${data.fname}`,
        width: 240,
        alt: data.title,
      });

      $(img_lecture).append(img);
      let price = data.price + '';
      if (data.price < 100000) {
        price = price.slice(0, 2) + ',' + price.slice(2, price.length);
      } else {
        price = price.slice(0, 3) + ',' + price.slice(3, price.length);
      }

      let total_rw = $('<div></div>').addClass('star');
      let star = $('<img/>').attr('src', `../images/main/ic_star.png`).addClass('img_star');

      $(total_rw).append(star);
      $(total_rw).append($('<span></span>').html(data.total_rw).addClass('rw_total'));

      $(a).append(img_lecture);
      $(a).append($('<p></p>').html(data.title));
      $(a).append($('<h4></h4>').html(`${price}원`));
      $(a).append(total_rw);

      $(lecture).append(a);

      $('.lectures').append(lecture);
    });
  }
  lectureList();
});
