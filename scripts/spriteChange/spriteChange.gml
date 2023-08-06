/// @desc (alterar aqui) ({alterar aqui}, {alterar aqui})
/// @param NewSprite
function sprite_change(){
  var _oldSprite = sprite_index;
  var _newSprite = argument[0];
    
  if (_oldSprite != _newSprite)
  {
    image_index = 0;
  }
   sprite_index = _newSprite;
}