﻿local _, ADDON = ...

local locale = GetLocale()

ADDON.isMetric = false -- is the metric or imperial/us unit system used?
ADDON.L = {}
local L = ADDON.L

L["Black Market"] = "Black Market"
L["Family"] = "Family"
L["FAVOR_DISPLAYED"] = "All Displayed"
L["FAVOR_PER_CHARACTER"] = "Per Character"
L["FAVOR_AUTO"] = "Auto-favor new mounts"
L["Hidden"] = "Hidden"
L["Only tradable"] = "Only tradable"
L["Only usable"] = "Only usable"
L["Passenger"] = "Passenger"
L["Reset filters"] = "Reset filters"
L["ROTATE_DOWN"] = "Rotate Down"
L["ROTATE_UP"] = "Rotate Up"
L["DRESSUP_LABEL"] = "Journal"
L["SORT_BY_LEARNED_DATE"] = "Date of receipt"
L["SORT_BY_USAGE_COUNT"] = "Count of usage"
L["SORT_BY_LAST_USAGE"] = "Last usage"
L["SORT_BY_TRAVEL_DISTANCE"] = "Travelled distance"
L["SORT_BY_TRAVEL_DURATION"] = "Travelled duration"
L["SORT_FAVORITES_FIRST"] = "Favorites First"
L["SORT_REVERSE"] = "Reverse Sort"
L["SORT_UNUSABLE_BOTTOM"] = "Unusable after Usable"
L["SORT_UNOWNED_BOTTOM"] = "Unowned at Bottom"
L["TASK_END"] = "[MJE] Phew! I'm done."
L["TASK_FAVOR_START"] = "[MJE] Reapplying stars all over your mounts. Please wait a few seconds until I'm finished."
L["TOGGLE_COLOR"] = "Show next color variation"
L["Transform"] = "Transform"
L["FILTER_ONLY_LATEST"] = "Only latest additions"
L["FILTER_SECRET"] = "Hidden by the game"

-- Families
L["Airplanes"] = "Airplanes"
L["Airships"] = "Airships"
L["Alpacas"] = "Alpacas"
L["Amphibian"] = "Amphibian"
L["Animite"] = "Animite"
L["Aqir Flyers"] = "Aqir Flyers"
L["Arachnids"] = "Arachnids"
L["Assault Wagons"] = "Assault Wagons"
L["Basilisks"] = "Basilisks"
L["Bats"] = "Bats"
L["Bears"] = "Bears"
L["Bees"] = "Bees"
L["Birds"] = "Birds"
L["Blood Ticks"] = "Blood Ticks"
L["Boars"] = "Boars"
L["Book"] = "Book"
L["Bovids"] = "Bovids"
L["Brutosaurs"] = "Brutosaurs"
L["Camels"] = "Camels"
L["Carnivorans"] = "Carnivorans"
L["Carpets"] = "Carpets"
L["Cats"] = "Cats"
L["Cervid"] = "Cervid"
L["Chargers"] = "Chargers"
L["Chickens"] = "Chickens"
L["Clefthooves"] = "Clefthooves"
L["Cloud Serpents"] = "Cloud Serpents"
L["Core Hounds"] = "Core Hounds"
L["Crabs"] = "Crabs"
L["Cranes"] = "Cranes"
L["Crawgs"] = "Crawgs"
L["Crocolisks"] = "Crocolisks"
L["Crows"] = "Crows"
L["Demonic Hounds"] = "Demonic Hounds"
L["Demonic Steeds"] = "Demonic Steeds"
L["Demons"] = "Demons"
L["Devourer"] = "Devourer"
L["Dinosaurs"] = "Dinosaurs"
L["Dire Wolves"] = "Dire Wolves"
L["Direhorns"] = "Direhorns"
L["Discs"] = "Discs"
L["Dragonhawks"] = "Dragonhawks"
L["Drakes"] = "Drakes"
L["Dread Ravens"] = "Dread Ravens"
L["Elekks"] = "Elekks"
L["Elementals"] = "Elementals"
L["Falcosaurs"] = "Falcosaurs"
L["Fathom Rays"] = "Fathom Rays"
L["Feathermanes"] = "Feathermanes"
L["Felsabers"] = "Felsabers"
L["Fish"] = "Fish"
L["Flies"] = "Flies"
L["Flying Steeds"] = "Flying Steeds"
L["Foxes"] = "Foxes"
L["Gargon"] = "Gargon"
L["Gargoyle"] = "Gargoyle"
L["Goats"] = "Goats"
L["Gorger"] = "Gorger"
L["Gorm"] = "Gorm"
L["Grand Drakes"] = "Grand Drakes"
L["Gronnlings"] = "Gronnlings"
L["Gryphons"] = "Gryphons"
L["Gyrocopters"] = "Gyrocopters"
L["Hands"] = "Hands"
L["Hawkstriders"] = "Hawkstriders"
L["Hippogryphs"] = "Hippogryphs"
L["Horned Steeds"] = "Horned Steeds"
L["Horses"] = "Horses"
L["Hounds"] = "Hounds"
L["Hovercraft"] = "Hovercraft"
L["Humanoids"] = "Humanoids"
L["Hyenas"] = "Hyenas"
L["Infernals"] = "Infernals"
L["Insects"] = "Insects"
L["Jellyfish"] = "Jellyfish"
L["Jet Aerial Units"] = "Jet Aerial Units"
L["Kites"] = "Kites"
L["Kodos"] = "Kodos"
L["Krolusks"] = "Krolusks"
L["Larion"] = "Larion"
L["Lions"] = "Lions"
L["Lupine"] = "Lupine"
L["Mammoths"] = "Mammoths"
L["Mana Rays"] = "Mana Rays"
L["Manasabers"] = "Manasabers"
L["Mauler"] = "Mauler"
L["Mechanical Animals"] = "Mechanical Animals"
L["Mechanical Birds"] = "Mechanical Birds"
L["Mechanical Cats"] = "Mechanical Cats"
L["Mechanical Steeds"] = "Mechanical Steeds"
L["Mechanostriders"] = "Mechanostriders"
L["Mecha-suits"] = "Mecha-suits"
L["Moose"] = "Moose"
L["Moth"] = "Moth"
L["Motorcycles"] = "Motorcycles"
L["Mountain Horses"] = "Mountain Horses"
L["Mushan"] = "Mushan"
L["Nether Drakes"] = "Nether Drakes"
L["Nether Rays"] = "Nether Rays"
L["N'Zoth Serpents"] = "N'Zoth Serpents"
L["Others"] = "Others"
L["Ox"] = "Ox"
L["Pandaren Phoenixes"] = "Pandaren Phoenixes"
L["Parrots"] = "Parrots"
L["Phoenixes"] = "Phoenixes"
L["Proto-Drakes"] = "Proto-Drakes"
L["Pterrordaxes"] = "Pterrordaxes"
L["Quilen"] = "Quilen"
L["Rams"] = "Rams"
L["Raptora"] = "Raptora"
L["Raptors"] = "Raptors"
L["Rats"] = "Rats"
L["Ravagers"] = "Ravagers"
L["Rays"] = "Rays"
L["Razorwing"] = "Razorwing"
L["Reptiles"] = "Reptiles"
L["Rhinos"] = "Rhinos"
L["Riverbeasts"] = "Riverbeasts"
L["Roc"] = "Roc"
L["Rockets"] = "Rockets"
L["Ruinstriders"] = "Ruinstriders"
L["Runestag"] = "Runestag"
L["Rylaks"] = "Rylaks"
L["Sabers"] = "Sabers"
L["Scorpions"] = "Scorpions"
L["Sea Serpents"] = "Sea Serpents"
L["Seahorses"] = "Seahorses"
L["Seat"] = "Seat"
L["Silithids"] = "Silithids"
L["Snail"] = "Snail"
L["Snapdragons"] = "Snapdragons"
L["Spider Tanks"] = "Spider Tanks"
L["Spiders"] = "Spiders"
L["Steeds"] = "Steeds"
L["Stingrays"] = "Stingrays"
L["Stone Cats"] = "Stone Cats"
L["Stone Drakes"] = "Stone Drakes"
L["Talbuks"] = "Talbuks"
L["Tallstriders"] = "Tallstriders"
L["Talonbirds"] = "Talonbirds"
L["Tauralus"] = "Tauralus"
L["Tigers"] = "Tigers"
L["Toads"] = "Toads"
L["Turtles"] = "Turtles"
L["Undead Drakes"] = "Undead Drakes"
L["Undead Steeds"] = "Undead Steeds"
L["Undead Wolves"] = "Undead Wolves"
L["Ungulates"] = "Ungulates"
L["Ur'zul"] = "Ur'zul"
L["Vehicles"] = "Vehicles"
L["Vombata"] = "Vombata"
L["Vulpin"] = "Vulpin"
L["Vultures"] = "Vultures"
L["War Wolves"] = "War Wolves"
L["Wasp"] = "Wasp"
L["Water Striders"] = "Water Striders"
L["Wilderlings"] = "Wilderlings"
L["Wind Drakes"] = "Wind Drakes"
L["Wolfhawks"] = "Wolfhawks"
L["Wolves"] = "Wolves"
L["Wyverns"] = "Wyverns"
L["Yaks"] = "Yaks"
L["Yetis"] = "Yetis"

-- Settings
L["DISPLAY_ALL_SETTINGS"] = "Display all settings"
L["RESET_WINDOW_SIZE"] = "Reset journal size"
L["SETTING_ACHIEVEMENT_POINTS"] = "Show achievement points"
L["SETTING_AUTO_FAVOR"] = "Automatically set new mounts as favorite"
L["SETTING_COMPACT_LIST"] = "Compact mount list"
L["SETTING_CURSOR_KEYS"] = "Enable Up&Down keys to browse mounts"
L["SETTING_FAVORITE_PER_CHAR"] = "Favorite mounts per character"
L["SETTING_HEAD_BEHAVIOUR"] = "Behavior"
L["SETTING_MOUNT_COUNT"] = "Show personal mount count"
L["SETTING_MOVE_EQUIPMENT"] = "Move equipment slot into display"
L["SETTING_PERSONAL_FILTER"] = "Apply filters only to this character"
L["SETTING_PERSONAL_HIDDEN_MOUNTS"] = "Apply hidden mounts only to this character"
L["SETTING_PERSONAL_UI"] = "Apply Interface settings only to this character"
L["SETTING_PREVIEW_LINK"] = "Show Collection button in mount preview"
L["SETTING_SEARCH_MORE"] = "Search also in description text"
L["SETTING_SHOP_BUTTON"] = "Show shop button at untrained shop mounts"
L["SETTING_SHOW_USAGE"] = "Display mount usage statistics"
L["SETTING_TRACK_USAGE"] = "Track mount usage behavior on all characters"
L["SETTING_YCAMERA"] = "Unlock Y rotation with mouse in display"

if locale == "deDE" then
    ADDON.isMetric = true
    --@localization(locale="deDE", format="lua_additive_table", handle-unlocalized=comment)@
    --@localization(locale="deDE", namespace="Settings", format="lua_additive_table", handle-unlocalized=comment)@
    --@localization(locale="deDE", namespace="Families", format="lua_additive_table", handle-unlocalized=comment)@

elseif locale == "esES" then
    ADDON.isMetric = true
    --@localization(locale="esES", format="lua_additive_table", handle-unlocalized=comment)@
    --@localization(locale="esES", namespace="Settings", format="lua_additive_table", handle-unlocalized=comment)@
    --@localization(locale="esES", namespace="Families", format="lua_additive_table", handle-unlocalized=comment)@

elseif locale == "frFR" then
    ADDON.isMetric = true
    --@localization(locale="frFR", format="lua_additive_table", handle-unlocalized=comment)@
    --@localization(locale="frFR", namespace="Settings", format="lua_additive_table", handle-unlocalized=comment)@
    --@localization(locale="frFR", namespace="Families", format="lua_additive_table", handle-unlocalized=comment)@

elseif locale == "koKR" then
    ADDON.isMetric = true
    --@localization(locale="koKR", format="lua_additive_table", handle-unlocalized=comment)@
    --@localization(locale="koKR", namespace="Settings", format="lua_additive_table", handle-unlocalized=comment)@
    --@localization(locale="koKR", namespace="Families", format="lua_additive_table", handle-unlocalized=comment)@

elseif locale == "ptBR" then
    ADDON.isMetric = true
    --@localization(locale="ptBR", format="lua_additive_table", handle-unlocalized=comment)@
    --@localization(locale="ptBR", namespace="Settings", format="lua_additive_table", handle-unlocalized=comment)@
    --@localization(locale="ptBR", namespace="Families", format="lua_additive_table", handle-unlocalized=comment)@

elseif locale == "ruRU" then
    ADDON.isMetric = true
    --@localization(locale="ruRU", format="lua_additive_table", handle-unlocalized=comment)@
    --@localization(locale="ruRU", namespace="Settings", format="lua_additive_table", handle-unlocalized=comment)@
    --@localization(locale="ruRU", namespace="Families", format="lua_additive_table", handle-unlocalized=comment)@

elseif locale == "zhCN" then
    ADDON.isMetric = true
    --@localization(locale="zhCN", format="lua_additive_table", handle-unlocalized=comment)@
    --@localization(locale="zhCN", namespace="Settings", format="lua_additive_table", handle-unlocalized=comment)@
    --@localization(locale="zhCN", namespace="Families", format="lua_additive_table", handle-unlocalized=comment)@
end