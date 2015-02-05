waxClass{"ViewController", UIViewController}

function click(self, sender)
    local alert = UIAlertView:initWithTitle_message_delegate_cancelButtonTitle_otherButtonTitles("Tip", "Lua动态赋值", nil, "OK", nil)
    alert:show()
    self:lblMessage():setText("Lua动态赋值")
end