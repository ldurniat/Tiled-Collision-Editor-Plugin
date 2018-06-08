-- 
-- Abstract: tce Library Plugin Test Project
-- 
-- Sample code is MIT licensed, see http://www.coronalabs.com/links/code/license
-- Copyright (C) 2015 Corona Labs Inc. All Rights Reserved.
--
------------------------------------------------------------

-- Load plugin library
local tiledCollisionEditor = require "plugin.tce"
local physics              = require "physics"
local json                 = require "json"

-------------------------------------------------------------------------------
-- BEGIN (Insert your sample test starting here)
-------------------------------------------------------------------------------
	physics.setDrawMode( "hybrid" )
	physics.start()
	physics.setPositionIterations( 6 )
	physics.setVelocityIterations( 16 )

	local _CX   = display.contentCenterX
	local _CY   = display.contentCenterY
	local fullw = display.actualContentWidth
	local fullh = display.actualContentHeight
	local _L    = _CX - fullw * 0.5
	local _R    = _CX + fullw * 0.5
	local _T    = _CY - fullh * 0.5
	local _B    = _CY + fullh * 0.5

	-- Get physical data
	local physicalData = tiledCollisionEditor.getPhysicalData( "maps.map" )

	-- Create heart image
	local heart = display.newImage( "maps/heart.png", 150, 300 )
	
	local options =
	{
	    width = 192,
	    height = 256,
	    numFrames = 25
	}
	-- Create image sheet
	local sheet = graphics.newImageSheet( "maps/sprites.png", options )

	-- Create hero sprite 
	local hero = display.newImage( sheet, 1, 250, 100 )

	-- Create borders
	local topWall    = display.newRect( _CX, _T, _R - _L, 10 )
	local leftWall   = display.newRect( _L, _CY, 10, _B - _L )
	local rightWall  = display.newRect( _R, _CY, 10, _B - _L )
	local bottomWall = display.newRect( _CX, _B, _R - _L, 10 )

	physics.addBody( heart, "dynamic", unpack( physicalData.images["heart.png"] ) )
	physics.addBody( hero, "dynamic", unpack( physicalData.sprites[0] ) )
	physics.addBody( topWall, "static" )
	physics.addBody( leftWall, "static" )
	physics.addBody( rightWall, "static" )
	physics.addBody( bottomWall, "static" )

	-- Print physical data
	print( json.prettify( physicalData ) )
	
-------------------------------------------------------------------------------
-- END
-------------------------------------------------------------------------------