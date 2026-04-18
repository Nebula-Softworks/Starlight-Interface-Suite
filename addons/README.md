## Addon System for Starlight Gen2

Allows you to load community-made systems/functions into your script when using Starlight.  
Requires environment to have getgenv() library.  
  
### Usage
Boot the Addon Library after loading Starlight:  
```lua
local StarlightAddons = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/starlight-gen2/addon-module"))()
```  
Great! Now we can load any addon we'd like using:  
```lua
StarlightAddons:LoadAddon("@creator/addon_name_here")
```
  
To browse available addons, a list is available in the documentation, as well as a copy of this README.  
  
### Creating your own addon
To create your own addons to add to our Starlight Ecosystem, you must first [create a fork](https://github.com/Nebula-Softworks/Starlight-Interface-Suite/fork) of the repository.  
Then, if it is your first time creating an addon, create a new sub-folder in `addons` with your Github username.  
For example, if I'm creating an addon, I'd make a new folder called `@mrkillinghunt3r`.  If you have done this before, you can skip this step.  
Now, you can simply write your addon in a `.luau` file within that sub-folder. The format should be as follows:  
```lua
return function(Starlight)
    -- you can write anything you wish in this addon
    -- the Starlight variable is the Library of the user.  
    -- you must have this return function format for it to work.
end
```  
Now, create a pull request on [this Github repo](https://github.com/Nebula-Softworks/Starlight-Interface-Suite/) with your changes commited.  
For the pull request to be accepted, no other modifications must be made and the plugin must work!  
Desirably, attach a Markdown file in your pull request for us to upload onto the Documentation's addon browser.  
> This will users who find your addon to understand what it does. It acts like a README for your addon.  

