# fivem-Character-Creator
**Compatible with esx_skin and skinchanger**
**Features**: 
+ Customize any Peds : 
* Mp FreeMode Peds

* 1. Gender

* 2. List item

* 3. Inheritance

* 4. Face Shape

* 5. Apparence

* 6. Clothes

* Sp Male Peds

* 1. Clothes

* Sp Female Peds

* List item

* Mp Peds
**Comming updates:** 
* Accessories

* Tatoos

*Camera

**installation** : copy to resource folder and start it in server.cfg
**to call the menu add this line in *esx_identity***:
```
	if reason == "" then
		TriggerEvent('mpcreator:OpenMenu')	--##########Call Character creator#######
		TriggerServerEvent('esx_identity:setIdentity', data, myIdentifiers)
		EnableGui(false)
		Citizen.Wait(500)
	else
		ESX.ShowNotification(reason)
	end
```
![](https://images-ext-2.discordapp.net/external/uQQfcgywZoXWwYixOh-o4BBHMv9iEz_ADghRdJFLwgI/https/cdn.discordapp.com/attachments/586996972427280405/590266359296950410/unknown.png)
![](https://media.discordapp.net/attachments/591119949557399563/591854242969550848/unknown.png)
https://media.discordapp.net/attachments/591119949557399563/591854291312967703/unknown.png
Github : https://github.com/Tizzi/fivem-Character-Creator
