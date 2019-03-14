var Space=8 
var WaterWidth=sprite_get_width(sWaterGui)
var WaterHeight=sprite_get_height(sWaterGui)
var WaterGuiX=WaterWidth/2+Space
var WaterGuiY=WaterHeight+Space
var WaterPercent=1*(CurWater/MaxWater)
draw_sprite(sWaterGui,0,WaterGuiX-WaterWidth,WaterGuiY-(WaterWidth*2)+30)
//draw_sprite_ext(sWaterGui,1,WaterGuiX,WaterGuiY,1,WaterPercent,0,c_white,1)
draw_sprite_part(sWaterGui,1,0,0,WaterWidth,WaterHeight*WaterPercent,WaterGuiX-WaterWidth/2-12,WaterGuiY-(WaterWidth*2)*WaterPercent)

//for(var i=0; i<ds_list_size(inv); i++){
//	var c = c_black;
//	draw_text_color(300, 105 + (24*i), inv[| i], c, c, c, c, 1);
//}