--Created using senpaizuri's Puzzle Maker (updated by Naim & Larry126)
Debug.ReloadFieldBegin(DUEL_ATTACK_FIRST_TURN+DUEL_SIMPLE_AI,4)
Debug.SetPlayerInfo(0,8000,0,0)
Debug.SetPlayerInfo(1,8000,0,0)

--Main Deck
Debug.AddCard(75878039,0,0,LOCATION_DECK,0,POS_FACEDOWN)
--Hand
Debug.AddCard(100412036,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(100412036,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(81439173,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(100412032,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(100412027,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(5318639,0,0,LOCATION_HAND,0,POS_FACEDOWN)
Debug.AddCard(5758500,0,0,LOCATION_HAND,0,POS_FACEDOWN)
--GY
Debug.AddCard(100412035,0,0,LOCATION_GRAVE,0,POS_FACEUP)
Debug.AddCard(100412031,0,0,LOCATION_GRAVE,0,POS_FACEUP)
--Banished
Debug.AddCard(100412035,0,0,LOCATION_REMOVED,0,5)
--Monster Zones
Debug.AddCard(73125233,1,1,LOCATION_MZONE,3,1,true)
Debug.ReloadFieldEnd()
aux.BeginPuzzle()