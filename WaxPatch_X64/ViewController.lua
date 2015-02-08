waxClass{"ViewController", UIViewController}
require "ViewControllerA"

function click(self, sender)
--local alert = UIAlertView:initWithTitle_message_delegate_cancelButtonTitle_otherButtonTitles("Tip", "Lua动态赋值", self, "OK", nil)
--alert:show()

local vc = ViewControllerA:init()
self:presentViewController_animated_completion(vc, YES, nil)

end

function alertView_clickedButtonAtIndex(self, alertView, buttonIndex)
self:lblMessage():setText("Lua动态赋值")
end
