$(function() {

	$('#keyword').focus(function() {
		$("#recentKeyword").slideDown();
	});

	$('#keyword').blur(function() {
		$("#recentKeyword").slideUp();
	});

	let keyword = $("#keyword").val();
	console.log(keyword);


	let localLength = localStorage.length;

	let searchData = [];
	
	function keywordList() {

		for (let i = 0; i < localLength; i++) {
			let key = localStorage.key(i);
			searchData.push(localStorage.getItem(key));
			searchData.filter((item, index) => {
				return searchData.indexOf(item) === index
			});
		}

		for (let i = 0; i < searchData.length; i++) {
			let li = $("<li></li>").html(searchData[i]);
			$(".recent").append(li);
			if(i == 5){
				deleteKeyword();
				console.log(i);
				break;
			}
		}
	}


	if (localStorage.getItem(`keyword${localLength}`) === null) {
		localStorage.setItem(`keyword${localLength}`, keyword);
		console.log(`localLength: ${localLength}`);
		keywordList();
	} 

	function deleteKeyword() {
		for (let i = 0; i < localLength; i++) {
			let willDelete = searchData.pop();
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

		});



});
