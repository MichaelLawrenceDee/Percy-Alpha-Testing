--Brotherhood of the Fire Fist - Peacock
--Logical Nonsense

--Substitute ID
local s,id=GetID()

function s.initial_effect(c)
	--Must be properly summoned before reviving
	c:EnableReviveLimit()
	aux.AddLinkProcedure(c,aux.FilterBoolFunctionEx(Card.IsRace,RACE_BEASTWARRIOR),2,2)
	--Cannot be attack target
	local e1=Effect.CreateEffect(c)
	e1:SetType(EFFECT_TYPE_SINGLE)
	e1:SetCode(EFFECT_CANNOT_BE_BATTLE_TARGET)
	e1:SetProperty(EFFECT_FLAG_SINGLE_RANGE)
	e1:SetRange(LOCATION_MZONE)
	e1:SetCondition(s.tgcon)
	e1:SetValue(aux.imval1)
	c:RegisterEffect(e1)
	--Take control until end phase
	local e2=Effect.CreateEffect(c)
	e2:SetDescription(aux.Stringid(id,1))
	e2:SetCategory(CATEGORY_CONTROL)
	e2:SetType(EFFECT_TYPE_SINGLE+EFFECT_TYPE_TRIGGER_O)
	e2:SetProperty(EFFECT_FLAG_CARD_TARGET)
	e2:SetCode(EVENT_ATTACK_ANNOUNCE)
	e2:SetCountLimit(1,id)
	--e2:SetCost(s.ctcost)
	e2:SetTarget(s.cttg)
	e2:SetOperation(s.ctop)
	c:RegisterEffect(e2)
end
	--Part of "Fire Fist" archetype
s.listed_series={0x79}
	--Check for "Fire Fist" monster
function s.tgfilter(c)
	return c:IsFaceup() and c:IsSetCard(0x79)
end
	--If this card is pointing to "Fire Fist"
function s.tgcon(e,tp,eg,ep,ev,re,r,rp)
	return e:GetHandler():GetLinkedGroup():IsExists(s.tgfilter,1,nil)
end
	--Check for "Fire Formation" S/T for cost
function s.ctfilter(c)
	return c:IsFaceup() and c:IsSetCard(0x7c) and c:IsType(TYPE_SPELL+TYPE_TRAP) and c:IsAbleToGraveAsCost()
end
	--Activation legality
function s.cttg(e,tp,eg,ep,ev,re,r,rp,chk,chkc)
	local c=e:GetHandler()
	if chkc then return chkc:GetLocation()==LOCATION_MZONE and chkc:GetControler()~=tp and chkc:IsControlerCanBeChanged() end
	local nc=Duel.IsExistingMatchingCard(s.ctfilter,tp,LOCATION_ONFIELD,0,1,nil)
	if chk==0 then 
		local zone=c:GetLinkedZone()&0x1f
		if Duel.IsPlayerAffectedByEffect(tp,CARD_FIRE_FIST_EAGLE) then 
			return Duel.IsExistingTarget(Card.IsControlerCanBeChanged,tp,0,LOCATION_MZONE,1,nil) 
		else return nc end
	end
	if nc and not (Duel.IsPlayerAffectedByEffect(tp,CARD_FIRE_FIST_EAGLE) and Duel.SelectYesNo(tp,aux.Stringid(CARD_FIRE_FIST_EAGLE,0))) then
		Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_TOGRAVE)
		local g1=Duel.SelectMatchingCard(tp,s.ctfilter,tp,LOCATION_ONFIELD,0,1,1,nil)
		Duel.SendtoGrave(g1,REASON_COST)
	end
	Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_CONTROL)
	local g2=Duel.SelectTarget(tp,Card.IsControlerCanBeChanged,tp,0,LOCATION_MZONE,1,1,nil)
	Duel.SetOperationInfo(0,CATEGORY_CONTROL,g2,1,0,0)
end
	--Take control of monster until end phase, it cannot attack
function s.ctop(e,tp,eg,ep,ev,re,r,rp)
	local tc=Duel.GetFirstTarget()
	local c=e:GetHandler()
	if tc then
		local zone=c:GetLinkedZone()&0x1f
		if Duel.GetControl(tc,tp,PHASE_END,1,zone)~=0 then
			local reset=RESET_EVENT+RESETS_STANDARD-RESET_TURN_SET+RESET_PHASE+PHASE_END
			local e1=Effect.CreateEffect(c)
			e1:SetType(EFFECT_TYPE_SINGLE)
			e1:SetCode(EFFECT_CANNOT_ATTACK)
			e1:SetReset(reset)
			tc:RegisterEffect(e1)
		end
	end
end
