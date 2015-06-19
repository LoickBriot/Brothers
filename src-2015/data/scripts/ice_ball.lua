physics_center_x  = 0
physics_center_y  = 0
physics_size_x    = 23
physics_size_y    = 20
physics_can_sleep = true
physics_rotation  = true

addanim('Ball_ice.png',46)
playanim('Ball_ice.png',false)


function step()
if movement == 3 then
    if evolution < 20 then
		set_velocity_y(0)
		set_velocity_x(-8)
    elseif evolution >= 20 then 
		life = 0
    end
	evolution = evolution + 1

end

if movement == 4 then
    if evolution < 20 then
		set_velocity_y(0)
		set_velocity_x(8)
    elseif evolution >= 20 then 
		life = 0
    end
	evolution = evolution + 1

end

end

function contact(with)
		life = 0
end

function onAnimEnd()
  playanim('Ball_ice.png',false)
end