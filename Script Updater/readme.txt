YGOPro Percy Script Moderniser
by AlphaKretin, November 2018
Applies modern script standard updates to YGOPro card script files.
Usage:
Create a "script" folder with the card scripts you want to update.
Create an empty "newscript" folder for the output.
Run the script outside the folders using NodeJS. It has no dependencies, but fairly recent features.
You can edit the expected names of the folders in constants around line 100-110ish.

Updates applied by this script
- GetID()
- Renamed functions and new constants, including RegisterEffect flags
- # for Group Size
- Lua 5.3 Bitwise operators
- Listed names

Updates known not to be applied by this script:
- English name in comment under Japanese name
- Card.IsRitualMonster/IsRitualSpell functions
- aux.FilterFaceupFunction function
- Card.IsSequence, IsOriginalName, IsOriginalNameRule, IsSummonPlayer, IsPreviousControler, and IsHasLevel functions
- Listed counters added
- Old cards that could use SelectUnselect (e.g. Dried Winds destroy, Block Dragon summon)
- EFFECT_FLAG_CLIENT_HINT for lingering player effects

Update for the next core
- Un-hardcode continuous trap "Use effect now"
- "Must attack" fix (? ask larry)
