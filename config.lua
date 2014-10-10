-- Combat settings
-- NOTE: valid values for worldType are: "pvp", "no-pvp" and "pvp-enforced"
worldType = "pvp"
hotkeyAimbotEnabled = "yes"
protectionLevel = 1
killsToRedSkull = 3
killsToBlackSkull = 6
pzLocked = 60000
removeAmmoWhenUsingDistanceWeapon = "yes"
removeChargesFromRunes = "yes"
timeToDecreaseFrags = 12 * 60 * 60 * 1000
whiteSkullTime = 15 * 60 * 1000
stairJumpExhaustion = 2000
experienceByKillingPlayers = "yes"
expFromPlayersLevelRange = 75
noDamageToSameLookfeet = "no"

-- Connection Config
-- NOTE: maxPlayers set to 0 means no limit
ip = "104.131.114.237"
bindOnlyGlobalAddress = "no"
loginProtocolPort = 7171
gameProtocolPort = 7172
statusProtocolPort = 7171
maxPlayers = 0
motd = "Welcome to Depths Server!"
onePlayerOnlinePerAccount = "no"
allowClones = "no"
serverName = "Depths"
statusTimeout = 5000
replaceKickOnLogin = "yes"
maxPacketsPerSecond = 25

-- Deaths
-- NOTE: Leave deathLosePercent as -1 if you want to use the default
-- death penalty formula. For the old formula, set it to 10. For
-- no skill/experience loss, set it to 0.
deathLosePercent = -1

-- Houses
-- NOTE: set housePriceEachSQM to -1 to disable the ingame buy house functionality
housePriceEachSQM = 1000
houseRentPeriod = "never"

-- Item Usage
timeBetweenActions = 50
timeBetweenExActions = 500

-- Map
-- NOTE: set mapName WITHOUT .otbm at the end
mapName = "Depths"
mapAuthor = "Tim/Pablo"

-- Market
marketOfferDuration = 360 * 24 * 60 * 60
premiumToCreateMarketOffer = "no"
checkExpiredMarketOffersEachMinutes = 60
maxMarketOffersAtATimePerPlayer = 100

-- MySQL
mysqlHost = "127.0.0.1"
mysqlUser = "root"
mysqlPass = "seq092uel15"
mysqlDatabase = "Tibia"
mysqlPort = 3306
mysqlSock = ""
passwordType = "sha1"

-- Misc.
allowChangeOutfit = "yes"
freePremium = "no"
kickIdlePlayerAfterMinutes = 15
maxMessageBuffer = 4
emoteSpells = "yes"

-- Rates
-- NOTE: rateExp is not used if you have enabled stages in data/XML/stages.xml
rateExp = 9999
rateSkill = 20
rateLoot = 5
rateMagic = 10
rateSpawn = 2

-- Monsters
deSpawnRange = 2
deSpawnRadius = 50

-- Stamina
staminaSystem = "yes"

-- Scripts
warnUnsafeScripts = "no"
convertUnsafeScripts = "no"

-- Startup
-- NOTE: defaultPriority only works on Windows and sets process priority.
defaultPriority = "high"
startupDatabaseOptimization = "no"

-- Status server information
ownerName = "Tim/Pablo"
ownerEmail = "engeltj@gmail.com"
url = "http://depthsonline.com/tibia/"
location = "Canada"
