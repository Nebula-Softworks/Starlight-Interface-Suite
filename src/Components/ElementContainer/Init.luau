local Elements = require("../../Elements")
local Library = require("../../Init")
local Components = require("./..")
local ElementModule = {}
ElementModule.__index = ElementModule

function ElementModule:CreateButton(...)
	local Button = Elements.Button(..., self, Library)
	table.insert(self.Elements, Button)
	return Button
end

function ElementModule:CreateToggle(...)
	local Toggle = Elements.Toggle(..., self, Library)
	table.insert(self.Elements, Toggle)
	return Toggle
end

function ElementModule:CreateSlider(...)
	local Slider = Elements.Slider(..., self, Library)
	table.insert(self.Elements, Slider)
	return Slider
end

function ElementModule:CreateInput(...)
	local Input = Elements.Input(..., self, Library)
	table.insert(self.Elements, Input)
	return Input
end

function ElementModule:CreateDropdown(...)
	local Dropdown = Elements.Dropdown(..., self, Library)
	table.insert(self.Elements, Dropdown)
	return Dropdown
end

function ElementModule:CreateLabel(...)
	local Label = Elements.Label(..., self, Library)
	table.insert(self.Elements, Label)
	return Label
end

function ElementModule:CreateImage(...)
	local Image = Elements.Image(..., self, Library)
	table.insert(self.Elements, Image)
	return Image
end

function ElementModule:CreateViewport(...)
	local Viewport = Elements.Viewport(..., self, Library)
	table.insert(self.Elements, Viewport)
	return Viewport
end

function ElementModule:CreateDependencyBox(...)
	local DependencyBox = Components.ElementContainer.DependencyBox(..., Library)
	table.insert(self.Elements, DependencyBox)
	return DependencyBox
end

return ElementModule
