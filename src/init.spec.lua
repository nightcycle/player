return function ()
	describe("Player", function()
		it("should boot", function()
			local Player = require(script.Parent)
			expect(Player).to.be.ok()
		end)
		it("should create pseudoinstance", function()
			local Player = require(script.Parent)
			local id = 1
			local newInst = Player.pseudoInstance(id)
			expect(newInst).never.to.equal(nil)
			newInst:Destroy()
		end)
		it("should create pseudo player", function()
			local Player = require(script.Parent)
			local id = 2
			local newInst = Player.pseudoInstance(id)
			local newPlayer = Player.fromInstance(newInst)
			expect(newPlayer).never.to.equal(nil)
			newPlayer:Destroy()
		end)
		it("can load pseudo character", function()
			local Player = require(script.Parent)
			local id = 2
			local newInst = Player.pseudoInstance(id)
			local newPlayer = Player.fromInstance(newInst)
			expect(newPlayer).never.to.equal(nil)
			newPlayer:Destroy()
		end)
	end)
end