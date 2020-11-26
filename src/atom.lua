--[[
Copyright (c) 2020 Ramdhan Firmansyah
File              : atom.lua
Author            : Cvar1984 <gedzsarjuncomuniti@gmail.com>
Date              : 27.11.2020
Last Modified Date: 27.11.2020
Last Modified By  : Cvar1984 <gedzsarjuncomuniti@gmail.com>
--]]

local Atom = {
    proton = 0,
    neutron = 0,
    electron = 0
};

function Atom:__construct(object)
    local object = object or {};
    setmetatable(object, self);
    self.__index = self;
    return object;
end;

-- You can manually edit your subatomic particles
function Atom:addProton(value)
    self.proton = self.proton + value;
    return self;
end;

function Atom:addNeutron(value)
    self.neutron = self.neutron + value;
    return self;
end;

function Atom:addElectron(value)
    self.electron = self.electron + value;
    return self;
end;

function Atom:getStructure()
    return self;
end;

function Atom:__toString()
    local AtomStructure = self:getStructure();

    for particle, value in pairs(AtomStructure) do
        print(particle, value);
    end
    print("\n");
end
return Atom;
