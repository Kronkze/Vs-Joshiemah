function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'stageback', -600, -300);
	setScrollFactor('stageback', 0.9, 0.9);
	
	makeLuaSprite('stagefront', 'stagefront', -650, 600);
	setScrollFactor('stagefront', 0.9, 0.9);
	scaleObject('stagefront', 1.1, 1.1);
	makeAnimatedLuaSprite('robloxanimatedcharacters','FGboppers',-550,200)addAnimationByPrefix('robloxanimatedcharacters','dance','fganim',24,true)
    objectPlayAnimation('robloxanimatedcharacters','dance',false)
    setScrollFactor('robloxanimatedcharacters', 0.9, 0.9);
	makeAnimatedLuaSprite('galaxiianimated','eminem',1050,200)addAnimationByPrefix('galaxiianimated','dance','idle',24,true)
    objectPlayAnimation('galaxiianimated','dance',false)
    setScrollFactor('galaxiianimated', 0.9, 0.9);


 

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setProperty('stagelight_right.flipX', true); --mirror sprite horizontally

		makeLuaSprite('stagecurtains', 'stagecurtains', -500, -300);
		setScrollFactor('stagecurtains', 1.3, 1.3);
		scaleObject('stagecurtains', 0.9, 0.9);
	end
    
	addLuaSprite('robloxanimatedcharacters', true);
	addLuaSprite('galaxiianimated', true);
	addLuaSprite('stageback', false);
	addLuaSprite('stagefront', false);
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end