return {
  version = "1.1",
  luaversion = "5.1",
  tiledversion = "1.1.5",
  orientation = "orthogonal",
  renderorder = "right-down",
  width = 38,
  height = 26,
  tilewidth = 32,
  tileheight = 32,
  nextobjectid = 9,
  properties = {
    ["connectFirstAndLastChainVertex"] = true,
    ["enableChainBody"] = false,
    ["friction"] = 5
  },
  tilesets = {
    {
      name = "images",
      firstgid = 1,
      tilewidth = 128,
      tileheight = 128,
      spacing = 0,
      margin = 0,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 1,
        height = 1
      },
      properties = {},
      terrains = {},
      tilecount = 1,
      tiles = {
        {
          id = 0,
          properties = {
            ["density"] = 10,
            ["enableChainBody"] = false,
            ["friction"] = 0.5
          },
          image = "heart.png",
          width = 128,
          height = 128,
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 8,
                name = "",
                type = "",
                shape = "polygon",
                x = 42.3333,
                y = 41.6667,
                width = 0,
                height = 0,
                rotation = 0,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 21.3333, y = -2 },
                  { x = 46.6667, y = 1 },
                  { x = 50.6667, y = 18.3333 },
                  { x = 40.6667, y = 35 },
                  { x = 30.3333, y = 44 },
                  { x = 21.3333, y = 48.6667 },
                  { x = 11.6667, y = 43 },
                  { x = 1.66667, y = 32 },
                  { x = -7, y = 16.3333 }
                },
                properties = {}
              }
            }
          }
        }
      }
    },
    {
      name = "sprites",
      firstgid = 2,
      tilewidth = 192,
      tileheight = 256,
      spacing = 0,
      margin = 0,
      image = "sprites.png",
      imagewidth = 1920,
      imageheight = 2048,
      tileoffset = {
        x = 0,
        y = 0
      },
      grid = {
        orientation = "orthogonal",
        width = 192,
        height = 256
      },
      properties = {},
      terrains = {},
      tilecount = 80,
      tiles = {
        {
          id = 0,
          properties = {
            ["bounce"] = 0.9,
            ["density"] = 20,
            ["friction"] = 2,
            ["isSensor"] = false
          },
          objectGroup = {
            type = "objectgroup",
            name = "",
            visible = true,
            opacity = 1,
            offsetx = 0,
            offsety = 0,
            draworder = "index",
            properties = {},
            objects = {
              {
                id = 8,
                name = "",
                type = "",
                shape = "polygon",
                x = 63.6142,
                y = 232.754,
                width = 0,
                height = 0,
                rotation = -0.364464,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 22.5, y = -0.5 },
                  { x = 28.5, y = 19 },
                  { x = -1, y = 19.5 }
                },
                properties = {}
              },
              {
                id = 11,
                name = "",
                type = "",
                shape = "polygon",
                x = 96.14,
                y = 105.712,
                width = 0,
                height = 0,
                rotation = -0.364464,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 19, y = 18 },
                  { x = 27.6667, y = 39 },
                  { x = 39.6667, y = 60 },
                  { x = 45.6667, y = 96.3333 },
                  { x = 47.3333, y = 121.667 },
                  { x = -43.6667, y = 121.667 },
                  { x = -43, y = 97.6667 },
                  { x = -38.6667, y = 59.6667 },
                  { x = -13.6667, y = 17 }
                },
                properties = {}
              },
              {
                id = 12,
                name = "",
                type = "",
                shape = "polygon",
                x = 108.274,
                y = 231.47,
                width = 0,
                height = 0,
                rotation = -0.364464,
                visible = true,
                polygon = {
                  { x = 0, y = 0 },
                  { x = 22.5, y = -0.5 },
                  { x = 28.5, y = 19 },
                  { x = -1, y = 19.5 }
                },
                properties = {}
              }
            }
          }
        }
      }
    }
  },
  layers = {}
}
