function Item_Stoneeffect ( Stone_Type1 , Stone_Type2 , Stone_Type3 )
	if Stone_Type1 == Stone_Type2 then
		Stone_Type1 = -1
	end

	if Stone_Type1 == Stone_Type3 then
		Stone_Type1 = -1
	end
	
	if Stone_Type2 == Stone_Type3 then
		Stone_Type2 = -1
	end
	
	local jia = Stone_Type1 + Stone_Type2 + Stone_Type3
	local cheng = Stone_Type1 * Stone_Type2 * Stone_Type3
	if cheng > 0 then
		if jia == -1 then
			return 1
		elseif jia == 0 then
			return 2
		elseif jia == 1 then
			return 3
		elseif jia == 2 then
			return 4
		elseif jia == 6 then
			return 11
		elseif jia == 7 then
			return 12
		elseif jia == 8 then
			return 13
		elseif jia == 9 then
			return 14
		end
	elseif cheng < 0 then
		if jia == 2 then
			return 5
		elseif jia == 3 then
			return 6
		elseif jia == 4 then
			if cheng == -4 then
				return 7
			elseif cheng == -6 then
				return 8
			end
		elseif jia == 5 then
			return 9
		elseif jia == 6 then 
			return 10
		end
	end
	return 0
end

function GetNum_Part1 ( Num )
	local a = 0
	a = math.floor ( Num / 1000000000 )
	return a
end
function GetNum_Part2 ( Num )
	local a = 0
	local b = 0
	a = Num - GetNum_Part1 ( Num ) * 1000000000
	b = math.floor ( a / 10000000 )
	return b
end
function GetNum_Part3 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 10000000 ) * 10000000
	b = math.floor ( a / 1000000 )
	return b
end
function GetNum_Part4 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 1000000 ) *1000000
	b = math.floor ( a / 10000 )
	return b
end
function GetNum_Part5 ( Num )
	local a = 0
	local b = 0
	a = Num -  math.floor ( Num / 10000 ) * 10000
	b = math.floor ( a / 1000 )
	return b
end
function GetNum_Part6 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 1000 ) *1000
	b = math.floor ( a / 10 )
	return b
end
function GetNum_Part7 ( Num )
	local a = 0
	local b = 0
	a = Num - math.floor ( Num / 10 ) *10
	b = math.floor ( a / 1 )
	return b
end

function SetNum_Part1 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part1 ( Num )
	b = Part_Num - a
	Num = Num + b * 1000000000
	return Num
end
function SetNum_Part2 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part2 ( Num )
	b = Part_Num - a
	Num = Num + b * 10000000
	return Num
end
function SetNum_Part3 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part3 ( Num )
	b = Part_Num - a
	Num = Num + b * 1000000
	return Num
end
function SetNum_Part4 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part4 ( Num )
	b = Part_Num - a
	Num = Num + b * 10000
	return Num
end
function SetNum_Part5 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part5 ( Num )
	b = Part_Num - a
	Num = Num + b * 1000
	return Num
end
function SetNum_Part6 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part6 ( Num )
	b = Part_Num - a
	Num = Num + b * 10
	return Num
end
function SetNum_Part7 ( Num , Part_Num )
	local a = 0
	local b = 0
	a = GetNum_Part7 ( Num )
	b = Part_Num - a
	Num = Num + b * 1
	return Num
end

function Get_HoleNum ( Num )
	local a = GetNum_Part1 ( Num )
	return a
end
function Get_Stone_1 ( Num )
	local Stone_1 = 0
	Stone_1 = GetNum_Part2 ( Num )
	return Stone_1
end
function Get_StoneLv_1 ( Num )
	local Stone_1 = 0
	Stone_1 = GetNum_Part3 ( Num )
	return Stone_1
end
function Get_Stone_2 ( Num )
	local Stone_2 = 0
	Stone_2 = GetNum_Part4 ( Num )
	return Stone_2
end
function Get_StoneLv_2 ( Num )
	local Stone_2 = 0
	Stone_2 = GetNum_Part5 ( Num )
	return Stone_2
end
function Get_Stone_3 ( Num )
	local Stone_3 = 0
	Stone_3 = GetNum_Part6 ( Num )
	return Stone_3
end
function Get_StoneLv_3 ( Num )
	local Stone_3 = 0
	Stone_3 = GetNum_Part7 ( Num )
	return Stone_3
end

function GetElfSkill ( Num )
	local Part2 = GetNum_Part2 ( Num )
	local Part3 = GetNum_Part3 ( Num )
	local Part4 = GetNum_Part4 ( Num )
	local Part5 = GetNum_Part5 ( Num )
	local Part6 = GetNum_Part6 ( Num )
	local Part7 = GetNum_Part7 ( Num )
	return Part3 , Part2 , Part5 , Part4 , Part7 , Part6
end

--Normal Gem
function ItemHint_FieryGem ( Lv )
	local eff = Lv * 20
	local Hint = "Gem Bonus Attack +"..eff
	return Hint
end
function ItemHint_FuriousGem ( Lv )
	local eff = Lv * 25
	local Hint = "Gem Bonus Attack +"..eff
	return Hint
end
function ItemHint_ExplosiveGem ( Lv )
	local eff = Lv * 30
	local Hint = "Gem Bonus Attack +"..eff
	return Hint
end
function ItemHint_LustriousGem ( Lv )
	local eff = Lv * 6
	local Hint = "Gem Bonus Hit Rate +"..eff
	return Hint
end
function ItemHint_GlowingGem ( Lv )
	local eff = Lv * 15
	local Hint = "Gem Bonus Defense +"..eff
	return Hint
end
function ItemHint_ShiningGem ( Lv )
	local eff = Lv * 200
	local Hint = "Gem Bonus Max HP +"..eff
	return Hint
end
function ItemHint_ShadowGem ( Lv )
	local eff = Lv * 5
	local Hint = "Gem Bonus Dodge +"..eff
	return Hint
end
function ItemHint_SpiritGem ( Lv )
	local eff = Lv * 3
	local Hint = "Gem Bonus Spirit +"..eff
	return Hint
end

--Unique Gem
function ItemHint_GemOfTheWind ( Lv )
	local eff = Lv * 5
	local Hint = "Gem Bonus Agility +"..eff
	return Hint
end
function ItemHint_GemOfStriking ( Lv )
	local eff = Lv * 5
	local Hint = "Added Accuracy"..eff
	return Hint
end
function ItemHint_GemOfColossus ( Lv )
	local eff = Lv * 5
	local Hint = "Gem Bonus Constitution +"..eff
	return Hint
end
function ItemHint_GemOfRage ( Lv )
	local eff = Lv * 5
	local Hint = "Gem Bonus Strength +"..eff
	return Hint
end
function ItemHint_GemOfSoul ( Lv )
	local eff =  Lv *5
	local Hint = "Gem Bonus Spirit +"..eff
	return Hint
end

--Black Dragon Gem
function ItemHint_EyeOfBlackDragon ( Lv )
	local eff = Lv * 75
	local Hint = "Gem Bonus Attack +"..eff
	return Hint
end
function ItemHint_SoulOfBlackDragon ( Lv )
	local eff = Lv * 3
	local Hint = "Gem Bonus Resist +"..eff
	return Hint
end
function ItemHint_HeartOfBlackDragon ( Lv )
	local eff = Lv * 600
	local Hint = "Gem Bonus Max HP +"..eff
	return Hint
end

--Jades
function ItemHint_YellowJade ( Lv )
	local eff =  Lv *20
	local Hint = "Gem Bonus Defense +"..eff
	return Hint
end
function ItemHint_RedJade ( Lv )
	local eff =  Lv *200
	local Hint = "Gem Bonus Max HP +"..eff
	return Hint
end
function ItemHint_GreenJade ( Lv )
	local eff =  Lv *200
	local Hint = "Gem Bonus Max SP +"..eff
	return Hint
end
function ItemHint_ChiatansAura ( Lv )
	local eff =  Lv *5
	local Hint = "Gem Bonus Critical hit-rate +"..eff
	return Hint
end

--Rare Gems
function ItemHint_LocksHit ( Lv )
	local eff =  Lv *10
	local Hint = "Gem Bonus Hit Rate +"..eff
	return Hint
end
function ItemHint_BingsDodging ( Lv )
	local eff =  Lv *10
	local Hint = "Gem Bonus Dodge +"..eff
	return Hint
end
function ItemHint_FengsDefense ( Lv )
	local eff =  Lv *25
	local Hint = "Gem Bonus Defense +"..eff
	return Hint
end
function ItemHint_SharksStrengthening ( Lv )
	local eff =  Lv *400
	local Hint = "Gem Bonus Max HP +"..eff
	return Hint
end

--Azrael Gem
function ItemHint_AzraelsGlare ( Lv )
	local eff =  Lv *8
	local Hint = "Gem Bonus Strength +"..eff
	return Hint
end

function ItemHint_UndeadAzrael ( Lv )
	local eff =  Lv *8
	local Hint = "Gem Bonus Constitution +"..eff
	return Hint
end
function ItemHint_AzraelsLight ( Lv )
	local eff =  Lv *8
	local Hint = "Gem Bonus Spirit +"..eff
	return Hint
end
function ItemHint_AzraelsAggregation ( Lv )
	local eff =  Lv *8
	local Hint = "Gem Bonus Accuracy +"..eff
	return Hint
end
function ItemHint_AzraelDance ( Lv )
	local eff =  Lv *8
	local Hint = "Gem Bonus Agility +"..eff
	return Hint
end

--Goddess Gems
function ItemHint_ApollosSpirit ( Lv )
	local Hint = ""
	return Hint
end
function ItemHint_CupidsSpirit ( Lv )
	local Hint = ""
	return Hint
end
function ItemHint_AthenesSpirit ( Lv )
	local Hint = ""
	return Hint
end

--Broken,Cracked,Chipped
function ItemHint_BrokenGemOfTheWind( Lv )	
	local eff = Lv * 2	
	local Hint ="Gem Bonus Agility +"..eff	
	return Hint	
end
function ItemHint_CrackedGemOfTheWind( Lv )	
	local eff = Lv * 3	
	local Hint ="Gem Bonus Agility +"..eff	
	return Hint	
end
function ItemHint_ChippedGemOfTheWind( Lv )	
	local eff = Lv * 4	
	local Hint ="Gem Bonus Agility +"..eff	
	return Hint	
end

function ItemHint_BrokenGemOfStriking( Lv )	
	local eff = Lv * 2	
	local Hint ="Gem Bonus Accuracy +"..eff	
	return Hint	
end
function ItemHint_CrackedGemOfStriking( Lv )	
	local eff = Lv * 3	
	local Hint ="Gem Bonus Accuracy +"..eff	
	return Hint	
end
function ItemHint_ChippedGemOfStriking( Lv )	
	local eff = Lv * 4	
	local Hint ="Gem Bonus Accuracy +"..eff	
	return Hint	
end
function ItemHint_BrokenGemOfColossus( Lv )	
	local eff = Lv * 2	
	local Hint ="Gem Bonus Constitution +"..eff	
	return Hint	
end
function ItemHint_CrackedGemOfColossus( Lv )	
	local eff = Lv * 3	
	local Hint ="Gem Bonus Constitution +"..eff	
	return Hint	
end
function ItemHint_ChippedGemOfColossus( Lv )	
	local eff = Lv * 4	
	local Hint ="Gem Bonus Constitution +"..eff	
	return Hint	
end
function ItemHint_BrokenGemOfRage( Lv )	
	local eff = Lv * 2	
	local Hint ="Gem Bonus Strength +"..eff	
	return Hint	
end
function ItemHint_CrackedGemOfRage( Lv )	
	local eff = Lv * 3	
	local Hint ="Gem Bonus Strength +"..eff	
	return Hint	
end
function ItemHint_ChippedGemOfRage( Lv )	
	local eff = Lv * 4	
	local Hint ="Gem Bonus Strength +"..eff	
	return Hint	
end
function ItemHint_BrokenGemOfSoul( Lv )	
	local eff = Lv * 2	
	local Hint ="Gem Bonus Spirit +"..eff	
	return Hint	
end
function ItemHint_CrackedGemOfSoul( Lv )	
	local eff = Lv * 3	
	local Hint ="Gem Bonus Spirit +"..eff	
	return Hint	
end
function ItemHint_ChippedGemOfSoul( Lv )	
	local eff = Lv * 4	
	local Hint ="Gem Bonus Spirit +"..eff	
	return Hint	
end

--Great Gem
function ItemHint_GreatGemOfRage ( Lv )
	local eff = Lv * 6	
	local Hint ="Gem Bonus Strength +"..eff	
	return Hint	
end 
function ItemHint_GreatGemOfSoul ( Lv )
	local eff = Lv * 6	
	local Hint ="Gem Bonus Spirit +"..eff	
	return Hint	
end 
function ItemHint_GreatGemOfStriking ( Lv )
	local eff = Lv * 6	
	local Hint ="Added Accuracy +"..eff	
	return Hint	
end 
function ItemHint_GreatGemOfColossus ( Lv )
	local eff = Lv * 6	
	local Hint ="Gem Bonus Constitution +"..eff	
	return Hint	
end 
function ItemHint_GreatGemOfTheWind ( Lv )
	local eff = Lv * 6	
	local Hint ="Gem Bonus Agility +"..eff	
	return Hint	
end 

--Tempest Gem
function ItemHint_TempestGem ( Lv )
	local eff = Lv * 40	
	local Hint ="Gem Bonus Attack Speed +"..eff	
	return Hint	
end 
function ItemHint_GaleGem ( Lv )
	local eff = Lv * 30	
	local Hint ="Gem Bonus Movement Speed +"..eff	
	return Hint	
end 
function ItemHint_KingGem ( Lv )
	local eff = Lv * 500	
	local Hint ="Gem Bonus Attack +"..eff	
	return Hint	
end 
function ItemHint_QueenGem ( Lv )
	local eff = Lv * 15	
	local Hint ="Gem Bonus Spirit +"..eff	
	return Hint	
end 