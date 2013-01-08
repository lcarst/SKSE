; Get/Set Perk Points
int Function GetPerkPoints() global native
Function SetPerkPoints(int perkPoints) global native
Function ModPerkPoints(int perkPoints) global native

; returns the number of active mods
int Function GetModCount() native global

; returns the index of the specified mod
int Function GetModByName(string name) native global

; returns the name of the mod at the specified modIndex
string Function GetModName(int modIndex) native global

; returns the author of the mod at the specified modIndex
string Function GetModAuthor(int modIndex) native global

; returns the description of the mod at the specified modIndex
string Function GetModDescription(int modIndex) native global

; gets the count of mods the specified mod depends upon
int Function GetModDependencyCount(int modIndex) native global

; gets the index of the nth mod dependency of the specfied mod
int Function GetNthModDependency(int modIndex, int n) native global

; GameSetting functions - SKSE 1.5.10
Function SetGameSettingFloat(string setting, float value) global native
Function SetGameSettingInt(string setting, int value) global native
Function SetGameSettingBool(string setting, bool value) global native
Function SetGameSettingString(string setting, string value) global native

; save/load game
Function SaveGame(string name) native global
Function LoadGame(string name) native global

; TintMasks (AARRGGBB)

; Returns the total number of tints for the player
int Function GetNumTintMasks() native global

; Returns the color of the Nth tint mask
int Function GetNthTintMaskColor(int n) native global

; Returns the type of the Nth tint mask
int Function GetNthTintMaskType(int n) native global

; Sets the color of the Nth tint mask
Function SetNthTintMaskColor(int n, int color) native global

; Returns the texture path of the Nth tint mask
string Function GetNthTintMaskTexturePath(int n) native global

; Sets the texturepath of the Nth tint mask
Function SetNthTintMaskTexturePath(string path, int n) native global

; Types
; 0 - Frekles
; 1 - Lips
; 2 - Cheeks
; 3 - Eyeliner
; 4 - Upper Eyesocket
; 5 - Lower Eyesocket
; 6 - SkinTone
; 7 - Warpaint
; 8 - Frownlines
; 9 - Lower Cheeks
; 10 - Nose
; 11 - Chin
; 12 - Neck
; 13 - Forehead
; 14 - Dirt

; Returns how many indexes there are for this type
int Function GetNumTintsByType(int type) native global

; Returns the color for the particular tintMask type and index
int Function GetTintMaskColor(int type, int index) global native

; Sets the tintMask color for the particular type and index
Function SetTintMaskColor(int color, int type, int index) global native

; Returns the texture path for the particular tintMask type and index
string Function GetTintMaskTexturePath(int type, int index) global native

; Sets the tintMask texture for the particular type and index
Function SetTintMaskTexturePath(string path, int type, int index) global native

; Updates tintMask colors without updating the entire model
Function UpdateTintMaskColors() global native

; Updates the players hair color immediately
Function UpdateHairColor() global native

; return a misc stat value
int Function GetMiscStat(string name) global native

; set a misc stat value
Function SetMiscStat(string name, int value) global native
