physics_center_x  = 0
physics_center_y  = 0
physics_size_x    = 10
physics_size_y    = 15
physics_can_sleep = true
physics_rotation  = false



addanim('Monster_nat_D.png',37)
addanim('Monster_nat_G.png',37)

playanim('Monster_nat_D.png',false) 



function step()



    if evolution < 280 then
		set_velocity_x(2)
    else
	    set_velocity_x(-2)
    end
	evolution = evolution + 1
	if evolution == 560 then
		evolution = 0
    end

end

function contact(with)
end

function onAnimEnd()
    if evolution < 200 then
	
			playanim('Monster_nat_D.png',false) 


    elseif evolution >= 200 then

			playanim('Monster_nat_G.png',false) 


    end
   
 
end