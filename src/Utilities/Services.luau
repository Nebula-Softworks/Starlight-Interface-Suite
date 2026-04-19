local function cast(service: string): any
	return (cloneref and cloneref(game:GetService(service))) or game:GetService(service)
end

return setmetatable(
	{
		PlayerGui = cast("Players").LocalPlayer:WaitForChild("PlayerGui"),
		Mouse = cast("Players").LocalPlayer:GetMouse(),
		LocalPlayer = cast("Players").LocalPlayer,
		Camera = cast("Workspace").CurrentCamera,
	} :: {
		Camera: Camera,
		PlayerGui: PlayerGui,
		Mouse: Mouse,
		LocalPlayer: Player,

		-- i might be missing some
		AnalyticsService: AnalyticsService,
		AssetService: AssetService,
		CollectionService: CollectionService,
		GuiService: GuiService,
		HttpService: HttpService,
		MarketplaceService: MarketplaceService,
		Stats: Stats,
		CoreGui: CoreGui,
		RunService: RunService,
		TweenService: TweenService,
		TextService: TextService,
		UserInputService: UserInputService,
	},
	{
		__index = function(table, key)
			return cast(key)
		end,
	}
)
