## Addon System for Starlight Gen2

Allows you to load community-made systems/functions into your script when using Starlight.  
Requires environment to have getgenv() library.  
  
### Usage
Boot the Addon Library after loading Starlight:  
```luau
local StarlightAddons = loadstring(game:HttpGet("https://raw.nebulasoftworks.xyz/starlight-gen2/addon-module"))()
```  
Great! Now we can load any addon we'd like using:  
```luau
-- Variable is optional
local myAddon = StarlightAddons:LoadAddon("@creator/addon_name_here")
```
  
To browse available addons, a list is available in the documentation, as well as a copy of this README.  
  
### Creating your own addon
To create your own addons to add to our **Starlight Ecosystem**, you must first [create a fork](https://github.com/Nebula-Softworks/Starlight-Interface-Suite/fork) of the repository.  
Then, if it is your *first time* creating an addon, create a new sub-folder in `addons` with your **Github username**.  
For example, if I'm creating an addon, I'd make a new folder called `@mrkillinghunt3r`.  If you have done this before, you can skip this step.  
Now, you can simply write your addon in a `.luau` file within that sub-folder. The format should be as follows:  
```luau
return function(Starlight)
    -- you can write anything you wish in this addon
    -- the Starlight variable is the Library of the user.  
    -- you must have this return function format for it to work.

    -- optional return if you have like a user library
    return module
end
```  
Now, create a pull request on [the same Github repo](https://github.com/Nebula-Softworks/Starlight-Interface-Suite/) with your changes commited.  
For the pull request to be accepted, no other modifications must be made and the plugin must work!  
Desirably, attach a Markdown file in your pull request for us to upload onto the Documentation's addon browser.  
> This will help users who find your addon to understand what it does. It acts like a README for your addon.  
  
> [!IMPORTANT]
> Please commit only when you have made significant changes, are ready to push and pull request, and ensure that everything is working 100% fine.  
> This will help us manage commits and pulls better as well as prevent the Commit Count from skyrocketing. If we see that you have too many commits for the amount of change you've done, we will ask you to change. You can create a separate branch with no commits except for one every update and use that to pull request.  
> You are limited to one pull request/update every fortnight, each having a maximum of one commit to be merged in. We thank you in advance for your understanding and cooperation.  
