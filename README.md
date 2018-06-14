### Documentation for Tiled Collision Editor Plugin

This plugins uses Tile Collision Editor Tool from [Tiled Map Editor](https://www.mapeditor.org) to edit shapes of objects in Corona SDK. 

[Link](https://marketplace.coronalabs.com/corona-plugins/tiled-collision-editor) to plugin in Corona Marketplace.

### Quick Start Guide

```
local tiledCollisionEditor = require 'plugin.tce'
local physics              = require 'physics'

local physicalData = tiledCollisionEditor.getPhysicalData( pathToMap )

local image = display.newImage( 'maps/imageName.png', 100, 300 )
physics.addBody( image, 'static', unpack( physicalData.collectionOfImagesNameInTiled['imageName.png'] ) )

local options =
{
    width = 192,
    height = 256,
    numFrames = 25
}
local sheet = graphics.newImageSheet( 'maps/ImageSheetName.png', options ) 
local image2 = display.newImage( sheet, tileID + 1 )
physics.addBody( image2, 'static', unpack( physicalData.ImageSheetNameInTiled[tileID] ) )
```
Note: You don't need create layers at all in Tiled to use plugin.


### Functions:

#### getPhysicalData( pathToMap )

*pathToMap* `(required)(string)` The path to file with saved map.

#### Returns

`(table)` A multi-dimensional table contaning all shape information and physical properties.

```
local json = require "json"
print( json.prettify( physicalData ) )
```
Console output

```
21:07:10.974  {
21:07:10.974    "images":{
21:07:10.974      "heart.png":[{
21:07:10.974          "friction":5,
21:07:10.974          "shape":[-21.6667,-22.3333,-0.3334,-24.3333,25,-21.3333,29,-4,19,12.6667,8.6666,21.6667,-0.3334,26.3334,-10,20.6667]
21:07:10.974        },{
21:07:10.974          "friction":5,
21:07:10.974          "shape":[-21.6667,-22.3333,-10,20.6667,-20.00003,9.6667,-28.6667,-6]
21:07:10.974        }]
21:07:10.974    },
21:07:10.974    "sprites":{
21:07:10.974      "0":[{
21:07:10.974          "friction":2,
21:07:10.974          "density":20,
21:07:10.974          "shape":[-33.3333,105.167,-10.8333,104.667,-4.8333,124.167,-34.3333,124.667],
21:07:10.974          "bounce":0.9
21:07:10.974        },{
21:07:10.974          "friction":2,
21:07:10.974          "density":20,
21:07:10.974          "shape":[0,-21.667,19,-3.667,27.6667,17.333,39.6667,38.333,45.6667,74.6663,47.3333,100,-43.6667,100,-43,75.9997],
21:07:10.974          "bounce":0.9
21:07:10.974        },{
21:07:10.974          "friction":2,
21:07:10.974          "density":20,
21:07:10.974          "shape":[0,-21.667,-43,75.9997,-38.6667,37.9997,-13.6667,-4.667],
21:07:10.974          "bounce":0.9
21:07:10.974        },{
21:07:10.974          "friction":2,
21:07:10.974          "density":20,
21:07:10.974          "shape":[11.333,104.167,33.833,103.667,39.833,123.167,10.333,123.667],
21:07:10.974          "bounce":0.9
21:07:10.974        }]
21:07:10.974    }
21:07:10.974  }
```

#### Usage

`local physicalData = tiledCollisionEditor.getPhysicalData( 'maps.map' )`

### Physical properties 

You can specify basic properties using [custom propeties](http://docs.mapeditor.org/en/stable/manual/custom-properties/) in Tiled. That can be done by adding them to map itself or tile/object. Properties added to tile/object overrides map properties. 

Plugin supports the following physical properties:

 - friction `(number)`,
 - density `(number)`,
 - bounce `(number)`,
 - enableChainBody `(boolean)(false)`,
 - connectFirstAndLastChainVertex `(boolean)`(use for chain body),
 - isSensor `(boolean)`.

 Additionally plugin supports non-physical properties:

 - xScale `(number)(1)`,
 - yScale `(number)(1)`.

### Shape Limitations

 - Polygonal shapes must be entirely convex,
 - Vertex points must be defined in clockwise order,
 - You should not construct an edge shape body with self-intersecting segments.

See more [details](https://docs.coronalabs.com/guide/physics/physicsBodies/index.html).

### Build.settings

```
settings = 
{
	plugins =
	{
		['plugin.tce'] = 
	    {
	    	publisherId = 'com.wordpress.ldurniat'
	    },
	},
}
```

### Helpful Links:

 - [Download](https://www.mapeditor.org/download.html) Tiled Map Editor. 
 - [How to use Tile Collision Editor?](http://doc.mapeditor.org/en/stable/manual/editing-tilesets/#tile-collision-editor)
 - [Tutorial: Multi-element physics bodies](https://coronalabs.com/blog/2013/01/08/working-with-multi-element-physics-bodies/)
 - [Edge Shape (Chain) Body](https://docs.coronalabs.com/guide/physics/physicsBodies/index.html#edge-shape-chain-body)

