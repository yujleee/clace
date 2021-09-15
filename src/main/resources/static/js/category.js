$(function() {
	$(".menu").click(function() {
		$("#category").slideDown();
		listCategory();
	});

	$('#category').mouseleave(function() {
		$('#category').slideUp(1000);
	});

	function listCategory() {
		$.ajax({
			url: "listCategory",
			dataType: 'JSON',
			success: function(data) {
				$("#category ul").empty();
				$.each(data, function(i, cate) {
					let title = cate.cate_title;
					let li = $("<li></li>");
					let a = $("<a></a>").attr("href", `categoryLecture?category=${title}`).html(title);
					$(li).append(a);
					$("#category ul").append(li);
				});
			}, error: function(e) {
				console.log(e);
			}
		});
	}

	//현재 페이지 패스에 따른 목록 출력   
	let currentPathName = window.location.pathname;

	if (currentPathName === '/categoryLecture') {
		
		//현재 카테고리
		let currentCategory = $(".title h3").html();
		
		$.ajax({
			url: "listCategory",
			dataType: 'JSON',
			success: function(data) {
				$(".cateList ul").empty();
				$.each(data, function(i, cate) {
					let title = cate.cate_title;
					let li = $("<li></li>");
					let a = $("<a></a>").attr("href", `categoryLecture?category=${title}`).html(title);
					
					if(currentCategory === title){ //카테고리가 페이지패스와 일치하면 클래스 적용
						$(li).addClass("on");
						$(a).addClass("on");
					}
					
					$(li).append(a);
					$(".cateList ul").append(li);
				});
			}, error: function(e) {
				console.log(e);
			}
		});



	}


});