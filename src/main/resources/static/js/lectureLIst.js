/*$(function() {
	const sortSelect = document.querySelector('#sort > option');
	sortSelect.addEventListener('click', function() {
		console.log('ho');
		let sort = sortSelect.options.selectedIndex;
		console.log(sort, typeof sort);

		let urlName = '';
		switch (sort) {
			case 0:
				urlName = 'sortBest';
			case 1:
				urlName = 'sortMax';
			case 2:
				urlName = 'sortMin';
			case 3:
				urlNmae = 'sortReview';
		}

		$.ajax({
			url: urlName,
			data: "",
			success: function(data) {
				console.log('성공!');
			},
			error: function(request, status, error){
				console.log(error);
			}
		});
	});
}); */
