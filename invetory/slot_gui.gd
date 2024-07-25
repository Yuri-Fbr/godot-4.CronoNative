extends Panel

@onready var backgroundSprite: Sprite2D = $background
@onready var itemSprite: Sprite2D = $item

func Upgrade(item: InventoryItem):
	if !item:
		backgroundSprite.frame=1 
		itemSprite.visible = true
		itemSprite.texture = item.texture
		
