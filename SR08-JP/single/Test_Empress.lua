Debug.SetAIName("Empress of Endymion Test")
Debug.ReloadFieldBegin(DUEL_TEST_MODE+DUEL_SIMPLE_AI+DUEL_ATTACK_FIRST_TURN,4)

Debug.SetPlayerInfo(0,8000,0,0) --player
Debug.SetPlayerInfo(1,8000,0,0)
--player hand
Debug.AddCard(100308002,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(80959027,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--player mzone
local c=Debug.AddCard(100308002,0,0,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
Debug.AddCard(70791313,0,0,LOCATION_MZONE,0,POS_FACEUP_ATTACK)
Debug.PreAddCounter(c,0x1,3)
--opp mzone (for battle destruction)
Debug.AddCard(76774528,1,1,LOCATION_MZONE,1,POS_FACEUP_ATTACK)
--opp szone (extra target)
Debug.AddCard(94599451,1,1,LOCATION_SZONE,1,POS_FACEUP)
--player deck (more counters)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.AddCard(89997728,0,0,LOCATION_DECK,0,POS_FACEDOWN)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()