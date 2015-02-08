waxClass{"ViewControllerA", UIViewController}

function viewDidLoad( self )
self.super:viewDidLoad()
self:view():setBackgroundColor(UIColor:redColor())

local btn = UIButton:buttonWithType(UIButtonTypeCustom)
btn:setFrame(CGRectMake(50, 50, 100, 100))
btn:setBackgroundColor(UIColor:yellowColor())
btn:addTarget_action_forControlEvents(self, NSSelectorFromString("xx"), UIControlEventTouchUpInside)
self:view():addSubview(btn)

end

function xx(self, sender)
self:dismissViewControllerAnimated_completion(YES, nil)
end
