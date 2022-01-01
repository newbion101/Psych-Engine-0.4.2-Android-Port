function onCreate()
	-- background shit
	makeLuaSprite('stageback', 'stageback', -600, -300);
	setLuaSpriteScrollFactor('stageback', 0.9, 0.9);
	
	makeLuaSprite('defeatfloor2', 'defeatfloor2', -650, 600);
	setLuaSpriteScrollFactor('defeatfloor2', 0.9, 0.9);
	scaleObject('defeatfloor2', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setLuaSpriteScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setLuaSpriteScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setPropertyLuaSprite('stagelight_right', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('airshipno', 'airshipno', -500, -300);
		setLuaSpriteScrollFactor('airshipno', 1.3, 1.3);
		scaleObject('airshipno', 0.9, 0.9);
	end

	addLuaSprite('stageback', false);
	addLuaSprite('defeatfloor', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	addLuaSprite('airshipno', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end