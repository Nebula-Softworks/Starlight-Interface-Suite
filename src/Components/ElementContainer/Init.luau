local ElementModule = {}
ElementModule.__index = ElementModule

-- ElementModule:CreateButton(...) etc
-- make sure to use self keyword when parenting to .ElementContainer for example
-- use self.Library

return ElementModule
