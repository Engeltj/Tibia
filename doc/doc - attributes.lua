· name			(name of the item)
· article		(article behind the name, for example "a tree" or "an armor")
· plural		(name in plural)
· type
		key values
					magicfield
					depot
					mailbox
					trashholder
					teleport
					door
					bed
· description
· runespellname
· weight
· showcount

· armor
· defense
· extradefense 			(or extradef)
· attack
· extraattack 			(or extraatk)
· attackspeed 			(in miliseconds, so 1000 = 1 sec)

· rotateto
· moveable				(or movable)
· blockprojectile
· allowpickupable
· floorchange
			key values
						down
						north
						south
						west
						east
· corpsetype
			key values
						venom
						blood
						undead
						fire
						energy
· containersize
· fluidsource

· writeable				(or writable)
			key values
						canWriteText = 0 for no, 1 for yes.
						canReadText = 0 for no, 1 for yes.
						
· maxtextlen			(or maxtextlength)
· writeonceitemid

· worth
· forceserialize		(or forceserialization or forcesave)
· leveldoor

· weapontype
				key values
						sword
						club
						axe
						shield
						distance
						wand (or rod)
						ammunition
						fist
· slottype
				key values
						head
						body
						legs
						feet
						backpack
						two-handed
						necklace
						ring
						ammo
						hand
· ammotype
· shoottype
· effect
· range

· stopduration
· decayto
· transformequipto
· transformdeequipto
· duration
· showduration
				key values
							0 = Doest show.
							1 = Shows.
                            
· charges
· showcharges				(same key values as showduration)
· breakchance
				key values
							Min 0, max 100.
							0 = Never breaks.
							100 = Breaks in 1st hit.
							You can use any value between 0-100, being the number you choose the % chance of breaking.
· ammoaction

· hitchance
				key values
							Min 0, Max 100.
· maxhitchance				(same key values as hit chance)

· preventloss
				key values
							0 = Doesnt prevent loss.
							1 = Prevents loss.
· preventdrop				(same as above)

· invisible
				key values
							1 = Invisible.
· speed

· healthgain
· healthticks				(in miliseconds, so 1000 = 1 second)
· managain
· manaticks					(same as healthticks)

· manashield
				key values
							1 = Activates manashield.
                        
· skillsword				(these ones increase the respective skill depending on the number you put as value)
· skillaxe
· skillclub
· skilldist
· skillfish
· skillshield
· skillfist

· maxhealthpoints			(same as skills, but increases your max HP depending on the value you choose)
· maxhealthpercent			(same as above but increases it in PERCENTAGE, note that the value you will write must be AMOUNTYOUWANT+100, because 100 is 100% = the total HP you have, so if you want to add 50% HP, you must set the value to 150, [B]not[/B] 50%, putting 50% will cut the total HP to half)
· maxmanapoints				(same structure as maxhealthpoints)
· maxmanapercent			(same structure as maxhealthpercent)
· soulpoints				(same as above)
· soulpercent				(same structure as maxhealthpercent *not sure bout this one though*)
· magiclevelpoints			(the number you put on value here will be the amount of Magic Levels added)
· magiclevelpercent			(same as above but in percentage, and it has same structure as maxhealthpercent, value = AMOUNT+100)

· absorbpercentall			(the number you put is the % of damage it will absorb, from ALL types of attacks)
· absorbpercentelements		(the number you put is the % of damage it will absorb, from attacks based on ELEMENTS)
· absorbpercentmagic		(the number you put is the % of damage it will absorb, from all attacks based on MAGIC)
· absorbpercentenergy		(same as above but from energy atks)
· absorbpercentfire			(at this point you probably understood how these work)
· absorbpercentpoison		(or absorbpercentearth)
· absorbpercentice
· absorbpercentholy
· absorbpercentdeath
· absorbpercentlifedrain
· absorbpercentmanadrain
· absorbpercentdrown
· absorbpercentphysical 	(physical = melee-related damages I guess?)
· absorbpercenthealing
· absorbpercentundefined	(dont ask, no idea what this is, Im guessing the dmgs that dont fit on the other categories)

· suppressshock				(or suppressenergy)		(1 = removes ENERGY condition)
· suppressburn				(or suppressfire)		(same for FIRE condition)
· suppresspoison			(or suppressearth)		(you got it)
· suppressfreeze			(or suppressice)
· suppressdazzle			(or suppressholy)
· suppresscurse				(or suppressdeath)
· suppressdrown
· suppressphysical
· suppresshaste
· suppressparalyze
· suppressdrunk
· suppressregeneration
· suppresssoul
· suppressoutfit
· suppressinvisible
· suppressinfight			(Im guessing this means it removes the "battle" lock for logging out)
· suppressexhaust
· suppressmuted
· suppresspacified
· suppresslight
· suppressattributes
· suppressmanashield

· field
		key values
					fire
					energy
					earth	(or poison)
					ice		(or freezing)
					holy	(or dazzled)
					death	(or cursed)
					drown
					physical
							ticks	(not sure if this and the 3 below are like an extra line of values or what, not sure)
							count
							start
							damage

· elementphysical			(These are the weapons with elemental damages, like poison dagger, etc. The value you put is the amount of atk on that element)
· elementfire
· elementenergy
· elementearth
· elementice
· elementholy
· elementdeath
· elementlifedrain
· elementmanadrain
· elementhealing
· elementundefined

· replaceable				(or replacable)
· partnerdirection
· maletransformto			(transforms you to male)
· femaletransformto			(same as above but to female)
· transformto				(not sure)