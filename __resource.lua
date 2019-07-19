resource_manifest_version '05cfa83c-a124-4cfa-a768-c24a5811d8f9'

name 'MP Character Creator'
description 'Character Creator Like GTAONLINE Features'


client_scripts {
    "NativeUI/Wrapper/Utility.lua",

    "NativeUI/UIElements/UIVisual.lua",
    "NativeUI/UIElements/UIResRectangle.lua",
    "NativeUI/UIElements/UIResText.lua",
    "NativeUI/UIElements/Sprite.lua",
}

client_scripts {
    "NativeUI/UIMenu/elements/Badge.lua",
    "NativeUI/UIMenu/elements/Colours.lua",
    "NativeUI/UIMenu/elements/ColoursPanel.lua",
    "NativeUI/UIMenu/elements/StringMeasurer.lua",

    "NativeUI/UIMenu/items/UIMenuItem.lua",
    "NativeUI/UIMenu/items/UIMenuCheckboxItem.lua",
    "NativeUI/UIMenu/items/UIMenuListItem.lua",
    "NativeUI/UIMenu/items/UIMenuSliderItem.lua",
    "NativeUI/UIMenu/items/UIMenuSliderHeritageItem.lua",
    "NativeUI/UIMenu/items/UIMenuColouredItem.lua",

    "NativeUI/UIMenu/items/UIMenuProgressItem.lua",
    "NativeUI/UIMenu/items/UIMenuSliderProgressItem.lua",

    "NativeUI/UIMenu/windows/UIMenuHeritageWindow.lua",

    "NativeUI/UIMenu/panels/UIMenuGridPanel.lua",
    "NativeUI/UIMenu/panels/UIMenuHorizontalOneLineGridPanel.lua",
    "NativeUI/UIMenu/panels/UIMenuVerticalOneLineGridPanel.lua",
    "NativeUI/UIMenu/panels/UIMenuColourPanel.lua",
    "NativeUI/UIMenu/panels/UIMenuPercentagePanel.lua",
    "NativeUI/UIMenu/panels/UIMenuStatisticsPanel.lua",

    "NativeUI/UIMenu/UIMenu.lua",
    "NativeUI/UIMenu/MenuPool.lua",
}

client_scripts {
    'NativeUI/UITimerBar/UITimerBarPool.lua',

    'NativeUI/UITimerBar/items/UITimerBarItem.lua',
    'NativeUI/UITimerBar/items/UITimerBarProgressItem.lua',
    'NativeUI/UITimerBar/items/UITimerBarProgressWithIconItem.lua',

}

client_scripts {
    'NativeUI/UIProgressBar/UIProgressBarPool.lua',
    'NativeUI/UIProgressBar/items/UIProgressBarItem.lua',
}

client_scripts {
    "NativeUI/NativeUI.lua",
}

client_scripts {
    ".test/Native-Danger.lua",
}
client_scripts {
	'@es_extended/locale.lua',
	"locales/en.lua",
	'config.lua',
	"menu.lua",
	"client.lua",
	
}

dependencies {
	'skinchanger'
}
