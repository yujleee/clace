$(function () {
  let lec_new = [
    { title: '낭만을 즐기는 카라반 캠핑, 당신의 캠프닉', price: 80000, total_rw: 5.0, fname: 'img_cls9.jpg' },
    { title: '인생샷 맛집! 여유롭게 즐겨보는 부산 패들보드', price: 50000, total_rw: 4.8, fname: 'img_cls10.jpg' },
    { title: '빛과 그림자로 감성을 채우는 아이패드 드로잉', price: 130000, total_rw: 4.7, fname: 'img_cls11.jpg' },
    { title: '기초를 탄탄히! 왕초보를 위한 베이직 통기타', price: 150000, total_rw: 4.9, fname: 'img_cls12.jpg' },
    { title: '집에서 간편하게, 취향대로 완성해보는 가죽 공예', price: 310000, total_rw: 4.6, fname: 'img_cls5.jpg' },
    {
      title: '나무, 그 따뜻함에서 느껴보는 힐링의 시간. 우드 카빙',
      price: 250000,
      total_rw: 4.2,
      fname: 'img_cls6.jpg',
    },
    { title: '하나뿐인 우리집 반려동물 옷 만들기 AtoZ', price: 350000, total_rw: 4.5, fname: 'img_cls7.jpg' },
    {
      title: '내가 보는 것들을 그림으로, 어반스케치 펜드로잉 입문',
      price: 200000,
      total_rw: 4.3,
      fname: 'img_cls8.jpg',
    },
    { title: '바삭바삭 파이와 컵케이크로 홈카페 느낌내기', price: 179500, total_rw: 4.7, fname: 'img_cls1.jpg' },
    { title: '누구나 할 수 있는 쉽고 특별한 영상디자인', price: 200000, total_rw: 4.5, fname: 'img_cls2.jpg' },
    { title: '실무자에게 제대로 배우는, 직장인이 진짜 쓰는 엑셀', price: 70000, total_rw: 4.8, fname: 'img_cls3.jpg' },
    { title: '전업투자자가 알려주는 트레이딩 기법', price: 400000, total_rw: 4.2, fname: 'img_cls4.jpg' },
  ];

  function lectureList() {
    $.each(lec_new, function (i, data) {
      let lecture = $('<div></div>').addClass('lecture');
      let a = $('<a></a>').attr('href', 'lecture_detail.html');
      let img_lecture = $('<div></div>').addClass('img_lecture');
      let img = $('<img/>').attr({
        src: `images/main/${data.fname}`,
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
      let star = $('<img/>').attr('src', `images/main/ic_star.png`).addClass('img_star');

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
