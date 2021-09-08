$(function() {

	let keyword = $("#keyword").val();
	console.log(keyword);

	let localLength = localStorage.length;
	let searchData = [];

		putKeyword();
		createlistNode();
	$('#keyword').focus(function() {
		$("#recentKeyword").slideDown(function(){
		});
	});

	$('#recentKeyword').mouseleave(function() {
		$("#recentKeyword").slideUp(1000);
	});

	if(keyword != ''){
		addKeyword();
	}


	function addKeyword() {
		console.log(`localLength : ${localLength}`);

		if(keyword == ''){
			return; //키워드가 비어있으면 동작x 
		}
		
		for (let i = 0; i <= localLength; i++) {
			let key = localStorage.key(i);
			console.log(`key: ${key}`);
			let thisKeyword = localStorage.getItem(key);

			if(keyword === thisKeyword){
				return;
			}			
			console.log(`${i}번 키워드: ${thisKeyword} / 넣을 키워드: ${keyword}`);
			console.log(`새로운 키워드 ${keyword}를 스토리지에 추가 `);
		}
		localStorage.setItem(`keyword${localLength}`, keyword);

	}
	
	function putKeyword(){
		for(let i=0; i<localLength; i++){
			let key = localStorage.key(i);
			let thisKeyword = localStorage.getItem(key);
			searchData.push(thisKeyword);	
		}
	}

	function createlistNode(){
		$(".recent").empty();
		for (let i = 0; i < searchData.length; i++) {
			let li = $("<li></li>").html(searchData[i]);
			$(".recent").append(li);
			if(i >= 5){
				deleteKeyword();
			}
		}
	}


	if (localLength == 0 && keyword !== '') {
		localStorage.setItem(`keyword${localLength}`, keyword);
		addKeyword();
	} 

	function deleteKeyword() {
		for (let i = 0; i < localLength; i++) {
			let willDelete = searchData.pop(searchData[i]);
				let key = localStorage.key(i);
				let value = localStorage.getItem(key);
				if (willDelete === value) {
					console.log(`${willDelete}가 삭제될 예정`);
					localStorage.removeItem(key);
					console.log(`삭제완료`);
				}
		}
	}

	const deleteAll = document.querySelector(".deleteAll");
	deleteAll.addEventListener("click", function() {
		localStorage.clear();
		$(".recent").empty();
		searchData.length = 0;
	});

	//최근검색어 클릭시 다시 검색할 수 있도록 함
	 $(".recent li").on('click',function() {
		let word = $(this).html();
		console.log(`word: ${word}`);
        location.href=`/searchLecture?keyword=${word}`;
     });

	
});
