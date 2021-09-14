$(function() {
	const sortSelect = document.getElementById('sort');
	sortSelect.addEventListener('click', function() {
		console.log('ho');
		let sort = sortSelect.options.selectedIndex;
		console.log(sort, typeof sort);

		$.ajax({
			url: urlName,
			data: { "pageNum": 1, "sortType": sort },
			dataType: "json",
			success: function(data) {
				console.log('성공!');
			},
			error: function(e) {
				console.log(e);
			}
		});
	});
});
