$(function() {

	// populate board 1
	for (var row=1; row<6; row++) {
		for (var column=1; column<6; column++) {
			var number = gon.board1[row-1][column-1];
			$('.table-1 tr:nth-child('+row+') td:nth-child('+column+')').html(number);
		};
	};

	// populate board 2
	for (var row=1; row<6; row++) {
		for (var column=1; column<6; column++) {
			var number = gon.board2[row-1][column-1];
			$('.table-2 tr:nth-child('+row+') td:nth-child('+column+')').html(number);
		};
	};

	// console.log(gon.board1);

	$('button').on('click', function(e) {
		// console.log("hello");
		var ajaxRequest = $.ajax({
			url: '/bingoboard/check_bingo',
			type: 'GET'
		});
		ajaxRequest.done(function(response) {
			if (response.letter) {
				$('p').html(response.letter + response.number);
			} else {
				myRow = response.row+1;
				myColumn = response.column+1;
				$('.table-1 tr:nth-child('+myRow+') td:nth-child('+myColumn+')').html("X");
				console.log(response);
			}
			// console.log(response);
			// console.log("success");
		});
		ajaxRequest.fail(function() {
			console.log("error");
		});
	});

});