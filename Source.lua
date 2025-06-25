--!nocheck
local syn = nil
local getgenv = nil
local gethui = nil
local fluxus = nil
local http = nil
local http_request = nil
local request = nil

--[[

Starlight Interface Suite
by Nebula Softworks


Main Credits

Hunter (Nebula Softworks) | Designing And Programming | Main Developer
JustHey (Nebula Softworks) | Configurations, Programming, Bug Fixing | Co Developer
Pookie Pepelss (Nebula Softworks) | Bug And Feature Testing | Lead Tester
Throit | Color Picker Scripting
Inori | Configuration and Layout Concept and **CONCEPT OF** Config And Theming Addons 


Extra Credits

Latte Softworks and qweery | Lucide Icons And Material Icons
Deity/dp4pv/x64x70/btg/j24 | Certain Scripting and Testing 
The Nebula Softworks Community | Bug Testers And Suggestions For The Project


NOTES:
Starlight is a custom interface suite built from the ground up, meaning scripted and designed from scratch unlike Luna. If any other UIs look like Starlight,
It is pure coincidence (Coming back after writing this, allusive looks like starlight a hella ton, and i didnt even know that lib existed :sob: so yea). 
If you see our logo used anywhere else, please report it to us as I made this logo from scratch and i cannot fucking tolerate other shit
stealing my logos and claiming it as their own, like bloody hell cryptic stole Luna's logo and called it their own, fk you reaper. Besides the credits provided, everything
else was scripted by Me and JustHey from SCRATCH, meaning our brains only and no online references with a minor exception of Luna's Original Code.
The nature of Starlight is a GUI Model based library (and not drawing), meaning the interface is designed in studio as a Roblox game asset, before being published to roblox
and coded via a script. Sirius' Rayfield uses this too, BUT ITS NOT A COPY. Im putting this here because Luna did this as well and while parts were taken from
Rayfield so I could tolerate some of that bs, this was not and I am not tolerating that skidding bs. I dont get how using the same type of library nature is considered skidding.
It Just Happens to be the same. If you're wondering why the model's interface is called Starlight V2, its because i was working on a previous discontinued UI library project in the past and
it was also called Starlight. Some members of the Nebula Softworks Community should know about that, and it was discontinued due to my lack of motivation
and the fact the design was way too complicated to script as a UI library with reusable components. (it was based on apple settings)

For those intending to read the source through, I sincerely apologise for some of the parts which are extremely unorganised/weird/hard to understand.
Main example is the way returning for elements function. Like what? Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements.[ElementSettings.Name] ??!!?!?!
For that instance, it is so we can return everything in a whole table, with everything accessible and linked back to the main library table (and to make accessible outside of creation).
However, once again I apologise. I have added the meanings of some unorthodox/stylised comments below.
I kind of gave up/forgot to comment within the Elements too, so another apology :sob:

PLEASE ALSO NOTE THAT UNLIKE OTHER LIBS (temporarily), STARLIGHT'S INDEXING SYSTEM IS BASED ON NAMES!!
This means please do not use the same name for elements twice as the names are core to the library's system.
 

COMMENT MEANINGS:
A Section is something used to easily identify what a section of code is used for/means
Subsections help to oraganize within subsections, and are smaller, breaking down the code even more

Asterisks in Table Examples mean that the parameter is not required
However, if there are 4 asterisks, it means that requirement of the parameter depends on another parameter
Ellipsis means that unlimited parameters of the template provided are accepted within the table

If you see --!nocheck and a few nil variables below before this, that is for the studio environment. It js means I forgot to remove them before publishing the release.

KNOWN BUGS:
1. Loading Screen is always enabled
|- This is intentional, and is to cover up an actual bug where when there is no loading screen, nothing will load. I am looking into this and will revert the always enabled loading once i figure it out.
2. Slider Textbox Not Accepting Periods (and therefore, decimals)
|- currently finding a way to fix because the old code from Luna does not work, so I completely revamped it and I'm finding a way to allow it while not breaking the code


Starlight Interface Suite
by Nebula Softworks

]]

--// SECTION : Core Variables

local Release = "Testing Prerelease Alpha 1"

local Starlight = {
	Folder = "Starlight UI",
	InterfaceBuild = "ATR1", -- Alpha Testing Release 1
	
	Options = {},
	CurrentTheme = "Dark",
	BlurEnabled = false,
	DialogOpen = false,
	
	WindowKeybind = "K",
	Minimized = false,
	Maximized = false,
	
	Window = nil,
	Instance = nil
}

--// ENDSECTION


--// SECTION : Services And Variables

-- Services
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")
local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")
local Localization = game:GetService("LocalizationService")
local Lighting = game:GetService("Lighting")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Camera = workspace.CurrentCamera
local CoreGui = game:GetService("CoreGui")

local isStudio = RunService:IsStudio() or false
local website = "github.com/Nebula-Softworks"

local IconModule = nil -- This has been replaced by Nebula Icon Library

local Request = (syn and syn.request) or (fluxus and fluxus.request) or (http and http.request) or http_request or request or nil

local function tweenInfo(style : string?, direction : string?, time : number?) 
	style = style or "Exponential"
	direction = direction or "Out"
	time = time or 0.5
	return TweenInfo.new(time, Enum.EasingStyle[style], Enum.EasingDirection[direction])
end

local IconModule = {
	Lucide = nil,
	Material = {
		["perm_media"] = "http://www.roblox.com/asset/?id=6031215982";
		["sticky_note_2"] = "http://www.roblox.com/asset/?id=6031265972";
		["gavel"] = "http://www.roblox.com/asset/?id=6023565902";
		["table_view"] = "http://www.roblox.com/asset/?id=6031233835";
		["home"] = "http://www.roblox.com/asset/?id=6026568195";
		["list"] = "http://www.roblox.com/asset/?id=6026568229";
		["alarm_add"] = "http://www.roblox.com/asset/?id=6023426898";
		["speaker_notes"] = "http://www.roblox.com/asset/?id=6031266001";
		["check_circle_outline"] = "http://www.roblox.com/asset/?id=6023426909";
		["extension"] = "http://www.roblox.com/asset/?id=6023565892";
		["pending"] = "http://www.roblox.com/asset/?id=6031084745";
		["pageview"] = "http://www.roblox.com/asset/?id=6031216007";
		["group_work"] = "http://www.roblox.com/asset/?id=6023565910";
		["zoom_in"] = "http://www.roblox.com/asset/?id=6031075573";
		["aspect_ratio"] = "http://www.roblox.com/asset/?id=6022668895";
		["code"] = "http://www.roblox.com/asset/?id=6022668955";
		["3d_rotation"] = "http://www.roblox.com/asset/?id=6022668893";
		["translate"] = "http://www.roblox.com/asset/?id=6031225812";
		["star_rate"] = "http://www.roblox.com/asset/?id=6031265978";
		["system_update_alt"] = "http://www.roblox.com/asset/?id=6031251515";
		["open_with"] = "http://www.roblox.com/asset/?id=6026568265";
		["build_circle"] = "http://www.roblox.com/asset/?id=6023426952";
		["toc"] = "http://www.roblox.com/asset/?id=6031229341";
		["settings_phone"] = "http://www.roblox.com/asset/?id=6031289445";
		["open_in_full"] = "http://www.roblox.com/asset/?id=6026568245";
		["history"] = "http://www.roblox.com/asset/?id=6026568197";
		["accessibility_new"] = "http://www.roblox.com/asset/?id=6022668945";
		["hourglass_disabled"] = "http://www.roblox.com/asset/?id=6026568193";
		["line_style"] = "http://www.roblox.com/asset/?id=6026568276";
		["account_circle"] = "http://www.roblox.com/asset/?id=6022668898";
		["settings_cell"] = "http://www.roblox.com/asset/?id=6031280890";
		["search_off"] = "http://www.roblox.com/asset/?id=6031260783";
		["shop"] = "http://www.roblox.com/asset/?id=6031265983";
		["anchor"] = "http://www.roblox.com/asset/?id=6023426906";
		["language"] = "http://www.roblox.com/asset/?id=6026568213";
		["settings_brightness"] = "http://www.roblox.com/asset/?id=6031280902";
		["restore_page"] = "http://www.roblox.com/asset/?id=6031154877";
		["chrome_reader_mode"] = "http://www.roblox.com/asset/?id=6023426912";
		["sync_alt"] = "http://www.roblox.com/asset/?id=6031233840";
		["book"] = "http://www.roblox.com/asset/?id=6022860343";
		["smart_button"] = "http://www.roblox.com/asset/?id=6031265962";
		["request_page"] = "http://www.roblox.com/asset/?id=6031154873";
		["lock_clock"] = "http://www.roblox.com/asset/?id=6026568260";
		["android"] = "http://www.roblox.com/asset/?id=6022668966";
		["outgoing_mail"] = "http://www.roblox.com/asset/?id=6026568242";
		["dynamic_form"] = "http://www.roblox.com/asset/?id=6023426970";
		["track_changes"] = "http://www.roblox.com/asset/?id=6031225814";
		["source"] = "http://www.roblox.com/asset/?id=6031289451";
		["thumb_down"] = "http://www.roblox.com/asset/?id=6031229336";
		["integration_instructions"] = "http://www.roblox.com/asset/?id=6026568214";
		["opacity"] = "http://www.roblox.com/asset/?id=6026568295";
		["perm_identity"] = "http://www.roblox.com/asset/?id=6031215978";
		["view_module"] = "http://www.roblox.com/asset/?id=6031079152";
		["perm_data_setting"] = "http://www.roblox.com/asset/?id=6031215991";
		["assignment_turned_in"] = "http://www.roblox.com/asset/?id=6023426904";
		["change_history"] = "http://www.roblox.com/asset/?id=6023426914";
		["thumb_down_off_alt"] = "http://www.roblox.com/asset/?id=6031229354";
		["text_rotation_angledown"] = "http://www.roblox.com/asset/?id=6031251513";
		["bookmark"] = "http://www.roblox.com/asset/?id=6022852108";
		["view_stream"] = "http://www.roblox.com/asset/?id=6031079164";
		["remove_done"] = "http://www.roblox.com/asset/?id=6031086169";
		["markunread_mailbox"] = "http://www.roblox.com/asset/?id=6031082531";
		["store"] = "http://www.roblox.com/asset/?id=6031265968";
		["text_rotation_angleup"] = "http://www.roblox.com/asset/?id=6031229337";
		["eco"] = "http://www.roblox.com/asset/?id=6023426988";
		["find_in_page"] = "http://www.roblox.com/asset/?id=6023426986";
		["api"] = "http://www.roblox.com/asset/?id=6022668911";
		["launch"] = "http://www.roblox.com/asset/?id=6026568211";
		["text_rotation_down"] = "http://www.roblox.com/asset/?id=6031229334";
		["flip_to_back"] = "http://www.roblox.com/asset/?id=6023565896";
		["contact_page"] = "http://www.roblox.com/asset/?id=6022668881";
		["preview"] = "http://www.roblox.com/asset/?id=6031260793";
		["restore"] = "http://www.roblox.com/asset/?id=6031260800";
		["favorite_border"] = "http://www.roblox.com/asset/?id=6023565882";
		["assignment_late"] = "http://www.roblox.com/asset/?id=6022668880";
		["youtube_searched_for"] = "http://www.roblox.com/asset/?id=6031075934";
		["hourglass_full"] = "http://www.roblox.com/asset/?id=6026568190";
		["timeline"] = "http://www.roblox.com/asset/?id=6031229350";
		["turned_in"] = "http://www.roblox.com/asset/?id=6031225808";
		["info"] = "http://www.roblox.com/asset/?id=6026568227";
		["restore_from_trash"] = "http://www.roblox.com/asset/?id=6031154869";
		["arrow_circle_down"] = "http://www.roblox.com/asset/?id=6022668877";
		["flaky"] = "http://www.roblox.com/asset/?id=6031082523";
		["alarm_on"] = "http://www.roblox.com/asset/?id=6023426920";
		["swap_vertical_circle"] = "http://www.roblox.com/asset/?id=6031233839";
		["open_in_new"] = "http://www.roblox.com/asset/?id=6026568256";
		["watch_later"] = "http://www.roblox.com/asset/?id=6031075924";
		["alarm_off"] = "http://www.roblox.com/asset/?id=6023426901";
		["maximize"] = "http://www.roblox.com/asset/?id=6026568267";
		["lock_outline"] = "http://www.roblox.com/asset/?id=6031082533";
		["outbond"] = "http://www.roblox.com/asset/?id=6026568244";
		["view_carousel"] = "http://www.roblox.com/asset/?id=6031251507";
		["published_with_changes"] = "http://www.roblox.com/asset/?id=6031243328";
		["verified_user"] = "http://www.roblox.com/asset/?id=6031225819";
		["drag_indicator"] = "http://www.roblox.com/asset/?id=6023426962";
		["lightbulb_outline"] = "http://www.roblox.com/asset/?id=6026568254";
		["segment"] = "http://www.roblox.com/asset/?id=6031260773";
		["assignment"] = "http://www.roblox.com/asset/?id=6022668882";
		["work_outline"] = "http://www.roblox.com/asset/?id=6031075930";
		["line_weight"] = "http://www.roblox.com/asset/?id=6026568226";
		["dangerous"] = "http://www.roblox.com/asset/?id=6022668916";
		["assessment"] = "http://www.roblox.com/asset/?id=6022668897";
		["view_day"] = "http://www.roblox.com/asset/?id=6031079153";
		["help_center"] = "http://www.roblox.com/asset/?id=6026568192";
		["logout"] = "http://www.roblox.com/asset/?id=6031082522";
		["event"] = "http://www.roblox.com/asset/?id=6023426959";
		["get_app"] = "http://www.roblox.com/asset/?id=6023565889";
		["tab"] = "http://www.roblox.com/asset/?id=6031233851";
		["label"] = "http://www.roblox.com/asset/?id=6031082525";
		["g_translate"] = "http://www.roblox.com/asset/?id=6031082526";
		["view_week"] = "http://www.roblox.com/asset/?id=6031079154";
		["view_in_ar"] = "http://www.roblox.com/asset/?id=6031079158";
		["card_travel"] = "http://www.roblox.com/asset/?id=6023426925";
		["lock_open"] = "http://www.roblox.com/asset/?id=6026568220";
		["voice_over_off"] = "http://www.roblox.com/asset/?id=6031075927";
		["app_blocking"] = "http://www.roblox.com/asset/?id=6022668952";
		["settings_ethernet"] = "http://www.roblox.com/asset/?id=6031280883";
		["supervised_user_circle"] = "http://www.roblox.com/asset/?id=6031289449";
		["done_all"] = "http://www.roblox.com/asset/?id=6023426929";
		["lightbulb"] = "http://www.roblox.com/asset/?id=6026568247";
		["find_replace"] = "http://www.roblox.com/asset/?id=6023426979";
		["bookmarks"] = "http://www.roblox.com/asset/?id=6023426924";
		["today"] = "http://www.roblox.com/asset/?id=6031229352";
		["class"] = "http://www.roblox.com/asset/?id=6022668949";
		["supervisor_account"] = "http://www.roblox.com/asset/?id=6031251516";
		["support"] = "http://www.roblox.com/asset/?id=6031251532";
		["done_outline"] = "http://www.roblox.com/asset/?id=6023426936";
		["reorder"] = "http://www.roblox.com/asset/?id=6031154868";
		["fact_check"] = "http://www.roblox.com/asset/?id=6023426951";
		["thumb_up"] = "http://www.roblox.com/asset/?id=6031229347";
		["assignment_returned"] = "http://www.roblox.com/asset/?id=6023426899";
		["card_giftcard"] = "http://www.roblox.com/asset/?id=6023426978";
		["trending_down"] = "http://www.roblox.com/asset/?id=6031225811";
		["settings_backup_restore"] = "http://www.roblox.com/asset/?id=6031280886";
		["settings_voice"] = "http://www.roblox.com/asset/?id=6031265966";
		["dns"] = "http://www.roblox.com/asset/?id=6023426958";
		["perm_scan_wifi"] = "http://www.roblox.com/asset/?id=6031215985";
		["plagiarism"] = "http://www.roblox.com/asset/?id=6031243320";
		["commute"] = "http://www.roblox.com/asset/?id=6022668901";
		["gif"] = "http://www.roblox.com/asset/?id=6031082540";
		["work"] = "http://www.roblox.com/asset/?id=6031075939";
		["picture_in_picture_alt"] = "http://www.roblox.com/asset/?id=6031215979";
		["query_builder"] = "http://www.roblox.com/asset/?id=6031086183";
		["label_off"] = "http://www.roblox.com/asset/?id=6026568209";
		["all_out"] = "http://www.roblox.com/asset/?id=6022668876";
		["article"] = "http://www.roblox.com/asset/?id=6022668907";
		["shopping_basket"] = "http://www.roblox.com/asset/?id=6031265997";
		["mark_as_unread"] = "http://www.roblox.com/asset/?id=6026568223";
		["work_off"] = "http://www.roblox.com/asset/?id=6031075937";
		["delete_outline"] = "http://www.roblox.com/asset/?id=6022668962";
		["account_box"] = "http://www.roblox.com/asset/?id=6023426915";
		["home_filled"] = "rbxassetid://9080449299";
		["lock"] = "http://www.roblox.com/asset/?id=6026568224";
		["perm_device_information"] = "http://www.roblox.com/asset/?id=6031215996";
		["add_task"] = "http://www.roblox.com/asset/?id=6022668912";
		["text_rotate_up"] = "http://www.roblox.com/asset/?id=6031251526";
		["swipe"] = "http://www.roblox.com/asset/?id=6031233863";
		["eject"] = "http://www.roblox.com/asset/?id=6023426930";
		["mediation"] = "http://www.roblox.com/asset/?id=6026568249";
		["label_important_outline"] = "http://www.roblox.com/asset/?id=6026568199";
		["settings_remote"] = "http://www.roblox.com/asset/?id=6031289442";
		["history_toggle_off"] = "http://www.roblox.com/asset/?id=6026568196";
		["invert_colors"] = "http://www.roblox.com/asset/?id=6026568253";
		["visibility_off"] = "http://www.roblox.com/asset/?id=6031075929";
		["addchart"] = "http://www.roblox.com/asset/?id=6023426905";
		["cancel_schedule_send"] = "http://www.roblox.com/asset/?id=6022668963";
		["loyalty"] = "http://www.roblox.com/asset/?id=6026568237";
		["speaker_notes_off"] = "http://www.roblox.com/asset/?id=6031265965";
		["online_prediction"] = "http://www.roblox.com/asset/?id=6026568239";
		["remove_shopping_cart"] = "http://www.roblox.com/asset/?id=6031260778";
		["text_rotate_vertical"] = "http://www.roblox.com/asset/?id=6031251518";
		["visibility"] = "http://www.roblox.com/asset/?id=6031075931";
		["add_to_drive"] = "http://www.roblox.com/asset/?id=6022860335";
		["accessible"] = "http://www.roblox.com/asset/?id=6022668902";
		["bookmark_border"] = "http://www.roblox.com/asset/?id=6022860339";
		["tour"] = "http://www.roblox.com/asset/?id=6031229362";
		["compare_arrows"] = "http://www.roblox.com/asset/?id=6022668951";
		["view_sidebar"] = "http://www.roblox.com/asset/?id=6031079160";
		["face"] = "http://www.roblox.com/asset/?id=6023426944";
		["wysiwyg"] = "http://www.roblox.com/asset/?id=6031075938";
		["camera_enhance"] = "http://www.roblox.com/asset/?id=6023426935";
		["perm_camera_mic"] = "http://www.roblox.com/asset/?id=6031215983";
		["model_training"] = "http://www.roblox.com/asset/?id=6026568222";
		["arrow_circle_up"] = "http://www.roblox.com/asset/?id=6022668934";
		["euro_symbol"] = "http://www.roblox.com/asset/?id=6023426954";
		["pending_actions"] = "http://www.roblox.com/asset/?id=6031260777";
		["not_accessible"] = "http://www.roblox.com/asset/?id=6026568269";
		["explore_off"] = "http://www.roblox.com/asset/?id=6023426953";
		["build"] = "http://www.roblox.com/asset/?id=6023426938";
		["backup"] = "http://www.roblox.com/asset/?id=6023426911";
		["settings_input_antenna"] = "http://www.roblox.com/asset/?id=6031280891";
		["disabled_by_default"] = "http://www.roblox.com/asset/?id=6023426939";
		["upgrade"] = "http://www.roblox.com/asset/?id=6031225815";
		["contactless"] = "http://www.roblox.com/asset/?id=6022668886";
		["trending_flat"] = "http://www.roblox.com/asset/?id=6031225818";
		["schedule"] = "http://www.roblox.com/asset/?id=6031260808";
		["offline_pin"] = "http://www.roblox.com/asset/?id=6031084770";
		["date_range"] = "http://www.roblox.com/asset/?id=6022668894";
		["flight_land"] = "http://www.roblox.com/asset/?id=6023565897";
		["view_headline"] = "http://www.roblox.com/asset/?id=6031079151";
		["cached"] = "http://www.roblox.com/asset/?id=6023426921";
		["unpublished"] = "http://www.roblox.com/asset/?id=6031225817";
		["outlet"] = "http://www.roblox.com/asset/?id=6031084748";
		["favorite"] = "http://www.roblox.com/asset/?id=6023426974";
		["vertical_split"] = "http://www.roblox.com/asset/?id=6031225820";
		["report_problem"] = "http://www.roblox.com/asset/?id=6031086176";
		["fingerprint"] = "http://www.roblox.com/asset/?id=6023565895";
		["important_devices"] = "http://www.roblox.com/asset/?id=6026568202";
		["outbox"] = "http://www.roblox.com/asset/?id=6026568263";
		["all_inbox"] = "http://www.roblox.com/asset/?id=6022668909";
		["label_important"] = "http://www.roblox.com/asset/?id=6026568215";
		["print"] = "http://www.roblox.com/asset/?id=6031243324";
		["settings_bluetooth"] = "http://www.roblox.com/asset/?id=6031280905";
		["power_settings_new"] = "http://www.roblox.com/asset/?id=6031260781";
		["zoom_out"] = "http://www.roblox.com/asset/?id=6031075577";
		["stars"] = "http://www.roblox.com/asset/?id=6031265971";
		["offline_bolt"] = "http://www.roblox.com/asset/?id=6031084742";
		["feedback"] = "http://www.roblox.com/asset/?id=6023426957";
		["accessibility"] = "http://www.roblox.com/asset/?id=6022668887";
		["announcement"] = "http://www.roblox.com/asset/?id=6022668946";
		["settings_input_hdmi"] = "http://www.roblox.com/asset/?id=6031280970";
		["leaderboard"] = "http://www.roblox.com/asset/?id=6026568216";
		["view_quilt"] = "http://www.roblox.com/asset/?id=6031079155";
		["note_add"] = "http://www.roblox.com/asset/?id=6031084749";
		["theaters"] = "http://www.roblox.com/asset/?id=6031229335";
		["alarm"] = "http://www.roblox.com/asset/?id=6023426910";
		["settings_input_composite"] = "http://www.roblox.com/asset/?id=6031280896";
		["grade"] = "http://www.roblox.com/asset/?id=6026568189";
		["tab_unselected"] = "http://www.roblox.com/asset/?id=6031251505";
		["swap_vert"] = "http://www.roblox.com/asset/?id=6031233847";
		["assignment_return"] = "http://www.roblox.com/asset/?id=6023426931";
		["highlight_alt"] = "http://www.roblox.com/asset/?id=6023565913";
		["shopping_bag"] = "http://www.roblox.com/asset/?id=6031265970";
		["contact_support"] = "http://www.roblox.com/asset/?id=6022668879";
		["flip_to_front"] = "http://www.roblox.com/asset/?id=6023565894";
		["touch_app"] = "http://www.roblox.com/asset/?id=6031229361";
		["room"] = "http://www.roblox.com/asset/?id=6031154875";
		["send_and_archive"] = "http://www.roblox.com/asset/?id=6031280889";
		["view_array"] = "http://www.roblox.com/asset/?id=6031225842";
		["settings_power"] = "http://www.roblox.com/asset/?id=6031289446";
		["admin_panel_settings"] = "http://www.roblox.com/asset/?id=6022668961";
		["open_in_browser"] = "http://www.roblox.com/asset/?id=6026568266";
		["card_membership"] = "http://www.roblox.com/asset/?id=6023426942";
		["rule"] = "http://www.roblox.com/asset/?id=6031154859";
		["schedule_send"] = "http://www.roblox.com/asset/?id=6031154866";
		["calendar_today"] = "http://www.roblox.com/asset/?id=6022668917";
		["info_outline"] = "http://www.roblox.com/asset/?id=6026568210";
		["description"] = "http://www.roblox.com/asset/?id=6022668888";
		["dashboard_customize"] = "http://www.roblox.com/asset/?id=6022668899";
		["rowing"] = "http://www.roblox.com/asset/?id=6031154857";
		["swap_horizontal_circle"] = "http://www.roblox.com/asset/?id=6031233833";
		["account_balance_wallet"] = "http://www.roblox.com/asset/?id=6022668892";
		["view_agenda"] = "http://www.roblox.com/asset/?id=6031225831";
		["shop_two"] = "http://www.roblox.com/asset/?id=6031289461";
		["done"] = "http://www.roblox.com/asset/?id=6023426926";
		["circle_notifications"] = "http://www.roblox.com/asset/?id=6023426923";
		["compress"] = "http://www.roblox.com/asset/?id=6022668878";
		["calendar_view_day"] = "http://www.roblox.com/asset/?id=6023426946";
		["thumbs_up_down"] = "http://www.roblox.com/asset/?id=6031229373";
		["account_balance"] = "http://www.roblox.com/asset/?id=6022668900";
		["play_for_work"] = "http://www.roblox.com/asset/?id=6031260776";
		["pets"] = "http://www.roblox.com/asset/?id=6031260782";
		["view_column"] = "http://www.roblox.com/asset/?id=6031079172";
		["search"] = "http://www.roblox.com/asset/?id=6031154871";
		["autorenew"] = "http://www.roblox.com/asset/?id=6023565901";
		["copyright"] = "http://www.roblox.com/asset/?id=6023565898";
		["privacy_tip"] = "http://www.roblox.com/asset/?id=6031260784";
		["arrow_right_alt"] = "http://www.roblox.com/asset/?id=6022668890";
		["delete"] = "http://www.roblox.com/asset/?id=6022668885";
		["nightlight_round"] = "http://www.roblox.com/asset/?id=6031084743";
		["batch_prediction"] = "http://www.roblox.com/asset/?id=6022860334";
		["shopping_cart"] = "http://www.roblox.com/asset/?id=6031265976";
		["login"] = "http://www.roblox.com/asset/?id=6031082527";
		["settings_input_svideo"] = "http://www.roblox.com/asset/?id=6031289444";
		["payment"] = "http://www.roblox.com/asset/?id=6031084751";
		["update"] = "http://www.roblox.com/asset/?id=6031225810";
		["text_rotation_none"] = "http://www.roblox.com/asset/?id=6031229344";
		["perm_contact_calendar"] = "http://www.roblox.com/asset/?id=6031215990";
		["explore"] = "http://www.roblox.com/asset/?id=6023426941";
		["delete_forever"] = "http://www.roblox.com/asset/?id=6022668939";
		["rounded_corner"] = "http://www.roblox.com/asset/?id=6031154861";
		["book_online"] = "http://www.roblox.com/asset/?id=6022860332";
		["quickreply"] = "http://www.roblox.com/asset/?id=6031243319";
		["bug_report"] = "http://www.roblox.com/asset/?id=6022852107";
		["subtitles_off"] = "http://www.roblox.com/asset/?id=6031289466";
		["close_fullscreen"] = "http://www.roblox.com/asset/?id=6023426928";
		["horizontal_split"] = "http://www.roblox.com/asset/?id=6026568194";
		["minimize"] = "http://www.roblox.com/asset/?id=6026568240";
		["filter_list_alt"] = "http://www.roblox.com/asset/?id=6023426955";
		["add_shopping_cart"] = "http://www.roblox.com/asset/?id=6022668875";
		["next_plan"] = "http://www.roblox.com/asset/?id=6026568231";
		["view_list"] = "http://www.roblox.com/asset/?id=6031079156";
		["receipt"] = "http://www.roblox.com/asset/?id=6031086173";
		["polymer"] = "http://www.roblox.com/asset/?id=6031260785";
		["spellcheck"] = "http://www.roblox.com/asset/?id=6031289450";
		["wifi_protected_setup"] = "http://www.roblox.com/asset/?id=6031075926";
		["label_outline"] = "http://www.roblox.com/asset/?id=6026568207";
		["highlight_off"] = "http://www.roblox.com/asset/?id=6023565916";
		["turned_in_not"] = "http://www.roblox.com/asset/?id=6031225806";
		["edit_off"] = "http://www.roblox.com/asset/?id=6023426983";
		["question_answer"] = "http://www.roblox.com/asset/?id=6031086172";
		["settings_overscan"] = "http://www.roblox.com/asset/?id=6031289459";
		["trending_up"] = "http://www.roblox.com/asset/?id=6031225816";
		["verified"] = "http://www.roblox.com/asset/?id=6031225809";
		["flight_takeoff"] = "http://www.roblox.com/asset/?id=6023565891";
		["grading"] = "http://www.roblox.com/asset/?id=6026568191";
		["dashboard"] = "http://www.roblox.com/asset/?id=6022668883";
		["expand"] = "http://www.roblox.com/asset/?id=6022668891";
		["backup_table"] = "http://www.roblox.com/asset/?id=6022860338";
		["analytics"] = "http://www.roblox.com/asset/?id=6022668884";
		["picture_in_picture"] = "http://www.roblox.com/asset/?id=6031215994";
		["settings"] = "http://www.roblox.com/asset/?id=6031280882";
		["accessible_forward"] = "http://www.roblox.com/asset/?id=6022668906";
		["pan_tool"] = "http://www.roblox.com/asset/?id=6031084771";
		["https"] = "http://www.roblox.com/asset/?id=6026568200";
		["filter_alt"] = "http://www.roblox.com/asset/?id=6023426984";
		["thumb_up_off_alt"] = "http://www.roblox.com/asset/?id=6031229342";
		["record_voice_over"] = "http://www.roblox.com/asset/?id=6031243318";
		["help_outline"] = "http://www.roblox.com/asset/?id=6026568201";
		["check_circle"] = "http://www.roblox.com/asset/?id=6023426945";
		["comment_bank"] = "http://www.roblox.com/asset/?id=6023426937";
		["perm_phone_msg"] = "http://www.roblox.com/asset/?id=6031215986";
		["settings_applications"] = "http://www.roblox.com/asset/?id=6031280894";
		["exit_to_app"] = "http://www.roblox.com/asset/?id=6023426922";
		["saved_search"] = "http://www.roblox.com/asset/?id=6031154867";
		["toll"] = "http://www.roblox.com/asset/?id=6031229343";
		["not_started"] = "http://www.roblox.com/asset/?id=6026568232";
		["subject"] = "http://www.roblox.com/asset/?id=6031289452";
		["redeem"] = "http://www.roblox.com/asset/?id=6031086170";
		["input"] = "http://www.roblox.com/asset/?id=6026568225";
		["settings_input_component"] = "http://www.roblox.com/asset/?id=6031280884";
		["assignment_ind"] = "http://www.roblox.com/asset/?id=6022668935";
		["swap_horiz"] = "http://www.roblox.com/asset/?id=6031233841";
		["fullscreen"] = "http://www.roblox.com/asset/?id=6031094681";
		["cancel"] = "http://www.roblox.com/asset/?id=6031094677";
		["subdirectory_arrow_left"] = "http://www.roblox.com/asset/?id=6031104654";
		["close"] = "http://www.roblox.com/asset/?id=6031094678";
		["arrow_back_ios"] = "http://www.roblox.com/asset/?id=6031091003";
		["east"] = "http://www.roblox.com/asset/?id=6031094675";
		["unfold_more"] = "http://www.roblox.com/asset/?id=6031104644";
		["south"] = "http://www.roblox.com/asset/?id=6031104646";
		["arrow_drop_up"] = "http://www.roblox.com/asset/?id=6031090990";
		["arrow_back"] = "http://www.roblox.com/asset/?id=6031091000";
		["arrow_downward"] = "http://www.roblox.com/asset/?id=6031090991";
		["west"] = "http://www.roblox.com/asset/?id=6031104677";
		["legend_toggle"] = "http://www.roblox.com/asset/?id=6031097233";
		["fullscreen_exit"] = "http://www.roblox.com/asset/?id=6031094691";
		["last_page"] = "http://www.roblox.com/asset/?id=6031094686";
		["switch_right"] = "http://www.roblox.com/asset/?id=6031104649";
		["check"] = "http://www.roblox.com/asset/?id=6031094667";
		["home_work"] = "http://www.roblox.com/asset/?id=6031094683";
		["north_east"] = "http://www.roblox.com/asset/?id=6031097228";
		["double_arrow"] = "http://www.roblox.com/asset/?id=6031094674";
		["more_vert"] = "http://www.roblox.com/asset/?id=6031104648";
		["chevron_left"] = "http://www.roblox.com/asset/?id=6031094670";
		["more_horiz"] = "http://www.roblox.com/asset/?id=6031104650";
		["unfold_less"] = "http://www.roblox.com/asset/?id=6031104681";
		["first_page"] = "http://www.roblox.com/asset/?id=6031094682";
		["payments"] = "http://www.roblox.com/asset/?id=6031097227";
		["arrow_right"] = "http://www.roblox.com/asset/?id=6031090994";
		["offline_share"] = "http://www.roblox.com/asset/?id=6031097267";
		["south_west"] = "http://www.roblox.com/asset/?id=6031104652";
		["expand_less"] = "http://www.roblox.com/asset/?id=6031094679";
		["south_east"] = "http://www.roblox.com/asset/?id=6031104642";
		["assistant_navigation"] = "http://www.roblox.com/asset/?id=6031091006";
		["apps"] = "http://www.roblox.com/asset/?id=6031090999";
		["arrow_upward"] = "http://www.roblox.com/asset/?id=6031090997";
		["app_settings_alt"] = "http://www.roblox.com/asset/?id=6031090998";
		["subdirectory_arrow_right"] = "http://www.roblox.com/asset/?id=6031104647";
		["north_west"] = "http://www.roblox.com/asset/?id=6031104630";
		["switch_left"] = "http://www.roblox.com/asset/?id=6031104651";
		["chevron_right"] = "http://www.roblox.com/asset/?id=6031094680";
		["arrow_forward"] = "http://www.roblox.com/asset/?id=6031090995";
		["arrow_forward_ios"] = "http://www.roblox.com/asset/?id=6031091008";
		["arrow_drop_down"] = "http://www.roblox.com/asset/?id=6031091004";
		["refresh"] = "http://www.roblox.com/asset/?id=6031097226";
		["pivot_table_chart"] = "http://www.roblox.com/asset/?id=6031097234";
		["expand_more"] = "http://www.roblox.com/asset/?id=6031094687";
		["campaign"] = "http://www.roblox.com/asset/?id=6031094666";
		["arrow_left"] = "http://www.roblox.com/asset/?id=6031091002";
		["arrow_drop_down_circle"] = "http://www.roblox.com/asset/?id=6031091001";
		["menu_open"] = "http://www.roblox.com/asset/?id=6031097229";
		["waterfall_chart"] = "http://www.roblox.com/asset/?id=6031104632";
		["assistant_direction"] = "http://www.roblox.com/asset/?id=6031091005";
		["menu"] = "http://www.roblox.com/asset/?id=6031097225";
		["personal_video"] = "http://www.roblox.com/asset/?id=6034457070";
		["power_off"] = "http://www.roblox.com/asset/?id=6034457087";
		["wifi_off"] = "http://www.roblox.com/asset/?id=6034461625";
		["adb"] = "http://www.roblox.com/asset/?id=6034418515";
		["airline_seat_recline_normal"] = "http://www.roblox.com/asset/?id=6034418512";
		["sync_problem"] = "http://www.roblox.com/asset/?id=6034452653";
		["network_check"] = "http://www.roblox.com/asset/?id=6034461631";
		["event_busy"] = "http://www.roblox.com/asset/?id=6034439634";
		["airline_seat_flat"] = "http://www.roblox.com/asset/?id=6034418511";
		["disc_full"] = "http://www.roblox.com/asset/?id=6034418518";
		["sd_card"] = "http://www.roblox.com/asset/?id=6034457089";
		["time_to_leave"] = "http://www.roblox.com/asset/?id=6034452660";
		["phone_bluetooth_speaker"] = "http://www.roblox.com/asset/?id=6034457057";
		["phone_paused"] = "http://www.roblox.com/asset/?id=6034457066";
		["phone_locked"] = "http://www.roblox.com/asset/?id=6034457058";
		["more"] = "http://www.roblox.com/asset/?id=6034461627";
		["add_call"] = "http://www.roblox.com/asset/?id=6034418524";
		["account_tree"] = "http://www.roblox.com/asset/?id=6034418507";
		["do_not_disturb_on"] = "http://www.roblox.com/asset/?id=6034439649";
		["event_note"] = "http://www.roblox.com/asset/?id=6034439637";
		["sync_disabled"] = "http://www.roblox.com/asset/?id=6034452649";
		["mms"] = "http://www.roblox.com/asset/?id=6034461621";
		["airline_seat_flat_angled"] = "http://www.roblox.com/asset/?id=6034418513";
		["bluetooth_audio"] = "http://www.roblox.com/asset/?id=6034418522";
		["vibration"] = "http://www.roblox.com/asset/?id=6034452651";
		["system_update"] = "http://www.roblox.com/asset/?id=6034452663";
		["enhanced_encryption"] = "http://www.roblox.com/asset/?id=6034439652";
		["wc"] = "http://www.roblox.com/asset/?id=6034452643";
		["live_tv"] = "http://www.roblox.com/asset/?id=6034439648";
		["folder_special"] = "http://www.roblox.com/asset/?id=6034439639";
		["phone_missed"] = "http://www.roblox.com/asset/?id=6034457056";
		["airline_seat_recline_extra"] = "http://www.roblox.com/asset/?id=6034418528";
		["sms"] = "http://www.roblox.com/asset/?id=6034452645";
		["tap_and_play"] = "http://www.roblox.com/asset/?id=6034452650";
		["confirmation_number"] = "http://www.roblox.com/asset/?id=6034418519";
		["event_available"] = "http://www.roblox.com/asset/?id=6034439643";
		["sms_failed"] = "http://www.roblox.com/asset/?id=6034452676";
		["do_not_disturb_alt"] = "http://www.roblox.com/asset/?id=6034461619";
		["do_not_disturb"] = "http://www.roblox.com/asset/?id=6034439645";
		["ondemand_video"] = "http://www.roblox.com/asset/?id=6034457065";
		["no_encryption"] = "http://www.roblox.com/asset/?id=6034457059";
		["airline_seat_legroom_extra"] = "http://www.roblox.com/asset/?id=6034418508";
		["tv_off"] = "http://www.roblox.com/asset/?id=6034452646";
		["sim_card_alert"] = "http://www.roblox.com/asset/?id=6034452641";
		["airline_seat_legroom_normal"] = "http://www.roblox.com/asset/?id=6034418532";
		["wifi"] = "http://www.roblox.com/asset/?id=6034461626";
		["do_not_disturb_off"] = "http://www.roblox.com/asset/?id=6034439642";
		["imagesearch_roller"] = "http://www.roblox.com/asset/?id=6034439635";
		["power"] = "http://www.roblox.com/asset/?id=6034457105";
		["airline_seat_legroom_reduced"] = "http://www.roblox.com/asset/?id=6034418520";
		["phone_in_talk"] = "http://www.roblox.com/asset/?id=6034457067";
		["airline_seat_individual_suite"] = "http://www.roblox.com/asset/?id=6034418514";
		["priority_high"] = "http://www.roblox.com/asset/?id=6034457092";
		["phone_callback"] = "http://www.roblox.com/asset/?id=6034457104";
		["phone_forwarded"] = "http://www.roblox.com/asset/?id=6034457106";
		["sync"] = "http://www.roblox.com/asset/?id=6034452662";
		["vpn_lock"] = "http://www.roblox.com/asset/?id=6034452648";
		["support_agent"] = "http://www.roblox.com/asset/?id=6034452656";
		["network_locked"] = "http://www.roblox.com/asset/?id=6034457064";
		["directions_off"] = "http://www.roblox.com/asset/?id=6034418517";
		["drive_eta"] = "http://www.roblox.com/asset/?id=6034464371";
		["sensor_window"] = "http://www.roblox.com/asset/?id=6031067242";
		["sensor_door"] = "http://www.roblox.com/asset/?id=6031067241";
		["keyboard_return"] = "http://www.roblox.com/asset/?id=6034818370";
		["monitor"] = "http://www.roblox.com/asset/?id=6034837803";
		["device_hub"] = "http://www.roblox.com/asset/?id=6034789877";
		["keyboard"] = "http://www.roblox.com/asset/?id=6034818398";
		["keyboard_voice"] = "http://www.roblox.com/asset/?id=6034818360";
		["cast"] = "http://www.roblox.com/asset/?id=6034789876";
		["developer_board"] = "http://www.roblox.com/asset/?id=6034789883";
		["tablet"] = "http://www.roblox.com/asset/?id=6034848733";
		["keyboard_hide"] = "http://www.roblox.com/asset/?id=6034818386";
		["dock"] = "http://www.roblox.com/asset/?id=6034789888";
		["phonelink"] = "http://www.roblox.com/asset/?id=6034837801";
		["device_unknown"] = "http://www.roblox.com/asset/?id=6034789884";
		["speaker_group"] = "http://www.roblox.com/asset/?id=6034848732";
		["desktop_mac"] = "http://www.roblox.com/asset/?id=6034789898";
		["point_of_sale"] = "http://www.roblox.com/asset/?id=6034837798";
		["memory"] = "http://www.roblox.com/asset/?id=6034837807";
		["keyboard_tab"] = "http://www.roblox.com/asset/?id=6034818363";
		["router"] = "http://www.roblox.com/asset/?id=6034837806";
		["sim_card"] = "http://www.roblox.com/asset/?id=6034837800";
		["headset"] = "http://www.roblox.com/asset/?id=6034789880";
		["gamepad"] = "http://www.roblox.com/asset/?id=6034789879";
		["speaker"] = "http://www.roblox.com/asset/?id=6034848746";
		["devices_other"] = "http://www.roblox.com/asset/?id=6034789873";
		["laptop"] = "http://www.roblox.com/asset/?id=6034818367";
		["scanner"] = "http://www.roblox.com/asset/?id=6034837799";
		["tv"] = "http://www.roblox.com/asset/?id=6034848740";
		["headset_mic"] = "http://www.roblox.com/asset/?id=6034818383";
		["browser_not_supported"] = "http://www.roblox.com/asset/?id=6034789875";
		["computer"] = "http://www.roblox.com/asset/?id=6034789874";
		["connected_tv"] = "http://www.roblox.com/asset/?id=6034789870";
		["phonelink_off"] = "http://www.roblox.com/asset/?id=6034837804";
		["headset_off"] = "http://www.roblox.com/asset/?id=6034818402";
		["cast_connected"] = "http://www.roblox.com/asset/?id=6034789895";
		["watch"] = "http://www.roblox.com/asset/?id=6034848747";
		["keyboard_arrow_up"] = "http://www.roblox.com/asset/?id=6034818379";
		["keyboard_backspace"] = "http://www.roblox.com/asset/?id=6034818381";
		["laptop_chromebook"] = "http://www.roblox.com/asset/?id=6034818364";
		["phone_iphone"] = "http://www.roblox.com/asset/?id=6034837811";
		["smartphone"] = "http://www.roblox.com/asset/?id=6034848731";
		["power_input"] = "http://www.roblox.com/asset/?id=6034837794";
		["videogame_asset"] = "http://www.roblox.com/asset/?id=6034848748";
		["desktop_windows"] = "http://www.roblox.com/asset/?id=6034789893";
		["keyboard_arrow_down"] = "http://www.roblox.com/asset/?id=6034818372";
		["laptop_mac"] = "http://www.roblox.com/asset/?id=6034837808";
		["laptop_windows"] = "http://www.roblox.com/asset/?id=6034837796";
		["keyboard_arrow_right"] = "http://www.roblox.com/asset/?id=6034818365";
		["cast_for_education"] = "http://www.roblox.com/asset/?id=6034789872";
		["keyboard_capslock"] = "http://www.roblox.com/asset/?id=6034818403";
		["toys"] = "http://www.roblox.com/asset/?id=6034848752";
		["tablet_android"] = "http://www.roblox.com/asset/?id=6034848734";
		["mouse"] = "http://www.roblox.com/asset/?id=6034837797";
		["phone_android"] = "http://www.roblox.com/asset/?id=6034837793";
		["keyboard_arrow_left"] = "http://www.roblox.com/asset/?id=6034818375";
		["security"] = "http://www.roblox.com/asset/?id=6034837802";
		["dry_cleaning"] = "http://www.roblox.com/asset/?id=6034754456";
		["bakery_dining"] = "http://www.roblox.com/asset/?id=6034767610";
		["place"] = "http://www.roblox.com/asset/?id=6034503372";
		["run_circle"] = "http://www.roblox.com/asset/?id=6034503367";
		["local_post_office"] = "http://www.roblox.com/asset/?id=6034513883";
		["takeout_dining"] = "http://www.roblox.com/asset/?id=6034467808";
		["nightlife"] = "http://www.roblox.com/asset/?id=6034510003";
		["design_services"] = "http://www.roblox.com/asset/?id=6034754453";
		["celebration"] = "http://www.roblox.com/asset/?id=6034767613";
		["near_me_disabled"] = "http://www.roblox.com/asset/?id=6034509988";
		["add_location_alt"] = "http://www.roblox.com/asset/?id=6034483678";
		["directions_run"] = "http://www.roblox.com/asset/?id=6034754445";
		["local_fire_department"] = "http://www.roblox.com/asset/?id=6034684949";
		["add_road"] = "http://www.roblox.com/asset/?id=6034483677";
		["my_location"] = "http://www.roblox.com/asset/?id=6034509987";
		["dinner_dining"] = "http://www.roblox.com/asset/?id=6034754457";
		["local_airport"] = "http://www.roblox.com/asset/?id=6034687951";
		["zoom_out_map"] = "http://www.roblox.com/asset/?id=6035229856";
		["pin_drop"] = "http://www.roblox.com/asset/?id=6034470807";
		["subway"] = "http://www.roblox.com/asset/?id=6034467790";
		["electric_moped"] = "http://www.roblox.com/asset/?id=6034744027";
		["restaurant_menu"] = "http://www.roblox.com/asset/?id=6034503378";
		["local_gas_station"] = "http://www.roblox.com/asset/?id=6034684935";
		["local_cafe"] = "http://www.roblox.com/asset/?id=6034687954";
		["theater_comedy"] = "http://www.roblox.com/asset/?id=6034467796";
		["directions_bus"] = "http://www.roblox.com/asset/?id=6034754434";
		["hail"] = "http://www.roblox.com/asset/?id=6034744033";
		["satellite"] = "http://www.roblox.com/asset/?id=6034503370";
		["local_phone"] = "http://www.roblox.com/asset/?id=6034513884";
		["electric_bike"] = "http://www.roblox.com/asset/?id=6034744032";
		["local_see"] = "http://www.roblox.com/asset/?id=6034513887";
		["transit_enterexit"] = "http://www.roblox.com/asset/?id=6034467805";
		["local_convenience_store"] = "http://www.roblox.com/asset/?id=6034687956";
		["local_offer"] = "http://www.roblox.com/asset/?id=6034513891";
		["electric_car"] = "http://www.roblox.com/asset/?id=6034744029";
		["beenhere"] = "http://www.roblox.com/asset/?id=6034483675";
		["miscellaneous_services"] = "http://www.roblox.com/asset/?id=6034509993";
		["maps_ugc"] = "http://www.roblox.com/asset/?id=6034509992";
		["moped"] = "http://www.roblox.com/asset/?id=6034509999";
		["medical_services"] = "http://www.roblox.com/asset/?id=6034510001";
		["money"] = "http://www.roblox.com/asset/?id=6034509997";
		["transfer_within_a_station"] = "http://www.roblox.com/asset/?id=6034467809";
		["electrical_services"] = "http://www.roblox.com/asset/?id=6034744038";
		["museum"] = "http://www.roblox.com/asset/?id=6034510005";
		["add_location"] = "http://www.roblox.com/asset/?id=6034483672";
		["layers"] = "http://www.roblox.com/asset/?id=6034687957";
		["handyman"] = "http://www.roblox.com/asset/?id=6034744057";
		["local_pharmacy"] = "http://www.roblox.com/asset/?id=6034513903";
		["electric_rickshaw"] = "http://www.roblox.com/asset/?id=6034744043";
		["alt_route"] = "http://www.roblox.com/asset/?id=6034483670";
		["no_transfer"] = "http://www.roblox.com/asset/?id=6034503363";
		["pedal_bike"] = "http://www.roblox.com/asset/?id=6034503374";
		["directions_transit"] = "http://www.roblox.com/asset/?id=6034754436";
		["railway_alert"] = "http://www.roblox.com/asset/?id=6034470823";
		["local_police"] = "http://www.roblox.com/asset/?id=6034513895";
		["directions_car"] = "http://www.roblox.com/asset/?id=6034754441";
		["category"] = "http://www.roblox.com/asset/?id=6034767621";
		["attractions"] = "http://www.roblox.com/asset/?id=6034767620";
		["person_pin_circle"] = "http://www.roblox.com/asset/?id=6034503375";
		["cleaning_services"] = "http://www.roblox.com/asset/?id=6034767619";
		["terrain"] = "http://www.roblox.com/asset/?id=6034467794";
		["no_meals"] = "http://www.roblox.com/asset/?id=6034510024";
		["train"] = "http://www.roblox.com/asset/?id=6034467803";
		["delivery_dining"] = "http://www.roblox.com/asset/?id=6034767644";
		["pest_control"] = "http://www.roblox.com/asset/?id=6034470809";
		["directions"] = "http://www.roblox.com/asset/?id=6034754449";
		["atm"] = "http://www.roblox.com/asset/?id=6034767614";
		["rate_review"] = "http://www.roblox.com/asset/?id=6034503385";
		["local_bar"] = "http://www.roblox.com/asset/?id=6034687950";
		["local_drink"] = "http://www.roblox.com/asset/?id=6034687965";
		["directions_railway"] = "http://www.roblox.com/asset/?id=6034754433";
		["person_pin"] = "http://www.roblox.com/asset/?id=6034503364";
		["ev_station"] = "http://www.roblox.com/asset/?id=6034744037";
		["home_repair_service"] = "http://www.roblox.com/asset/?id=6034744064";
		["bus_alert"] = "http://www.roblox.com/asset/?id=6034767618";
		["agriculture"] = "http://www.roblox.com/asset/?id=6034483674";
		["volunteer_activism"] = "http://www.roblox.com/asset/?id=6034467799";
		["breakfast_dining"] = "http://www.roblox.com/asset/?id=6034483671";
		["layers_clear"] = "http://www.roblox.com/asset/?id=6034687975";
		["plumbing"] = "http://www.roblox.com/asset/?id=6034470800";
		["taxi_alert"] = "http://www.roblox.com/asset/?id=6034467792";
		["add_business"] = "http://www.roblox.com/asset/?id=6034483666";
		["badge"] = "http://www.roblox.com/asset/?id=6034767607";
		["edit_attributes"] = "http://www.roblox.com/asset/?id=6034754443";
		["directions_walk"] = "http://www.roblox.com/asset/?id=6034754448";
		["local_play"] = "http://www.roblox.com/asset/?id=6034513889";
		["bike_scooter"] = "http://www.roblox.com/asset/?id=6034483669";
		["two_wheeler"] = "http://www.roblox.com/asset/?id=6034467795";
		["local_florist"] = "http://www.roblox.com/asset/?id=6034684940";
		["local_hotel"] = "http://www.roblox.com/asset/?id=6034684939";
		["no_meals_ouline"] = "http://www.roblox.com/asset/?id=6034510025";
		["festival"] = "http://www.roblox.com/asset/?id=6034744031";
		["local_shipping"] = "http://www.roblox.com/asset/?id=6034684926";
		["directions_boat"] = "http://www.roblox.com/asset/?id=6034754442";
		["wrong_location"] = "http://www.roblox.com/asset/?id=6034467801";
		["restaurant"] = "http://www.roblox.com/asset/?id=6034503366";
		["directions_subway"] = "http://www.roblox.com/asset/?id=6034754440";
		["not_listed_location"] = "http://www.roblox.com/asset/?id=6034503380";
		["electric_scooter"] = "http://www.roblox.com/asset/?id=6034744041";
		["ramen_dining"] = "http://www.roblox.com/asset/?id=6034503377";
		["edit_road"] = "http://www.roblox.com/asset/?id=6034744035";
		["local_printshop"] = "http://www.roblox.com/asset/?id=6034513897";
		["map"] = "http://www.roblox.com/asset/?id=6034684930";
		["car_rental"] = "http://www.roblox.com/asset/?id=6034767641";
		["multiple_stop"] = "http://www.roblox.com/asset/?id=6034510026";
		["brunch_dining"] = "http://www.roblox.com/asset/?id=6034767611";
		["local_laundry_service"] = "http://www.roblox.com/asset/?id=6034684943";
		["set_meal"] = "http://www.roblox.com/asset/?id=6034503368";
		["local_car_wash"] = "http://www.roblox.com/asset/?id=6034687976";
		["pest_control_rodent"] = "http://www.roblox.com/asset/?id=6034470803";
		["local_pizza"] = "http://www.roblox.com/asset/?id=6034513885";
		["local_grocery_store"] = "http://www.roblox.com/asset/?id=6034684933";
		["traffic"] = "http://www.roblox.com/asset/?id=6034467797";
		["departure_board"] = "http://www.roblox.com/asset/?id=6034767615";
		["icecream"] = "http://www.roblox.com/asset/?id=6034687967";
		["navigation"] = "http://www.roblox.com/asset/?id=6034509984";
		["near_me"] = "http://www.roblox.com/asset/?id=6034509996";
		["fastfood"] = "http://www.roblox.com/asset/?id=6034744034";
		["local_library"] = "http://www.roblox.com/asset/?id=6034684931";
		["local_activity"] = "http://www.roblox.com/asset/?id=6034687955";
		["local_hospital"] = "http://www.roblox.com/asset/?id=6034684956";
		["menu_book"] = "http://www.roblox.com/asset/?id=6034509994";
		["directions_bike"] = "http://www.roblox.com/asset/?id=6034754459";
		["store_mall_directory"] = "http://www.roblox.com/asset/?id=6034470811";
		["trip_origin"] = "http://www.roblox.com/asset/?id=6034467804";
		["tram"] = "http://www.roblox.com/asset/?id=6034467806";
		["edit_location"] = "http://www.roblox.com/asset/?id=6034754439";
		["streetview"] = "http://www.roblox.com/asset/?id=6034470805";
		["hvac"] = "http://www.roblox.com/asset/?id=6034687960";
		["lunch_dining"] = "http://www.roblox.com/asset/?id=6034684928";
		["car_repair"] = "http://www.roblox.com/asset/?id=6034767617";
		["compass_calibration"] = "http://www.roblox.com/asset/?id=6034767623";
		["360"] = "http://www.roblox.com/asset/?id=6034767608";
		["flight"] = "http://www.roblox.com/asset/?id=6034744030";
		["local_mall"] = "http://www.roblox.com/asset/?id=6034684934";
		["hotel"] = "http://www.roblox.com/asset/?id=6034687977";
		["local_parking"] = "http://www.roblox.com/asset/?id=6034513893";
		["hardware"] = "http://www.roblox.com/asset/?id=6034744036";
		["local_dining"] = "http://www.roblox.com/asset/?id=6034687963";
		["park"] = "http://www.roblox.com/asset/?id=6034503369";
		["location_pin"] = "http://www.roblox.com/asset/?id=6034684937";
		["local_movies"] = "http://www.roblox.com/asset/?id=6034684936";
		["local_atm"] = "http://www.roblox.com/asset/?id=6034687953";
		["local_taxi"] = "http://www.roblox.com/asset/?id=6034684927";
		["brightness_low"] = "http://www.roblox.com/asset/?id=6034989542";
		["screen_lock_landscape"] = "http://www.roblox.com/asset/?id=6034996700";
		["graphic_eq"] = "http://www.roblox.com/asset/?id=6034989551";
		["screen_lock_rotation"] = "http://www.roblox.com/asset/?id=6034996710";
		["signal_cellular_4_bar"] = "http://www.roblox.com/asset/?id=6035030076";
		["airplanemode_inactive"] = "http://www.roblox.com/asset/?id=6034983848";
		["signal_wifi_0_bar"] = "http://www.roblox.com/asset/?id=6035030067";
		["battery_full"] = "http://www.roblox.com/asset/?id=6034983854";
		["gps_fixed"] = "http://www.roblox.com/asset/?id=6034989550";
		["brightness_high"] = "http://www.roblox.com/asset/?id=6034989541";
		["ad_units"] = "http://www.roblox.com/asset/?id=6034983845";
		["signal_cellular_alt"] = "http://www.roblox.com/asset/?id=6035030079";
		["bluetooth_connected"] = "http://www.roblox.com/asset/?id=6034983855";
		["wifi_tethering"] = "http://www.roblox.com/asset/?id=6035039430";
		["dvr"] = "http://www.roblox.com/asset/?id=6034989561";
		["screen_search_desktop"] = "http://www.roblox.com/asset/?id=6034996711";
		["network_wifi"] = "http://www.roblox.com/asset/?id=6034996712";
		["access_alarms"] = "http://www.roblox.com/asset/?id=6034983853";
		["nfc"] = "http://www.roblox.com/asset/?id=6034996698";
		["location_disabled"] = "http://www.roblox.com/asset/?id=6034996694";
		["signal_wifi_4_bar"] = "http://www.roblox.com/asset/?id=6035030077";
		["access_time"] = "http://www.roblox.com/asset/?id=6034983856";
		["mobile_off"] = "http://www.roblox.com/asset/?id=6034996702";
		["battery_unknown"] = "http://www.roblox.com/asset/?id=6034983842";
		["signal_cellular_null"] = "http://www.roblox.com/asset/?id=6035030075";
		["bluetooth_disabled"] = "http://www.roblox.com/asset/?id=6034989562";
		["developer_mode"] = "http://www.roblox.com/asset/?id=6034989549";
		["network_cell"] = "http://www.roblox.com/asset/?id=6034996709";
		["sd_storage"] = "http://www.roblox.com/asset/?id=6034996719";
		["signal_cellular_no_sim"] = "http://www.roblox.com/asset/?id=6035030078";
		["devices"] = "http://www.roblox.com/asset/?id=6034989540";
		["screen_rotation"] = "http://www.roblox.com/asset/?id=6034996701";
		["device_thermostat"] = "http://www.roblox.com/asset/?id=6034989544";
		["signal_wifi_off"] = "http://www.roblox.com/asset/?id=6035030074";
		["widgets"] = "http://www.roblox.com/asset/?id=6035039429";
		["bluetooth"] = "http://www.roblox.com/asset/?id=6034983880";
		["battery_charging_full"] = "http://www.roblox.com/asset/?id=6034983849";
		["mobile_friendly"] = "http://www.roblox.com/asset/?id=6034996699";
		["signal_cellular_0_bar"] = "http://www.roblox.com/asset/?id=6035030072";
		["storage"] = "http://www.roblox.com/asset/?id=6035030083";
		["send_to_mobile"] = "http://www.roblox.com/asset/?id=6034996697";
		["location_searching"] = "http://www.roblox.com/asset/?id=6034996695";
		["brightness_auto"] = "http://www.roblox.com/asset/?id=6034989545";
		["wifi_lock"] = "http://www.roblox.com/asset/?id=6035039428";
		["gps_not_fixed"] = "http://www.roblox.com/asset/?id=6034989547";
		["access_alarm"] = "http://www.roblox.com/asset/?id=6034983844";
		["battery_alert"] = "http://www.roblox.com/asset/?id=6034983843";
		["signal_cellular_off"] = "http://www.roblox.com/asset/?id=6035030084";
		["signal_cellular_connected_no_internet_4"] = "http://www.roblox.com/asset/?id=6035229858";
		["gps_off"] = "http://www.roblox.com/asset/?id=6034989548";
		["add_alarm"] = "http://www.roblox.com/asset/?id=6034983850";
		["brightness_medium"] = "http://www.roblox.com/asset/?id=6034989543";
		["usb"] = "http://www.roblox.com/asset/?id=6035030080";
		["airplanemode_active"] = "http://www.roblox.com/asset/?id=6034983864";
		["reset_tv"] = "http://www.roblox.com/asset/?id=6034996696";
		["wallpaper"] = "http://www.roblox.com/asset/?id=6035030102";
		["settings_system_daydream"] = "http://www.roblox.com/asset/?id=6035030081";
		["bluetooth_searching"] = "http://www.roblox.com/asset/?id=6034989553";
		["add_to_home_screen"] = "http://www.roblox.com/asset/?id=6034983858";
		["screen_lock_portrait"] = "http://www.roblox.com/asset/?id=6034996706";
		["data_usage"] = "http://www.roblox.com/asset/?id=6034989568";
		["_auto_delete"] = "http://www.roblox.com/asset/?id=6031071068";
		["_error"] = "http://www.roblox.com/asset/?id=6031071057";
		["_notification_important"] = "http://www.roblox.com/asset/?id=6031071056";
		["_add_alert"] = "http://www.roblox.com/asset/?id=6031071067";
		["_warning"] = "http://www.roblox.com/asset/?id=6031071053";
		["_error_outline"] = "http://www.roblox.com/asset/?id=6031071050";
		["check_box_outline_blank"] = "http://www.roblox.com/asset/?id=6031068420";
		["toggle_off"] = "http://www.roblox.com/asset/?id=6031068429";
		["indeterminate_check_box"] = "http://www.roblox.com/asset/?id=6031068445";
		["radio_button_checked"] = "http://www.roblox.com/asset/?id=6031068426";
		["toggle_on"] = "http://www.roblox.com/asset/?id=6031068430";
		["check_box"] = "http://www.roblox.com/asset/?id=6031068421";
		["radio_button_unchecked"] = "http://www.roblox.com/asset/?id=6031068433";
		["star"] = "http://www.roblox.com/asset/?id=6031068423";
		["star_border"] = "http://www.roblox.com/asset/?id=6031068425";
		["star_half"] = "http://www.roblox.com/asset/?id=6031068427";
		["star_outline"] = "http://www.roblox.com/asset/?id=6031068428";
		["multiline_chart"] = "http://www.roblox.com/asset/?id=6034941721";
		["pie_chart"] = "http://www.roblox.com/asset/?id=6034973076";
		["format_line_spacing"] = "http://www.roblox.com/asset/?id=6034910905";
		["format_align_left"] = "http://www.roblox.com/asset/?id=6034900727";
		["linear_scale"] = "http://www.roblox.com/asset/?id=6034941707";
		["insert_photo"] = "http://www.roblox.com/asset/?id=6034941703";
		["scatter_plot"] = "http://www.roblox.com/asset/?id=6034973094";
		["post_add"] = "http://www.roblox.com/asset/?id=6034973083";
		["format_textdirection_r_to_l"] = "http://www.roblox.com/asset/?id=6034925623";
		["format_size"] = "http://www.roblox.com/asset/?id=6034910908";
		["format_color_fill"] = "http://www.roblox.com/asset/?id=6034910903";
		["format_paint"] = "http://www.roblox.com/asset/?id=6034925618";
		["format_underlined"] = "http://www.roblox.com/asset/?id=6034925627";
		["format_shapes"] = "http://www.roblox.com/asset/?id=6034910909";
		["title"] = "http://www.roblox.com/asset/?id=6034934042";
		["highlight"] = "http://www.roblox.com/asset/?id=6034925617";
		["bar_chart"] = "http://www.roblox.com/asset/?id=6034898096";
		["format_indent_increase"] = "http://www.roblox.com/asset/?id=6034900724";
		["merge_type"] = "http://www.roblox.com/asset/?id=6034941705";
		["bubble_chart"] = "http://www.roblox.com/asset/?id=6034925612";
		["publish"] = "http://www.roblox.com/asset/?id=6034973085";
		["format_indent_decrease"] = "http://www.roblox.com/asset/?id=6034900733";
		["margin"] = "http://www.roblox.com/asset/?id=6034941701";
		["table_rows"] = "http://www.roblox.com/asset/?id=6034934025";
		["stacked_line_chart"] = "http://www.roblox.com/asset/?id=6034934039";
		["border_clear"] = "http://www.roblox.com/asset/?id=6034898135";
		["border_color"] = "http://www.roblox.com/asset/?id=6034898100";
		["border_inner"] = "http://www.roblox.com/asset/?id=6034898131";
		["insert_chart"] = "http://www.roblox.com/asset/?id=6034925628";
		["border_top"] = "http://www.roblox.com/asset/?id=6034900726";
		["padding"] = "http://www.roblox.com/asset/?id=6034973078";
		["border_vertical"] = "http://www.roblox.com/asset/?id=6034900725";
		["score"] = "http://www.roblox.com/asset/?id=6034934041";
		["border_right"] = "http://www.roblox.com/asset/?id=6034898120";
		["add_chart"] = "http://www.roblox.com/asset/?id=6034898093";
		["space_bar"] = "http://www.roblox.com/asset/?id=6034934037";
		["border_outer"] = "http://www.roblox.com/asset/?id=6034898104";
		["mode_comment"] = "http://www.roblox.com/asset/?id=6034941700";
		["attach_money"] = "http://www.roblox.com/asset/?id=6034898098";
		["drag_handle"] = "http://www.roblox.com/asset/?id=6034910907";
		["format_align_right"] = "http://www.roblox.com/asset/?id=6034900723";
		["pie_chart_outlined"] = "http://www.roblox.com/asset/?id=6034973077";
		["horizontal_rule"] = "http://www.roblox.com/asset/?id=6034925610";
		["border_all"] = "http://www.roblox.com/asset/?id=6034898101";
		["border_style"] = "http://www.roblox.com/asset/?id=6034898097";
		["insert_comment"] = "http://www.roblox.com/asset/?id=6034925609";
		["vertical_align_top"] = "http://www.roblox.com/asset/?id=6034973080";
		["vertical_align_center"] = "http://www.roblox.com/asset/?id=6034934051";
		["format_color_text"] = "http://www.roblox.com/asset/?id=6034910910";
		["format_quote"] = "http://www.roblox.com/asset/?id=6034925629";
		["height"] = "http://www.roblox.com/asset/?id=6034925613";
		["add_comment"] = "http://www.roblox.com/asset/?id=6034898128";
		["format_strikethrough"] = "http://www.roblox.com/asset/?id=6034910904";
		["strikethrough_s"] = "http://www.roblox.com/asset/?id=6034934030";
		["border_left"] = "http://www.roblox.com/asset/?id=6034898099";
		["format_list_bulleted"] = "http://www.roblox.com/asset/?id=6034925620";
		["format_italic"] = "http://www.roblox.com/asset/?id=6034910912";
		["format_list_numbered"] = "http://www.roblox.com/asset/?id=6034925622";
		["attach_file"] = "http://www.roblox.com/asset/?id=6034898102";
		["wrap_text"] = "http://www.roblox.com/asset/?id=6034973118";
		["insert_invitation"] = "http://www.roblox.com/asset/?id=6034973091";
		["format_list_numbered_rtl"] = "http://www.roblox.com/asset/?id=6034910906";
		["border_horizontal"] = "http://www.roblox.com/asset/?id=6034898105";
		["format_align_center"] = "http://www.roblox.com/asset/?id=6034900718";
		["format_textdirection_l_to_r"] = "http://www.roblox.com/asset/?id=6034925619";
		["show_chart"] = "http://www.roblox.com/asset/?id=6034934032";
		["insert_chart_outlined"] = "http://www.roblox.com/asset/?id=6034925606";
		["vertical_align_bottom"] = "http://www.roblox.com/asset/?id=6034934023";
		["subscript"] = "http://www.roblox.com/asset/?id=6034934059";
		["format_align_justify"] = "http://www.roblox.com/asset/?id=6034900721";
		["format_clear"] = "http://www.roblox.com/asset/?id=6034910902";
		["notes"] = "http://www.roblox.com/asset/?id=6034973084";
		["insert_drive_file"] = "http://www.roblox.com/asset/?id=6034941697";
		["functions"] = "http://www.roblox.com/asset/?id=6034925614";
		["insert_emoticon"] = "http://www.roblox.com/asset/?id=6034973079";
		["insert_link"] = "http://www.roblox.com/asset/?id=6034973074";
		["format_color_reset"] = "http://www.roblox.com/asset/?id=6034900743";
		["monetization_on"] = "http://www.roblox.com/asset/?id=6034973115";
		["short_text"] = "http://www.roblox.com/asset/?id=6034934035";
		["mode_edit"] = "http://www.roblox.com/asset/?id=6034941708";
		["superscript"] = "http://www.roblox.com/asset/?id=6034934034";
		["table_chart"] = "http://www.roblox.com/asset/?id=6034973081";
		["format_bold"] = "http://www.roblox.com/asset/?id=6034900732";
		["money_off"] = "http://www.roblox.com/asset/?id=6034973088";
		["border_bottom"] = "http://www.roblox.com/asset/?id=6034898094";
		["text_fields"] = "http://www.roblox.com/asset/?id=6034934040";
		["note"] = "http://www.roblox.com/asset/?id=6026663734";
		["shuffle"] = "http://www.roblox.com/asset/?id=6026667003";
		["library_books"] = "http://www.roblox.com/asset/?id=6026660085";
		["library_music"] = "http://www.roblox.com/asset/?id=6026660075";
		["surround_sound"] = "http://www.roblox.com/asset/?id=6026671209";
		["forward_30"] = "http://www.roblox.com/asset/?id=6026660088";
		["music_video"] = "http://www.roblox.com/asset/?id=6026663704";
		["videocam_off"] = "http://www.roblox.com/asset/?id=6026671212";
		["control_camera"] = "http://www.roblox.com/asset/?id=6026647916";
		["explicit"] = "http://www.roblox.com/asset/?id=6026647913";
		["3k_plus"] = "http://www.roblox.com/asset/?id=6026681598";
		["fiber_pin"] = "http://www.roblox.com/asset/?id=6026660064";
		["skip_previous"] = "http://www.roblox.com/asset/?id=6026667011";
		["pause_circle_filled"] = "http://www.roblox.com/asset/?id=6026663718";
		["video_settings"] = "http://www.roblox.com/asset/?id=6026671211";
		["movie"] = "http://www.roblox.com/asset/?id=6026660081";
		["add_to_queue"] = "http://www.roblox.com/asset/?id=6026647903";
		["6k"] = "http://www.roblox.com/asset/?id=6026681579";
		["web_asset"] = "http://www.roblox.com/asset/?id=6026671239";
		["play_circle_outline"] = "http://www.roblox.com/asset/?id=6026663726";
		["volume_off"] = "http://www.roblox.com/asset/?id=6026671224";
		["mic_off"] = "http://www.roblox.com/asset/?id=6026660076";
		["featured_play_list"] = "http://www.roblox.com/asset/?id=6026647932";
		["pause_circle_outline"] = "http://www.roblox.com/asset/?id=6026663701";
		["slow_motion_video"] = "http://www.roblox.com/asset/?id=6026681583";
		["7k"] = "http://www.roblox.com/asset/?id=6026681584";
		["playlist_add"] = "http://www.roblox.com/asset/?id=6026663728";
		["fiber_smart_record"] = "http://www.roblox.com/asset/?id=6026660080";
		["8k"] = "http://www.roblox.com/asset/?id=6026643014";
		["hd"] = "http://www.roblox.com/asset/?id=6026660065";
		["repeat_one_on"] = "http://www.roblox.com/asset/?id=6026666992";
		["recent_actors"] = "http://www.roblox.com/asset/?id=6026663773";
		["fiber_new"] = "http://www.roblox.com/asset/?id=6026647930";
		["fiber_dvr"] = "http://www.roblox.com/asset/?id=6026647912";
		["hearing_disabled"] = "http://www.roblox.com/asset/?id=6026660068";
		["forward_10"] = "http://www.roblox.com/asset/?id=6026660062";
		["4k_plus"] = "http://www.roblox.com/asset/?id=6026643005";
		["repeat_one"] = "http://www.roblox.com/asset/?id=6026681590";
		["equalizer"] = "http://www.roblox.com/asset/?id=6026647906";
		["stop"] = "http://www.roblox.com/asset/?id=6026681576";
		["2k"] = "http://www.roblox.com/asset/?id=6026643032";
		["playlist_add_check"] = "http://www.roblox.com/asset/?id=6026663727";
		["not_interested"] = "http://www.roblox.com/asset/?id=6026663743";
		["videocam"] = "http://www.roblox.com/asset/?id=6026671213";
		["sort_by_alpha"] = "http://www.roblox.com/asset/?id=6026667009";
		["library_add"] = "http://www.roblox.com/asset/?id=6026660063";
		["stop_circle"] = "http://www.roblox.com/asset/?id=6026681577";
		["pause"] = "http://www.roblox.com/asset/?id=6026663719";
		["new_releases"] = "http://www.roblox.com/asset/?id=6026663730";
		["album"] = "http://www.roblox.com/asset/?id=6026647905";
		["sd"] = "http://www.roblox.com/asset/?id=6026681582";
		["volume_up"] = "http://www.roblox.com/asset/?id=6026671215";
		["replay_5"] = "http://www.roblox.com/asset/?id=6026666993";
		["high_quality"] = "http://www.roblox.com/asset/?id=6026660059";
		["shuffle_on"] = "http://www.roblox.com/asset/?id=6026666996";
		["play_arrow"] = "http://www.roblox.com/asset/?id=6026663699";
		["snooze"] = "http://www.roblox.com/asset/?id=6026667006";
		["closed_caption_disabled"] = "http://www.roblox.com/asset/?id=6026647900";
		["subscriptions"] = "http://www.roblox.com/asset/?id=6026671207";
		["skip_next"] = "http://www.roblox.com/asset/?id=6026667005";
		["branding_watermark"] = "http://www.roblox.com/asset/?id=6026647911";
		["speed"] = "http://www.roblox.com/asset/?id=6026681578";
		["art_track"] = "http://www.roblox.com/asset/?id=6026647908";
		["3k"] = "http://www.roblox.com/asset/?id=6026681574";
		["4k"] = "http://www.roblox.com/asset/?id=6026643017";
		["volume_mute"] = "http://www.roblox.com/asset/?id=6026671214";
		["playlist_play"] = "http://www.roblox.com/asset/?id=6026663723";
		["remove_from_queue"] = "http://www.roblox.com/asset/?id=6026663771";
		["fast_forward"] = "http://www.roblox.com/asset/?id=6026647902";
		["play_disabled"] = "http://www.roblox.com/asset/?id=6026663702";
		["fast_rewind"] = "http://www.roblox.com/asset/?id=6026647942";
		["5k"] = "http://www.roblox.com/asset/?id=6026681575";
		["replay_10"] = "http://www.roblox.com/asset/?id=6026667007";
		["video_library"] = "http://www.roblox.com/asset/?id=6026671208";
		["loop"] = "http://www.roblox.com/asset/?id=6026660087";
		["replay_circle_filled"] = "http://www.roblox.com/asset/?id=6026667002";
		["5g"] = "http://www.roblox.com/asset/?id=6026643007";
		["library_add_check"] = "http://www.roblox.com/asset/?id=6026660083";
		["repeat"] = "http://www.roblox.com/asset/?id=6026666998";
		["queue_play_next"] = "http://www.roblox.com/asset/?id=6026663700";
		["forward_5"] = "http://www.roblox.com/asset/?id=6026660067";
		["web"] = "http://www.roblox.com/asset/?id=6026671234";
		["mic_none"] = "http://www.roblox.com/asset/?id=6026660066";
		["queue"] = "http://www.roblox.com/asset/?id=6026663724";
		["closed_caption_off"] = "http://www.roblox.com/asset/?id=6026647943";
		["hearing"] = "http://www.roblox.com/asset/?id=6026660060";
		["queue_music"] = "http://www.roblox.com/asset/?id=6026663725";
		["airplay"] = "http://www.roblox.com/asset/?id=6026647929";
		["9k"] = "http://www.roblox.com/asset/?id=6026643013";
		["video_label"] = "http://www.roblox.com/asset/?id=6026671204";
		["8k_plus"] = "http://www.roblox.com/asset/?id=6026643003";
		["play_circle_filled"] = "http://www.roblox.com/asset/?id=6026663705";
		["1k"] = "http://www.roblox.com/asset/?id=6026643002";
		["fiber_manual_record"] = "http://www.roblox.com/asset/?id=6026647909";
		["closed_caption"] = "http://www.roblox.com/asset/?id=6026647896";
		["subtitles"] = "http://www.roblox.com/asset/?id=6026671203";
		["featured_video"] = "http://www.roblox.com/asset/?id=6026647910";
		["replay_30"] = "http://www.roblox.com/asset/?id=6026667010";
		["10k"] = "http://www.roblox.com/asset/?id=6026643035";
		["5k_plus"] = "http://www.roblox.com/asset/?id=6026643028";
		["6k_plus"] = "http://www.roblox.com/asset/?id=6026643019";
		["replay"] = "http://www.roblox.com/asset/?id=6026666999";
		["repeat_on"] = "http://www.roblox.com/asset/?id=6026666994";
		["1k_plus"] = "http://www.roblox.com/asset/?id=6026681580";
		["2k_plus"] = "http://www.roblox.com/asset/?id=6026681588";
		["games"] = "http://www.roblox.com/asset/?id=6026660074";
		["volume_down"] = "http://www.roblox.com/asset/?id=6026671206";
		["mic"] = "http://www.roblox.com/asset/?id=6026660078";
		["call_to_action"] = "http://www.roblox.com/asset/?id=6026647898";
		["7k_plus"] = "http://www.roblox.com/asset/?id=6026643012";
		["av_timer"] = "http://www.roblox.com/asset/?id=6026647934";
		["9k_plus"] = "http://www.roblox.com/asset/?id=6026681585";
		["radio"] = "http://www.roblox.com/asset/?id=6026663698";
		["10mp"] = "http://www.roblox.com/asset/?id=6031328149";
		["20mp"] = "http://www.roblox.com/asset/?id=6031488940";
		["wb_twighlight"] = "http://www.roblox.com/asset/?id=6034412760";
		["movie_creation"] = "http://www.roblox.com/asset/?id=6034323681";
		["crop_portrait"] = "http://www.roblox.com/asset/?id=6031630198";
		["filter_5"] = "http://www.roblox.com/asset/?id=6031597518";
		["broken_image"] = "http://www.roblox.com/asset/?id=6031471480";
		["flip_camera_android"] = "http://www.roblox.com/asset/?id=6034333280";
		["flip_camera_ios"] = "http://www.roblox.com/asset/?id=6034333267";
		["circle"] = "http://www.roblox.com/asset/?id=6031625146";
		["photo_camera_front"] = "http://www.roblox.com/asset/?id=6031771000";
		["assistant"] = "http://www.roblox.com/asset/?id=6031360356";
		["face_retouching_natural"] = "http://www.roblox.com/asset/?id=6034333274";
		["palette"] = "http://www.roblox.com/asset/?id=6034316009";
		["nature_people"] = "http://www.roblox.com/asset/?id=6034323711";
		["14mp"] = "http://www.roblox.com/asset/?id=6031328161";
		["gradient"] = "http://www.roblox.com/asset/?id=6034333261";
		["filter_4"] = "http://www.roblox.com/asset/?id=6031597512";
		["panorama_wide_angle_select"] = "http://www.roblox.com/asset/?id=6031770990";
		["photo"] = "http://www.roblox.com/asset/?id=6031770993";
		["grid_off"] = "http://www.roblox.com/asset/?id=6034333286";
		["leak_add"] = "http://www.roblox.com/asset/?id=6034407074";
		["landscape"] = "http://www.roblox.com/asset/?id=6034407069";
		["exposure_plus_1"] = "http://www.roblox.com/asset/?id=6034328970";
		["slideshow"] = "http://www.roblox.com/asset/?id=6031754546";
		["camera_alt"] = "http://www.roblox.com/asset/?id=6031572307";
		["audiotrack"] = "http://www.roblox.com/asset/?id=6031471489";
		["filter_none"] = "http://www.roblox.com/asset/?id=6031600815";
		["blur_off"] = "http://www.roblox.com/asset/?id=6031371055";
		["crop_16_9"] = "http://www.roblox.com/asset/?id=6031630205";
		["blur_on"] = "http://www.roblox.com/asset/?id=6031371068";
		["brightness_4"] = "http://www.roblox.com/asset/?id=6031471483";
		["details"] = "http://www.roblox.com/asset/?id=6034328968";
		["panorama_horizontal"] = "http://www.roblox.com/asset/?id=6034315966";
		["camera_rear"] = "http://www.roblox.com/asset/?id=6031572316";
		["hdr_weak"] = "http://www.roblox.com/asset/?id=6034407083";
		["collections"] = "http://www.roblox.com/asset/?id=6031625145";
		["hdr_enhanced_select"] = "http://www.roblox.com/asset/?id=6034333281";
		["adjust"] = "http://www.roblox.com/asset/?id=6031339048";
		["burst_mode"] = "http://www.roblox.com/asset/?id=6031572306";
		["nature"] = "http://www.roblox.com/asset/?id=6034323695";
		["brightness_6"] = "http://www.roblox.com/asset/?id=6031572309";
		["19mp"] = "http://www.roblox.com/asset/?id=6031339054";
		["grain"] = "http://www.roblox.com/asset/?id=6034333288";
		["receipt_long"] = "http://www.roblox.com/asset/?id=6031763428";
		["photo_filter"] = "http://www.roblox.com/asset/?id=6031770992";
		["edit"] = "http://www.roblox.com/asset/?id=6034328955";
		["healing"] = "http://www.roblox.com/asset/?id=6034407071";
		["exposure_neg_1"] = "http://www.roblox.com/asset/?id=6034328957";
		["exposure"] = "http://www.roblox.com/asset/?id=6034328962";
		["wb_shade"] = "http://www.roblox.com/asset/?id=6034315974";
		["compare"] = "http://www.roblox.com/asset/?id=6031625151";
		["cases"] = "http://www.roblox.com/asset/?id=6031572324";
		["timer_3"] = "http://www.roblox.com/asset/?id=6031754540";
		["exposure_plus_2"] = "http://www.roblox.com/asset/?id=6034328961";
		["12mp"] = "http://www.roblox.com/asset/?id=6031328140";
		["22mp"] = "http://www.roblox.com/asset/?id=6031360353";
		["timer_off"] = "http://www.roblox.com/asset/?id=6031734881";
		["auto_stories"] = "http://www.roblox.com/asset/?id=6031360360";
		["rotate_left"] = "http://www.roblox.com/asset/?id=6031763427";
		["wb_iridescent"] = "http://www.roblox.com/asset/?id=6034315972";
		["shutter_speed"] = "http://www.roblox.com/asset/?id=6031763443";
		["switch_video"] = "http://www.roblox.com/asset/?id=6031754536";
		["23mp"] = "http://www.roblox.com/asset/?id=6031339045";
		["euro"] = "http://www.roblox.com/asset/?id=6034328963";
		["15mp"] = "http://www.roblox.com/asset/?id=6031328158";
		["filter_center_focus"] = "http://www.roblox.com/asset/?id=6031600817";
		["photo_library"] = "http://www.roblox.com/asset/?id=6031770998";
		["mp"] = "http://www.roblox.com/asset/?id=6034323674";
		["looks_4"] = "http://www.roblox.com/asset/?id=6034407089";
		["filter_2"] = "http://www.roblox.com/asset/?id=6031597521";
		["crop_3_2"] = "http://www.roblox.com/asset/?id=6034328956";
		["auto_fix_normal"] = "http://www.roblox.com/asset/?id=6031371074";
		["auto_fix_off"] = "http://www.roblox.com/asset/?id=6031360381";
		["wb_auto"] = "http://www.roblox.com/asset/?id=6031734875";
		["switch_camera"] = "http://www.roblox.com/asset/?id=6031754550";
		["filter_vintage"] = "http://www.roblox.com/asset/?id=6031600811";
		["photo_size_select_small"] = "http://www.roblox.com/asset/?id=6031763457";
		["blur_linear"] = "http://www.roblox.com/asset/?id=6031488930";
		["hdr_on"] = "http://www.roblox.com/asset/?id=6034333279";
		["tag_faces"] = "http://www.roblox.com/asset/?id=6031754560";
		["21mp"] = "http://www.roblox.com/asset/?id=6031339065";
		["camera"] = "http://www.roblox.com/asset/?id=6031572312";
		["image_aspect_ratio"] = "http://www.roblox.com/asset/?id=6034407073";
		["filter_b_and_w"] = "http://www.roblox.com/asset/?id=6031600824";
		["crop_landscape"] = "http://www.roblox.com/asset/?id=6031630202";
		["13mp"] = "http://www.roblox.com/asset/?id=6031328137";
		["grid_on"] = "http://www.roblox.com/asset/?id=6034333276";
		["motion_photos_pause"] = "http://www.roblox.com/asset/?id=6034323668";
		["filter_6"] = "http://www.roblox.com/asset/?id=6031597524";
		["linked_camera"] = "http://www.roblox.com/asset/?id=6034407082";
		["panorama_fish_eye"] = "http://www.roblox.com/asset/?id=6034315969";
		["panorama"] = "http://www.roblox.com/asset/?id=6034315955";
		["color_lens"] = "http://www.roblox.com/asset/?id=6031625148";
		["lens"] = "http://www.roblox.com/asset/?id=6034407081";
		["crop_din"] = "http://www.roblox.com/asset/?id=6031630208";
		["exposure_neg_2"] = "http://www.roblox.com/asset/?id=6034328973";
		["mic_external_off"] = "http://www.roblox.com/asset/?id=6034323672";
		["crop_free"] = "http://www.roblox.com/asset/?id=6031630212";
		["crop_original"] = "http://www.roblox.com/asset/?id=6031630204";
		["panorama_photosphere_select"] = "http://www.roblox.com/asset/?id=6034315975";
		["photo_size_select_actual"] = "http://www.roblox.com/asset/?id=6031771012";
		["leak_remove"] = "http://www.roblox.com/asset/?id=6034407080";
		["collections_bookmark"] = "http://www.roblox.com/asset/?id=6034328965";
		["straighten"] = "http://www.roblox.com/asset/?id=6031754545";
		["timelapse"] = "http://www.roblox.com/asset/?id=6031754541";
		["picture_as_pdf"] = "http://www.roblox.com/asset/?id=6031763425";
		["crop_rotate"] = "http://www.roblox.com/asset/?id=6031630203";
		["control_point_duplicate"] = "http://www.roblox.com/asset/?id=6034328959";
		["photo_camera_back"] = "http://www.roblox.com/asset/?id=6031771007";
		["looks_3"] = "http://www.roblox.com/asset/?id=6034407088";
		["motion_photos_off"] = "http://www.roblox.com/asset/?id=6034323670";
		["rotate_right"] = "http://www.roblox.com/asset/?id=6031763429";
		["view_compact"] = "http://www.roblox.com/asset/?id=6031734878";
		["crop_7_5"] = "http://www.roblox.com/asset/?id=6031630197";
		["style"] = "http://www.roblox.com/asset/?id=6031754538";
		["exposure_zero"] = "http://www.roblox.com/asset/?id=6034329000";
		["camera_front"] = "http://www.roblox.com/asset/?id=6031572318";
		["hdr_strong"] = "http://www.roblox.com/asset/?id=6034333272";
		["view_comfy"] = "http://www.roblox.com/asset/?id=6031734876";
		["panorama_vertical"] = "http://www.roblox.com/asset/?id=6034315963";
		["panorama_vertical_select"] = "http://www.roblox.com/asset/?id=6034315961";
		["looks_two"] = "http://www.roblox.com/asset/?id=6034412757";
		["filter_drama"] = "http://www.roblox.com/asset/?id=6031600813";
		["center_focus_strong"] = "http://www.roblox.com/asset/?id=6031625147";
		["18mp"] = "http://www.roblox.com/asset/?id=6031339064";
		["7mp"] = "http://www.roblox.com/asset/?id=6031328139";
		["wb_sunny"] = "http://www.roblox.com/asset/?id=6034412758";
		["filter_9_plus"] = "http://www.roblox.com/asset/?id=6031600812";
		["crop"] = "http://www.roblox.com/asset/?id=6034328964";
		["vignette"] = "http://www.roblox.com/asset/?id=6031734905";
		["brightness_2"] = "http://www.roblox.com/asset/?id=6031488938";
		["crop_square"] = "http://www.roblox.com/asset/?id=6031630222";
		["looks_5"] = "http://www.roblox.com/asset/?id=6034412764";
		["flip"] = "http://www.roblox.com/asset/?id=6034333275";
		["looks_one"] = "http://www.roblox.com/asset/?id=6034412761";
		["flash_off"] = "http://www.roblox.com/asset/?id=6034333270";
		["hdr_off"] = "http://www.roblox.com/asset/?id=6034333266";
		["photo_album"] = "http://www.roblox.com/asset/?id=6031770989";
		["motion_photos_paused"] = "http://www.roblox.com/asset/?id=6034323675";
		["photo_camera"] = "http://www.roblox.com/asset/?id=6031770997";
		["2mp"] = "http://www.roblox.com/asset/?id=6031328138";
		["3mp"] = "http://www.roblox.com/asset/?id=6031328136";
		["24mp"] = "http://www.roblox.com/asset/?id=6031360352";
		["filter_9"] = "http://www.roblox.com/asset/?id=6031597534";
		["6mp"] = "http://www.roblox.com/asset/?id=6031328131";
		["remove_red_eye"] = "http://www.roblox.com/asset/?id=6031763426";
		["4mp"] = "http://www.roblox.com/asset/?id=6031328152";
		["add_a_photo"] = "http://www.roblox.com/asset/?id=6031339049";
		["filter_3"] = "http://www.roblox.com/asset/?id=6031597513";
		["crop_5_4"] = "http://www.roblox.com/asset/?id=6034328960";
		["8mp"] = "http://www.roblox.com/asset/?id=6031328133";
		["camera_roll"] = "http://www.roblox.com/asset/?id=6031572314";
		["panorama_wide_angle"] = "http://www.roblox.com/asset/?id=6031770995";
		["transform"] = "http://www.roblox.com/asset/?id=6031734873";
		["flare"] = "http://www.roblox.com/asset/?id=6031600816";
		["image_search"] = "http://www.roblox.com/asset/?id=6034407084";
		["auto_awesome"] = "http://www.roblox.com/asset/?id=6031360365";
		["motion_photos_on"] = "http://www.roblox.com/asset/?id=6034323669";
		["rotate_90_degrees_ccw"] = "http://www.roblox.com/asset/?id=6031763456";
		["filter_1"] = "http://www.roblox.com/asset/?id=6031597511";
		["filter_tilt_shift"] = "http://www.roblox.com/asset/?id=6031600814";
		["image"] = "http://www.roblox.com/asset/?id=6034407078";
		["center_focus_weak"] = "http://www.roblox.com/asset/?id=6031625144";
		["blur_circular"] = "http://www.roblox.com/asset/?id=6031488945";
		["bedtime"] = "http://www.roblox.com/asset/?id=6031371054";
		["auto_fix_high"] = "http://www.roblox.com/asset/?id=6031360355";
		["monochrome_photos"] = "http://www.roblox.com/asset/?id=6034323678";
		["flash_auto"] = "http://www.roblox.com/asset/?id=6034333287";
		["5mp"] = "http://www.roblox.com/asset/?id=6031328144";
		["photo_size_select_large"] = "http://www.roblox.com/asset/?id=6031763423";
		["assistant_photo"] = "http://www.roblox.com/asset/?id=6031339052";
		["animation"] = "http://www.roblox.com/asset/?id=6031625150";
		["looks"] = "http://www.roblox.com/asset/?id=6034407096";
		["17mp"] = "http://www.roblox.com/asset/?id=6031339055";
		["panorama_horizontal_select"] = "http://www.roblox.com/asset/?id=6034315965";
		["flash_on"] = "http://www.roblox.com/asset/?id=6034333271";
		["iso"] = "http://www.roblox.com/asset/?id=6034407106";
		["music_note"] = "http://www.roblox.com/asset/?id=6034323673";
		["music_off"] = "http://www.roblox.com/asset/?id=6034323679";
		["navigate_next"] = "http://www.roblox.com/asset/?id=6034315956";
		["timer"] = "http://www.roblox.com/asset/?id=6031754564";
		["loupe"] = "http://www.roblox.com/asset/?id=6034412770";
		["navigate_before"] = "http://www.roblox.com/asset/?id=6034323696";
		["brightness_1"] = "http://www.roblox.com/asset/?id=6031471488";
		["brightness_7"] = "http://www.roblox.com/asset/?id=6031471491";
		["tonality"] = "http://www.roblox.com/asset/?id=6031734891";
		["brush"] = "http://www.roblox.com/asset/?id=6031572320";
		["colorize"] = "http://www.roblox.com/asset/?id=6031625161";
		["filter_7"] = "http://www.roblox.com/asset/?id=6031597515";
		["16mp"] = "http://www.roblox.com/asset/?id=6031328168";
		["timer_10"] = "http://www.roblox.com/asset/?id=6031734880";
		["portrait"] = "http://www.roblox.com/asset/?id=6031763434";
		["tune"] = "http://www.roblox.com/asset/?id=6031734877";
		["image_not_supported"] = "http://www.roblox.com/asset/?id=6034407076";
		["wb_cloudy"] = "http://www.roblox.com/asset/?id=6031734907";
		["auto_awesome_motion"] = "http://www.roblox.com/asset/?id=6031360370";
		["filter_8"] = "http://www.roblox.com/asset/?id=6031597532";
		["brightness_5"] = "http://www.roblox.com/asset/?id=6031471479";
		["movie_filter"] = "http://www.roblox.com/asset/?id=6034323687";
		["add_photo_alternate"] = "http://www.roblox.com/asset/?id=6031471484";
		["add_to_photos"] = "http://www.roblox.com/asset/?id=6031371075";
		["texture"] = "http://www.roblox.com/asset/?id=6031754553";
		["11mp"] = "http://www.roblox.com/asset/?id=6031328141";
		["mic_external_on"] = "http://www.roblox.com/asset/?id=6034323671";
		["looks_6"] = "http://www.roblox.com/asset/?id=6034412759";
		["dehaze"] = "http://www.roblox.com/asset/?id=6031630200";
		["control_point"] = "http://www.roblox.com/asset/?id=6031625131";
		["panorama_photosphere"] = "http://www.roblox.com/asset/?id=6034412763";
		["filter_frames"] = "http://www.roblox.com/asset/?id=6031600833";
		["auto_awesome_mosaic"] = "http://www.roblox.com/asset/?id=6031371053";
		["9mp"] = "http://www.roblox.com/asset/?id=6031328146";
		["filter"] = "http://www.roblox.com/asset/?id=6031597514";
		["brightness_3"] = "http://www.roblox.com/asset/?id=6031572317";
		["dirty_lens"] = "http://www.roblox.com/asset/?id=6034328967";
		["wb_incandescent"] = "http://www.roblox.com/asset/?id=6034316010";
		["filter_hdr"] = "http://www.roblox.com/asset/?id=6031600819";
		["textsms"] = "http://www.roblox.com/asset/?id=6035202006";
		["comment"] = "http://www.roblox.com/asset/?id=6035181871";
		["call_end"] = "http://www.roblox.com/asset/?id=6035173845";
		["qr_code_scanner"] = "http://www.roblox.com/asset/?id=6035202022";
		["phonelink_setup"] = "http://www.roblox.com/asset/?id=6035202025";
		["call_merge"] = "http://www.roblox.com/asset/?id=6035173843";
		["phonelink_erase"] = "http://www.roblox.com/asset/?id=6035202085";
		["contact_mail"] = "http://www.roblox.com/asset/?id=6035181868";
		["contact_phone"] = "http://www.roblox.com/asset/?id=6035181861";
		["screen_share"] = "http://www.roblox.com/asset/?id=6035202008";
		["present_to_all"] = "http://www.roblox.com/asset/?id=6035202020";
		["stay_primary_portrait"] = "http://www.roblox.com/asset/?id=6035202009";
		["message"] = "http://www.roblox.com/asset/?id=6035202033";
		["sentiment_satisfied_alt"] = "http://www.roblox.com/asset/?id=6035202069";
		["stay_current_portrait"] = "http://www.roblox.com/asset/?id=6035202004";
		["voicemail"] = "http://www.roblox.com/asset/?id=6035202019";
		["business"] = "http://www.roblox.com/asset/?id=6035173853";
		["mail_outline"] = "http://www.roblox.com/asset/?id=6035190844";
		["vpn_key"] = "http://www.roblox.com/asset/?id=6035202034";
		["forward_to_inbox"] = "http://www.roblox.com/asset/?id=6035190840";
		["contacts"] = "http://www.roblox.com/asset/?id=6035181864";
		["phonelink_ring"] = "http://www.roblox.com/asset/?id=6035202066";
		["domain_disabled"] = "http://www.roblox.com/asset/?id=6035181862";
		["person_add_disabled"] = "http://www.roblox.com/asset/?id=6035202007";
		["stay_primary_landscape"] = "http://www.roblox.com/asset/?id=6035202026";
		["alternate_email"] = "http://www.roblox.com/asset/?id=6035173865";
		["phone_disabled"] = "http://www.roblox.com/asset/?id=6035202028";
		["email"] = "http://www.roblox.com/asset/?id=6035181866";
		["mobile_screen_share"] = "http://www.roblox.com/asset/?id=6035202021";
		["live_help"] = "http://www.roblox.com/asset/?id=6035190836";
		["chat_bubble"] = "http://www.roblox.com/asset/?id=6035181858";
		["stop_screen_share"] = "http://www.roblox.com/asset/?id=6035202042";
		["location_on"] = "http://www.roblox.com/asset/?id=6035190846";
		["chat_bubble_outline"] = "http://www.roblox.com/asset/?id=6035181869";
		["dialer_sip"] = "http://www.roblox.com/asset/?id=6035181865";
		["no_sim"] = "http://www.roblox.com/asset/?id=6035202030";
		["list_alt"] = "http://www.roblox.com/asset/?id=6035190838";
		["call"] = "http://www.roblox.com/asset/?id=6035173859";
		["pause_presentation"] = "http://www.roblox.com/asset/?id=6035202015";
		["invert_colors_off"] = "http://www.roblox.com/asset/?id=6035190842";
		["call_missed_outgoing"] = "http://www.roblox.com/asset/?id=6035173847";
		["stay_current_landscape"] = "http://www.roblox.com/asset/?id=6035202011";
		["import_export"] = "http://www.roblox.com/asset/?id=6035202040";
		["add_ic_call"] = "http://www.roblox.com/asset/?id=6035173839";
		["dialpad"] = "http://www.roblox.com/asset/?id=6035181892";
		["nat"] = "http://www.roblox.com/asset/?id=6035202082";
		["unsubscribe"] = "http://www.roblox.com/asset/?id=6035202044";
		["mark_chat_unread"] = "http://www.roblox.com/asset/?id=6035190841";
		["portable_wifi_off"] = "http://www.roblox.com/asset/?id=6035202091";
		["location_off"] = "http://www.roblox.com/asset/?id=6035202049";
		["person_search"] = "http://www.roblox.com/asset/?id=6035202013";
		["phonelink_lock"] = "http://www.roblox.com/asset/?id=6035202064";
		["desktop_access_disabled"] = "http://www.roblox.com/asset/?id=6035181863";
		["import_contacts"] = "http://www.roblox.com/asset/?id=6035190854";
		["rss_feed"] = "http://www.roblox.com/asset/?id=6035202016";
		["chat"] = "http://www.roblox.com/asset/?id=6035173838";
		["print_disabled"] = "http://www.roblox.com/asset/?id=6035202041";
		["mark_email_read"] = "http://www.roblox.com/asset/?id=6035202038";
		["hourglass_top"] = "http://www.roblox.com/asset/?id=6035190886";
		["clear_all"] = "http://www.roblox.com/asset/?id=6035181870";
		["forum"] = "http://www.roblox.com/asset/?id=6035202002";
		["qr_code"] = "http://www.roblox.com/asset/?id=6035202012";
		["speaker_phone"] = "http://www.roblox.com/asset/?id=6035202018";
		["rtt"] = "http://www.roblox.com/asset/?id=6035202010";
		["domain_verification"] = "http://www.roblox.com/asset/?id=6035181867";
		["app_registration"] = "http://www.roblox.com/asset/?id=6035173870";
		["call_split"] = "http://www.roblox.com/asset/?id=6035173861";
		["cell_wifi"] = "http://www.roblox.com/asset/?id=6035173852";
		["phone_enabled"] = "http://www.roblox.com/asset/?id=6035202089";
		["call_made"] = "http://www.roblox.com/asset/?id=6035173858";
		["call_received"] = "http://www.roblox.com/asset/?id=6035173844";
		["phone"] = "http://www.roblox.com/asset/?id=6035202017";
		["ring_volume"] = "http://www.roblox.com/asset/?id=6035202032";
		["mark_email_unread"] = "http://www.roblox.com/asset/?id=6035202027";
		["hourglass_bottom"] = "http://www.roblox.com/asset/?id=6035202043";
		["read_more"] = "http://www.roblox.com/asset/?id=6035202014";
		["duo"] = "http://www.roblox.com/asset/?id=6035181860";
		["more_time"] = "http://www.roblox.com/asset/?id=6035202036";
		["wifi_calling"] = "http://www.roblox.com/asset/?id=6035202065";
		["swap_calls"] = "http://www.roblox.com/asset/?id=6035202037";
		["cancel_presentation"] = "http://www.roblox.com/asset/?id=6035173837";
		["call_missed"] = "http://www.roblox.com/asset/?id=6035173850";
		["mark_chat_read"] = "http://www.roblox.com/asset/?id=6035202031";
		["text_snippet"] = "http://www.roblox.com/asset/?id=6031302995";
		["snippet_folder"] = "http://www.roblox.com/asset/?id=6031302947";
		["workspaces_outline"] = "http://www.roblox.com/asset/?id=6031302952";
		["file_download"] = "http://www.roblox.com/asset/?id=6031302931";
		["request_quote"] = "http://www.roblox.com/asset/?id=6031302941";
		["approval"] = "http://www.roblox.com/asset/?id=6031302928";
		["drive_folder_upload"] = "http://www.roblox.com/asset/?id=6031302929";
		["rule_folder"] = "http://www.roblox.com/asset/?id=6031302940";
		["attach_email"] = "http://www.roblox.com/asset/?id=6031302935";
		["topic"] = "http://www.roblox.com/asset/?id=6031302976";
		["upload_file"] = "http://www.roblox.com/asset/?id=6031302959";
		["attachment"] = "http://www.roblox.com/asset/?id=6031302921";
		["file_download_done"] = "http://www.roblox.com/asset/?id=6031302926";
		["drive_file_move_outline"] = "http://www.roblox.com/asset/?id=6031302924";
		["cloud_upload"] = "http://www.roblox.com/asset/?id=6031302992";
		["cloud_circle"] = "http://www.roblox.com/asset/?id=6031302919";
		["folder_shared"] = "http://www.roblox.com/asset/?id=6031302945";
		["cloud_download"] = "http://www.roblox.com/asset/?id=6031302917";
		["file_upload"] = "http://www.roblox.com/asset/?id=6031302996";
		["workspaces_filled"] = "http://www.roblox.com/asset/?id=6031302961";
		["cloud_queue"] = "http://www.roblox.com/asset/?id=6031302916";
		["cloud"] = "http://www.roblox.com/asset/?id=6031302918";
		["folder_open"] = "http://www.roblox.com/asset/?id=6031302934";
		["grid_view"] = "http://www.roblox.com/asset/?id=6031302950";
		["cloud_off"] = "http://www.roblox.com/asset/?id=6031302993";
		["create_new_folder"] = "http://www.roblox.com/asset/?id=6031302933";
		["cloud_done"] = "http://www.roblox.com/asset/?id=6031302927";
		["folder"] = "http://www.roblox.com/asset/?id=6031302932";
		["drive_file_move"] = "http://www.roblox.com/asset/?id=6031302922";
		["drive_file_rename_outline"] = "http://www.roblox.com/asset/?id=6031302994";
		["notifications_active"] = "http://www.roblox.com/asset/?id=6034304908";
		["sentiment_neutral"] = "http://www.roblox.com/asset/?id=6034230636";
		["sick"] = "http://www.roblox.com/asset/?id=6034230642";
		["poll"] = "http://www.roblox.com/asset/?id=6034267991";
		["emoji_events"] = "http://www.roblox.com/asset/?id=6034275726";
		["groups"] = "http://www.roblox.com/asset/?id=6034281935";
		["sports_soccer"] = "http://www.roblox.com/asset/?id=6034227075";
		["person_add"] = "http://www.roblox.com/asset/?id=6034287514";
		["mood_bad"] = "http://www.roblox.com/asset/?id=6034295706";
		["person_remove_alt_1"] = "http://www.roblox.com/asset/?id=6034287515";
		["king_bed"] = "http://www.roblox.com/asset/?id=6034281948";
		["architecture"] = "http://www.roblox.com/asset/?id=6034275730";
		["deck"] = "http://www.roblox.com/asset/?id=6034295703";
		["group_add"] = "http://www.roblox.com/asset/?id=6034281909";
		["sports_basketball"] = "http://www.roblox.com/asset/?id=6034230649";
		["emoji_symbols"] = "http://www.roblox.com/asset/?id=6034281899";
		["switch_account"] = "http://www.roblox.com/asset/?id=6034227138";
		["remove_moderator"] = "http://www.roblox.com/asset/?id=6034267998";
		["coronavirus"] = "http://www.roblox.com/asset/?id=6034275724";
		["people"] = "http://www.roblox.com/asset/?id=6034287513";
		["person"] = "http://www.roblox.com/asset/?id=6034287594";
		["elderly"] = "http://www.roblox.com/asset/?id=6034295698";
		["clean_hands"] = "http://www.roblox.com/asset/?id=6034275729";
		["emoji_flags"] = "http://www.roblox.com/asset/?id=6034304898";
		["psychology"] = "http://www.roblox.com/asset/?id=6034287516";
		["person_add_alt"] = "http://www.roblox.com/asset/?id=6034267994";
		["sports_volleyball"] = "http://www.roblox.com/asset/?id=6034227139";
		["domain"] = "http://www.roblox.com/asset/?id=6034275722";
		["emoji_objects"] = "http://www.roblox.com/asset/?id=6034281900";
		["ios_share"] = "http://www.roblox.com/asset/?id=6034281941";
		["history_edu"] = "http://www.roblox.com/asset/?id=6034281934";
		["share"] = "http://www.roblox.com/asset/?id=6034230648";
		["military_tech"] = "http://www.roblox.com/asset/?id=6034295711";
		["sports_kabaddi"] = "http://www.roblox.com/asset/?id=6034227141";
		["cake"] = "http://www.roblox.com/asset/?id=6034295702";
		["engineering"] = "http://www.roblox.com/asset/?id=6034281908";
		["emoji_food_beverage"] = "http://www.roblox.com/asset/?id=6034304883";
		["notifications_none"] = "http://www.roblox.com/asset/?id=6034308947";
		["emoji_people"] = "http://www.roblox.com/asset/?id=6034281904";
		["thumb_down_alt"] = "http://www.roblox.com/asset/?id=6034227069";
		["sentiment_very_satisfied"] = "http://www.roblox.com/asset/?id=6034230650";
		["nights_stay"] = "http://www.roblox.com/asset/?id=6034304881";
		["reduce_capacity"] = "http://www.roblox.com/asset/?id=6034268013";
		["add_moderator"] = "http://www.roblox.com/asset/?id=6034295699";
		["science"] = "http://www.roblox.com/asset/?id=6034230640";
		["pages"] = "http://www.roblox.com/asset/?id=6034304892";
		["sentiment_satisfied"] = "http://www.roblox.com/asset/?id=6034230668";
		["plus_one"] = "http://www.roblox.com/asset/?id=6034268012";
		["party_mode"] = "http://www.roblox.com/asset/?id=6034287521";
		["person_remove"] = "http://www.roblox.com/asset/?id=6034267996";
		["single_bed"] = "http://www.roblox.com/asset/?id=6034230651";
		["mood"] = "http://www.roblox.com/asset/?id=6034295704";
		["public"] = "http://www.roblox.com/asset/?id=6034287522";
		["sports_rugby"] = "http://www.roblox.com/asset/?id=6034227073";
		["sports_handball"] = "http://www.roblox.com/asset/?id=6034227074";
		["person_add_alt_1"] = "http://www.roblox.com/asset/?id=6034287519";
		["people_alt"] = "http://www.roblox.com/asset/?id=6034287518";
		["notifications_off"] = "http://www.roblox.com/asset/?id=6034304894";
		["whatshot"] = "http://www.roblox.com/asset/?id=6034287525";
		["emoji_transportation"] = "http://www.roblox.com/asset/?id=6034281894";
		["outdoor_grill"] = "http://www.roblox.com/asset/?id=6034304900";
		["sentiment_very_dissatisfied"] = "http://www.roblox.com/asset/?id=6034230659";
		["masks"] = "http://www.roblox.com/asset/?id=6034295710";
		["luggage"] = "http://www.roblox.com/asset/?id=6034295708";
		["sports_motorsports"] = "http://www.roblox.com/asset/?id=6034227071";
		["sports_esports"] = "http://www.roblox.com/asset/?id=6034227061";
		["location_city"] = "http://www.roblox.com/asset/?id=6034304889";
		["sports_golf"] = "http://www.roblox.com/asset/?id=6034227060";
		["sentiment_dissatisfied"] = "http://www.roblox.com/asset/?id=6034230637";
		["no_luggage"] = "http://www.roblox.com/asset/?id=6034304891";
		["fireplace"] = "http://www.roblox.com/asset/?id=6034281910";
		["emoji_nature"] = "http://www.roblox.com/asset/?id=6034281896";
		["group"] = "http://www.roblox.com/asset/?id=6034281901";
		["thumb_up_alt"] = "http://www.roblox.com/asset/?id=6034227076";
		["sports_tennis"] = "http://www.roblox.com/asset/?id=6034227068";
		["facebook"] = "http://www.roblox.com/asset/?id=6034281898";
		["sports_mma"] = "http://www.roblox.com/asset/?id=6034227072";
		["person_outline"] = "http://www.roblox.com/asset/?id=6034268008";
		["sports_baseball"] = "http://www.roblox.com/asset/?id=6034230652";
		["sports_cricket"] = "http://www.roblox.com/asset/?id=6034230660";
		["people_outline"] = "http://www.roblox.com/asset/?id=6034287528";
		["notifications_paused"] = "http://www.roblox.com/asset/?id=6034304896";
		["emoji_emotions"] = "http://www.roblox.com/asset/?id=6034275731";
		["follow_the_signs"] = "http://www.roblox.com/asset/?id=6034281911";
		["sanitizer"] = "http://www.roblox.com/asset/?id=6034287586";
		["self_improvement"] = "http://www.roblox.com/asset/?id=6034230634";
		["notifications"] = "http://www.roblox.com/asset/?id=6034308946";
		["public_off"] = "http://www.roblox.com/asset/?id=6034287538";
		["recommend"] = "http://www.roblox.com/asset/?id=6034287524";
		["sports_football"] = "http://www.roblox.com/asset/?id=6034227067";
		["sports_hockey"] = "http://www.roblox.com/asset/?id=6034227064";
		["school"] = "http://www.roblox.com/asset/?id=6034230641";
		["connect_without_contact"] = "http://www.roblox.com/asset/?id=6034275800";
		["sports"] = "http://www.roblox.com/asset/?id=6034230647";
		["construction"] = "http://www.roblox.com/asset/?id=6034275725";
		["inventory"] = "http://www.roblox.com/asset/?id=6035056487";
		["add_box"] = "http://www.roblox.com/asset/?id=6035047375";
		["how_to_reg"] = "http://www.roblox.com/asset/?id=6035053288";
		["unarchive"] = "http://www.roblox.com/asset/?id=6035078921";
		["block_flipped"] = "http://www.roblox.com/asset/?id=6035047378";
		["file_copy"] = "http://www.roblox.com/asset/?id=6035053293";
		["bolt"] = "http://www.roblox.com/asset/?id=6035047381";
		["remove_circle_outline"] = "http://www.roblox.com/asset/?id=6035067843";
		["move_to_inbox"] = "http://www.roblox.com/asset/?id=6035067838";
		["save_alt"] = "http://www.roblox.com/asset/?id=6035067842";
		["weekend"] = "http://www.roblox.com/asset/?id=6035078894";
		["where_to_vote"] = "http://www.roblox.com/asset/?id=6035078913";
		["biotech"] = "http://www.roblox.com/asset/?id=6035047385";
		["report_off"] = "http://www.roblox.com/asset/?id=6035067830";
		["clear"] = "http://www.roblox.com/asset/?id=6035047409";
		["redo"] = "http://www.roblox.com/asset/?id=6035056483";
		["link"] = "http://www.roblox.com/asset/?id=6035056475";
		["drafts"] = "http://www.roblox.com/asset/?id=6035053297";
		["push_pin"] = "http://www.roblox.com/asset/?id=6035056481";
		["reply"] = "http://www.roblox.com/asset/?id=6035067844";
		["undo"] = "http://www.roblox.com/asset/?id=6035078896";
		["archive"] = "http://www.roblox.com/asset/?id=6035047379";
		["add"] = "http://www.roblox.com/asset/?id=6035047377";
		["insights"] = "http://www.roblox.com/asset/?id=6035067839";
		["flag"] = "http://www.roblox.com/asset/?id=6035053279";
		["save"] = "http://www.roblox.com/asset/?id=6035067857";
		["text_format"] = "http://www.roblox.com/asset/?id=6035078890";
		["content_cut"] = "http://www.roblox.com/asset/?id=6035053280";
		["ballot"] = "http://www.roblox.com/asset/?id=6035047386";
		["remove"] = "http://www.roblox.com/asset/?id=6035067836";
		["calculate"] = "http://www.roblox.com/asset/?id=6035047384";
		["report"] = "http://www.roblox.com/asset/?id=6035067826";
		["markunread"] = "http://www.roblox.com/asset/?id=6035056476";
		["delete_sweep"] = "http://www.roblox.com/asset/?id=6035053301";
		["gesture"] = "http://www.roblox.com/asset/?id=6035053287";
		["link_off"] = "http://www.roblox.com/asset/?id=6035056484";
		["forward"] = "http://www.roblox.com/asset/?id=6035053298";
		["reply_all"] = "http://www.roblox.com/asset/?id=6035067824";
		["how_to_vote"] = "http://www.roblox.com/asset/?id=6035053295";
		["square_foot"] = "http://www.roblox.com/asset/?id=6035078918";
		["outlined_flag"] = "http://www.roblox.com/asset/?id=6035056486";
		["add_circle"] = "http://www.roblox.com/asset/?id=6035047380";
		["stacked_bar_chart"] = "http://www.roblox.com/asset/?id=6035078892";
		["policy"] = "http://www.roblox.com/asset/?id=6035056512";
		["backspace"] = "http://www.roblox.com/asset/?id=6035047397";
		["sort"] = "http://www.roblox.com/asset/?id=6035078888";
		["content_paste"] = "http://www.roblox.com/asset/?id=6035053285";
		["low_priority"] = "http://www.roblox.com/asset/?id=6035056491";
		["font_download"] = "http://www.roblox.com/asset/?id=6035053275";
		["shield"] = "http://www.roblox.com/asset/?id=6035078889";
		["waves"] = "http://www.roblox.com/asset/?id=6035078898";
		["select_all"] = "http://www.roblox.com/asset/?id=6035067834";
		["dynamic_feed"] = "http://www.roblox.com/asset/?id=6035053289";
		["mail"] = "http://www.roblox.com/asset/?id=6035056477";
		["amp_stories"] = "http://www.roblox.com/asset/?id=6035047382";
		["filter_list"] = "http://www.roblox.com/asset/?id=6035053294";
		["send"] = "http://www.roblox.com/asset/?id=6035067832";
		["create"] = "http://www.roblox.com/asset/?id=6035053304";
		["stream"] = "http://www.roblox.com/asset/?id=6035078897";
		["next_week"] = "http://www.roblox.com/asset/?id=6035067835";
		["inbox"] = "http://www.roblox.com/asset/?id=6035067831";
		["add_link"] = "http://www.roblox.com/asset/?id=6035047374";
		["content_copy"] = "http://www.roblox.com/asset/?id=6035053278";
		["remove_circle"] = "http://www.roblox.com/asset/?id=6035067837";
		["add_circle_outline"] = "http://www.roblox.com/asset/?id=6035047391";
		["block"] = "http://www.roblox.com/asset/?id=6035047387";
		["tag"] = "http://www.roblox.com/asset/?id=6035078895";
		["beach_access"] = "http://www.roblox.com/asset/?id=6035107923";
		["stroller"] = "http://www.roblox.com/asset/?id=6035161535";
		["family_restroom"] = "http://www.roblox.com/asset/?id=6035121916";
		["corporate_fare"] = "http://www.roblox.com/asset/?id=6035121908";
		["no_meeting_room"] = "http://www.roblox.com/asset/?id=6035153649";
		["do_not_touch"] = "http://www.roblox.com/asset/?id=6035121915";
		["ac_unit"] = "http://www.roblox.com/asset/?id=6035107929";
		["business_center"] = "http://www.roblox.com/asset/?id=6035107933";
		["spa"] = "http://www.roblox.com/asset/?id=6035153639";
		["no_flash"] = "http://www.roblox.com/asset/?id=6035145424";
		["no_cell"] = "http://www.roblox.com/asset/?id=6035145376";
		["room_service"] = "http://www.roblox.com/asset/?id=6035153648";
		["tapas"] = "http://www.roblox.com/asset/?id=6035161533";
		["microwave"] = "http://www.roblox.com/asset/?id=6035145367";
		["meeting_room"] = "http://www.roblox.com/asset/?id=6035145361";
		["wash"] = "http://www.roblox.com/asset/?id=6035161540";
		["escalator"] = "http://www.roblox.com/asset/?id=6035121939";
		["house_siding"] = "http://www.roblox.com/asset/?id=6035145393";
		["food_bank"] = "http://www.roblox.com/asset/?id=6035121921";
		["foundation"] = "http://www.roblox.com/asset/?id=6035121918";
		["elevator"] = "http://www.roblox.com/asset/?id=6035121912";
		["room_preferences"] = "http://www.roblox.com/asset/?id=6035153642";
		["do_not_step"] = "http://www.roblox.com/asset/?id=6035121910";
		["free_breakfast"] = "http://www.roblox.com/asset/?id=6035145363";
		["house"] = "http://www.roblox.com/asset/?id=6035145364";
		["child_care"] = "http://www.roblox.com/asset/?id=6035107927";
		["night_shelter"] = "http://www.roblox.com/asset/?id=6035145378";
		["child_friendly"] = "http://www.roblox.com/asset/?id=6035121942";
		["checkroom"] = "http://www.roblox.com/asset/?id=6035107931";
		["hot_tub"] = "http://www.roblox.com/asset/?id=6035145382";
		["dry"] = "http://www.roblox.com/asset/?id=6035121909";
		["charging_station"] = "http://www.roblox.com/asset/?id=6035107925";
		["all_inclusive"] = "http://www.roblox.com/asset/?id=6035107920";
		["bento"] = "http://www.roblox.com/asset/?id=6035107924";
		["no_backpack"] = "http://www.roblox.com/asset/?id=6035145368";
		["storefront"] = "http://www.roblox.com/asset/?id=6035161534";
		["no_food"] = "http://www.roblox.com/asset/?id=6035145372";
		["backpack"] = "http://www.roblox.com/asset/?id=6035107928";
		["stairs"] = "http://www.roblox.com/asset/?id=6035153637";
		["carpenter"] = "http://www.roblox.com/asset/?id=6035107955";
		["no_stroller"] = "http://www.roblox.com/asset/?id=6035153661";
		["roofing"] = "http://www.roblox.com/asset/?id=6035153656";
		["umbrella"] = "http://www.roblox.com/asset/?id=6035161550";
		["sports_bar"] = "http://www.roblox.com/asset/?id=6035153638";
		["apartment"] = "http://www.roblox.com/asset/?id=6035107922";
		["smoke_free"] = "http://www.roblox.com/asset/?id=6035153647";
		["pool"] = "http://www.roblox.com/asset/?id=6035153655";
		["bathtub"] = "http://www.roblox.com/asset/?id=6035107939";
		["no_drinks"] = "http://www.roblox.com/asset/?id=6035145390";
		["escalator_warning"] = "http://www.roblox.com/asset/?id=6035121930";
		["wheelchair_pickup"] = "http://www.roblox.com/asset/?id=6035161536";
		["smoking_rooms"] = "http://www.roblox.com/asset/?id=6035153636";
		["rice_bowl"] = "http://www.roblox.com/asset/?id=6035153662";
		["tty"] = "http://www.roblox.com/asset/?id=6035161541";
		["no_photography"] = "http://www.roblox.com/asset/?id=6035153664";
		["casino"] = "http://www.roblox.com/asset/?id=6035107936";
		["fence"] = "http://www.roblox.com/asset/?id=6035121923";
		["grass"] = "http://www.roblox.com/asset/?id=6035145359";
		["countertops"] = "http://www.roblox.com/asset/?id=6035121914";
		["kitchen"] = "http://www.roblox.com/asset/?id=6035145362";
		["golf_course"] = "http://www.roblox.com/asset/?id=6035145423";
		["soap"] = "http://www.roblox.com/asset/?id=6035153645";
		["water_damage"] = "http://www.roblox.com/asset/?id=6035161563";
		["airport_shuttle"] = "http://www.roblox.com/asset/?id=6035107921";
		["fitness_center"] = "http://www.roblox.com/asset/?id=6035121907";
		["baby_changing_station"] = "http://www.roblox.com/asset/?id=6035107930";
		["fire_extinguisher"] = "http://www.roblox.com/asset/?id=6035121913";
		["sparkle"] = "http://www.roblox.com/asset/?id=4483362748"
	}
}

--// ENDSECTION


--// SECTION : Functions

-- Removes item from a provided table via the value of the item
-- and tablre is not a typo, table was already taken by roblox's core scripting
local function RemoveTable(tablre : table, value)
	for i,v in pairs(tablre) do
		if tostring(v) == tostring(value) then
			table.remove(tablre, i)
		end
	end
end

-- Returns a table with RGB Values of the provided Color
local function PackColor(Color : Color3)
	return {R = Color.R * 255, G = Color.G * 255, B = Color.B * 255}
end    

-- Returns a color with the RGB Values of the provided table
local function UnpackColor(Color : table)
	return Color3.fromRGB(Color.R, Color.G, Color.B)
end

-- A QOL Function made to make tweening easier and simpler
function Tween(object : Instance, goal : table, callback, tweenin)
	local tween = TweenService:Create(object,tweenin or tweenInfo(), goal)
	tween.Completed:Connect(callback or function() end)
	tween:Play()
end

local function GetIcon(icon, source)
	if source == "Custom" then
		return "rbxassetid://" .. icon
	elseif source == "Lucide" then
		-- full credit to latte softworks :)
		local iconData = not isStudio and game:HttpGet("https://raw.githubusercontent.com/latte-soft/lucide-roblox/refs/heads/master/lib/Icons.luau")
		local icons = isStudio and IconModule.Lucide or loadstring(iconData)()
		if not isStudio then
			icon = string.match(string.lower(icon), "^%s*(.*)%s*$") :: string
			local sizedicons = icons['48px']

			local r = sizedicons[icon]
			if not r then
				error("Lucide Icons: Failed to find icon by the name of \"" .. icon .. "\.", 2)
			end

			local rirs = r[2]
			local riro = r[3]

			if type(r[1]) ~= "number" or type(rirs) ~= "table" or type(riro) ~= "table" then
				error("Lucide Icons: Internal error: Invalid auto-generated asset entry")
			end

			local irs = Vector2.new(rirs[1], rirs[2])
			local iro = Vector2.new(riro[1], riro[2])

			local asset = {
				id = r[1],
				imageRectSize = irs,
				imageRectOffset = iro,
			}

			return asset
		else
			return "rbxassetid://10723434557"
		end
	else	
		if icon ~= nil and IconModule[source] then
			local sourceicon = IconModule[source]
			return sourceicon[icon]
		else
			return nil
		end
	end
end

-- Creates the BlurBehind Effect for the transparent theme
local function BlurModule(Frame : Frame)
	local RunService = game:GetService('RunService')
	local camera = workspace.CurrentCamera
	local MTREL = "Glass"
	local binds = {}
	local root = Instance.new('Folder', camera)
	root.Name = 'StarlightBlur'

	local gTokenMH = 99999999
	local gToken = math.random(1, gTokenMH)

	local DepthOfField = Instance.new('DepthOfFieldEffect', game:GetService('Lighting'))
	DepthOfField.FarIntensity = 0
	DepthOfField.FocusDistance = 51.6
	DepthOfField.InFocusRadius = 50
	DepthOfField.NearIntensity = 6
	DepthOfField.Name = "DPT_"..gToken

	local frame = Instance.new('Frame')
	frame.Parent = Frame
	frame.Size = UDim2.new(0.95, 0, 0.95, 0)
	frame.Position = UDim2.new(0.5, 0, 0.5, 0)
	frame.AnchorPoint = Vector2.new(0.5, 0.5)
	frame.BackgroundTransparency = 1

	local GenUid; do -- Generate unique names for RenderStepped bindings
		local id = 0
		function GenUid()
			id = id + 1
			return 'neon::'..tostring(id)
		end
	end

	do
		local function IsNotNaN(x)
			return x == x
		end
		local continue = IsNotNaN(camera:ScreenPointToRay(0,0).Origin.x)
		while not continue do
			RunService.RenderStepped:wait()
			continue = IsNotNaN(camera:ScreenPointToRay(0,0).Origin.x)
		end
	end

	local DrawQuad; do

		local acos, max, pi, sqrt = math.acos, math.max, math.pi, math.sqrt
		local sz = 0.22
		local function DrawTriangle(v1, v2, v3, p0, p1) -- I think Stravant wrote this function

			local s1 = (v1 - v2).magnitude
			local s2 = (v2 - v3).magnitude
			local s3 = (v3 - v1).magnitude
			local smax = max(s1, s2, s3)
			local A, B, C
			if s1 == smax then
				A, B, C = v1, v2, v3
			elseif s2 == smax then
				A, B, C = v2, v3, v1
			elseif s3 == smax then
				A, B, C = v3, v1, v2
			end

			local para = ( (B-A).x*(C-A).x + (B-A).y*(C-A).y + (B-A).z*(C-A).z ) / (A-B).magnitude
			local perp = sqrt((C-A).magnitude^2 - para*para)
			local dif_para = (A - B).magnitude - para

			local st = CFrame.new(B, A)
			local za = CFrame.Angles(pi/2,0,0)

			local cf0 = st

			local Top_Look = (cf0 * za).lookVector
			local Mid_Point = A + CFrame.new(A, B).lookVector * para
			local Needed_Look = CFrame.new(Mid_Point, C).lookVector
			local dot = Top_Look.x*Needed_Look.x + Top_Look.y*Needed_Look.y + Top_Look.z*Needed_Look.z

			local ac = CFrame.Angles(0, 0, acos(dot))

			cf0 = cf0 * ac
			if ((cf0 * za).lookVector - Needed_Look).magnitude > 0.01 then
				cf0 = cf0 * CFrame.Angles(0, 0, -2*acos(dot))
			end
			cf0 = cf0 * CFrame.new(0, perp/2, -(dif_para + para/2))

			local cf1 = st * ac * CFrame.Angles(0, pi, 0)
			if ((cf1 * za).lookVector - Needed_Look).magnitude > 0.01 then
				cf1 = cf1 * CFrame.Angles(0, 0, 2*acos(dot))
			end
			cf1 = cf1 * CFrame.new(0, perp/2, dif_para/2)

			if not p0 then
				p0 = Instance.new('Part')
				p0.TopSurface = 0
				p0.BottomSurface = 0
				p0.Anchored = true
				p0.CanCollide = false
				p0.CastShadow = false
				p0.Material = MTREL
				p0.Size = Vector3.new(sz, sz, sz)
				local mesh = Instance.new('SpecialMesh', p0)
				mesh.MeshType = 2
				mesh.Name = 'WedgeMesh'
			end
			p0.WedgeMesh.Scale = Vector3.new(0, perp/sz, para/sz)
			p0.CFrame = cf0

			if not p1 then
				p1 = p0:clone()
			end
			p1.WedgeMesh.Scale = Vector3.new(0, perp/sz, dif_para/sz)
			p1.CFrame = cf1

			return p0, p1
		end

		function DrawQuad(v1, v2, v3, v4, parts)
			parts[1], parts[2] = DrawTriangle(v1, v2, v3, parts[1], parts[2])
			parts[3], parts[4] = DrawTriangle(v3, v2, v4, parts[3], parts[4])
		end
	end

	if binds[frame] then
		return binds[frame].parts
	end

	local uid = GenUid()
	local parts = {}
	local f = Instance.new('Folder', root)
	f.Name = frame.Name

	local parents = {}
	do
		local function add(child)
			if child:IsA'GuiObject' then
				parents[#parents + 1] = child
				add(child.Parent)
			end
		end
		add(frame)
	end

	local function UpdateOrientation(fetchProps)
		local properties = {
			Transparency = 0.98;
			BrickColor = BrickColor.new('Institutional white');
		}
		local zIndex = 1 - 0.05*frame.ZIndex

		local tl, br = frame.AbsolutePosition, frame.AbsolutePosition + frame.AbsoluteSize
		local tr, bl = Vector2.new(br.x, tl.y), Vector2.new(tl.x, br.y)
		do
			local rot = 0;
			for _, v in ipairs(parents) do
				rot = rot + v.Rotation
			end
			if rot ~= 0 and rot%180 ~= 0 then
				local mid = tl:lerp(br, 0.5)
				local s, c = math.sin(math.rad(rot)), math.cos(math.rad(rot))
				local vec = tl
				tl = Vector2.new(c*(tl.x - mid.x) - s*(tl.y - mid.y), s*(tl.x - mid.x) + c*(tl.y - mid.y)) + mid
				tr = Vector2.new(c*(tr.x - mid.x) - s*(tr.y - mid.y), s*(tr.x - mid.x) + c*(tr.y - mid.y)) + mid
				bl = Vector2.new(c*(bl.x - mid.x) - s*(bl.y - mid.y), s*(bl.x - mid.x) + c*(bl.y - mid.y)) + mid
				br = Vector2.new(c*(br.x - mid.x) - s*(br.y - mid.y), s*(br.x - mid.x) + c*(br.y - mid.y)) + mid
			end
		end
		DrawQuad(
			camera:ScreenPointToRay(tl.x, tl.y, zIndex).Origin, 
			camera:ScreenPointToRay(tr.x, tr.y, zIndex).Origin, 
			camera:ScreenPointToRay(bl.x, bl.y, zIndex).Origin, 
			camera:ScreenPointToRay(br.x, br.y, zIndex).Origin, 
			parts
		)
		if fetchProps then
			for _, pt in pairs(parts) do
				pt.Parent = f
			end
			for propName, propValue in pairs(properties) do
				for _, pt in pairs(parts) do
					pt[propName] = propValue
				end
			end
		end

	end

	UpdateOrientation(true)
	RunService:BindToRenderStep(uid, 2000, UpdateOrientation)
end

-- Unpacks A Table, Returning it as string containing a list of the values or "Various" if there are more than 3
local function UnpackTable(array : table)

	local val = ""
	local i = 0
	for _,v in pairs(array) do
		if i < 3 then
			val = val .. v .. ", "
			i += 1
		else
			val = "Various"
			break
		end
	end

	return val
end

--// SUBSECTION : Window Functions

-- this is a way to allow for tweening cus roblox doesnt have opacity yet and my lazy ass is not gonna be able to set each and every value without crashing out - also this makes it extremely future/change proof
-- Table for Transparency Values Of All Instances
local TransparencyValues = {
	["TEMPLATE"] = {
		BackgroundTransparency = nil,
		TextTransparency = nil,
		Transparency = nil,
		ImageTransparency = nil,
	}
}

local oldSizeX, oldSizeY, oldPosX, oldPosY

-- Hides the given MainWindow
local function Hide(Interface : ScreenGui, JustHide : boolean?, Notify : boolean?, Bind : string?)
	
	JustHide = JustHide or false
	
	-- Clear Table
	table.clear(TransparencyValues)
	
	for i,v in pairs(Interface:GetDescendants()) do
		if  v.ClassName ~= "Folder" 
			or v.ClassName ~= "UICorner" 
			or v.ClassName ~= "StringValue"
			or v.ClassName ~= "Color3Value" 
			or v.ClassName ~= "UIListLayout" 
			or v.ClassName ~= "UITextSizeConstraint" 
			or v.ClassName ~= "UIPadding"
			or v.ClassName ~= "UIPageLayout"
			or v.ClassName ~= "UISizeConstraint"
			or v.ClassName ~= "UIAspectRatioConstraint"
		then
			-- Create And Set Subtables
			if JustHide == false then
				
				v:SetAttribute("InstanceID", game:GetService("HttpService"):GenerateGUID(false)) -- we are doing this cus roblox fucking removed/disabled the UniqueId feature, and stuff might have the same name
				
				TransparencyValues[v:GetAttribute("InstanceID")] = { }
				
				if v.ClassName == "Frame" then
					TransparencyValues[v:GetAttribute("InstanceID")].BackgroundTransparency = v.BackgroundTransparency
				end
				
				if v.ClassName == "TextLabel" or v.ClassName == "TextBox" or v.ClassName == "TextButton" then
					TransparencyValues[v:GetAttribute("InstanceID")].BackgroundTransparency = v.BackgroundTransparency
					TransparencyValues[v:GetAttribute("InstanceID")].TextTransparency = v.TextTransparency
				end
				
				if v.ClassName == "ImageLabel" or v.ClassName == "ImageButton" then
					TransparencyValues[v:GetAttribute("InstanceID")].BackgroundTransparency = v.BackgroundTransparency
					TransparencyValues[v:GetAttribute("InstanceID")].ImageTransparency = v.ImageTransparency
				end
				
				-- do this cus roblox gui stuff have a although deprecated class, its still accesible by scripts
				-- and sets text and transparency values which is smth we dont want
				if v.ClassName == "UIStroke" or v.ClassName == "UIGradient" then
					TransparencyValues[v:GetAttribute("InstanceID")].Transparency = v.Transparency
				end
				
				Starlight.Minimized = true
			end
			
			
			-- Actually Hide The Stuff
			if v.ClassName == "Frame" then
				Tween(v, {BackgroundTransparency = 1})
			end

			if v.ClassName == "TextLabel" or v.ClassName == "TextBox" or v.ClassName == "TextButton" then
				Tween(v, {BackgroundTransparency = 1})
				Tween(v, {TextTransparency = 1})
			end

			if v.ClassName == "ImageLabel" or v.ClassName == "ImageButton" then
				Tween(v, {BackgroundTransparency = 1})
				Tween(v, {ImageTransparency = 1})
			end
			
			if v.ClassName == "UIStroke" then
				Tween(v, {Transparency = 1})
			end
		end
	end
end

-- Unhides the given window which has been hidden by hide
local function Unhide(Interface : ScreenGui)
	for i,v in pairs(Interface:GetDescendants()) do
		if  v.ClassName ~= "Folder" 
			or v.ClassName ~= "UICorner" 
			or v.ClassName ~= "StringValue"
			or v.ClassName ~= "Color3Value" 
			or v.ClassName ~= "UIListLayout" 
			or v.ClassName ~= "UITextSizeConstraint" 
			or v.ClassName ~= "UIPadding"
			or v.ClassName ~= "UIPageLayout"
			or v.ClassName ~= "UISizeConstraint"
			or v.ClassName ~= "UIAspectRatioConstraint"
		then
		
			if v.ClassName == "Frame" then
				Tween(v, {BackgroundTransparency = TransparencyValues[v:GetAttribute("InstanceID")].BackgroundTransparency})
			end

			if v.ClassName == "TextLabel" or v.ClassName == "TextBox" or v.ClassName == "TextButton" then
				Tween(v, {BackgroundTransparency = TransparencyValues[v:GetAttribute("InstanceID")].BackgroundTransparency})
				Tween(v, {TextTransparency = TransparencyValues[v:GetAttribute("InstanceID")].TextTransparency})
			end

			if v.ClassName == "ImageLabel" or v.ClassName == "ImageButton" then
				Tween(v, {BackgroundTransparency = TransparencyValues[v:GetAttribute("InstanceID")].BackgroundTransparency})
				Tween(v, {ImageTransparency = TransparencyValues[v:GetAttribute("InstanceID")].ImageTransparency})
			end

			if v.ClassName == "UIStroke" then
				Tween(v, {Transparency = TransparencyValues[v:GetAttribute("InstanceID")].Transparency})
			end
		end
	end
	
	Starlight.Minimized = false
end

-- Maximizes the window
local function Maximize(Window : Frame)
	oldSizeX = Window.Size.X.Offset
	oldSizeY = Window.Size.Y.Offset
	oldPosX = Window.Position.X.Offset
	oldPosY = Window.Position.Y.Offset

	Tween(Window, {Size = UDim2.fromScale(1,1)}, nil, tweenInfo(nil, nil, 0.38))
	Tween(Window, {Position = UDim2.fromOffset(0,0)}, nil, tweenInfo(nil, nil, 0.38))

	Starlight.Maximized = true
end

-- Unmaximizes the window and sets it to its previous size
local function Unmaximize(Window : Frame, Dragging : boolean?)
	Dragging = Dragging or false

	Tween(Window, {Size = UDim2.fromOffset(oldSizeX, oldSizeY)})
	if not Dragging then
		Tween(Window, {Position = UDim2.fromOffset(oldPosX, oldPosY)})
	end

	Starlight.Maximized = false
end

-- A Function to make an object movable via dragging another object
-- Taken From Luna Interface Suite, A Nebula Softworks Product
local function makeDraggable(Bar, Window : Frame, enableTaptic, tapticOffset)
	pcall(function()
		local Dragging, DragInput, MousePos, FramePos
		
		local dragBar = Window.Parent.Drag
		local dragInteract = dragBar.Interact
		local dragBarCosmetic = dragBar.DragCosmetic

		local function connectFunctions()
			if dragBar and enableTaptic then
				dragBar.MouseEnter:Connect(function()
					if not Dragging then
						TweenService:Create(dragBarCosmetic, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {BackgroundTransparency = 0.5, Size = UDim2.new(0, 120, 0, 4)}):Play()
					end
				end)

				dragBar.MouseLeave:Connect(function()
					if not Dragging then
						TweenService:Create(dragBarCosmetic, TweenInfo.new(0.25, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {BackgroundTransparency = 0.7, Size = UDim2.new(0, 100, 0, 4)}):Play()
					end
				end)
			end
		end

		connectFunctions()

		Bar.InputBegan:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then
				Dragging = true
				MousePos = Input.Position
				FramePos = Window.Position

				if enableTaptic then
					TweenService:Create(dragBarCosmetic, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 110, 0, 4), BackgroundTransparency = 0}):Play()
				end

				Input.Changed:Connect(function()
					if Input.UserInputState == Enum.UserInputState.End then
						Dragging = false
						connectFunctions()

						if enableTaptic then
							TweenService:Create(dragBarCosmetic, TweenInfo.new(0.35, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {Size = UDim2.new(0, 100, 0, 4), BackgroundTransparency = 0.7}):Play()
						end
					end
				end)
			end
		end)

		Bar.InputChanged:Connect(function(Input)
			if Input.UserInputType == Enum.UserInputType.MouseMovement or Input.UserInputType == Enum.UserInputType.Touch then
				DragInput = Input
			end
		end)

		UserInputService.InputChanged:Connect(function(Input)
			if Input == DragInput and Dragging then
				local Delta = Input.Position - MousePos

				local newMainPosition = UDim2.new(FramePos.X.Scale, FramePos.X.Offset + Delta.X, FramePos.Y.Scale, FramePos.Y.Offset + Delta.Y)
				TweenService:Create(Window, TweenInfo.new(0.35, Enum.EasingStyle.Exponential, Enum.EasingDirection.Out), {Position = newMainPosition}):Play()

				local newDragBarPosition = UDim2.new(FramePos.X.Scale, FramePos.X.Offset + Delta.X + (Window.Size.X.Offset/2), FramePos.Y.Scale, FramePos.Y.Offset + (Window.Size.Y.Offset/2) + Delta.Y + (tapticOffset or 295))
				dragBar.Position = newDragBarPosition
			end
		end)

	end)
end

--// ENDSUBSECTION

--// ENDSECTION


--// SECTION : Interface Management

-- Interface Model
local StarlightUI : ScreenGui = isStudio and script.Parent:WaitForChild("Starlight V2") or game:GetObjects("rbxassetid://115378917859034")[1]
local buildAttempts = 0
local correctBuild = false
local warned

StarlightUI.Name = (((getgenv and getgenv().InterfaceName) or StarlightUI.Name) or "Starlight Interface Suite")
Starlight.Instance = StarlightUI

repeat
	
	if StarlightUI:FindFirstChild('Build') and StarlightUI.Build.Value == Starlight.InterfaceBuild then
		correctBuild = true
		break
	end

	correctBuild = false

	if not warned then
		-- notification-fy this once notifs are done
		warn('Starlight | Build Mismatch')
		print('Starlight may run into issues as you are running an incompatible interface version ('.. (StarlightUI:FindFirstChild('Build') and StarlightUI.Build.Value or 'No Build') ..'). of Starlight\n\nThis version of Starlight is intended for interface build '..Starlight.InterfaceBuild..'.')
		warned = true
	end

	if StarlightUI and not isStudio then StarlightUI:Destroy() end
	StarlightUI = isStudio and script.Parent:WaitForChild("Starlight V2") or game:GetObjects("rbxassetid://115378917859034")[1]

	buildAttempts += 1
	
until buildAttempts >= 2

-- Sets The Interface Into Roblox's GUI
if gethui then
	StarlightUI.Parent = gethui()
	
elseif syn and syn.protect_gui then 
	syn.protect_gui(StarlightUI)
	
	StarlightUI.Parent = CoreGui
	
elseif not isStudio and CoreGui:FindFirstChild("RobloxGui") then
	StarlightUI.Parent = CoreGui:FindFirstChild("RobloxGui")
	
elseif not isStudio then
	StarlightUI.Parent = CoreGui
end

-- hides all old interfaces
if gethui then
	for _, Interface in ipairs(gethui():GetChildren()) do
		if Interface.Name == StarlightUI.Name and Interface ~= StarlightUI then
			Hide(Interface, true)
			task.wait()
			Interface:Destroy()
		end
	end
elseif not isStudio then
	for _, Interface in ipairs(CoreGui:GetChildren()) do
		if Interface.Name == StarlightUI.Name and Interface ~= StarlightUI then
			Hide(Interface, true)
			task.wait()
			Interface:Destroy()
		end
	end
end

-- sets the starting variables
StarlightUI.Enabled = false
StarlightUI.MainWindow.Visible = false
StarlightUI.MainWindow.AnchorPoint = Vector2.zero
StarlightUI.MainWindow.Position = UDim2.fromOffset(
	Camera.ViewportSize.X / 2 - StarlightUI.MainWindow.Size.X.Offset / 2,
	Camera.ViewportSize.Y / 2 - StarlightUI.MainWindow.Size.Y.Offset / 2
)

--// SUBSECTION : Interface Variables

local mainWindow : Frame = StarlightUI.MainWindow
local Resources = StarlightUI.Resources
local navigation : Frame = mainWindow.Sidebar.Navigation
local tabs : Frame = mainWindow.Content.ContentMain.Elements
local Resizing = false -- Not Implemented as of Alpha Release 1
local ResizePos = false -- Not Implemented as of Alpha Release 1

--// ENDSUBSECTION 

--// ENDSECTION


--// SECTION : Library Functions

-- Destroys The Interface
function Starlight:Destroy()
	StarlightUI:Destroy()
end

-- Create the Window
function Starlight:CreateWindow(WindowSettings)
	
	-- The Options Table
	--[[
	
	WindowSettings = {
		Name = string,
		Subtitle = string,
		Icon = number (asset id), **
		
		LoadingEnabled = bool,
		LoadingSettings = {
			Style = number,
			Title = string,
			Subtitle = string,
			Logo = number (asset id), **
		},
		
		BuildWarnings = bool, **
		InterfaceAdvertisingPrompts = bool, **
		
		ConfigurationSettings = {
			Enabled = bool,
			RootFolder = string, **
			FolderName = string, ****
		},
		
		DefaultSize = UDim2, **
		
		KeySystem = {
			Enabled = bool,
			Title = string, ****
			Subtitle = string, ****
			Note = string, ****
			
			SaveKey = bool, ****
			KeyFile = string, ****
			
			KeyObtainLink = string, ****
			Discord = string, ****
			
			HttpKey = bool, ****
			Keys = {string, string...}, ****
		},
		
		Discord = { -- u can still have it in the home tab, this is just auto join
			Enabled = bool,
			RememberJoins = bool, ****
			Link = string ****
		},
	}
	
	]]--
	
	WindowSettings.LoadingEnabled = true
	
	Starlight.Window = {
		Instance = mainWindow,
		TabSections = {},
		CurrentTab = nil,
		Settings = nil,
		CurrentSize = mainWindow.Size,
		
		Values = {
			Title = WindowSettings.Name,
			Subtitle = WindowSettings.Subtitle,
			Icon = WindowSettings.Icon or nil,
			
			BuildWarnings = WindowSettings.BuildWarnings,
			InterfaceAdvertisingPrompts = WindowSettings.InterfaceAdvertisingPrompts,
			
			AnalyticsWebHook = WindowSettings.AnalyticsWebHook,
			
			ConfigurationSettings = {
				Enabled = WindowSettings.ConfigurationSettings.Enabled,
				RootFolder = WindowSettings.ConfigurationSettings.RootFolder,
				FolderName = WindowSettings.ConfigurationSettings.FolderName,
			},
			
			Monetization = WindowSettings.Monetization
		}
	}
	
	--// SUBSECTION : Initial Code
	do
		local loadingScreenLogoChanged = false

		Hide(StarlightUI, false, false)

		mainWindow.Size = WindowSettings.DefaultSize ~= nil and WindowSettings.DefaultSize or mainWindow.Size

		if WindowSettings.Icon ~= nil then mainWindow.Sidebar.Icon.Image = "rbxassetid://" .. WindowSettings.Icon end
		mainWindow.Visible = true
		mainWindow.Size = WindowSettings.LoadingEnabled and UDim2.fromOffset(mainWindow.Size.X.Offset - 65, mainWindow.Size.Y.Offset - 55) or mainWindow.Size
		StarlightUI.MainWindow.Position = UDim2.fromOffset(
			Camera.ViewportSize.X / 2 - StarlightUI.MainWindow.Size.X.Offset / 2,
			Camera.ViewportSize.Y / 2 - StarlightUI.MainWindow.Size.Y.Offset / 2
		)
		StarlightUI.Drag.Position = WindowSettings.LoadingEnabled and UDim2.new(0.5,0,0.5,270) or UDim2.new(0.5,0,0.5,290)

		mainWindow["Loading Screen"].Version.Text = WindowSettings.LoadingSettings.Title == "Starlight Interface Suite" and Release or "Starlight Interface Suite " .. Release
		mainWindow["Loading Screen"].Frame.SubFrame.Title.Text = WindowSettings.LoadingSettings.Title or ""
		mainWindow["Loading Screen"].Frame.SubFrame.Subtitle.Text = WindowSettings.LoadingSettings.Subtitle or ""
		if WindowSettings.LoadingSettings.Logo then
			mainWindow["Loading Screen"].Frame.ImageLabel.Image = "rbxassetid://" .. WindowSettings.LoadingSettings.Logo
			loadingScreenLogoChanged = true
		end

		mainWindow.Content.Topbar.PlayerIcon.Image = Players:GetUserThumbnailAsync(Player.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size48x48)

		if Starlight.BlurEnabled then
			mainWindow.Sidebar.BackgroundTransparency = 1
			mainWindow.Sidebar.CornerRepair.BackgroundTransparency = 1

			mainWindow.Content.Topbar.BackgroundTransparency = 1
			mainWindow.Content.Topbar.CornerRepairHorizontal.BackgroundTransparency = 1
			mainWindow.Content.Topbar.CornerRepairVertical.BackgroundTransparency = 1

			mainWindow.BackgroundTransparency = 1

			mainWindow.Content.ContentMain.CornerRepairHorizontal.BackgroundTransparency = 0.8
			mainWindow.Content.ContentMain.CornerRepairVertical.BackgroundTransparency = 0.8
			mainWindow.Content.ContentMain.BackgroundTransaprency = 0.8

			BlurModule(mainWindow)
		end

		mainWindow["Loading Screen"].Visible = true
		task.wait(1)
		Unhide(StarlightUI, false, false)

		makeDraggable(mainWindow.Content.Topbar, mainWindow)
		makeDraggable(mainWindow.Sidebar, mainWindow)
		if StarlightUI.Drag then makeDraggable(StarlightUI.Drag.Interact, mainWindow, true, 295, StarlightUI.Drag) end

		if WindowSettings.LoadingEnabled then

			-- like this cus uhh tween method dont got all the properties
			if WindowSettings.LoadingSettings.Logo == nil then
				TweenService:Create(mainWindow["Loading Screen"].Frame.ImageLabel, TweenInfo.new(1.7, Enum.EasingStyle.Back, Enum.EasingDirection.Out, 2, false, 0.2), {Rotation = 450}):Play()
			end

			task.wait(3)

			Hide(mainWindow["Loading Screen"], true, false, false)

			task.wait()

			Tween(mainWindow, {
				Size = UDim2.fromOffset(mainWindow.Size.X.Offset + 65, mainWindow.Size.Y.Offset + 55),
				Position = UDim2.fromOffset(
					Camera.ViewportSize.X / 2 - (mainWindow.Size.X.Offset + 65) / 2,
					Camera.ViewportSize.Y / 2 - (mainWindow.Size.Y.Offset + 55) / 2
				)
			})
			Tween(StarlightUI.Drag, {
				Position = UDim2.new(0.5, 0, 0.5, 290)
			})
		end

		mainWindow["Loading Screen"].Visible = false
	end
	--// ENDSUBSECTION
	
	--// SUBSECTION : User Functions (Like Creating Elements)

	local FirstTab = true
	
	function Starlight.Window:CreateTabSection(Name :string, Visible)
		
		Visible = Visible or (Name ~= nil and true or false)
		Name = Name or "Empty Section"
		
		local TabSection = {
			Tabs = {},
			Name = Name
		}
		
		TabSection.Instance = navigation.NavigationSectionTemplate:Clone()
		TabSection.Instance.TabButtonTemplate:Destroy()
		TabSection.Instance.Visible = true
		
		TabSection.Instance.Header.Text = Name
		TabSection.Instance.Name = "TAB_SECTION_"..Name
		TabSection.Instance.Header.Visible = Visible
		
		--// SUBSECTION : User Functions
		
		function TabSection:Set(NewName)
			Name = NewName
			TabSection.Instance.Header.Text = Name
			TabSection.Instance.Name = "TAB_SECTION_"..Name
			Starlight.Window.TabSections[Name] = TabSection
		end
		
		-- uhh not currently added
		--[[function TabSection:CreateHomeTab(HomeTabSettings)

		end]]

		function TabSection:CreateTab(TabSettings)
			-- Tab Settings Table
			--[[
			
			TabSettings = {
				Name = string,
				Columns = number, (ranged from 1-3)
				Icon = number/string, **
				ImageSource = string **
			}
			
			]]
			
			TabSettings.Icon = TabSettings.Icon or "view_in_ar"
			TabSettings.ImageSource = TabSettings.ImageSource or "Material"
			
			local Tab = {
				Instances = {},
				Values = TabSettings,
				Groupboxes = {}
			}
			
			Tab.Instances.Button = navigation.NavigationSectionTemplate.TabButtonTemplate:Clone()
			Tab.Instances.Button.Visible = true
			
			Tab.Instances.Button.Header.Text = TabSettings.Name
			Tab.Instances.Button.Name = "TAB_" .. TabSettings.Name
			Tab.Instances.Button.Icon.Image = GetIcon(TabSettings.Icon, TabSettings.ImageSource)
			
			Tab.Instances.Page = tabs["Tab_TEMPLATE"]:Clone()
			for i,v in pairs(Tab.Instances.Page:GetChildren()) do
				if v.ClassName == "ScrollingFrame" then
					v:Destroy()
				end
			end
			Tab.Instances.Page.Visible = true
			Tab.Instances.Page.Name = "TAB_" .. TabSettings.Name
			
			Tab.Instances.Page.LayoutOrder = #tabs:GetChildren() - 2
			Tab.Instances.Page.Parent = tabs
			
			local function Activate() -- so i dont have to rewrite shit again
				
				Tween(Tab.Instances.Button, {BackgroundTransparency = 0.65})
				Tween(Tab.Instances.Button.Icon, {ImageColor3 = Color3.new(1,1,1)})
				Tween(Tab.Instances.Button.Header, {TextColor3 = Color3.new(1,1,1)})
				Tab.Instances.Button.Icon.Accent.Enabled = true
				Tab.Instances.Button.Header.Accent.Enabled = true
				
				tabs.UIPageLayout:JumpTo(Tab.Instances.Page)
				
				for _, OtherTabSection in pairs(navigation:GetChildren()) do
					for _, OtherTab in pairs(OtherTabSection:GetChildren()) do
						if OtherTab.ClassName == "Frame" and OtherTab ~= Tab.Instances.Button then
							Tween(OtherTab, {BackgroundTransparency = 1})
							Tween(OtherTab.Icon, {ImageColor3 = Color3.fromRGB(165,165,165)})
							Tween(OtherTab.Header, {TextColor3 = Color3.fromRGB(165,165,165)}) 
							OtherTab.Icon.Accent.Enabled = false
							OtherTab.Header.Accent.Enabled = false
						end
					end
				end
				
				Starlight.Window.CurrentTab = Tab
				
			end
			
			Tab.Instances.Button.Interact["MouseButton1Click"]:Connect(function()
				Activate()
			end)
			
			if FirstTab then
				Activate()
			end
			
			FirstTab = false
			
			for i=1, TabSettings.Columns do
				local column = tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate:Clone()
				column.Parent = Tab.Instances.Page
				column.LayoutOrder = i
				column.Name = "Column_" .. i
				for i,v in column:GetChildren() do
					if v.ClassName ~= "UIListLayout" then
						v:Destroy()
					end
				end
			end
			
			--// SUBSECTION : User Functions
			
			function Tab:Set(NewTabSettings)
				TabSettings = NewTabSettings
				Tab.Values = TabSettings
				Tab.Instances.Button.Header.Text = TabSettings.Name
				Tab.Instances.Button.Name = "TAB_" .. TabSettings.Name
				Tab.Instances.Button.Icon.Image = GetIcon(TabSettings.Icon, TabSettings.ImageSource)
				Starlight.Window.TabSections[Name].Tabs[TabSettings.Name] = Tab
			end
			
			function Tab:Destroy()
				Tab.Instances.Button:Destroy()
				Tab.Instances.Page:Destroy()
			end
			
			function Tab:CreateDivider(Column) -- will be changed in next update to be other items where its linked back to the library
				local Divider = {}
				
				Divider.Instance = tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate.Divider:Clone()
				Divider.Instance.Parent = Tab.Instances.Page["Column_" .. Column]
				
				function Divider:Destroy()
					Divider.Instance:Destroy()
				end
				
				return Divider
			end
			
			function Tab:CreateGroupbox(GroupboxSettings)
				--[[
				GroupboxSettings = {
					Name = string,
					Icon = number/string, **
					ImageSource = string, **
					Column = number,**
					Style = number, ** -- the style cannot be updated after creation
				}
				]]
				
				GroupboxSettings.Icon = GroupboxSettings.Icon or "view_in_ar"
				GroupboxSettings.ImageSource = GroupboxSettings.ImageSource or "Material"
				GroupboxSettings.Column = GroupboxSettings.Column or 1
				GroupboxSettings.Style = GroupboxSettings.Style or 1
				
				local Groupbox = {
					Values = GroupboxSettings,
					Elements = {},
					ParentingItem = nil
				}
				
				Groupbox.Instance = nil
				if GroupboxSettings.Style == 1 then
					Groupbox.Instance = tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate["Groupbox_Style1"]:Clone()
					for i,v in pairs(Groupbox.Instance:GetChildren()) do
						if v.ClassName == "Frame" then v:Destroy() end
					end
				else
					Groupbox.Instance = tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate2["Groupbox_Style2"]:Clone()
				end

				local GroupboxTemplateInstance = tabs["Tab_TEMPLATE"].ScrollingCollumnTemplate["Groupbox_Style1"]

				Groupbox.ParentingItem = GroupboxSettings.Style == 2 and
					Groupbox.Instance.PART_Content 
				or Groupbox.Instance
			
				Groupbox.Instance.Header.Text = GroupboxSettings.Name
				Groupbox.Instance.Header.Icon.Image = GetIcon(GroupboxSettings.Icon, GroupboxSettings.ImageSource)
				Groupbox.Instance.Name = "GROUPBOX_" .. GroupboxSettings.Name
				
				if GroupboxSettings.Style == 2 then
					Groupbox.Instance["PART_Content"]:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
						Groupbox.Instance["PART_Backdrop"].Size = UDim2.new(1,0,0, Groupbox.Instance["PART_Content"].AbsoluteSize.Y)
					end)
				end
				
				--// SUBSECTION : User Functions

				function Groupbox:CreatePrimaryButton(ElementSettings) -- these will be merged in the next update where we allow style changing.
					
					--[[
					ElementSettings = {
						Name = string,
						Icon = number, **
						ImageSource = string, **
						
						Callback = function(nil),
					}
					]]
					
					ElementSettings.ImageSource = ElementSettings.ImageSource or "Material"
					
					local Element = {
						Values = ElementSettings
					}
					
					Element.Instance = GroupboxTemplateInstance["Button_TEMPLATE_Style1"]:Clone()
					Element.Instance.Visible = true
					Element.Instance["PART_Backdrop"].DropShadowHolder.DropShadow.ImageTransparency = 1
					Element.Instance.Parent = Groupbox.ParentingItem
					
					Element.Instance.Name = "BUTTON_" .. ElementSettings.Name
					Element.Instance["PART_Backdrop"].Header.Text = ElementSettings.Name
					Element.Instance["PART_Backdrop"].Header.Icon.Visible = ElementSettings.Icon ~= nil
					if Element.Instance["PART_Backdrop"].Header.Icon.Visible == false then
						Element.Instance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,6)
					else
						Element.Instance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,32)
					end
					Element.Instance["PART_Backdrop"].Header.Icon.Image = ElementSettings.Icon ~= nil and GetIcon(ElementSettings.Icon, ElementSettings.ImageSource) or ""
					
					function Element:Set(NewElementSettings)
						for i,v in pairs(ElementSettings) do
							if NewElementSettings[i] == nil then
								NewElementSettings[i] = v
							end
						end

						ElementSettings = NewElementSettings

						Element.Values = ElementSettings
						Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name] = ElementSettings
						
						Element.Instance.Name = "BUTTON_" .. ElementSettings.Name
						Element.Instance["PART_Backdrop"].Header.Text = ElementSettings.Name
						Element.Instance["PART_Backdrop"].Header.Icon.Visible = ElementSettings.Icon ~= nil
						if Element.Instance["PART_Backdrop"].Header.Icon.Visible == false then
							Element.Instance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							Element.Instance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						Element.Instance["PART_Backdrop"].Header.Icon.Image = ElementSettings.Icon ~= nil and GetIcon(ElementSettings.Icon, ElementSettings.ImageSource) or ""
						Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name].Values = ElementSettings
					end
					
					function Element:Destroy()
						Element.Instance:Destroy()
					end
					
					Element.Instance.MouseEnter:Connect(function()
						Tween(Element.Instance["PART_Backdrop"].DropShadowHolder.DropShadow, {ImageTransparency = 0.73})
					end)
					
					Element.Instance.MouseLeave:Connect(function()
						Tween(Element.Instance["PART_Backdrop"].DropShadowHolder.DropShadow, {ImageTransparency = 1})
						
						if Element.Instance["PART_Backdrop"].AccentBrighter.Enabled == true then
							Element.Instance["PART_Backdrop"].AccentBrighter.Enabled = false
							Element.Instance["PART_Backdrop"].Accent.Enabled = true
						end
					end)
					
					Element.Instance.Interact.MouseButton1Click:Connect(function()
						local Success,Response = pcall(Element.Values.Callback)

						if not Success then
							Element.Instance["PART_Backdrop"].Header.Text = "Callback Error"
							warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
							print(tostring(Response))
							wait(0.5)
							Element.Instance["PART_Backdrop"].Header.Text = ElementSettings.Name
						end
					end)
					
					Element.Instance.Interact.MouseButton1Down:Connect(function()
						Element.Instance["PART_Backdrop"].AccentBrighter.Enabled = true
						Element.Instance["PART_Backdrop"].Accent.Enabled = false
					end)
					
					Element.Instance.Interact.MouseButton1Up:Connect(function()
						Element.Instance["PART_Backdrop"].AccentBrighter.Enabled = false
						Element.Instance["PART_Backdrop"].Accent.Enabled = true
					end)
					
					if GroupboxSettings.Style == 2 then
						Groupbox.Instance["PART_Backdrop"].Size = UDim2.new(1,0,0, Groupbox.Instance["PART_Backdrop"].AbsoluteSize.Y)
					end
					
					Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name] = Element
					return Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name]
				end
				
				function Groupbox:CreateSecondaryButton(ElementSettings) -- these will be merged in the next update where we allow style changing.
					ElementSettings.ImageSource = ElementSettings.ImageSource or "Material"

					local Element = {
						Values = ElementSettings
					}

					Element.Instance = GroupboxTemplateInstance["Button_TEMPLATE_Style2"]:Clone()
					Element.Instance.Visible = true
					Element.Instance.Parent = Groupbox.ParentingItem

					Element.Instance.Name = "BUTTON_" .. ElementSettings.Name
					Element.Instance["PART_Backdrop"].Header.Text = ElementSettings.Name
					Element.Instance["PART_Backdrop"].Header.Icon.Visible = ElementSettings.Icon ~= nil
					if Element.Instance["PART_Backdrop"].Header.Icon.Visible == false then
						Element.Instance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,6)
					else
						Element.Instance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,32)
					end
					Element.Instance["PART_Backdrop"].Header.Icon.Image = ElementSettings.Icon ~= nil and GetIcon(ElementSettings.Icon, ElementSettings.ImageSource) or ""

					function Element:Set(NewElementSettings)
						for i,v in pairs(ElementSettings) do
							if NewElementSettings[i] == nil then
								NewElementSettings[i] = v
							end
						end

						ElementSettings = NewElementSettings

						Element.Values = ElementSettings
						Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name] = ElementSettings

						Element.Instance.Name = "BUTTON_" .. ElementSettings.Name
						Element.Instance["PART_Backdrop"].Header.Text = ElementSettings.Name
						Element.Instance["PART_Backdrop"].Header.Icon.Visible = ElementSettings.Icon ~= nil
						if Element.Instance["PART_Backdrop"].Header.Icon.Visible == false then
							Element.Instance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							Element.Instance["PART_Backdrop"].Header.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						Element.Instance["PART_Backdrop"].Header.Icon.Image = ElementSettings.Icon ~= nil and GetIcon(ElementSettings.Icon, ElementSettings.ImageSource) or ""
						Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name].Values = ElementSettings
					end

					function Element:Destroy()
						Element.Instance:Destroy()
					end

					Element.Instance.MouseEnter:Connect(function()
						Tween(Element.Instance["PART_Backdrop"], {BackgroundColor3 = Color3.fromRGB(31, 33, 38)})
					end)

					Element.Instance.MouseLeave:Connect(function()
						Tween(Element.Instance["PART_Backdrop"], {BackgroundColor3 = Color3.fromRGB(27, 29, 34)})
					end)

					Element.Instance.Interact.MouseButton1Click:Connect(function()
						local Success,Response = pcall(ElementSettings.Callback)

						if not Success then
							Element.Instance["PART_Backdrop"].Header.Text = "Callback Error"
							warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
							print(tostring(Response))
							wait(0.5)
							Element.Instance["PART_Backdrop"].Header.Text = ElementSettings.Name
						end
					end)

					Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name] = Element
					return Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name]
				end

				function Groupbox:CreateCheckbox(ElementSettings) -- will be merged with switch in next update via styles. adding a checkbox icon soon

					--[[
					ElementSettings = {
						Name = string,
						Icon = number, **
						ImageSource = string, **
						InitialCallback = bool, **
						CurrentValue = bool, **
						
						Callback = function(bool),
					}
					]]

					ElementSettings.ImageSource = ElementSettings.ImageSource or "Material"
					ElementSettings.InitialCallback = ElementSettings.InitialCallback or true
					ElementSettings.CurrentValue = ElementSettings.CurrentValue or false

					local Element = {
						Values = ElementSettings,
					}
					
					Element.Instance = GroupboxTemplateInstance.Checkbox_TEMPLATE_Disabled:Clone()
					Element.Instance.Visible = true
					Element.Instance.Parent = Groupbox.ParentingItem
					
					Element.Instance.Name = "CHECKBOX_" .. ElementSettings.Name
					Element.Instance.Header.Text = ElementSettings.Name
					Element.Instance.Header.Icon.Visible = ElementSettings.Icon ~= nil
					if Element.Instance.Header.Icon.Visible == false then
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
					else
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
					end
					Element.Instance.Header.Icon.Image = ElementSettings.Icon ~= nil and GetIcon(ElementSettings.Icon, ElementSettings.ImageSource) or ""

					local function Set(bool)
						if bool then
							Tween(Element.Instance.Checkbox, {BackgroundTransparency = 0})
						else
							Tween(Element.Instance.Checkbox, {BackgroundTransparency = 0.9})
						end

						Element.Values.CurrentValue = bool
					end

					--starting
					do
						Set(Element.Values.CurrentValue)
						if ElementSettings.InitialCallback then
							local Success,Response = pcall(function()
								ElementSettings.Callback(Element.Values.CurrentValue)
							end)

							if not Success then
								Element.Instance.Header.Text = "Callback Error"
								warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
								print(tostring(Response))
								wait(0.5)
								Element.Instance.Header.Text = ElementSettings.Name
							end
						end
					end
					
					Element.Instance.Checkbox.MouseEnter:Connect(function()
						Element.Instance.Checkbox.AccentBrighter.Enabled = true
						Element.Instance.Checkbox.Accent.Enabled = false
					end)
					
					Element.Instance.Checkbox.MouseLeave:Connect(function()
						Element.Instance.Checkbox.AccentBrighter.Enabled = false
						Element.Instance.Checkbox.Accent.Enabled = true
					end)
					
					Element.Instance.Checkbox.Interact.MouseButton1Click:Connect(function()
						Element.Values.CurrentValue = not Element.Values.CurrentValue
						Set(Element.Values.CurrentValue)
						
						local Success,Response = pcall(function()
							Element.Values.Callback(Element.Values.CurrentValue)
						end)

						if not Success then
							Element.Instance.Header.Text = "Callback Error"
							warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
							print(tostring(Response))
							wait(0.5)
							Element.Instance.Header.Text = ElementSettings.Name
						end
					end)

					function Element:Set(NewElementSettings)
						for i,v in pairs(ElementSettings) do
							if NewElementSettings[i] == nil then
								NewElementSettings[i] = v
							end
						end

						ElementSettings = NewElementSettings

						Element.Values = ElementSettings

						Element.Instance.Name = "CHECKBOX_" .. ElementSettings.Name
						Element.Instance.Header.Text = ElementSettings.Name
						Element.Instance.Header.Icon.Visible = ElementSettings.Icon ~= nil
						if Element.Instance.Header.Icon.Visible == false then
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						Element.Instance.Header.Icon.Image = ElementSettings.Icon ~= nil and GetIcon(ElementSettings.Icon, ElementSettings.ImageSource) or ""

						Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name].Values = ElementSettings
					end
					
					function Element:Destroy()
						Element.Instance:Destroy()
					end
					
					Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name] = Element
					return Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name]
				end
				
				function Groupbox:CreateSwitch(ElementSettings)

					--[[
					ElementSettings = {
						Name = string,
						Icon = number, **
						ImageSource = string, **
						InitialCallback = bool, **
						CurrentValue = bool, **
						
						Callback = function(bool),
					}
					]]

					ElementSettings.ImageSource = ElementSettings.ImageSource or "Material"
					ElementSettings.InitialCallback = ElementSettings.InitialCallback or true
					ElementSettings.CurrentValue = ElementSettings.CurrentValue or false

					local Element = {
						Values = ElementSettings,
					}

					Element.Instance = GroupboxTemplateInstance.Switch_TEMPLATE_Disabled:Clone()
					Element.Instance.Visible = true
					Element.Instance.Parent = Groupbox.ParentingItem

					Element.Instance.Name = "SWITCH_" .. ElementSettings.Name
					Element.Instance.Header.Text = ElementSettings.Name
					Element.Instance.Header.Icon.Visible = ElementSettings.Icon ~= nil
					if Element.Instance.Header.Icon.Visible == false then
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
					else
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
					end
					Element.Instance.Header.Icon.Image = ElementSettings.Icon ~= nil and GetIcon(ElementSettings.Icon, ElementSettings.ImageSource) or ""

					local function Set(bool)
						if bool then
							Tween(Element.Instance.Switch, {BackgroundTransparency = 0, BackgroundColor3 = Color3.fromRGB(255,255,255)})
							Tween(Element.Instance.Switch.Knob, {Position = UDim2.new(0,20,.5,0), BackgroundColor3 = Color3.fromRGB(255,255,255), BackgroundTransparency = 0})
							Tween(Element.Instance.Switch.UIStroke, {Color = Color3.fromRGB(255,255,255)})
							Tween(Element.Instance.Switch.DropShadowHolder.DropShadow, {ImageTransparency = 0})
							Element.Instance.Switch.Accent.Enabled = true
							Element.Instance.Switch.UIStroke.Accent.Enabled = true
						else
							Tween(Element.Instance.Switch, {BackgroundTransparency = 1, BackgroundColor3 = Color3.fromRGB(165,165,165)})
							Tween(Element.Instance.Switch.Knob, {Position = UDim2.new(0,0,.5,0), BackgroundColor3 = Color3.fromRGB(165,165,165), BackgroundTransparency = 0.5})
							Tween(Element.Instance.Switch.UIStroke, {Color = Color3.fromRGB(165,165,165)})
							Tween(Element.Instance.Switch.DropShadowHolder.DropShadow, {ImageTransparency = 1})
							Element.Instance.Switch.Accent.Enabled = false
							Element.Instance.Switch.UIStroke.Accent.Enabled = false
						end

						Element.Values.CurrentValue = bool
					end

					--starting
					do
						Set(Element.Values.CurrentValue)
						if ElementSettings.InitialCallback then
							local Success,Response = pcall(function()
								ElementSettings.Callback(Element.Values.CurrentValue)
							end)

							if not Success then
								Element.Instance.Header.Text = "Callback Error"
								warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
								print(tostring(Response))
								wait(0.5)
								Element.Instance.Header.Text = ElementSettings.Name
							end
						end
					end

					Element.Instance.Switch.Interact.MouseButton1Click:Connect(function()
						Element.Values.CurrentValue = not Element.Values.CurrentValue
						Set(Element.Values.CurrentValue)

						local Success,Response = pcall(function()
							ElementSettings.Callback(Element.Values.CurrentValue)
						end)

						if not Success then
							Element.Instance.Header.Text = "Callback Error"
							warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
							print(tostring(Response))
							wait(0.5)
							Element.Instance.Header.Text = ElementSettings.Name
						end
					end)

					function Element:Set(NewElementSettings)
						for i,v in pairs(ElementSettings) do
							if NewElementSettings[i] == nil then
								NewElementSettings[i] = v
							end
						end

						ElementSettings = NewElementSettings
						
						Element.Values = ElementSettings

						Element.Instance.Name = "SWITCH_" .. ElementSettings.Name
						Element.Instance.Header.Text = ElementSettings.Name
						Element.Instance.Header.Icon.Visible = ElementSettings.Icon ~= nil
						if Element.Instance.Header.Icon.Visible == false then
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						Element.Instance.Header.Icon.Image = ElementSettings.Icon ~= nil and GetIcon(ElementSettings.Icon, ElementSettings.ImageSource) or ""

						Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name].Values = ElementSettings
					end

					function Element:Destroy()
						Element.Instance:Destroy()
					end

					Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name] = Element
					return Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name]
				end
				
				function Groupbox:CreateDivider()
					local Divider = {
						ID = HttpService:GenerateGUID(false)
					}

					Divider.Instance = GroupboxTemplateInstance.Divider:Clone()
					Divider.Instance.Parent = Groupbox.ParentingItem

					function Divider:Destroy()
						Divider.Instance:Destroy()
					end
					
					Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements["Divider_" .. Divider.ID] = Divider
					return Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements["Divider_" .. Divider.ID]
				end
				
				-- uhm so i crashed out here cus the textbox kept making it crash
				-- SOOO, i got gpt to help :skull:
				-- pls dont attack me :sob: i spent five hours tryna make it work and i js couldnt take it anymore
				-- it only helped with logic-ing the steps, i still coded it muaself hehe (but thats why its so damn messy)
				function Groupbox:CreateSlider(ElementSettings)

					--[[
					ElementSettings = {
						Name = string,
						Icon = number, **
						ImageSource = string, **
						CurrentValue = number, **
						Range = table{number, number}, 
						Increment = number, **
						HideMax = bool, **
						
						Callback = function(number),
					}
					]]
					
					ElementSettings.ImageSource = ElementSettings.ImageSource or  "Material"
					ElementSettings.CurrentValue = ElementSettings.CurrentValue or 0
					ElementSettings.Increment = ElementSettings.Increment or 1
					ElementSettings.HideMax = ElementSettings.HideMax or false
					
					local Element = {
						Values = ElementSettings,
						SLDragging = false
					}
					local isTyping = false
					local ignoreNext = false
					
					Element.Instance = GroupboxTemplateInstance.Slider_TEMPLATE:Clone()
					Element.Instance.Visible = true
					Element.Instance.Parent = Groupbox.ParentingItem
					
					Element.Instance.Name = "SLIDER_" .. ElementSettings.Name
					Element.Instance.Header.Text = ElementSettings.Name
					Element.Instance.Header.Icon.Visible = ElementSettings.Icon ~= nil
					if Element.Instance.Header.Icon.Visible == false then
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
					else
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
					end
					Element.Instance.Header.Icon.Image = ElementSettings.Icon ~= nil and GetIcon(ElementSettings.Icon, ElementSettings.ImageSource) or ""

					local function Set(Value : number, BLEHHHHHIMTIREDOFNAMINGVARIABLESJSFORSPECIFICFUNCTIONS : boolean?)
						if Value then
							Element.Values.CurrentValue = Value
							
							Element.Instance.PART_Backdrop.PART_Progress.Size =	UDim2.new(0, Element.Instance.PART_Backdrop.AbsoluteSize.X * 
								((Value + Element.Values.Range[1]) / (Element.Values.Range[2] - Element.Values.Range[1])) > 5
								and Element.Instance.PART_Backdrop.AbsoluteSize.X * (Value / (Element.Values.Range[2] - Element.Values.Range[1])) or 5,
								1, 0)

							if BLEHHHHHIMTIREDOFNAMINGVARIABLESJSFORSPECIFICFUNCTIONS then
								local maxVal = tostring(Element.Values.Range[2])
								local maxSuffix = not Element.Values.HideMax and ("/" .. maxVal) or ""
								Element.Instance.Value.Text = tostring(Value) .. maxSuffix
								Element.Instance.Value.CursorPosition = not Element.Values.HideMax and tostring(Element.Instance.Value.Text):find("/") or (tonumber(#Element.Instance.Value.Text) + 1)
							elseif not isTyping then
								local maxVal = tostring(Element.Values.Range[2])
								local maxSuffix = not Element.Values.HideMax and "/<font color=\"rgb(165,165,165)\">" .. maxVal .. "</font>" or ""
								Element.Instance.Value.Text = tostring(Value) .. maxSuffix
							end

							local Success,Response = pcall(function()
								Element.Values.Callback(Value)
							end)

							if not Success then
								Element.Instance.Header.Text = "Callback Error"
								warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
								print(tostring(Response))
								wait(0.5)
								Element.Instance.Header.Text = ElementSettings.Name
							end
						end				

						
					end
					
					Element.Instance.PART_Backdrop.Interact.InputBegan:Connect(function(Input)
						if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then 
							Element.SLDragging = true 
						end 
					end)

					Element.Instance.PART_Backdrop.Interact.InputEnded:Connect(function(Input) 
						if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then 
							Element.SLDragging = false 
						end 
					end)
					
					local Current = Element.Instance.PART_Backdrop.PART_Progress.AbsolutePosition.X + Element.Instance.PART_Backdrop.PART_Progress.AbsoluteSize.X
					local Start = Current
					local Location
					local Loop; Loop = RunService.Stepped:Connect(function()
						if Element.SLDragging then
							Location = UserInputService:GetMouseLocation().X
							Current = Current + 0.025 * (Location - Start)

							if Location < Element.Instance.PART_Backdrop.AbsolutePosition.X then
								Location = Element.Instance.PART_Backdrop.AbsolutePosition.X
							elseif Location > Element.Instance.PART_Backdrop.AbsolutePosition.X + Element.Instance.PART_Backdrop.AbsoluteSize.X then
								Location = Element.Instance.PART_Backdrop.AbsolutePosition.X + Element.Instance.PART_Backdrop.AbsoluteSize.X
							end

							if Current < Element.Instance.PART_Backdrop.AbsolutePosition.X + 5 then
								Current = Element.Instance.PART_Backdrop.AbsolutePosition.X + 5
							elseif Current > Element.Instance.PART_Backdrop.AbsolutePosition.X + Element.Instance.PART_Backdrop.AbsoluteSize.X then
								Current = Element.Instance.PART_Backdrop.AbsolutePosition.X + Element.Instance.PART_Backdrop.AbsoluteSize.X
							end

							if Current <= Location and (Location - Start) < 0 then
								Start = Location
							elseif Current >= Location and (Location - Start) > 0 then
								Start = Location
							end
							Element.Instance.PART_Backdrop.PART_Progress.Size = UDim2.new(0, Location - Element.Instance.PART_Backdrop.AbsolutePosition.X, 1, 0)
							local NewValue = Element.Values.Range[1] + (Location - Element.Instance.PART_Backdrop.AbsolutePosition.X) / Element.Instance.PART_Backdrop.AbsoluteSize.X * (Element.Values.Range[2] - Element.Values.Range[1])

							NewValue = math.floor(NewValue / Element.Values.Increment + 0.5) * (Element.Values.Increment * 10000000) / 10000000

							Element.Instance.Value.Text = tostring(NewValue) .. ((not Element.Values.HideMax and not isTyping) and "/<font color=\"rgb(165,165,165)\">".. Element.Values.Range[2] .."</font>" or (not isTyping and ""))

							if Element.Values.CurrentValue ~= NewValue then
								local Success,Response = pcall(function()
									Element.Values.Callback(NewValue)
								end)

								if not Success then
									Element.Instance.Header.Text = "Callback Error"
									warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
									print(tostring(Response))
									wait(0.5)
									Element.Instance.Header.Text = ElementSettings.Name
								end

								Element.Values.CurrentValue = NewValue
							end
						end
					end)
					
					function Element:Destroy()
						Element.Instance:Destroy()
					end
					
					function Element:Set(NewElementSettings)
						
						for i,v in pairs(ElementSettings) do
							if NewElementSettings[i] == nil then
								NewElementSettings[i] = v
							end
						end
						ElementSettings = NewElementSettings
						
						Element.Instance.Name = "SLIDER_" .. ElementSettings.Name
						Element.Instance.Header.Text = ElementSettings.Name
						Element.Instance.Header.Icon.Visible = ElementSettings.Icon ~= nil
						if Element.Instance.Header.Icon.Visible == false then
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						Element.Instance.Header.Icon.Image = ElementSettings.Icon ~= nil and GetIcon(ElementSettings.Icon, ElementSettings.ImageSource) or ""
						
						Element.Values = ElementSettings
						Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name].Values = ElementSettings
						
					end
					
					Set(Element.Values.CurrentValue)
					
					local isTyping = false
					
					local maxSuffix = not Element.Values.HideMax and "/<font color=\"rgb(165,165,165)\">" .. Element.Values.Range[2] .. "</font>" or ""
					
					Element.Instance.Value.Focused:Connect(function()
						isTyping = true
						ignoreNext = true

						if Element.Values.HideMax then
							Element.Instance.Value.Text = ""
						else
							Element.Instance.Value.Text = "/" .. Element.Values.Range[2]
						end
						
					end)

					Element.Instance.Value:GetPropertyChangedSignal("Text"):Connect(function()
						if not isTyping then return end
						task.defer(function()
							local text = Element.Instance.Value.Text or ""

							-- Extract the part before the first slash (if any)
							local numberPart = text:match("^(.-)/") or text

							local num = tonumber(numberPart)

							-- Only update the *value*, not the .Text
							if num then
								if num < Element.Values.Range[1] then
									num = Element.Values.Range[1]
								elseif num > Element.Values.Range[2] then
									num = Element.Values.Range[2]
								end
								Set(num, true)
							end
						end)
					end)

					Element.Instance.Value.FocusLost:Connect(function()
						isTyping = false

						local text = Element.Instance.Value.Text or ""
						local stripped = text:gsub("<->", ""):match("[0-9.]*") or ""
						local num = tonumber(stripped) or 0

						num = math.clamp(num, Element.Values.Range[1], Element.Values.Range[2])

						ignoreNext = true
						if Element.Values.HideMax then
							Element.Instance.Value.Text = tostring(num)
						else
							Element.Instance.Value.Text = tostring(num) .. "/<font color=\"rgb(165,165,165)\">" .. tostring(Element.Values.Range[2]) .. "</font>"
						end
					end)

					Element.Instance.PART_Backdrop.MouseEnter:Connect(function()
						Tween(Element.Instance.PART_Backdrop.PART_Progress.DropShadowHolder.DropShadow, {ImageTransparency = 0})
					end)
					Element.Instance.PART_Backdrop.MouseLeave:Connect(function()
						Tween(Element.Instance.PART_Backdrop.PART_Progress.DropShadowHolder.DropShadow, {ImageTransparency = 1})
					end)

					Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name] = Element
					return Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name]
				end

				function Groupbox:CreateBind(ElementSettings) -- will be merged with toggles and labels soon
					--[[
	
					ElementSettings = {
						Name = string,
						Icon = number, **
						ImageSource = string, **
						HoldToInteract = bool, **
						CurrentValue = string, 
						SyncToggleState = bool, ** -- required to be made on toggle to use, coming soon
						
						-- if creating on a parent toggle, do not create the callback here. create it in the parent toggle, it will sync automatically
						Callback = function(bool), -- Returns bool whether the bind is active or not. If HoldToInteract is true, it is recommended to put your script in a while boolean do loop
						ChangedCallback = function(string), ** -- Returns the new keybind as a string (See the documentation list for all keybinds to string)
					}
					]]
					
					ElementSettings.ImageSource = ElementSettings.ImageSource or "Material"
					ElementSettings.HoldToInteract = ElementSettings.HoldToInteract or false
					ElementSettings.SyncToggleState = ElementSettings.SyncToggleState or true
					ElementSettings.ChangedCallback = ElementSettings.ChangedCallback or function() end
					
					local Element = {
						Values = ElementSettings,
					}
					
					Element.Instance = GroupboxTemplateInstance.Bind_TEMPLATE:Clone()
					Element.Instance.Visible = true
					Element.Instance.Parent = Groupbox.ParentingItem
					
					Element.Instance.Name = "BIND_" .. ElementSettings.Name
					Element.Instance.Header.Text = ElementSettings.Name
					Element.Instance.Header.Icon.Visible = ElementSettings.Icon ~= nil
					if Element.Instance.Header.Icon.Visible == false then
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
					else
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
					end
					Element.Instance.Header.Icon.Image = ElementSettings.Icon ~= nil and GetIcon(ElementSettings.Icon, ElementSettings.ImageSource) or ""

					local CheckingForKey = false
					local Active = false
					
					Element.Instance.PART_Input.Text = ElementSettings.CurrentValue
					
					Element.Instance.PART_Input.Focused:Connect(function()
						task.wait()
						CheckingForKey = true
					end)

					Element.Instance.PART_Input.FocusLost:Connect(function()
						CheckingForKey = false
						if Element.Instance.PART_Input.Text == (nil or "") then
							Element.Instance.PART_Input.Text = ElementSettings.CurrentValue
						end
					end)
					
					UserInputService.InputBegan:Connect(function(input, processed)

						if CheckingForKey then
							
							if input.UserInputType == Enum.UserInputType.Keyboard then
								if input.KeyCode ~= Enum.KeyCode.Unknown and input.KeyCode ~= Enum.KeyCode[Starlight.WindowKeybind] then
									local SplitMessage = string.split(tostring(input.KeyCode), ".")
									local NewKeyNoEnum = SplitMessage[3]
									Element.Instance.PART_Input.Text = tostring(NewKeyNoEnum)
									Element.Values.CurrentValue = tostring(NewKeyNoEnum)
									local Success,Response = pcall(function()
										Element.Values.ChangedCallback(Element.Values.CurrentValue)
									end)

									if not Success then
										Element.Instance.Header.Text = "Callback Error"
										warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
										print(tostring(Response))
										wait(0.5)
										Element.Instance.Header.Text = ElementSettings.Name
									end
									Element.Instance.PART_Input:ReleaseFocus()
								end
							else
								if input.UserInputType == Enum.UserInputType.MouseButton1 then
									Element.Instance.PART_Input.Text = "MB1"
									Element.Values.CurrentValue = "MB1"
									Element.Instance.PART_Input:ReleaseFocus()
									local Success,Response = pcall(function()
										Element.Values.ChangedCallback(Element.Values.CurrentValue)
									end)

									if not Success then
										Element.Instance.Header.Text = "Callback Error"
										warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
										print(tostring(Response))
										wait(0.5)
										Element.Instance.Header.Text = ElementSettings.Name
									end
								elseif input.UserInputType == Enum.UserInputType.MouseButton2 then
									Element.Instance.PART_Input.Text = "MB2"
									Element.Values.CurrentValue = "MB2"
									Element.Instance.PART_Input:ReleaseFocus()
									local Success,Response = pcall(function()
										Element.Values.ChangedCallback(Element.Values.CurrentValue)
									end)

									if not Success then
										Element.Instance.Header.Text = "Callback Error"
										warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
										print(tostring(Response))
										wait(0.5)
										Element.Instance.Header.Text = ElementSettings.Name
									end
								end
							end
							
						elseif Element.Values.CurrentValue ~= nil and not processed then 
							
							if Element.Values.CurrentValue == "MB1" then
								if input.UserInputType ~= Enum.UserInputType.MouseButton1 then
									return
								end
							elseif Element.Values.CurrentValue == "MB2" then	
								if input.UserInputType ~= Enum.UserInputType.MouseButton2 then
									return
								end
							else
								if input.KeyCode ~= Enum.KeyCode[Element.Values.CurrentValue] then
									return
								end
							end
							
							local Held = true
							local Connection
							Connection = input.Changed:Connect(function(prop)
								if prop == "UserInputState" then
									Connection:Disconnect()
									Held = false
								end
							end)

							if not Element.Values.HoldToInteract then
								Active = not Active
								local Success,Response = pcall(function()
									Element.Values.Callback(Active)
								end)

								if not Success then
									Element.Instance.Header.Text = "Callback Error"
									warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
									print(tostring(Response))
									wait(0.5)
									Element.Instance.Header.Text = ElementSettings.Name
								end
							else
								wait(0.1)
								if Held then
									local Loop; Loop = RunService.Stepped:Connect(function()
										if not Held then
											local Success,Response = pcall(function()
												Element.Values.Callback(Active)
											end)

											if not Success then
												Element.Instance.Header.Text = "Callback Error"
												warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
												print(tostring(Response))
												wait(0.5)
												Element.Instance.Header.Text = ElementSettings.Name
											end
											Loop:Disconnect()
										else
											local Success,Response = pcall(function()
												Element.Values.Callback(Active)
											end)

											if not Success then
												Element.Instance.Header.Text = "Callback Error"
												warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
												print(tostring(Response))
												wait(0.5)
												Element.Instance.Header.Text = ElementSettings.Name
											end
										end
									end)	
								end
							end
						end
					end)
					
					function Element:Set(NewElementSettings)
						for i,v in pairs(ElementSettings) do
							if NewElementSettings[i] == nil then
								NewElementSettings[i] = v
							end
						end

						ElementSettings = NewElementSettings

						Element.Values = ElementSettings

						Element.Instance.Name = "BIND_" .. ElementSettings.Name
						Element.Instance.Header.Text = ElementSettings.Name
						Element.Instance.Header.Icon.Visible = ElementSettings.Icon ~= nil
						if Element.Instance.Header.Icon.Visible == false then
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						Element.Instance.Header.Icon.Image = ElementSettings.Icon ~= nil and GetIcon(ElementSettings.Icon, ElementSettings.ImageSource) or ""

						Element.Instance.PART_Input.Text = ElementSettings.CurrentValue

						Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name].Values = ElementSettings
					end
					
					function Element:Destroy()
						Element.Instance:Destroy()
					end

					Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name] = Element
					return Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name]
				end
				
				function Groupbox:CreateInput(ElementSettings)
					--[[
					ElementSettings = {
						Name = string,
						Icon = number, **
						ImageSource = string, **
						CurrentValue = string, **
						PlaceholderText = string, **
						RemoveTextAfterFocusLost = bool, **
						Numeric = bool, **
						Enter = bool, **
						MaxCharacters = number, **
						RemoveTextOnFocus = bool, **
						
						Callback = function(string),
					}
					]]
					
					ElementSettings.ImageSource = ElementSettings.ImageSource or "Material"
					ElementSettings.CurrentValue = ElementSettings.CurrentValue or ""
					ElementSettings.PlaceholderText = ElementSettings.PlaceholderText or ""
					ElementSettings.RemoveTextAfterFocusLost = ElementSettings.RemoveTextAfterFocusLost or false
					ElementSettings.Numeric = ElementSettings.Numeric or false
					ElementSettings.Enter = ElementSettings.Enter or false
					ElementSettings.MaxCharacters = ElementSettings.MaxCharacters or 0
					ElementSettings.RemoveTextOnFocus = ElementSettings.RemoveTextOnFocus or true
					
					local Element = {
						Values = ElementSettings
					}
					
					Element.Instance = GroupboxTemplateInstance.Input_TEMPLATE:Clone()
					Element.Instance.Visible = true
					Element.Instance.Parent = Groupbox.ParentingItem
					
					Element.Instance.Name = "BIND_" .. ElementSettings.Name
					Element.Instance.Header.Text = ElementSettings.Name
					Element.Instance.Header.Icon.Visible = ElementSettings.Icon ~= nil
					if Element.Instance.Header.Icon.Visible == false then
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
					else
						Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
					end
					Element.Instance.Header.Icon.Image = ElementSettings.Icon ~= nil and GetIcon(ElementSettings.Icon, ElementSettings.ImageSource) or ""
					Element.Instance.PART_Input.PlaceholderText = ElementSettings.PlaceholderText
					Element.Instance.PART_Input.Text = ElementSettings.CurrentValue

					Element.Instance.PART_Input.FocusLost:Connect(function(Enter)
						
						if Element.Values.Enter and Enter then
							local Success,Response = pcall(function()
								Element.Values.Callback(Element.Values.CurrentValue)
							end)

							if not Success then
								Element.Instance.Header.Text = "Callback Error"
								warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
								print(tostring(Response))
								wait(0.5)
								Element.Instance.Header.Text = ElementSettings.Name
							end
						end
						
						if Element.Values.RemoveTextAfterFocusLost then
							Element.Instance.PART_Input.Text = ""
							Element.Values.CurrentValue = ""
						end
						
					end)
					
					if Element.Values.Numeric then
						Element.Instance.PART_Input:GetPropertyChangedSignal("Text"):Connect(function()
							local text = Element.Instance.PART_Input.Text
							if not tonumber(text) and text ~= "." then
								Element.Instance.PART_Input.Text = text:match("[0-9.]*") or ""
							end
						end)
					end

					Element.Instance.PART_Input:GetPropertyChangedSignal("Text"):Connect(function()
						if tonumber(Element.Values.MaxCharacters) then
							if (#Element.Instance.PART_Input.Text - 1) == Element.Values.MaxCharacters then
								Element.Instance.PART_Input.Text = Element.Instance.PART_Input.Text:sub(1, Element.Values.MaxCharacters)
							end
						end
						if not Element.Values.Enter then
							local Success,Response = pcall(function()
								Element.Values.Callback(Element.Values.CurrentValue)
							end)

							if not Success then
								Element.Instance.Header.Text = "Callback Error"
								warn("Starlight Interface Suite | "..ElementSettings.Name.." Callback Error")
								print(tostring(Response))
								wait(0.5)
								Element.Instance.Header.Text = ElementSettings.Name
							end
						end
						Element.Values.CurrentValue = Element.Instance.PART_Input.Text				
					end)
					
					function Element:Set(NewElementSettings)
						for i,v in pairs(ElementSettings) do
							if NewElementSettings[i] == nil then
								NewElementSettings[i] = v
							end
						end

						ElementSettings = NewElementSettings

						Element.Values = ElementSettings

						Element.Instance.Name = "BIND_" .. ElementSettings.Name
						Element.Instance.Header.Text = ElementSettings.Name
						Element.Instance.Header.Icon.Visible = ElementSettings.Icon ~= nil
						if Element.Instance.Header.Icon.Visible == false then
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,6)
						else
							Element.Instance.Header.UIPadding.PaddingLeft = UDim.new(0,32)
						end
						Element.Instance.Header.Icon.Image = ElementSettings.Icon ~= nil and GetIcon(ElementSettings.Icon, ElementSettings.ImageSource) or ""
						Element.Instance.PART_Input.PlaceholderText = ElementSettings.PlaceholderText
						Element.Instance.PART_Input.Text = ElementSettings.CurrentValue

						Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name].Values = ElementSettings
					end
					
					function Element:Destroy()
						Element.Instance:Destroy()
					end

					Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name] = Element
					return Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name].Elements[ElementSettings.Name]
				end
				
				function Groupbox:CreateDropdown(ElementSettings)
					
				end
				
				function Groupbox:CreateParagraph(ElementSettings)
					
				end
				
				function Groupbox:CreateColorPicker(ElementSettings) -- will be merged with toggles and labels
					
				end
				
				-- note for hunt3r, add set and destroy here and everywhere that doesnt have it yet
				-- and remove all auto sizing for inputs (dynamic inputs and binds), replace with tweening in scripting
				-- remember that values is read-only

				--// ENDSUBSECTION
				
				Groupbox.Instance.Parent = Tab.Instances.Page["Column_" .. GroupboxSettings.Column]
				Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name] = Groupbox
				return Starlight.Window.TabSections[Name].Tabs[TabSettings.Name].Groupboxes[GroupboxSettings.Name]
			end
			
			--function Tab:CreateTabbox(TabboxSettings) -- coming soon
				
			--end
			
			--// ENDSUBSECTION
			
			Tab.Instances.Button.Parent = Starlight.Window.TabSections[Name].Instance
			Starlight.Window.TabSections[Name].Tabs[TabSettings.Name] = Tab
			return Starlight.Window.TabSections[Name].Tabs[TabSettings.Name]
		end

		TabSection.Instance.Parent = navigation
		Starlight.Window.TabSections[Name] = TabSection
		return Starlight.Window.TabSections[Name]
		
		--// ENDSUBSECTION
		
	end
	
	--// ENDSUBSECTION
	
	--// SUBSECTION : Window Functionability
	do
		mainWindow.Content.Topbar.NotificationCenterIcon["MouseEnter"]:Connect(function()
			Tween(mainWindow.Content.Topbar.NotificationCenterIcon, {ImageColor3 = Resources["MediumFont_" .. Starlight.CurrentTheme].Value})
		end)
		mainWindow.Content.Topbar.NotificationCenterIcon["MouseLeave"]:Connect(function()
			Tween(mainWindow.Content.Topbar.NotificationCenterIcon, {ImageColor3 = Resources["DarkFont_" .. Starlight.CurrentTheme].Value})
		end)

		mainWindow.Content.Topbar.Search["MouseEnter"]:Connect(function()
			Tween(mainWindow.Content.Topbar.Search, {ImageColor3 = Resources["MediumFont_" .. Starlight.CurrentTheme].Value})
		end)
		mainWindow.Content.Topbar.Search["MouseLeave"]:Connect(function()
			Tween(mainWindow.Content.Topbar.Search, {ImageColor3 = Resources["DarkFont_" .. Starlight.CurrentTheme].Value})
		end)

		for _, Button in ipairs(mainWindow.Content.Topbar.Controls:GetChildren()) do
			Button["MouseEnter"]:Connect(function()
				Tween(Button, {BackgroundColor3 = Button.Value.Value})
			end)

			Button["MouseLeave"]:Connect(function()
				Tween(Button, {BackgroundColor3 = Color3.fromRGB(100,100,100)})
			end)
		end

		mainWindow.Content.Topbar.Controls.Close["MouseButton1Click"]:Connect(function()
			Starlight:Destroy()
		end)
		mainWindow.Content.Topbar.Controls.Maximize["MouseButton1Click"]:Connect(function()
			if Starlight.Maximized then
				Unmaximize(mainWindow)
			else
				Maximize(mainWindow)
			end
		end)
		mainWindow.Content.Topbar.Controls.Minimize["MouseButton1Click"]:Connect(function()
			Hide(StarlightUI, false, true, Starlight.WindowKeybind)
		end)

		UserInputService.InputBegan:Connect(function(input, gpe)
			if gpe then return end
			if Starlight.Minimized == false then return end
			if input.KeyCode == Enum.KeyCode[Starlight.WindowKeybind] then
				Unhide(StarlightUI)
			end
		end)
	end
	--// ENDSUBSECTION
	
	-- Return the window
	return Starlight.Window
	
end

StarlightUI.Enabled = true

--// ENDSECTION


--// SECTION : Testing

--// SUBSECTION : Example Script

--// ENDSUBSECTION

--// SUBSECTION : Debugging Script
--[[local win = Starlight:CreateWindow({
	Name = "Starlight Example Window",
	Subtitle = "Alpha Release 1",
	Icon = nil,
	
	LoadingEnabled = false,
	LoadingSettings = {
		Style = 1,
		Title = "Starlight Interface Suite",
		Subtitle = "by Nebula Softworks",
		Logo = nil, -- Available for Style 1 only. replace the loading circle with an image of your choice
	},

	BuildWarnings = true,
	InterfaceAdvertisingPrompts = true,

	ConfigurationSettings = {
		Enabled = false,
		RootFolder = nil,
		FolderName = nil,
	},

	DefaultSize = nil,

	KeySystem = {
		Enabled = false,
		Title = "Starlight Key System",
		Subtitle = "Enter Your Key To Use The Script",
		Note = "This Key System Only supports strings",

		SaveKey = false,
		KeyFile = "Key",

		KeyObtainLink = "",
		Discord = false,

		HttpKey = false,
		Keys = {"Key"}, -- put the link to a raw content page containing your key.
	},

	Discord = { -- u can still have it in the home tab, this is just auto join
		Enabled = false,
		RememberJoins = true,
		Link = "1234"
	},

})

local ts = win:CreateTabSection()
local ts2 = win:CreateTabSection("Tab Section Example")

local t = ts:CreateTab({
	Name = "hi",
	Columns = 2
})
local t2 = ts2:CreateTab({
	Name = "hi2",
	Columns = 2
})
local t3 = ts2:CreateTab({
	Name = "hi3",
	Columns = 2
})

local g = t:CreateGroupbox({
	Name = "Groupbox Example",
	Column = 2
})
local g2 = t:CreateGroupbox({
	Name = "Groupbox Example",
	Style =2
})
t2:CreateGroupbox({
	Name = "Groupbox Example",
	Icon = "home_filled"
})

g:CreatePrimaryButton({
	Name = "Button 2",
	Callback = ""
})

g2:CreatePrimaryButton({
	Name = "Button",
	Icon = "view_in_ar",
	Callback = function()
		print("hi")
	end,
})

g2:CreateSecondaryButton({
	Name = "Button",
	Icon = "view_in_ar",
	Callback = function()
		print("hi")
	end,
})

g2:CreateCheckbox({
	Name = "Checkbox",
	Callback = function()
		
	end,
})

g:CreateSwitch({
	Name = "Switch",
	Callback = function()
		
	end,
})

g2:CreateSlider({
	Name = "Slider",
	Range = {0,100},
	Increment = 0.5,
	Callback = function() end
})

g2:CreateSlider({
	Name = "Slider",
	Range = {0,100},
	HideMax = true,
	Callback = function(v) print(v) end
})

g:CreateBind({
	Name = "bind",
	CurrentValue = "Q",
	Callback = function() end
})
g:CreateInput({
	Name = "dynamic input",
	Callback = function() end
})
g2:CreateInput({
	Name = "numeric input",
	Numeric = true,
	Callback = function() end
})]]
--// ENDSUBSECTION

--// ENDSECTION

return Starlight
