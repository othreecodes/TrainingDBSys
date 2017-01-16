function actionApproveBtn(){
		if(confirm('You are about to approve application?')){
			return true;
		}else{
			return false;
		}
	}
	function actionRejectBtn(){
		if(confirm('You are about to reject application?')){
			return true;
		}else{
			return false;
		}
	}