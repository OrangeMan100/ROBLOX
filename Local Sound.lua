local SoundService = game:GetService("SoundService")

local box = script.Parent.ID

box.FocusLost:Connect(function()
	local sound = Instance.new("Sound")
	
	sound.SoundId = "rbxassetid://"..box.Text
	sound.Parent = SoundService
	
	SoundService:PlayLocalSound(sound)
	sound.Ended:Wait()
	sound:Destroy()
end)
