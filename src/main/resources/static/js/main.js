$(function () {
  $('.slider').bxSlider({
    auto: true,
    speed: 1500,
    controls: true,
    easing: 'linear',
    pager: true,
    onSlideBefore: function ($slideElement, oldIndex, newIndex) {
      if ((oldIndex == 0, newIndex == 1)) {
        $('.bx-wrapper').css('background', '#4360ff');
      } else if ((oldIndex == 1, newIndex == 0)) {
        $('.bx-wrapper').css('background', '#e9e5e2');
      }
    },
  });
  
  //-------------------------------------------------------------메인페이지 슬라이드 배너

  let sections = ['recommand', 'sale', 'new', 'content', 'aroundMe'];
  let urlName = ['listBestLecture', 'listSaleLecture', 'listNewLecture', 'listAroundMe'];
  
  function listLecture(sectionName, urlName) {
    $.ajax({
      url: urlName,
      method: 'GET',
      dataType: 'JSON',
      success: function (data) {
	 	$.each(data, function (i, lecture) {
          let con = $('<div></div>').addClass('lecture');
          let a = $('<a></a>').attr('href', `detailLecture.html?lec_no=${lecture.lec_no}`);
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
 
  listLecture(sections[0], urlName[0]);
  listLecture(sections[1], urlName[1]);
  listLecture(sections[2], urlName[2]);
  
  
  function getLocation() {
	if (navigator.geolocation) { // GPS를 지원하면
		navigator.geolocation.getCurrentPosition(function(position) {
			let lon = position.coords.latitude; //위도
			let lat = position.coords.longitude; //경도
			toAddress(lon,lat);
	    }, function(error) {
	      console.error(error);
	    }, {
	      enableHighAccuracy: false,
	      maximumAge: 0,
	      timeout: Infinity
	    });
	  } else {
	    alert('현재 위치를 읽어올 수 없습니다.');
	  }
	}
	

	function toAddress(lon,lat){
		console.log(`lon: ${lon}, lat: ${lat}`);
		$.ajax({
			url : `https://dapi.kakao.com/v2/local/geo/coord2address.json?x=${lat}&y=${lon}&input_coord=WGS84`,
		    type : 'GET',
		    headers : {
		      'Authorization' : 'KakaoAK a51df8e1d171bf4525d47934c151ed3b'
		    },
		    success : function(result) {
				let addressName = '';
				let totatlCount = result.meta.total_count; //총 문서 수 
		    	 if (totatlCount > 0) {
		            if (result.documents[0].road_address === null) {
		                addressName = result.documents[0].address.region_1depth_name; //시 이름 
		            } else {
		                addressName = result.documents[0].road_address.region_1depth_name;
		            }
		        }
		        console.log(addressName);
		        
		        $.ajax({
					url:'/listAroundMe',
					type: 'POST',
					data: {place: addressName},
					success: function (data) {
						listLecture(sections[3], urlName[3]);
					}, 
					error : function(e) {
		     			console.log(e);
		    		}
				});
		    },
		    error : function(e) {
		      console.log(e);
		    }
		});
	}
	
	const aroundDiv = document.querySelector(".around");
	aroundDiv.addEventListener("click", function(){
		getLocation();
		
	});
	
});
