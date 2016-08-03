hook.Add( "PhysgunPickup", "Ppickup", function( ply, ent )
if ent:IsValid() && ent:GetCollisionGroup(COLLISION_GROUP_NONE) then
ent:SetCollisionGroup(COLLISION_GROUP_WORLD)
else 
return false
end
end )

hook.Add( "PhysgunDrop", "Pdrop", function( ply, ent )
if ent:IsValid() then	
ent:SetCollisionGroup(COLLISION_GROUP_NONE)
ent:SetPos( ent:GetPos() )
end
end )