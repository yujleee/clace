$(function () {
  function listLecture(sectionName, urlName) {
    $.ajax({
      url: urlName,
      method: 'GET',
      dataType: 'JSON',
      success: function (data) {
	 	$.each(data, function (i, lecture) {
          let con = $('<div></div>').addClass('lecture');
          let a = $('<a></a>').attr('href', `detailLecture.do?lec_no=${lecture.lec_no}`);
          let img_lecture = $('<div></div>').addClass('img_lecture');
          let img = $('<img/>').attr({
            src: `images/lecture/${lecture.lec_image}`,
            width: 240,
            alt: lecture.lec_name,
          });

          $(img_lecture).append(img);
          let price = parseInt(lecture.lec_price) - (parseFloat(lecture.lec_price) * parseFloat(lecture.lec_sale));
          let saledPrice = price.toLocaleString('en');

          let total_rw = $('<div></div>').addClass('star');
          let star = $('<img/>').attr('src', `images/main/ic_star.png`).addClass('img_star');

          $(total_rw).append(star);
          $(total_rw).append($('<span></span>').html(lecture.lec_grade).addClass('rw_total'));

          $(a).append(img_lecture);
          $(a).append($('<p></p>').html(lecture.lec_name));
          $(a).append($('<h4></h4>').html(`${saledPrice}원`));
          $(a).append(total_rw);

          $(con).append(a);

          let thisSection = `#${sectionName} .lectures`;
          $(thisSection).append(con);
        });
      },
    });
  }

	//현재 페이지 패스에 따른 목록 출력   
	let currentPathName = window.location.pathname;
  
	if(currentPathName === '/newLecture.do' ){
	  listLecture('content', '/listNewLecture');
	}
	if(currentPathName === '/bestLecture.do' ){
	  listLecture('content', '/listBestLecture');
	}
});
