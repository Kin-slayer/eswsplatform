// JavaScript Document
 $(document).ready(function(e) {
		   $("intput:button").hide();
		   $("input:submit").hide();
		   $("input:checkbox").attr("checked",false);
		   $("input:checkbox").change(function(e) {
		   var trs = $("#inner").find("tr");
		   for(var i =1 ; i < trs.length ; i++){
			   var cb = $(trs[i]).find("td:first-child>input:checkbox");
			   var bt = $(trs[i]).find("td>input:button");
			   var sm = $(trs[i]).find("td>input:submit");     
				   if(cb.prop("checked")){
					   bt.show();
					   sm.show();
					   }else{
						   sm.hide();
						   bt.hide();
						   }
            	};
		   })
    });	