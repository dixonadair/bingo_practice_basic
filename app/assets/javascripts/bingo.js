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

	$('button').on('click', function(e) {
		// console.log("hello");
		var ajaxRequest = $.ajax({
			url: '/bingoboard/check_bingo',
			type: 'GET'
		});
		ajaxRequest.done(function(response) {
			// console.log(response, "response");

			if (response.first.letter) {
				$('.board1').html("Board 1: " + response.first.letter + response.first.number);
			} else {
				$('.board1').html("Bingo!");
				myRow = response.first.row+1;
				myColumn = response.first.column+1;
				$('.table-1 tr:nth-child('+myRow+') td:nth-child('+myColumn+')').html("X");
				console.log(response.first);
			}
			if (response.second.letter) {
				$('.board2').html("Board 2: " + response.second.letter + response.second.number);
			} else {
				$('.board2').html("Bingo!");
				myRow = response.second.row+1;
				myColumn = response.second.column+1;
				$('.table-2 tr:nth-child('+myRow+') td:nth-child('+myColumn+')').html("X");
				console.log(response.second);
			}
		});
		ajaxRequest.fail(function() {
			console.log("error");
		});
	});

});