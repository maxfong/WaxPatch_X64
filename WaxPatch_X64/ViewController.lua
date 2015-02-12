waxClass{"ViewController", UIViewController}
require "ViewControllerA"

function click(self, sender)
--local alert = UIAlertView:initWithTitle_message_delegate_cancelButtonTitle_otherButtonTitles("Tip", "Lua动态赋值", self, "OK", nil)
--alert:show()

--local vc = ViewControllerA:init()
--self:presentViewController_animated_completion(vc, YES, nil)

--[self startWithBlock:^(NSString *string) {
--    NSLog(@"startWithBlock-%@", string);
--}];
-- [[NSNotificationCenter defaultCenter] postNotificationName:@"" object:nil];
--self.lblMessage.text = self.testValue;

a = {n=testBlock}
-- f["aa"] = testBlock
NSNotificationCenter:defaultCenter():postNotificationName_object("WAXBlockNotification", a)

-- local a = ("^(NSString *string) { NSLog(@\"startWithBlock-%@\", string);}")
-- self:startWithBlock(a)
-- self:lblMessage():setText(self:testValue())


end

function testBlock( self, str )
	print(str)
end

function alertView_clickedButtonAtIndex(self, alertView, buttonIndex)
self:lblMessage():setText("Lua动态赋值")
end

function test(self, a)
    print("41234123")
end

