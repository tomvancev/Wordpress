$ = jQuery;
var ViewModel = function(){
	var self = this;
	self.suggestedProducts = ko.observableArray();

};
var viewModel = new ViewModel();
ko.applyBindings(viewModel, document.getElementById("results"));

$("#submit").click(function(){
	function validateEmail(email){
	    var re = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
	    return re.test(String(email.val()).toLowerCase());
	}


	var name = $("#calc-name");
	var email = $("#calc-email");
	var emailValid = validateEmail(email);
	var tel = $("#calc-tel");
	var m2 = $("#calc-m2");
	var cm = $("#calc-cm");



	if(name.val() && emailValid && tel.val() && m2.val() && cm.val()){
		$.ajax({
			url:'../wp-json/webcalc/v1/index',
			method:'POST',
			data:{
				name: name.val(),
				email: email.val(),
				tel: tel.val(),
				metres: m2.val(),
				cm: cm.val(),
				isolation: $('#debelina').val()
			},
			success:function(res){
				$(".form-control").removeClass("has-error");
				viewModel.suggestedProducts.removeAll();
				res.forEach(function(element){
					viewModel.suggestedProducts.push(element);
				})
			},
			error:function(err){
				console.log(err.statusText);
			}
		})

	}else{

		(function validateFields(){
			var fields = [].slice.call(arguments);
				fields.forEach(function(field){
					field.removeClass("has-error");
					if(!field.val())
						field.addClass("has-error");
				})

				email.removeClass("has-error");
				if(!emailValid){
					email.addClass("has-error");	
			}
		}
		(name,tel,m2,cm));
	}

});
