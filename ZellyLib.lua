local library = {count = 0,Flags = {}};

if game:GetService("CoreGui"):FindFirstChild("Zelly Lib") then
   game:GetService("CoreGui"):FindFirstChild("Zelly Lib"):Destroy()
end

local UIS = game:GetService("UserInputService")

local Cursor = Drawing.new("Circle");
Cursor.Filled = true;
Cursor.Color = Color3.fromRGB(255, 255, 255);
Cursor.Transparency = 1;
Cursor.Visible = true;
Cursor.Radius = 2;
Cursor.Thickness = 1;

UIS.InputBegan:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.RightShift then
		game:GetService("CoreGui"):FindFirstChild("Zelly Lib").Enabled = not game:GetService("CoreGui"):FindFirstChild("Zelly Lib").Enabled
		Cursor.Visible = not Cursor.Visible
    end
end) 

game:GetService("RunService").Heartbeat:Connect(function()
	Cursor.Position = game:GetService("UserInputService"):GetMouseLocation();
end)

local ZellyLib = Instance.new("ScreenGui")
ZellyLib.Name = "Zelly Lib"
ZellyLib.Parent = game:GetService("CoreGui")
ZellyLib.ResetOnSpawn = false


getgenv().Theme = {
    TitleColor = Color3.fromRGB(222, 222, 222);
    UnderlineColor = Color3.fromRGB(110, 58, 200);
    MainColor = Color3.fromRGB(32, 32, 32);
    SecondaryColor = Color3.fromRGB(34, 34, 34);
    ToggleOnColor = Color3.fromRGB(110, 58, 200);
    ToggleOffColor = Color3.fromRGB(60, 60, 60);
    ButtonColor = Color3.fromRGB(110, 58, 200);
    SliderColor = Color3.fromRGB(110, 58, 200);
    CloseUIColor = Color3.fromRGB(110, 58, 200);
    TextColor = Color3.fromRGB(222, 222, 222);
    BindColor = Color3.fromRGB(110, 58, 200);
    BindTextColor = Color3.fromRGB(255, 255, 255);
    DropDownBoarder = Color3.fromRGB(28, 28, 28);
    BoxTextColor = Color3.fromRGB(255, 255, 255);
    BoxColor = Color3.fromRGB(47, 47, 47);
    DropDownColor = Color3.fromRGB(26, 26, 26);
    Drop = Color3.fromRGB(26, 26, 26);
    ToggleBackGround = Color3.fromRGB(48, 48, 48);
    ColorPickerColor = Color3.fromRGB(110, 58, 200);
    OpenUIColor = Color3.fromRGB(74, 72, 72);
    SliderLineColor = Color3.fromRGB(255, 255, 255);
    DropDownTextColor = Color3.fromRGB(222, 222, 222);
    DropDownArrow = Color3.fromRGB(231, 231, 231);
}

function library:Window(WindowName)
	library.count = library.count + 1
	local UI = {};
 	local Main = Instance.new("Frame")
 	local Underline = Instance.new("Frame")
	local WindowTitle = Instance.new("TextLabel")
	local UIPadding = Instance.new("UIPadding")
	local Container = Instance.new("ImageLabel")
	local UIPadding_2 = Instance.new("UIPadding")
	local UIListLayout = Instance.new("UIListLayout")
	local ToggleButton = Instance.new("TextButton")
	local ToggleImage = Instance.new("ImageLabel")

	Main.Name = "Main"
	Main.Parent = ZellyLib
	Main.BackgroundColor3 = getgenv().Theme.MainColor
	Main.BorderSizePixel = 0
	Main.Position = UDim2.new(0, (15 + (212 * library.count) - 212), 0.0114942575, 0)
	Main.Size = UDim2.new(0, 210, 0, 35)
	Main.ZIndex = 6

	Underline.Name = "Underline"
	Underline.Parent = Main
	Underline.BackgroundColor3 = getgenv().Theme.UnderlineColor
	Underline.BorderSizePixel = 0
	Underline.Position = UDim2.new(0, 0, 0.942857146, 0)
	Underline.Size = UDim2.new(0, 210, 0, 2)
	Underline.ZIndex = 6

	WindowTitle.Name = WindowName
	WindowTitle.Parent = Main
	WindowTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	WindowTitle.BackgroundTransparency = 1.000
	WindowTitle.BorderSizePixel = 0
	WindowTitle.Size = UDim2.new(0, 209, 0, 33)
	WindowTitle.ZIndex = 6
	WindowTitle.Font = Enum.Font.GothamSemibold
	WindowTitle.Text = WindowName
	WindowTitle.TextColor3 = getgenv().Theme.TitleColor
	WindowTitle.TextSize = 15.000
	WindowTitle.TextXAlignment = Enum.TextXAlignment.Left

	UIPadding.Parent = WindowTitle
	UIPadding.PaddingLeft = UDim.new(0, 5)

	Container.Name = "Container"
	Container.Parent = Main
	Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Container.BackgroundTransparency = 1.000
	Container.ClipsDescendants = false
	Container.Size = UDim2.new(0, 210, 0, 0)
	Container.Image = "rbxassetid://3570695787"
	Container.ImageColor3 = getgenv().Theme.SecondaryColor
	Container.ScaleType = Enum.ScaleType.Slice
	Container.SliceCenter = Rect.new(100, 100, 100, 100)
	Container.SliceScale = 0.040

	UIPadding_2.Parent = Container
	UIPadding_2.PaddingBottom = UDim.new(0, 2)
	UIPadding_2.PaddingTop = UDim.new(0, 35)

	UIListLayout.Parent = Container
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 3)

	ToggleButton.Name = "ToggleButton"
	ToggleButton.Parent = Main
	ToggleButton.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
	ToggleButton.BackgroundTransparency = 1.000
	ToggleButton.BorderSizePixel = 0
	ToggleButton.Position = UDim2.new(0.860000014, 0, 0.316428602, 0)
	ToggleButton.Size = UDim2.new(0, 18, 0, 18)
	ToggleButton.ZIndex = 7
	ToggleButton.Font = Enum.Font.SourceSans
	ToggleButton.Text = ""
	ToggleButton.TextColor3 = Color3.fromRGB(0, 0, 0)
	ToggleButton.TextSize = 14.000

	ToggleImage.Name = "ToggleImage"
	ToggleImage.Parent = ToggleButton
	ToggleImage.Active = true
	ToggleImage.AnchorPoint = Vector2.new(0.5, 0.5)
	ToggleImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	ToggleImage.BackgroundTransparency = 1.000
	ToggleImage.Position = UDim2.new(0.722222209, 0, 0.291666687, 0)
	ToggleImage.Selectable = true
	ToggleImage.Size = UDim2.new(1, 0, 1, 0)
	ToggleImage.ZIndex = 6
	ToggleImage.Image = "rbxassetid://3570695787"
	ToggleImage.ImageColor3 = getgenv().Theme.CloseUIColor
	ToggleImage.ScaleType = Enum.ScaleType.Slice
	ToggleImage.SliceCenter = Rect.new(100, 100, 100, 100)
	ToggleImage.SliceScale = 0.030

	local NewWindow = Main;
	local GetToggle = NewWindow:FindFirstChild("ToggleButton");
	local FindImage = GetToggle:FindFirstChild("ToggleImage");

	local players = game:service('Players');
    local player = players.LocalPlayer;
    local mouse = player:GetMouse();
    local run = game:service('RunService'); -- Credits to Google Chrome!
    local stepped = run.Stepped;
    draggable = function(obj)
        spawn(function()
            obj.Active = true;
            local minitial;
            local initial;
            local isdragging;
            obj.InputBegan:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
                    isdragging = true;
                    minitial = input.Position;
                    initial = obj.Position;
                    local con;
                    con = stepped:Connect(function()
                        if isdragging then
                            local delta = Vector3.new(mouse.X, mouse.Y, 0) - minitial;
                            obj.Position = UDim2.new(initial.X.Scale, initial.X.Offset + delta.X, initial.Y.Scale, initial.Y.Offset + delta.Y);
                        else
                            con:Disconnect();
                        end;
                    end);
                    input.Changed:Connect(function()
                        if input.UserInputState == Enum.UserInputState.End then
                            isdragging = false;
                        end;
                    end);
                end;
            end);
        end)
	end;

	draggable(NewWindow)

	delayt = .3
	delayQ = .1
	local TweenService = game:GetService("TweenService")
	local tweenInfo = TweenInfo.new(
		delayt,
		Enum.EasingStyle.Sine,
		Enum.EasingDirection.In,
		0,
		false,
		0
	)
	local tweenInfo1 = TweenInfo.new(
		delayQ,
		Enum.EasingStyle.Sine,
		Enum.EasingDirection.In,
		0,
		false,
		0
	)

	local Enabled = false;
	GetToggle.MouseButton1Click:Connect(function()
		Enabled = not Enabled
		local Color = Enabled and getgenv().Theme.OpenUIColor or getgenv().Theme.CloseUIColor
		TweenService:Create(FindImage,tweenInfo,{ImageColor3 = Color}):Play()
        wait()
		local y = 36;
        for i, v in next, Container:GetChildren() do
            if (not v:IsA('UIListLayout') and not v:IsA("UIPadding")) then
                 y = y + v.AbsoluteSize.Y + 3.5;
            end
        end 

		local Position = Enabled and UDim2.new(0, 210,0, 35) or UDim2.new(0, 210,0, y+2)
		TweenService:Create(Container,tweenInfo1,{Size = Position}):Play()

		if (not Enabled) then
			wait(.25)
			Container.ClipsDescendants = false;
		elseif (Enabled) then
			Container.ClipsDescendants = true;
		end
	end)

	function UI:Resize()
        local y = 36
        for i, v in pairs(Container:GetChildren()) do
            if (not v:IsA("UIListLayout") and not v:IsA("UIPadding")) then
                y = y + v.AbsoluteSize.Y + 3.5;
            end
        end
        Container.Size = UDim2.new(0, 210, 0, y+2)
    end

    function UI:Toggle(name,callback)
    	local callback = callback or function() end;
        local Enabled = false
        library.Flags[toggleName] = Enabled;

    	local ToggleHolder = Instance.new("Frame")
		local Toggle = Instance.new("TextButton")
		local ToggleImage = Instance.new("ImageLabel")
		local ToggleSlideButton = Instance.new("ImageLabel")
		local ToggleTitle = Instance.new("TextLabel")
		local UIPadding = Instance.new("UIPadding")

		ToggleHolder.Name = name
		ToggleHolder.Parent = Container
		ToggleHolder.BackgroundColor3 = Color3.fromRGB(110, 58, 200)
		ToggleHolder.BackgroundTransparency = 1.000
		ToggleHolder.BorderSizePixel = 0
		ToggleHolder.Position = UDim2.new(0, 0, 0.5, 0)
		ToggleHolder.Size = UDim2.new(0, 210, 0, 35)
		ToggleHolder.ZIndex = 2

		Toggle.Name = "Toggle"
		Toggle.Parent = ToggleHolder
		Toggle.BackgroundColor3 = Color3.fromRGB(38, 38, 38)
		Toggle.BackgroundTransparency = 1.000
		Toggle.BorderSizePixel = 0
		Toggle.Position = UDim2.new(0.783523798, 0, 0.200428575, 0)
		Toggle.Size = UDim2.new(0, 40, 0, 18)
		Toggle.ZIndex = 7
		Toggle.Font = Enum.Font.SourceSans
		Toggle.Text = ""
		Toggle.TextColor3 = Color3.fromRGB(0, 0, 0)
		Toggle.TextSize = 14.000

		ToggleImage.Name = "ToggleImage"
		ToggleImage.Parent = Toggle
		ToggleImage.Active = true
		ToggleImage.AnchorPoint = Vector2.new(0.5, 0.5)
		ToggleImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ToggleImage.BackgroundTransparency = 1.000
		ToggleImage.Position = UDim2.new(0.5, 0, 0.5, 0)
		ToggleImage.Selectable = true
		ToggleImage.Size = UDim2.new(0.800000012, 0, 1, 0)
		ToggleImage.ZIndex = 6
		ToggleImage.Image = "rbxassetid://3570695787"
		ToggleImage.ImageColor3 = getgenv().Theme.ToggleBackGround
		ToggleImage.ScaleType = Enum.ScaleType.Slice
		ToggleImage.SliceCenter = Rect.new(100, 100, 100, 100)
		ToggleImage.SliceScale = 0.080

		ToggleSlideButton.Name = "ToggleSlideButton"
		ToggleSlideButton.Parent = Toggle
		ToggleSlideButton.Active = true
		ToggleSlideButton.AnchorPoint = Vector2.new(0.5, 0.5)
		ToggleSlideButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ToggleSlideButton.BackgroundTransparency = 1.000
		ToggleSlideButton.Position = UDim2.new(0.324999988, 0, 0.5, 0)
		ToggleSlideButton.Selectable = true
		ToggleSlideButton.Size = UDim2.new(0.449999988, 0, 1, 0)
		ToggleSlideButton.ZIndex = 6
		ToggleSlideButton.Image = "rbxassetid://3570695787"
		ToggleSlideButton.ImageColor3 = getgenv().Theme.ToggleOffColor
		ToggleSlideButton.ScaleType = Enum.ScaleType.Slice
		ToggleSlideButton.SliceCenter = Rect.new(100, 100, 100, 100)
		ToggleSlideButton.SliceScale = 0.080

		ToggleTitle.Name = "ToggleTitle"
		ToggleTitle.Parent = ToggleHolder
		ToggleTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ToggleTitle.BackgroundTransparency = 1.000
		ToggleTitle.BorderSizePixel = 0
		ToggleTitle.Position = UDim2.new(0, 0, 0.20042856, 0)
		ToggleTitle.Size = UDim2.new(0, 202, 0, 17)
		ToggleTitle.ZIndex = 6
		ToggleTitle.Font = Enum.Font.SourceSansSemibold
		ToggleTitle.Text = name
		ToggleTitle.TextColor3 = getgenv().Theme.TextColor
		ToggleTitle.TextSize = 16.000
		ToggleTitle.TextXAlignment = Enum.TextXAlignment.Left

		UIPadding.Parent = ToggleTitle
		UIPadding.PaddingLeft = UDim.new(0, 5)

		Toggle.MouseButton1Click:Connect(function()
			Enabled = not Enabled
			library.Flags[name] = Enabled
			callback(Enabled)
			local Color = Enabled and getgenv().Theme.ToggleOnColor or getgenv().Theme.ToggleOffColor
			local Position = Enabled and UDim2.new(0.675, 0,0.5, 0) or UDim2.new(0.325, 0,0.5, 0)
			TweenService:Create(ToggleSlideButton,tweenInfo,{ImageColor3 = Color}):Play()
			TweenService:Create(ToggleSlideButton,tweenInfo,{Position = Position}):Play()
		end)
		UI:Resize()
	end

	function UI:Label(name,XPosition)
		local LabelHolder = Instance.new("Frame")
		local Label = Instance.new("TextLabel")
		local TextPadding = Instance.new("UIPadding")

		LabelHolder.Name = "LabelHolder"
		LabelHolder.Parent = Container
		LabelHolder.BackgroundColor3 = Color3.fromRGB(110, 58, 200)
		LabelHolder.BackgroundTransparency = 1.000
		LabelHolder.BorderSizePixel = 0
		LabelHolder.Position = UDim2.new(0, 0, 0.573770463, 0)
		LabelHolder.Size = UDim2.new(0, 210, 0, 26)
		LabelHolder.ZIndex = 2

		Label.Name = "Label"
		Label.Parent = LabelHolder
		Label.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Label.BackgroundTransparency = 1.000
		Label.BorderSizePixel = 0
		Label.Position = UDim2.new(0, 0, -0.00315260887, 0)
		Label.Size = UDim2.new(0, 210, 0, 26)
		Label.ZIndex = 6
		Label.Font = Enum.Font.GothamSemibold
		Label.Text = name
		Label.TextColor3 = getgenv().Theme.TextColor
		Label.TextSize = 15.000
		Label.TextXAlignment = Enum.TextXAlignment[XPosition]

		TextPadding.Name = "TextPadding"
		TextPadding.Parent = Label
		TextPadding.PaddingLeft = UDim.new(0, 3)
		TextPadding.PaddingRight = UDim.new(0, 3)
		UI:Resize()
	end

	function UI:Slider(name,min,max,callback)
		local SliderHolder = Instance.new("Frame")
		local SliderTItle = Instance.new("TextLabel")
		local SliderLine = Instance.new("Frame")
		local Slider = Instance.new("TextButton")
		local SliderImage = Instance.new("ImageLabel")
		local SliderNumbers = Instance.new("TextLabel")

		SliderHolder.Name = "SliderHolder"
		SliderHolder.Parent = Container
		SliderHolder.BackgroundColor3 = getgenv().Theme.SecondaryColor
		SliderHolder.BorderSizePixel = 0
		SliderHolder.Position = UDim2.new(0, 0, 0.5, 0)
		SliderHolder.Size = UDim2.new(0, 210, 0, 35)
		SliderHolder.ZIndex = 2

		SliderTItle.Name = "SliderTItle"
		SliderTItle.Parent = SliderHolder
		SliderTItle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SliderTItle.BackgroundTransparency = 1.000
		SliderTItle.BorderSizePixel = 0
		SliderTItle.Position = UDim2.new(0, 0, 0.0857142881, 0)
		SliderTItle.Size = UDim2.new(0, 102, 0, 16)
		SliderTItle.ZIndex = 6
		SliderTItle.Font = Enum.Font.SourceSansSemibold
		SliderTItle.LineHeight = 1.090
		SliderTItle.Text = name
		SliderTItle.TextColor3 = getgenv().Theme.TextColor
		SliderTItle.TextSize = 18.000

		SliderLine.Name = "SliderLine"
		SliderLine.Parent = SliderHolder
		SliderLine.BackgroundColor3 = getgenv().Theme.SliderLineColor
		SliderLine.BorderSizePixel = 0
		SliderLine.Position = UDim2.new(0.485714287, 0, 0.457142889, 0)
		SliderLine.Size = UDim2.new(0, 100, 0, 3)
		SliderLine.ZIndex = 2

		Slider.Name = "Slider"
		Slider.Parent = SliderLine
		Slider.BackgroundColor3 = Color3.fromRGB(110, 58, 200)
		Slider.BackgroundTransparency = 1.000
		Slider.BorderSizePixel = 0
		Slider.Position = UDim2.new(0, 0, -2.65799999, 0)
		Slider.Size = UDim2.new(0, 8, 0, 19)
		Slider.ZIndex = 2
		Slider.Font = Enum.Font.SourceSans
		Slider.Text = ""
		Slider.TextColor3 = Color3.fromRGB(0, 0, 0)
		Slider.TextSize = 14.000

		SliderImage.Name = "SliderImage"
		SliderImage.Parent = Slider
		SliderImage.Active = true
		SliderImage.AnchorPoint = Vector2.new(0.5, 0.5)
		SliderImage.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SliderImage.BackgroundTransparency = 1.000
		SliderImage.Position = UDim2.new(0.5, 0, 0.49999997, 0)
		SliderImage.Selectable = true
		SliderImage.Size = UDim2.new(1, 0, 1, 0)
		SliderImage.ZIndex = 2
		SliderImage.Image = "rbxassetid://3570695787"
		SliderImage.ImageColor3 = getgenv().Theme.SliderColor
		SliderImage.ScaleType = Enum.ScaleType.Slice
		SliderImage.SliceCenter = Rect.new(100, 100, 100, 100)
		SliderImage.SliceScale = 0.030

		SliderNumbers.Name = "SliderNumbers"
		SliderNumbers.Parent = SliderHolder
		SliderNumbers.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		SliderNumbers.BackgroundTransparency = 1.000
		SliderNumbers.BorderSizePixel = 0
		SliderNumbers.Position = UDim2.new(0, 0, 0.45714286, 0)
		SliderNumbers.Size = UDim2.new(0, 102, 0, 16)
		SliderNumbers.ZIndex = 6
		SliderNumbers.Font = Enum.Font.SourceSansSemibold
		SliderNumbers.LineHeight = 1.090
		SliderNumbers.Text = ""
		SliderNumbers.TextColor3 = getgenv().Theme.TextColor
		SliderNumbers.TextSize = 18.000
		SliderNumbers.TextTransparency = 1.000

		local STFPositonOLD = UDim2.new(0, 0,0.086, 0)
		local SFPositonOLD = UDim2.new(0,0,0.457,0)
		local NewPosition = UDim2.new(0, 0,0.257, 0)
		--
		local UserInputService = game:GetService("UserInputService")
		local RunService = game:GetService("RunService")
		local Connection;
		
		local TweenService = game:GetService("TweenService")
		delayt = .1
	
		local tweenInfo = TweenInfo.new(
			delayt,
			Enum.EasingStyle.Sine,
			Enum.EasingDirection.In,
			0,
			false,
			0
		)
	
		local function Fade(Object,FadeAmount,Delay)
		local Tweener = TweenService:Create(Object,TweenInfo.new(Delay),{TextTransparency = FadeAmount})
			Tweener:Play()
		end
		
		
		UserInputService.InputEnded:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 then
				if Connection then
					Connection:Disconnect()
					Connection = nil
					Fade(SliderNumbers,1,.2)
					Fade(SliderTItle,0,.2)
					SliderNumbers:TweenPosition(SFPositonOLD,"InOut","Sine",.1,true)
					SliderTItle:TweenPosition(STFPositonOLD,"InOut","Sine",.1,true)
				end
			end
		end)
		
		local Vals = {
			["Min"] = min;
			["Max"] = max;
		}
		
		SliderNumbers.Text = Vals.Min.."/"..Vals.Max
		
		Slider.MouseButton1Down:Connect(function()
			if Connection then
				Connection:Disconnect()
			end
			Connection = RunService.RenderStepped:Connect(function()
				local Mouse = game:GetService("UserInputService"):GetMouseLocation()
				local Percentage = math.clamp((Mouse.X - SliderLine.AbsolutePosition.X)/(SliderLine.AbsoluteSize.X),0,1)
				local GetValue = Vals.Min + (Vals.Max - Vals.Min) * Percentage
				
				GetValue = math.floor(GetValue)
				
				Slider:TweenPosition(UDim2.new(Percentage,-5.2,-2.658,0),"In","Sine",.02,true)
			
				SliderNumbers.Text = GetValue.."/"..Vals.Max
				Fade(SliderNumbers,0,.2)
				Fade(SliderTItle,1,.2)
				SliderNumbers:TweenPosition(NewPosition,"InOut","Sine",.1,true)
				SliderTItle:TweenPosition(NewPosition,"InOut","Sine",.1,true)
				callback(tonumber(GetValue))
			end)
		end)
		UI:Resize()
	end

	function UI:Button(name,callback)
		local ButtonHolder = Instance.new("Frame")
		local Button = Instance.new("TextButton")
		local Circle = Instance.new("ImageLabel")

		ButtonHolder.Name = "ButtonHolder"
		ButtonHolder.Parent = Container
		ButtonHolder.BackgroundColor3 = getgenv().Theme.ButtonColor
		ButtonHolder.BackgroundTransparency = 1.000
		ButtonHolder.BorderSizePixel = 0
		ButtonHolder.Position = UDim2.new(0, 0, 0.5, 0)
		ButtonHolder.Size = UDim2.new(0, 210, 0, 25)
		ButtonHolder.ZIndex = 2

		Button.Name = "Button"
		Button.Parent = ButtonHolder
		Button.BackgroundColor3 = getgenv().Theme.ButtonColor
		Button.BorderSizePixel = 0
		Button.ClipsDescendants = true
		Button.Position = UDim2.new(0.0261904765, 0, 0.114285715, 0)
		Button.Size = UDim2.new(0, 199, 0, 26)
		Button.ZIndex = 7
		Button.Text = name
		Button.AutoButtonColor = false
		Button.Font = Enum.Font.SourceSansSemibold
		Button.TextColor3 = getgenv().Theme.TextColor
		Button.TextSize = 20.000

		Circle.Name = "Circle"
		Circle.Parent = game:GetService('CoreGui')
		Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Circle.BackgroundTransparency = 1.000
		Circle.BorderSizePixel = 0
		Circle.Size = UDim2.new(0, 30, 0, 30)
		Circle.ZIndex = 8
		Circle.Image = "http://www.roblox.com/asset/?id=33112574"
		Circle.ImageTransparency = 0.700

		function CircleClick(Button, X, Y)
			coroutine.resume(coroutine.create(function()
			local Circle = game:GetService('CoreGui'):WaitForChild("Circle"):Clone()
			Circle.Parent = Button
			local NewX = X - Circle.AbsolutePosition.X
			local NewY = Y - Circle.AbsolutePosition.Y
			Circle.Position = UDim2.new(0, NewX, 0, NewY)
			
			local Size = 0
				if Button.AbsoluteSize.X > Button.AbsoluteSize.Y then
					Size = Button.AbsoluteSize.X*1.5
				elseif Button.AbsoluteSize.X < Button.AbsoluteSize.Y then
					Size = Button.AbsoluteSize.Y*1.5
				elseif Button.AbsoluteSize.X == Button.AbsoluteSize.Y then
					Size = Button.AbsoluteSize.X*1.5
				end
			
				local Time = 0.5
				Circle:TweenSizeAndPosition(UDim2.new(0, Size, 0, Size), UDim2.new(0.5, -Size/2, 0.5, -Size/2), "Out", "Quad", Time, false, nil)
					for i=1,10 do
						Circle.ImageTransparency = Circle.ImageTransparency + 0.03
					wait(Time/10)
				end
				Circle:Destroy()
			end))
		end
	
		local Mouse = game.Players.LocalPlayer:GetMouse()
		Button.MouseButton1Click:Connect(function()
			callback()
			CircleClick(Button,Mouse.X,Mouse.Y)
		end)
		UI:Resize()
	end

	function UI:Dropdown(name,Object,callback)
		local DropdownHolder = Instance.new("Frame")
		local HolderDrop = Instance.new("Frame")
		local ToggleHolder = Instance.new("Frame")
		local ToggleDropdown = Instance.new("TextButton")
		local DropdownObjects = Instance.new("Frame")
		local UIListLayout = Instance.new("UIListLayout")
		local DropdownPadding = Instance.new("UIPadding")
		local DropdownInput = Instance.new("TextLabel")
		local TitlePadding = Instance.new("UIPadding")

		DropdownHolder.Name = "DropdownHolder"
		DropdownHolder.Parent = Container
		DropdownHolder.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
		DropdownHolder.BackgroundTransparency = 1.000
		DropdownHolder.BorderSizePixel = 0
		DropdownHolder.Position = UDim2.new(0, 0, 0.506493509, 0)
		DropdownHolder.Size = UDim2.new(0, 200, 0, 38)
		DropdownHolder.ZIndex = 2

		HolderDrop.Name = "HolderDrop"
		HolderDrop.Parent = DropdownHolder
		HolderDrop.BackgroundColor3 = getgenv().Theme.DropDownColor
		HolderDrop.BorderSizePixel = 0
		HolderDrop.Position = UDim2.new(0.0250000004, 0, 0.123999998, 0)
		HolderDrop.Size = UDim2.new(0, 190, 0, 28)
		HolderDrop.ZIndex = 5

		ToggleHolder.Name = "ToggleHolder"
		ToggleHolder.Parent = HolderDrop
		ToggleHolder.BackgroundColor3 = getgenv().Theme.DropDownColor
		ToggleHolder.BorderSizePixel = 0
		ToggleHolder.Position = UDim2.new(0.850000024, 0, 0, 0)
		ToggleHolder.Size = UDim2.new(0, 28, 0, 28)
		ToggleHolder.ZIndex = 5

		ToggleDropdown.Name = "ToggleDropdown"
		ToggleDropdown.Parent = ToggleHolder
		ToggleDropdown.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		ToggleDropdown.BackgroundTransparency = 1.000
		ToggleDropdown.BorderSizePixel = 0
		ToggleDropdown.Size = UDim2.new(0, 28, 0, 28)
		ToggleDropdown.ZIndex = 6
		ToggleDropdown.Font = Enum.Font.GothamBold
		ToggleDropdown.Text = "<"
		ToggleDropdown.TextColor3 = getgenv().Theme.DropDownArrow
		ToggleDropdown.TextSize = 20.000
		ToggleDropdown.TextWrapped = true

		DropdownObjects.Name = "DropdownObjects"
		DropdownObjects.Parent = HolderDrop
		DropdownObjects.BackgroundColor3 = Color3.fromRGB(26, 26, 26)
		DropdownObjects.BackgroundTransparency = 1.000
		DropdownObjects.BorderSizePixel = 0
		DropdownObjects.ClipsDescendants = true
		DropdownObjects.Size = UDim2.new(0, 190, 0, 28)
		DropdownObjects.ZIndex = 5

		UIListLayout.Parent = DropdownObjects
		UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout.Padding = UDim.new(0, 2)

		DropdownPadding.Name = "DropdownPadding"
		DropdownPadding.Parent = DropdownObjects
		DropdownPadding.PaddingTop = UDim.new(0, 28)

		DropdownInput.Name = "DropdownInput"
		DropdownInput.Parent = HolderDrop
		DropdownInput.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		DropdownInput.BackgroundTransparency = 1.000
		DropdownInput.BorderSizePixel = 0
		DropdownInput.Position = UDim2.new(0.00526315812, 0, 0, 0)
		DropdownInput.Size = UDim2.new(0, 188, 0, 28)
		DropdownInput.ZIndex = 8
		DropdownInput.Font = Enum.Font.SourceSans
		DropdownInput.Text = name
		DropdownInput.TextColor3 = getgenv().Theme.TextColor
		DropdownInput.TextSize = 18.000
		DropdownInput.TextXAlignment = Enum.TextXAlignment.Left

		TitlePadding.Name = "TitlePadding"
		TitlePadding.Parent = DropdownInput
		TitlePadding.PaddingLeft = UDim.new(0, 5)

		local UserInputService = game:GetService("UserInputService");
		local Enabled = false;
	
			local function Rotation(Thingy,RotateAMT,Delay)
			local tweenInfo = TweenInfo.new(
			Delay,
			Enum.EasingStyle.Linear,
			Enum.EasingDirection.InOut,
			0,
			false,
			0
			)
	
			game:GetService("TweenService"):Create(Thingy,tweenInfo,{Rotation = RotateAMT}):Play();
		end
	
		for i,v in pairs(Object) do
			local Button = Instance.new("TextButton")
			Button.Name = "Button"
			Button.Parent = DropdownObjects
			Button.BackgroundColor3 = getgenv().Theme.Drop
			Button.BorderColor3 = getgenv().Theme.DropDownBoarder
			Button.Position = UDim2.new(0.852380931, 0, 0, 0)
			Button.Size = UDim2.new(0, 188, 0, 25)
			Button.ZIndex = 8
			Button.Text = v
			Button.Font = Enum.Font.SourceSansSemibold
			Button.TextColor3 = getgenv().Theme.DropDownTextColor
			Button.TextSize = 16.000
			
			Button.MouseButton1Click:Connect(function()
				Enabled = false;
				HolderDrop.DropdownInput.Text = v;
				Rotation(ToggleDropdown,0,.2)
				DropdownObjects:TweenSize(UDim2.new(0,190,0,28),"InOut","Linear",.2,true)
				callback(Button.Text)
			end)
		end
	
		DropdownObjects.MouseLeave:Connect(function()
			Enabled = false
			wait(.5)
			DropdownObjects:TweenSize(UDim2.new(0,190,0,28),"InOut","Linear",.2,true)
		end)
	
		ToggleDropdown.MouseButton1Click:Connect(function()
			Enabled = not Enabled
			local TotalY = 0;
			for i,v in next, DropdownObjects:GetChildren() do
				if (v:IsA("TextButton")) then
					TotalY = TotalY + v.AbsoluteSize.Y + 2;
				end
			end
		
			local RotationAmount = Enabled and -90 or 0
			local ToggleDirection = Enabled and "Out" or "In"
			local Size = Enabled and UDim2.new(0,190,0,TotalY + 50) or UDim2.new(0,190,0,28)
			DropdownObjects:TweenSize(Size,ToggleDirection,"Linear",.2,true)
			Rotation(ToggleDropdown,RotationAmount,.2)
		end)
		UI:Resize()
	end

	function UI:ColorPicker(name,default,callback)
		local ColorPickerHolder = Instance.new("Frame")
		local main = Instance.new("ImageLabel")
		local apply = Instance.new("ImageButton")
		local TextLabel = Instance.new("TextLabel")
		local Preview = Instance.new("ImageLabel")
		local RGB = Instance.new("ImageButton")
		local Marker = Instance.new("ImageLabel")
		local Value = Instance.new("ImageButton")
		local Marker_2 = Instance.new("Frame")
		local ColorTitle = Instance.new("TextLabel")
		local UIPadding = Instance.new("UIPadding")
		local OpenColorPicker = Instance.new("ImageButton")

		ColorPickerHolder.Name = "ColorPickerHolder"
		ColorPickerHolder.Parent = Container
		ColorPickerHolder.BackgroundColor3 = Color3.fromRGB(110, 58, 200)
		ColorPickerHolder.BackgroundTransparency = 1.000
		ColorPickerHolder.BorderSizePixel = 0
		ColorPickerHolder.Position = UDim2.new(0, 0, 0.5, 0)
		ColorPickerHolder.Size = UDim2.new(0, 210, 0, 35)
		ColorPickerHolder.ZIndex = 2

		main.Name = "main"
		main.Parent = ColorPickerHolder
		main.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		main.BackgroundTransparency = 1.000
		main.Position = UDim2.new(1.04306805, 0, -0.0213998258, 0)
		main.Size = UDim2.new(0, 150, 0, 150)
		main.Visible = false
		main.Image = "rbxassetid://3570695787"
		main.ImageColor3 = Color3.fromRGB(32, 32, 32)
		main.ScaleType = Enum.ScaleType.Slice
		main.SliceCenter = Rect.new(100, 100, 100, 100)
		main.SliceScale = 0.060

		apply.Name = "apply"
		apply.Parent = main
		apply.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		apply.BackgroundTransparency = 1.000
		apply.Position = UDim2.new(0.464000136, 0, 0.793907285, 0)
		apply.Size = UDim2.new(0.0189999901, 72, -0.012006009, 23)
		apply.Image = "rbxassetid://3570695787"
		apply.ImageColor3 = Color3.fromRGB(28, 28, 28)
		apply.ScaleType = Enum.ScaleType.Slice
		apply.SliceCenter = Rect.new(100, 100, 100, 100)
		
		TextLabel.Parent = apply
		TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.BackgroundTransparency = 1.000
		TextLabel.Position = UDim2.new(0, 0, 0.0794200078, 0)
		TextLabel.Size = UDim2.new(1, 0, 0.92057997, 0)
		TextLabel.Font = Enum.Font.Gotham
		TextLabel.Text = "APPLY"
		TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
		TextLabel.TextSize = 12.000

		Preview.Name = "Preview"
		Preview.Parent = main
		Preview.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Preview.BackgroundTransparency = 1.000
		Preview.Position = UDim2.new(0.0800000429, 0, 0.801901221, 0)
		Preview.Size = UDim2.new(0, 20, 0, 20)
		Preview.Image = "rbxassetid://3570695787"
		Preview.ScaleType = Enum.ScaleType.Slice
		Preview.SliceCenter = Rect.new(100, 100, 100, 100)

		RGB.Name = "RGB"
		RGB.Parent = main
		RGB.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		RGB.Position = UDim2.new(0.0799999014, 0, 0.0660000592, 0)
		RGB.Size = UDim2.new(0.636000037, 1, 0.671569288, 1)
		RGB.Image = "rbxassetid://1433361550"

		Marker.Name = "Marker"
		Marker.Parent = RGB
		Marker.AnchorPoint = Vector2.new(0.5, 0.5)
		Marker.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Marker.BackgroundTransparency = 1.000
		Marker.Position = UDim2.new(0.0233191848, 0, 0.965222716, 0)
		Marker.Size = UDim2.new(0, 5, 0, 5)
		Marker.ZIndex = 5
		Marker.Image = "rbxassetid://3570695787"
		Marker.ImageColor3 = Color3.fromRGB(28, 28, 28)
		Marker.ScaleType = Enum.ScaleType.Slice
		Marker.SliceCenter = Rect.new(100, 100, 100, 100)

		Value.Name = "Value"
		Value.Parent = main
		Value.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		Value.BackgroundTransparency = 1.000
		Value.BorderSizePixel = 0
		Value.ClipsDescendants = true
		Value.Position = UDim2.new(0.777532816, 0, 0.0654158592, 0)
		Value.Size = UDim2.new(0.165999994, 1, 0.67900002, 1)
		Value.ZIndex = 3
		Value.Image = "rbxassetid://359311684"

		Marker_2.Name = "Marker"
		Marker_2.Parent = Value
		Marker_2.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
		Marker_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
		Marker_2.BorderSizePixel = 0
		Marker_2.Position = UDim2.new(-0.200239435, 0, 0, 0)
		Marker_2.Size = UDim2.new(0, 33, 0, 4)
		Marker_2.ZIndex = 5

		ColorTitle.Name = "ColorTitle"
		ColorTitle.Parent = ColorPickerHolder
		ColorTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		ColorTitle.BackgroundTransparency = 1.000
		ColorTitle.BorderSizePixel = 0
		ColorTitle.Position = UDim2.new(0, 0, 0.200000003, 0)
		ColorTitle.Size = UDim2.new(0, 202, 0, 21)
		ColorTitle.ZIndex = 6
		ColorTitle.Font = Enum.Font.SourceSansSemibold
		ColorTitle.LineHeight = 1.090
		ColorTitle.Text = name
		ColorTitle.TextColor3 = getgenv().Theme.TextColor
		ColorTitle.TextSize = 16.000
		ColorTitle.TextXAlignment = Enum.TextXAlignment.Left
	
		UIPadding.Parent = ColorTitle
		UIPadding.PaddingLeft = UDim.new(0, 5)

		OpenColorPicker.Name = "OpenColorPicker"
		OpenColorPicker.Parent = ColorPickerHolder
		OpenColorPicker.BackgroundTransparency = 1.000
		OpenColorPicker.ImageColor3 = getgenv().Theme.ColorPickerColor
		OpenColorPicker.Position = UDim2.new(0.866999984, 0, 0.229000002, 0)
		OpenColorPicker.Size = UDim2.new(0, 20, 0, 20)
		OpenColorPicker.ZIndex = 2
		OpenColorPicker.Image = "rbxassetid://3926305904"
		OpenColorPicker.ImageRectOffset = Vector2.new(484, 964)
		OpenColorPicker.ImageRectSize = Vector2.new(36, 36)

		OpenColorPicker.MouseButton1Click:Connect(function()
			for i,v in pairs(ColorPickerHolder:GetChildren()) do
				if v:IsA("ImageLabel") and v.Name == "main" then
					v.Visible = false
				end
			end
			main.Visible = true
		end)

		local player = game.Players.LocalPlayer
		local mouse = player:GetMouse()
	
		local rgb = main:WaitForChild("RGB")
		local value = main:WaitForChild("Value")
		local preview = main:WaitForChild("Preview")
	
		local selectedColor = Color3.fromHSV(1,1,1)
		local colorData = {1,1,1}
	
		OpenColorPicker.MouseButton1Click:Connect(function()
			main.Visible = not main.Visible
		end)
	
		local function setColor(hue,sat,val)
			colorData = {hue or colorData[1],sat or colorData[2],val or colorData[3]}
			selectedColor = Color3.fromHSV(colorData[1],colorData[2],colorData[3])
			preview.ImageColor3 = selectedColor
			value.ImageColor3 = Color3.fromHSV(colorData[1],colorData[2],1)
		end
	
		local function inBounds(frame)
			local x,y = mouse.X - frame.AbsolutePosition.X - 2,mouse.Y - frame.AbsolutePosition.Y - 2
			local maxX,maxY = frame.AbsoluteSize.X,frame.AbsoluteSize.Y
			x = math.clamp(x, 0, maxX);
	    	y = math.clamp(y, 0, maxY);
			return x/maxX,y/maxY
		end
	
		local connnection1;
		local connnection2;
	
		Value.InputEnded:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 then
				if connnection2 then
					connnection2:Disconnect()
					connnection2 = nil
				end
			end
		end)
	
		RGB.InputEnded:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 then
				if connnection1 then
					connnection1:Disconnect()
					connnection1 = nil
				end
			end
		end)

		RGB.MouseButton1Down:Connect(function()
			if connnection1 then
				connnection2:Disconnect()
			end
			connnection1 = game:GetService("RunService").Stepped:Connect(function()
				local x,y = inBounds(rgb)
				if x and y then
					rgb:WaitForChild("Marker"):TweenPosition(UDim2.new(x,1,y,1),"InOut","Sine",.04,true)
					setColor(1 - x,1 - y)
				end
			end)
		end)
	
		Value.MouseButton1Down:Connect(function()
			if connnection2 then
				connnection2:Disconnect()
			end
			connnection2 = game:GetService("RunService").Stepped:Connect(function()
				local x,y = inBounds(value)
				if x and y then
					value:WaitForChild("Marker"):TweenPosition(UDim2.new(0,0,y,-3.5),"InOut","Sine",.04,true)
					setColor(nil,nil,1 - y)
				end
			end)
		end)
	
		apply.MouseButton1Click:Connect(function()
			main.Visible = false
			OpenColorPicker.ImageColor3 = selectedColor;
			callback(selectedColor)
		end)
		UI:Resize()
	end

	function UI:Box(name,callback)
		local BoxHolder = Instance.new("Frame")
		local BoxTitle = Instance.new("TextLabel")
		local UIPadding = Instance.new("UIPadding")
		local Box = Instance.new("TextBox")
		local UIPadding_2 = Instance.new("UIPadding")

		BoxHolder.Name = "BoxHolder"
		BoxHolder.Parent = Container
		BoxHolder.BackgroundColor3 = Color3.fromRGB(110, 58, 200)
		BoxHolder.BackgroundTransparency = 1.000
		BoxHolder.BorderSizePixel = 0
		BoxHolder.Position = UDim2.new(0, 0, 0.5, 0)
		BoxHolder.Size = UDim2.new(0, 210, 0, 35)
		BoxHolder.ZIndex = 2

		BoxTitle.Name = name
		BoxTitle.Parent = BoxHolder
		BoxTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
		BoxTitle.BackgroundTransparency = 1.000
		BoxTitle.BorderSizePixel = 0
		BoxTitle.Position = UDim2.new(0, 0, 0.200000003, 0)
		BoxTitle.Size = UDim2.new(0, 202, 0, 21)
		BoxTitle.ZIndex = 6
		BoxTitle.Font = Enum.Font.SourceSansSemibold
		BoxTitle.LineHeight = 1.090
		BoxTitle.Text = name
		BoxTitle.TextColor3 = getgenv().Theme.TextColor
		BoxTitle.TextSize = 15.000
		BoxTitle.TextXAlignment = Enum.TextXAlignment.Left

		UIPadding.Parent = BoxTitle
		UIPadding.PaddingLeft = UDim.new(0, 5)

		Box.Name = "Box"
		Box.Parent = BoxHolder
		Box.BackgroundColor3 = getgenv().Theme.BoxColor
		Box.BorderSizePixel = 0
		Box.Position = UDim2.new(0.510427713, 0, 0.200000003, 0)
		Box.Size = UDim2.new(0, 95, 0, 21)
		Box.ZIndex = 2
		Box.Font = Enum.Font.SourceSans
		Box.PlaceholderText = "Box"
		Box.Text = ""
		Box.TextColor3 = getgenv().Theme.BoxTextColor
		Box.TextSize = 14.000
		Box.TextXAlignment = Enum.TextXAlignment.Left

		UIPadding_2.Parent = Box
		UIPadding_2.PaddingLeft = UDim.new(0, 2)

		Box.FocusLost:Connect(function(Enter)
			if Enter then
				if Box.Text ~= nil then
					callback(Box.Text)
				end
			end
		end)
		UI:Resize()
	end

    function UI:Bind(name, default, callback)
        local callback = callback or function() end
        local keycodename = default
        local default = default
        local Type = tostring(default):match("UserInputType") and "UserInputType" or "KeyCode"
        keycodename = tostring(keycodename):gsub("Enum.UserInputType.", "")
        keycodename = tostring(keycodename):gsub("Enum.KeyCode.", "")
 
        local KeyBindHolder = Instance.new("Frame")
        local KeyBindTitle = Instance.new("TextLabel")
        local UIPadding = Instance.new("UIPadding")
        local KeyButton = Instance.new("TextButton")
 
        KeyBindHolder.Name = "KeyBindHolder"
        KeyBindHolder.Parent = Container
        KeyBindHolder.BackgroundColor3 = Color3.fromRGB(110, 58, 200)
        KeyBindHolder.BackgroundTransparency = 1.000
        KeyBindHolder.BorderSizePixel = 0
        KeyBindHolder.Position = UDim2.new(0, 0, 0.5, 0)
        KeyBindHolder.Size = UDim2.new(0, 210, 0, 35)
        KeyBindHolder.ZIndex = 2
 
 
        KeyBindTitle.Name = "KeyBindTitle"
        KeyBindTitle.Parent = KeyBindHolder
        KeyBindTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        KeyBindTitle.BackgroundTransparency = 1.000
        KeyBindTitle.BorderSizePixel = 0
        KeyBindTitle.Position = UDim2.new(0, 0, 0.171428576, 0)
        KeyBindTitle.Size = UDim2.new(0, 202, 0, 22)
        KeyBindTitle.ZIndex = 6
        KeyBindTitle.Font = Enum.Font.SourceSansSemibold
        KeyBindTitle.LineHeight = 1.090
        KeyBindTitle.Text = name
        KeyBindTitle.TextColor3 = getgenv().Theme.TextColor
        KeyBindTitle.TextSize = 15.000
        KeyBindTitle.TextXAlignment = Enum.TextXAlignment.Left
 
        UIPadding.Parent = KeyBindTitle
        UIPadding.PaddingLeft = UDim.new(0, 5)
 
        KeyButton.Name = "KeyButton"
        KeyButton.Parent = KeyBindHolder
        KeyButton.BackgroundColor3 = getgenv().Theme.BindColor
        KeyButton.BorderSizePixel = 0
        KeyButton.Position = UDim2.new(0.676190495, 0, 0.171428576, 0)
        KeyButton.Size = UDim2.new(0, 60, 0, 22)
        KeyButton.ZIndex = 6
        KeyButton.Font = Enum.Font.GothamSemibold
        KeyButton.Text = ". . ."
        KeyButton.TextColor3 = getgenv().Theme.BindTextColor
        KeyButton.TextSize = 12.000
 
 
    local WhitelistedType = {
            [Enum.UserInputType.MouseButton1] = "Mouse1";
            [Enum.UserInputType.MouseButton2] = "Mouse2";
            [Enum.UserInputType.MouseButton3] = "Mouse3";
        };
 
        KeyButton.MouseButton1Click:Connect(function()
            local Connection;
 
            KeyButton.Text = ". . .";
 
            Connection = UIS.InputBegan:Connect(function(i)
                if WhitelistedType[i.UserInputType] then
                    KeyButton.Text = WhitelistedType[i.UserInputType];
                    spawn(function()
                        wait(0.1)
                        default = i.UserInputType;
                        Type = "UserInputType";
                    end);
                elseif i.KeyCode ~= Enum.KeyCode.Unknown then
                    KeyButton.Text = tostring(i.KeyCode):gsub("Enum.KeyCode.", "");
                    spawn(function()
                        wait(0.1)
                        default = i.KeyCode;
                        Type = "KeyCode";
                    end);
                else
                    warn("Exception: " .. i.UserInputType .. " " .. i.KeyCode);
                end;
 
               
                Connection:Disconnect();
            end);
        end);
 
        UIS.InputBegan:Connect(function(i)
            if (default == i.UserInputType or default == i.KeyCode) then
                callback(default);
            end;
        end);
 
        UI:Resize()
    end
	return UI;
end
return library
