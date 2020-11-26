Atom = require "atom";

AtomParticle = Atom:__construct();
hydrogen = AtomParticle:__construct{proton = 1, electron = 1};

print("Hydrogen:\n");
hydrogen:__toString();

helium = hydrogen:addProton(1):addNeutron(2):addElectron(1);

print("Helium:\n");
helium:__toString();
