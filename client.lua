local playerState = LocalPlayer.state
local config = require 'config'

local function setVisionSetting(type, boolean)
	playerState[type] = boolean

	if type == 'nightvision' then
		SetNightvision(boolean)
	elseif type == 'thermal' then
		SetSeethrough(boolean)
	end

	if boolean then
		exports.rhrp_lib:PlayAudio('entity', 'nightvision')
	end
end

exports('nightvision', function(data, slot)
	if playerState.thermal then
		return config.Notify('Thermal Goggles', "You're already wearing thermals!", "error")
	end

	if not playerState.nightvision then
		if lib.progressCircle({
			duration = 1000,
			label = "Putting on NVGs..",
			position = 'bottom',
			useWhileDead = false,
			canCancel = true,
			disable = { combat = true, move = false },
			anim = { dict = 'mp_masks@standard_car@ds@', clip = 'put_on_mask', flag = 16 }
		}) then
			setVisionSetting('nightvision', true)
			if GetEntityModel(cache.ped) == `mp_m_freemode_01`  then
				SetPedComponentVariation(cache.ped, 1, 132, 0, 0)
			elseif GetEntityModel(cache.ped) == `mp_f_freemode_01`  then
				SetPedComponentVariation(cache.ped, 1, 158, 0, 0)
			end
		else
			config.Notify('Night Vision Goggles', "Cancelled..", "error")
		end
	else
		if lib.progressCircle({
			duration = 1000,
			label = "Taking off NVGs..",
			position = 'bottom',
			useWhileDead = false,
			canCancel = true,
			disable = { combat = true, move = false },
			anim = { dict = 'mp_masks@standard_car@ds@', clip = 'put_on_mask', flag = 16 }
		}) then
			setVisionSetting('nightvision', false)
			SetPedComponentVariation(cache.ped, 1, 0, 0, 0)
		else
			config.Notify('Night Vision Goggles', "Cancelled..", "error")
		end
	end
end)

exports('thermalvision', function(data, slot)
	if playerState.nightvision then
		return config.Notify('Night Vision Goggles', "You're already wearing NVGs!", "error")
	end

	if not playerState.thermal then
		if lib.progressCircle({
			duration = 1000,
			label = "Putting on Thermal Goggles..",
			position = 'bottom',
			useWhileDead = false,
			canCancel = true,
			disable = { combat = true, move = false },
			anim = { dict = 'mp_masks@standard_car@ds@', clip = 'put_on_mask', flag = 16 }
		}) then
			setVisionSetting('thermal', true)
			if GetEntityModel(cache.ped) == `mp_m_freemode_01`  then
				SetPedComponentVariation(cache.ped, 1, 132, 0, 0)
			elseif GetEntityModel(cache.ped) == `mp_f_freemode_01`  then
				SetPedComponentVariation(cache.ped, 1, 158, 0, 0)
			end
		else
			config.Notify('Thermal Goggles', "Cancelled..", "error")
		end
	else
		if lib.progressCircle({
			duration = 1000,
			label = "Taking off Thermal Goggles..",
			position = 'bottom',
			useWhileDead = false,
			disable = { combat = true, move = false },
			anim = { dict = 'mp_masks@standard_car@ds@', clip = 'put_on_mask', flag = 16 }
		}) then
			setVisionSetting('thermal', false)
			SetPedComponentVariation(cache.ped, 1, 0, 0, 0)
		else
			config.Notify('Thermal Goggles', "Cancelled..", "error")
		end
	end
end)