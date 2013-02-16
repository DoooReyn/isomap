player = {

	gx = 7 ;
	gy = 4 ;
	gz = 4 ;
}

-- check if the player is somewhere
function player:check(gx, gy, gz)

	return
	
	gx == self.gx and
	gy == self.gy and
	gz == self.gz
end

function player:move(x, y, z)

--NEW ROTATION
x, y = map_corr(x, y)
--NEW ROTATION

	local xd, yd, zd =
	self.gx + x,
	self.gy + y,
	self.gz + z

	local vd = block_getValue(xd, yd, zd)

	if vd == "empty" or vd == "water" then
	
		self.gx, self.gy, self.gz = xd, yd, zd
	end
end
