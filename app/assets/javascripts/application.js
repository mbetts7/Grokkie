// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery.ui.all
//= require jquery_ujs
//= require foundation
//= require_tree .

$(function(){ $(document).foundation(); });

$(function(){
	$("#sortable").sortable({
		update: function () {
			var data = [];
			$.each($("#sortable p"), function(i,el){
				data.push({id:$(el).data("id")});
			});

			$.ajax({
				type: "POST",
				contentType: "application/json",
				url: "/roadmaps/update_positions",
				data: JSON.stringify({position:data}),
			});

		}
	});
});

 // $(function() {
 //    $(".fa-pencil-square-o").click(function() {
 //      $("#hello").reveal();
 //    });
 //  });

