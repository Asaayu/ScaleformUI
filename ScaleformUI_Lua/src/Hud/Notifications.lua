Notifications = setmetatable({
    _handle = 0,
    Type = {
        Default = 0,
        Bubble = 1,
        Mail = 2,
        FriendRequest = 3,
        Default2 = 4,
        Reply = 7,
        ReputationPoints = 8,
        Money = 9
    },
    Color = {
        Red = 27,
        Yellow = 50,
        Gold = 12,
        GreenLight = 46,
        GreenDark = 47,
        Cyan = 48,
        Blue = 51,
        Purple = 49,
        Rose = 45
    },
    NotificationIcon = {
        ChatBox = 1,
        Email = 2,
        AdDFriendRequest = 3,
        RightJumpingArrow = 7,
        RPIcon = 8,
        DollarIcon = 9
    },
    IconChars = {
        Abigail = "CHAR_ABIGAIL",
        Amanda = "CHAR_AMANDA",
        Ammunation = "CHAR_AMMUNATION",
        Andreas = "CHAR_ANDREAS",
        Antonia = "CHAR_ANTONIA",
        Ashley = "CHAR_ASHLEY",
        BankOfLiberty = "CHAR_BANK_BOL",
        BankFleeca = "CHAR_BANK_FLEECA",
        BankMaze = "CHAR_BANK_MAZE",
        Barry = "CHAR_BARRY",
        Beverly = "CHAR_BEVERLY",
        BikeSite = "CHAR_BIKESITE",
        BlankEntry = "CHAR_BLANK_ENTRY",
        Blimp = "CHAR_BLIMP",
        Blocked = "CHAR_BLOCKED",
        BoatSite = "CHAR_BOATSITE",
        BrokenDownGirl = "CHAR_BROKEN_DOWN_GIRL",
        BugStars = "CHAR_BUGSTARS",
        Call911 = "CHAR_CALL911",
        LegendaryMotorsport = "CHAR_CARSITE",
        SSASuperAutos = "CHAR_CARSITE2",
        Castro = "CHAR_CASTRO",
        ChatCall = "CHAR_CHAT_CALL",
        Chef = "CHAR_CHEF",
        Cheng = "CHAR_CHENG",
        ChengSenior = "CHAR_CHENGSR",
        Chop = "CHAR_CHOP",
        Cris = "CHAR_CRIS",
        Dave = "CHAR_DAVE",
        Default = "CHAR_DEFAULT",
        Denise = "CHAR_DENISE",
        DetonateBomb = "CHAR_DETONATEBOMB",
        DetonatePhone = "CHAR_DETONATEPHONE",
        Devin = "CHAR_DEVIN",
        SubMarine = "CHAR_DIAL_A_SUB",
        Dom = "CHAR_DOM",
        DomesticGirl = "CHAR_DOMESTIC_GIRL",
        Dreyfuss = "CHAR_DREYFUSS",
        DrFriedlander = "CHAR_DR_FRIEDLANDER",
        Epsilon = "CHAR_EPSILON",
        EstateAgent = "CHAR_ESTATE_AGENT",
        Facebook = "CHAR_FACEBOOK",
        FilmNoire = "CHAR_FILMNOIR",
        Floyd = "CHAR_FLOYD",
        Franklin = "CHAR_FRANKLIN",
        FranklinTrevor = "CHAR_FRANK_TREV_CONF",
        GayMilitary = "CHAR_GAYMILITARY",
        Hao = "CHAR_HAO",
        HitcherGirl = "CHAR_HITCHER_GIRL",
        Hunter = "CHAR_HUNTER",
        Jimmy = "CHAR_JIMMY",
        JimmyBoston = "CHAR_JIMMY_BOSTON",
        Joe = "CHAR_JOE",
        Josef = "CHAR_JOSEF",
        Josh = "CHAR_JOSH",
        LamarDog = "CHAR_LAMAR",
        Lester = "CHAR_LESTER",
        Skull = "CHAR_LESTER_DEATHWISH",
        LesterFranklin = "CHAR_LEST_FRANK_CONF",
        LesterMichael = "CHAR_LEST_MIKE_CONF",
        LifeInvader = "CHAR_LIFEINVADER",
        LsCustoms = "CHAR_LS_CUSTOMS",
        LSTI = "CHAR_LS_TOURIST_BOARD",
        Manuel = "CHAR_MANUEL",
        Marnie = "CHAR_MARNIE",
        Martin = "CHAR_MARTIN",
        MaryAnn = "CHAR_MARY_ANN",
        Maude = "CHAR_MAUDE",
        Mechanic = "CHAR_MECHANIC",
        Michael = "CHAR_MICHAEL",
        MichaelFranklin = "CHAR_MIKE_FRANK_CONF",
        MichaelTrevor = "CHAR_MIKE_TREV_CONF",
        WarStock = "CHAR_MILSITE",
        Minotaur = "CHAR_MINOTAUR",
        Molly = "CHAR_MOLLY",
        MorsMutual = "CHAR_MP_MORS_MUTUAL",
        ArmyContact = "CHAR_MP_ARMY_CONTACT",
        Brucie = "CHAR_MP_BRUCIE",
        FibContact = "CHAR_MP_FIB_CONTACT",
        RockStarLogo = "CHAR_MP_FM_CONTACT",
        Gerald = "CHAR_MP_GERALD",
        Julio = "CHAR_MP_JULIO",
        MechanicChinese = "CHAR_MP_MECHANIC",
        MerryWeather = "CHAR_MP_MERRYWEATHER",
        Unicorn = "CHAR_MP_STRIPCLUB_PR",
        Mom = "CHAR_MRS_THORNHILL",
        MrsThornhill = "CHAR_MRS_THORNHILL",
        PatriciaTrevor = "CHAR_PATRICIA",
        PegasusDelivery = "CHAR_PEGASUS_DELIVERY",
        ElitasTravel = "CHAR_PLANESITE",
        Sasquatch = "CHAR_SASQUATCH",
        Simeon = "CHAR_SIMEON",
        SocialClub = "CHAR_SOCIAL_CLUB",
        Solomon = "CHAR_SOLOMON",
        Taxi = "CHAR_TAXI",
        Trevor = "CHAR_TREVOR",
        YouTube = "CHAR_YOUTUBE",
        Wade = "CHAR_WADE",
    }
}, Notifications)
Notifications.__index = Notifications
Notifications.__call = function()
    return "Notifications", "Notifications"
end

---@class Notifications
---@field private _handle number
---@field public Type table<string, number>
---@field public Color table<string, number>
---@field public NotificationIcon table<string, number>
---@field public IconChars table<string, string>
---@field public Hide fun(self:Notifications):nil
---@field public ShowNotification fun(self:Notifications, msg:string, blink:boolean, showInBrief:boolean):nil
---@field public ShowNotificationWithColor fun(self:Notifications, msg:string, color:Colours, blink:boolean, showInBrief:boolean):nil
---@field public ShowHelpNotification fun(self:Notifications, helpText:string, duration:number):nil
---@field public ShowFloatingHelpNotification fun(self:Notifications, helpText:string, coords:vector3):nil
---@field public ShowAdvancedNotification fun(self:Notifications, title:string, subtitle:string, body:string, character:NotificationCharacters, icon:NotificationIcon, backgroundColor:Colours, flashColoir:table<number, number, number>, blink:boolean, type:NotificationType, sound:string):nil
---@field public ShowStatNotification fun(self:Notifications, newProgress:number, oldProgress:number, title:string, blink:boolean, showInBrief:boolean):nil
---@field public ShowVSNotification fun(self:Notifications, ped1:number, ped2:number, colour1:Colours, colour2:Colours):nil
---@field public DrawText3D fun(self:Notifications, coords:vector3, colour:Colours, text:string, font:Font, size:number):nil
---@field public DrawText fun(self:Notifications, x:number, y:number, text:string, colour:Colours, font:Font, textAlignment:number, shadow:boolean, outline:boolean, wordWrap:number):nil
---@field public ShowSubtitle fun(self:Notifications, text:string, duration:number):nil

---Hide the notification
---@return nil
function Notifications:Hide()
    ThefeedRemoveItem(self._handle)
end

---Show a notification
---@param msg string @The message
---@param blink boolean @Should the notification blink?
---@param showInBrief boolean @Should the notification be saved in the brief?
---@return nil
function Notifications:ShowNotification(msg, blink, showInBrief)
    AddTextEntry("ScaleformUINotification", msg)
    BeginTextCommandThefeedPost("ScaleformUINotification")
    EndTextCommandThefeedPostTicker(blink, showInBrief)
end

---Show a notification with a color
---@param msg string @The message
---@param color Colours @The color
---@param blink boolean @Should the notification blink?
---@param showInBrief boolean @Should the notification be saved in the brief?
---@return nil
function Notifications:ShowNotificationWithColor(msg, color, blink, showInBrief)
    AddTextEntry("ScaleformUINotification", msg)
    BeginTextCommandThefeedPost("ScaleformUINotification")
    ThefeedSetNextPostBackgroundColor(color)
    EndTextCommandThefeedPostTicker(blink, showInBrief)
end

---Show a help notification
---@param helpText string @The help text
---@param duration number @The duration in milliseconds to display help notification, set this to nil if you want to control when it is shown
---@return nil
function Notifications:ShowHelpNotification(helpText, duration)
    AddTextEntry("ScaleformUIHelpText", helpText)
    if (duration ~= nil) then
        if (duration > 5000) then duration = 5000 end
        BeginTextCommandDisplayHelp("ScaleformUIHelpText")
        EndTextCommandDisplayHelp(0, false, true, duration)
    else
        DisplayHelpTextThisFrame("ScaleformUIHelpText", false)
    end
end

---Show a floating help notification
---@param msg string @The message
---@param coords vector3 @The coordinates of the notification
---@return nil
function Notifications:ShowFloatingHelpNotification(msg, coords)
    AddTextEntry("ScaleformUIFloatingHelpText", msg)
    SetFloatingHelpTextWorldPosition(1, coords)
    SetFloatingHelpTextStyle(1, 1, 2, -1, 3, 0)
    BeginTextCommandDisplayHelp("ScaleformUIFloatingHelpText")
    EndTextCommandDisplayHelp(2, false, false, -1)
end

---Show an advanced notification
---@param title string @The title
---@param subtitle string @The subtitle
---@param text string @The body of the nofitication
---@param characterIcon string @The character to be displayed in the notification, use the NotificationCharacters
---@param notificationIcon NotificationIcon @The icon
---@param backgroundColour Colours @The background color
---@param flashColour {R:number, G:number, B:number, A:number} @The flash color (RGBA)
---@param blink boolean @Should the notification blink?
---@param notificationType NotificationType @The type of notification
---@param sound boolean @Should the notification play a sound?
---@see NotificationCharacters
---@see NotificationIcon
---@see Colours
---@see NotificationType
---@return nil
function Notifications:ShowAdvancedNotification(title, subtitle, text, characterIcon, notificationIcon, backgroundColour,
                                                flashColour, blink, notificationType,
                                                sound)
    if (notificationType == nil) then notificationType = self.Type.Default end
    if (characterIcon == nil) then characterIcon = self.IconChars.Default end
    if (notificationIcon == nil) then notificationIcon = self.NotificationIcon.Default end
    if (backgroundColour == nil) then backgroundColour = -1 end
    if (blink == nil) then blink = false end
    AddTextEntry("ScaleformUIAdvancedNotification", text)
    BeginTextCommandThefeedPost("ScaleformUIAdvancedNotification")
    AddTextComponentSubstringPlayerName(text)
    if (backgroundColour and backgroundColour ~= -1) then
        ThefeedSetNextPostBackgroundColor(backgroundColour)
    end
    if (flashColour and not blink) then
        ThefeedSetAnimpostfxColor(flashColour.R, flashColour.G, flashColour.B, flashColour.A)
    end
    if (sound) then PlaySoundFrontend(-1, "DELETE", "HUD_DEATHMATCH_SOUNDSET", true); end
    return EndTextCommandThefeedPostMessagetext(characterIcon, characterIcon, true, notificationType, title, subtitle)
end

-- TODO: Investigate if newProgress should be a boolean or a number for EndTextCommandThefeedPostStats
---Show a stat notification
---@param newProgress number @The new progress
---@param oldProgress number @The old progress
---@param title string @The title
---@param blink boolean @Should the notification blink?
---@param showInBrief boolean @Should the notification be saved in the brief?
---@return nil
function Notifications:ShowStatNotification(newProgress, oldProgress, title, blink, showInBrief)
    if (blink == nil) then blink = false end
    if (showInBrief == nil) then showInBrief = false end
    AddTextEntry("ScaleformUIStatsNotification", title)
    local handle = RegisterPedheadshot(PlayerPedId())
    while not IsPedheadshotReady(handle) or not IsPedheadshotValid(handle) do Citizen.Wait(0) end
    local txd = GetPedheadshotTxdString(handle)
    BeginTextCommandThefeedPost("PS_UPDATE")
    AddTextComponentInteger(newProgress)
    ---@diagnostic disable-next-line: param-type-mismatch -- newProgress is a number but the native wants a boolean
    EndTextCommandThefeedPostStats("ScaleformUIStatsNotification", 2, newProgress, oldProgress, false, txd, txd)
    EndTextCommandThefeedPostTicker(blink, showInBrief)
    UnregisterPedheadshot(handle)
end

---Show a versuses notification (2 heads)
---@param ped1 number @The first ped
---@param ped2 number @The second ped
---@param color1 Colours @The color of the first ped
---@param color2 Colours @The color of the second ped
---@see Colours
---@return nil
function Notifications:ShowVSNotification(ped1, ped2, color1, color2)
    local handle_1 = RegisterPedheadshot(ped1)
    while not IsPedheadshotReady(handle_1) or not IsPedheadshotValid(handle_1) do Citizen.Wait(0) end
    local txd_1 = GetPedheadshotTxdString(handle_1)

    local handle_2 = RegisterPedheadshot(ped2)
    while not IsPedheadshotReady(handle_2) or not IsPedheadshotValid(handle_2) do Citizen.Wait(0) end
    local txd_2 = GetPedheadshotTxdString(handle_2)

    BeginTextCommandThefeedPost("")
    ---@diagnostic disable-next-line: redundant-parameter -- This is a bug in the linter
    EndTextCommandThefeedPostVersusTu(txd_1, txd_1, 12, txd_2, txd_2, 1, color1, color2)

    UnregisterPedheadshot(handle_1)
    UnregisterPedheadshot(handle_2)
end

---Put floating text in the world
---@param coords vector3 @The coordinates of the text
---@param color {R:number, G:number, B:number, A:number} @The color of the text (RGBA)
---@param text string @The text
---@param font Font @The font
---@param size number @The size
---@see Font
---@return nil
function Notifications:DrawText3D(coords, color, text, font, size)
    local cam = GetGameplayCamCoord()
    local dist = #(coords - cam)
    local scaleInternal = (1 / dist) * size
    local fov = (1 / GetGameplayCamFov()) * 100
    local _scale = scaleInternal * fov
    SetTextScale(0.1 * _scale, 0.15 * _scale)
    SetTextFont(font)
    SetTextProportional(true)
    SetTextColour(color.R, color.G, color.B, color.A)
    SetTextDropshadow(5, 0, 0, 0, 255)
    SetTextEdge(2, 0, 0, 0, 150)
    SetTextDropShadow()
    SetTextOutline()
    SetTextCentre(true)
    SetDrawOrigin(coords.x, coords.y, coords.z, 0)
    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(0, 0)
    ClearDrawOrigin()
end

---Draw text on the screen
---@param x number @The x position of the text (0-1)
---@param y number @The y position of the text (0-1)
---@param text string @The text
---@param color {R:number, G:number, B:number, A:number} @The color of the text (RGBA)
---@param font Font @The font
---@param textAlignment number @The text alignment
---@param shadow boolean @Should the text have a shadow?
---@param outline boolean @Should the text have an outline?
---@param wrap number @The wrap
---@see Font
---@return nil
function Notifications:DrawText(x, y, text, color, font, textAlignment, shadow, outline, wrap)
    if (color == nil) then color = { r = 255, g = 255, b = 255, a = 255 } end
    if (font == nil) then font = 4 end
    if (textAlignment == nil) then textAlignment = 1 end
    if (shadow == nil) then shadow = true end
    if (outline == nil) then outline = true end
    if (wrap == nil) then wrap = 0 end

    local screenw, screenh = GetActiveScreenResolution()
    local height = 1080
    local ratio = screenw / screenh
    local width = height * ratio

    SetTextFont(font)
    SetTextScale(0.0, 0.5)
    SetTextColour(color.r, color.g, color.b, color.a)
    if (shadow) then SetTextDropShadow() end
    if (outline) then SetTextOutline() end
    if (wrap ~= 0) then
        local xsize = (x + wrap) / width
        SetTextWrap(x, xsize)
    end
    if (textAlignment == 0) then
        SetTextCentre(true)
    elseif (textAlignment == 2) then
        SetTextRightJustify(true)
        SetTextWrap(0, x)
    end
    BeginTextCommandDisplayText("jamyfafi")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(x, y)
end

---Add subtitle to the screen
---@param msg string @The message
---@param duration number @The duration of how long the subtitle will be displayed (in ms)
---@return nil
function Notifications:ShowSubtitle(msg, duration)
    if (duration == nil) then duration = 2500 end
    AddTextEntry("ScaleformUISubtitle", msg)
    BeginTextCommandPrint("ScaleformUISubtitle")
    EndTextCommandPrint(duration, true)
end
