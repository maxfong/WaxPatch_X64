waxClass{"ViewController", UIViewController}

function click(self, sender)


self:testCallBlock(toobjc(function ( str ,null)
	local alert = UIAlertView:initWithTitle_message_delegate_cancelButtonTitle_otherButtonTitles("TTT", str, self, "OK", nil)
	alert:show()
end):asBlock())
end

function alertView_clickedButtonAtIndex(self, alertView, buttonIndex)
self:lblMessage():setText("Lua动态赋值")
end
