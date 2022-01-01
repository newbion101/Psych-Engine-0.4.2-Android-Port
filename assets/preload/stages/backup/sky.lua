function onCreate()
	-- background shit
	makeLuaSprite('bg', 'bg', -600, -300);
	setLuaSpriteScrollFactor('bg', 0.9, 0.9);
	
	makeLuaSprite('cloua', 'cloua', -650, 600);
	setLuaSpriteScrollFactor('cloua', 0.9, 0.9);
	scaleObject('cloua', 1.1, 1.1);

	-- sprites that only load if Low Quality is turned off
	if not lowQuality then
		makeLuaSprite('stagelight_left', 'stage_light', -125, -100);
		setLuaSpriteScrollFactor('stagelight_left', 0.9, 0.9);
		scaleObject('stagelight_left', 1.1, 1.1);
		
		makeLuaSprite('stagelight_right', 'stage_light', 1225, -100);
		setLuaSpriteScrollFactor('stagelight_right', 0.9, 0.9);
		scaleObject('stagelight_right', 1.1, 1.1);
		setPropertyLuaSprite('stagelight_right', 'flipX', true); --mirror sprite horizontally

		makeLuaSprite('cloub', 'cloub', -500, -300);
		setLuaSpriteScrollFactor('cloub', 1.3, 1.3);
		scaleObject('cloub', 0.9, 0.9);
	end

        addLuaSprite('bg', false);
        addLuaSprite('cloub', false);
        addLuaSprite('cloua', false);
	addLuaSprite('stagelight_left', false);
	addLuaSprite('stagelight_right', false);
	
	close(true); --For performance reasons, close this script once the stage is fully loaded, as this script won't be used anymore after loading the stage
end