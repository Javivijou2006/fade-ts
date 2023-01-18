-- Compiled with roblox-ts v2.0.4
-- ----------------LOCAL VARIABLES-----------
local TextBase = { "TextTransparency", "BackgroundTransparency" }
local ImageBase = { "ImageTransparency", "BackgroundTransparency" }
local FrameBase = { "BackgroundTransparency" }
local TypesArray = { "TextLabel", "TextButton", "TextBox", "ViewportFrame", "ImageButton", "ImageLabel", "Frame" }
local PropsArray = { TextBase, TextBase, TextBase, ImageBase, ImageBase, ImageBase, FrameBase }
local TweenService = game:GetService("TweenService")
-- ----------------LOCAL FUNCTIONS-----------
-- ----------------EXPORTS--------------
local function FadeOut(Instance, t)
	-- Variables init (custom method to avoid GC to jump in **STILL TO BE TESTED**)
	local IndexOfElement
	local InstanceType
	local PropsOfElement
	local TI = TweenInfo.new(t, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
	local _exp = Instance:GetDescendants()
	local _arg0 = function(Element)
		InstanceType = Element.ClassName
		local TrueElement
		local _instanceType = InstanceType
		IndexOfElement = (table.find(TypesArray, _instanceType) or 0) - 1 + 1
		repeat
			local _fallthrough = false
			if IndexOfElement == 1 then
				_fallthrough = true
			end
			if _fallthrough or IndexOfElement == 2 then
				_fallthrough = true
			end
			if _fallthrough or IndexOfElement == 3 then
				TrueElement = Element
				TrueElement:SetAttribute("TextTransparencyDefault", TrueElement.TextTransparency)
				TrueElement:SetAttribute("BackgroundTransparencyDefault", TrueElement.BackgroundTransparency)
				TweenService:Create(TrueElement, TI, {
					TextTransparency = 1,
				}):Play()
				TweenService:Create(TrueElement, TI, {
					BackgroundTransparency = 1,
				}):Play()
				break
			end
			if IndexOfElement == 4 then
				_fallthrough = true
			end
			if _fallthrough or IndexOfElement == 5 then
				_fallthrough = true
			end
			if _fallthrough or IndexOfElement == 6 then
				TrueElement = Element
				TrueElement:SetAttribute("ImageTransparencyDefault", TrueElement.ImageTransparency)
				TrueElement:SetAttribute("BackgroundTransparencyDefault", TrueElement.BackgroundTransparency)
				TweenService:Create(TrueElement, TI, {
					ImageTransparency = 1,
				}):Play()
				TweenService:Create(TrueElement, TI, {
					BackgroundTransparency = 1,
				}):Play()
				break
			end
			if IndexOfElement == 7 then
				TrueElement = Element
				TrueElement:SetAttribute("BackgroundTransparencyDefault", TrueElement.BackgroundTransparency)
				TweenService:Create(TrueElement, TI, {
					BackgroundTransparency = 1,
				}):Play()
				break
			end
			break
		until true
	end
	for _k, _v in _exp do
		_arg0(_v, _k - 1, _exp)
	end
end
local function FadeIn(Instance, t)
	-- Variables init (custom method to avoid GC to jump in **STILL TO BE TESTED**)
	local IndexOfElement
	local InstanceType
	local PropsOfElement
	local TI = TweenInfo.new(t, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut)
	local _exp = Instance:GetDescendants()
	local _arg0 = function(Element)
		InstanceType = Element.ClassName
		local TrueElement
		local _instanceType = InstanceType
		IndexOfElement = (table.find(TypesArray, _instanceType) or 0) - 1 + 1
		repeat
			local _fallthrough = false
			if IndexOfElement == 1 then
				_fallthrough = true
			end
			if _fallthrough or IndexOfElement == 2 then
				_fallthrough = true
			end
			if _fallthrough or IndexOfElement == 3 then
				TrueElement = Element
				TweenService:Create(TrueElement, TI, {
					TextTransparency = Element:GetAttribute("TextTransparencyDefault"),
				}):Play()
				TweenService:Create(TrueElement, TI, {
					BackgroundTransparency = Element:GetAttribute("BackgroundTransparencyDefault"),
				}):Play()
				break
			end
			if IndexOfElement == 4 then
				_fallthrough = true
			end
			if _fallthrough or IndexOfElement == 5 then
				_fallthrough = true
			end
			if _fallthrough or IndexOfElement == 6 then
				TrueElement = Element
				TweenService:Create(TrueElement, TI, {
					ImageTransparency = Element:GetAttribute("ImageTransparencyDefault"),
				}):Play()
				TweenService:Create(TrueElement, TI, {
					BackgroundTransparency = Element:GetAttribute("BackgroundTransparencyDefault"),
				}):Play()
				break
			end
			if IndexOfElement == 7 then
				TrueElement = Element
				TweenService:Create(TrueElement, TI, {
					BackgroundTransparency = Element:GetAttribute("BackgroundTransparencyDefault"),
				}):Play()
				break
			end
			break
		until true
	end
	for _k, _v in _exp do
		_arg0(_v, _k - 1, _exp)
	end
end
return {
	FadeOut = FadeOut,
	FadeIn = FadeIn,
}
