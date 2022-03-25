contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor17;
uint256 stor38;
uint256 stor4B0;
uint256 stor4B3;

function _fallback() payable {
    stor0 = 10^18
    stor1 = 8 * 10^17
    stor2 = 5 * 10^17
    stor3 = 2 * 10^17
    stor4 = 2 * 10^16
    stor5 = 10^17
    stor6 = 4 * 3600
    stor7 = 34
    stor8 = 34
    stor17 = 0
    stor38 = 0
    stor4B3 = 0
    stor4B0 = msg.sender or Mask(96, 160, stor4B0)
    return code.data[203 len 15873]
}



// =====================  Runtime code  =====================


#
#  - start(string arg1, string arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6)
#
uint256 START_PRICE;
uint256 CITY_PRICE;
address stor4B0;
address stor4B1;
uint256 stor4B1;
address stor4B2;
uint256 stor4B2;
uint256 totalBalances;
array of struct players;
uint256 numPlayers;
mapping of uint256 stor18;
mapping of uint256 myMsg;
uint256 BUILDING_PRICE;
uint256 stor20;
array of uint256 stor21;
uint8 stor22;
uint8 stor22; offset 8
uint256 UNIT_PRICE;
uint256 stor35;
uint256 stor36;
uint256 numCities;
array of uint256 quarryCities;
uint256 MAINT_PRICE;
array of uint256 farmCities;
array of uint256 woodworksCities;
array of uint256 metalworksCities;
array of uint256 stablesCities;
uint256 MIN_WTH;
uint256 WAIT_TIME;

function numCities() payable {
    return numCities
}

function farmCities(uint256 arg1) payable {
    require arg1 < farmCities.length
    return farmCities[arg1]
}

function START_PRICE() payable {
    return START_PRICE
}

function WAIT_TIME() payable {
    return WAIT_TIME
}

function woodworksCities(uint256 arg1) payable {
    require arg1 < woodworksCities.length
    return woodworksCities[arg1]
}

function getWwLength() payable {
    return woodworksCities.length
}

function BUILDING_PRICE() payable {
    return BUILDING_PRICE
}

function MAINT_PRICE() payable {
    return MAINT_PRICE
}

function getQrLength() payable {
    return quarryCities.length
}

function cities(uint256 arg1) payable {
    require arg1 < cities.length
    mem[256] = stor[sha3((17 * arg1) + ('name', 'cities', 37) + 1)].field_0
    idx = 256
    s = 0
    while stor[(17 * arg1) + ('name', 'cities', 37) + 1].length + 256 > idx + 32:
        mem[idx + 32] = stor[s + sha3((17 * arg1) + ('name', 'cities', 37) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return cities[arg1].field_0, 
           Array(len=stor[(17 * arg1) + ('name', 'cities', 37) + 1].length, data=mem[256 len stor[(17 * arg1) + ('name', 'cities', 37) + 1].length + (floor32(stor[(17 * arg1) + ('name', 'cities', 37) + 1].length - 1) + -stor[(17 * arg1) + ('name', 'cities', 37) + 1].length + 32 % 32)]),
           cities[arg1].field_3840,
           cities[arg1].field_4096
}

function metalworksCities(uint256 arg1) payable {
    require arg1 < metalworksCities.length
    return metalworksCities[arg1]
}

function stablesCities(uint256 arg1) payable {
    require arg1 < stablesCities.length
    return stablesCities[arg1]
}

function numPlayers() payable {
    return numPlayers
}

function getStLength() payable {
    return stablesCities.length
}

function totalBalances() payable {
    return totalBalances
}

function map(uint256 arg1, uint256 arg2) payable {
    require arg1 < 34
    require arg2 < 34
    return stor[arg2 + (34 * arg1) + 44]
}

function UNIT_PRICE() payable {
    return UNIT_PRICE
}

function getMyMsg() payable {
    return myMsg[stor18[address(msg.sender)] - 1]
}

function CITY_PRICE() payable {
    return CITY_PRICE
}

function getFmLength() payable {
    return farmCities.length
}

function getMwLength() payable {
    return metalworksCities.length
}

function MIN_WTH() payable {
    return MIN_WTH
}

function playerMsgs(uint256 arg1) payable {
    return myMsg[arg1]
}

function players(uint256 arg1) payable {
    require arg1 < players.length
    mem[352] = stor[sha3((7 * arg1) + ('name', 'players', 16) + 1)].field_0
    idx = 352
    s = 0
    while stor[(7 * arg1) + ('name', 'players', 16) + 1].length + 352 > idx + 32:
        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'players', 16) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(players[arg1].field_0), 
           Array(len=stor[(7 * arg1) + ('name', 'players', 16) + 1].length, data=mem[352 len stor[(7 * arg1) + ('name', 'players', 16) + 1].length + (floor32(stor[(7 * arg1) + ('name', 'players', 16) + 1].length - 1) + -stor[(7 * arg1) + ('name', 'players', 16) + 1].length + 32 % 32)]),
           players[arg1].field_512,
           players[arg1].field_768,
           players[arg1].field_1024,
           players[arg1].field_1280,
           players[arg1].field_1536
}

function quarryCities(uint256 arg1) payable {
    require arg1 < quarryCities.length
    return quarryCities[arg1]
}

function _fallback() payable {
  stop
}

function getMyPlayerID() payable {
    return (stor18[address(msg.sender)] - 1)
}

function timePassed(uint256 arg1) payable {
    require arg1 < players.length
    return (block.timestamp - players[arg1].field_1536)
}

function getCommission() payable {
    if stor4B0 != msg.sender:
        return 0
    return (eth.balance(this.address) - totalBalances)
}

function setUtils(address arg1) payable {
    if msg.sender == stor4B0:
        uint256(stor4B1) = arg1 or Mask(96, 160, uint256(stor4B1))
}

function setUtils2(address arg1) payable {
    if msg.sender == stor4B0:
        uint256(stor4B2) = arg1 or Mask(96, 160, uint256(stor4B2))
}

function deposit() payable {
    require stor18[address(msg.sender)] - 1 < players.length
    players[stor18[address(msg.sender)]].field_0 += msg.value
    totalBalances += msg.value
}

function setNumCities(uint256 arg1) payable {
    if msg.sender == address(stor4B1):
        numCities = arg1
    else:
        if msg.sender == address(stor4B2):
            numCities = arg1
}

function sweepCommission(uint256 arg1) payable {
    if msg.sender == stor4B0:
        if arg1 < eth.balance(this.address) - totalBalances:
            call stor4B0 with:
               value arg1 wei
                 gas 0 wei
}

function getPlayerID(address arg1) payable {
    if address(stor4B1) != msg.sender:
        if address(stor4B2) != msg.sender:
            return 0
    require stor18[address(arg1)] - 1 >= 0
    return (stor18[address(arg1)] - 1)
}

function setMsg(address arg1, uint256 arg2) payable {
    if msg.sender == address(stor4B1):
        myMsg[stor18[address(arg1)] - 1] = arg2
    else:
        if msg.sender == address(stor4B2):
            myMsg[stor18[address(arg1)] - 1] = arg2
}

function setOwner(uint256 arg1, uint256 arg2) payable {
    if msg.sender == address(stor4B1):
        require arg1 < cities.length
        cities[arg1].field_0 = arg2
    else:
        if msg.sender == address(stor4B2):
            require arg1 < cities.length
            cities[arg1].field_0 = arg2
}

function setNextID(uint256 arg1, int256 arg2) payable {
    if msg.sender == address(stor4B1):
        require arg1 < cities.length
        cities[arg1].field_4096 = arg2
    else:
        if msg.sender == address(stor4B2):
            require arg1 < cities.length
            cities[arg1].field_4096 = arg2
}

function setPreviousID(uint256 arg1, int256 arg2) payable {
    if msg.sender == address(stor4B1):
        require arg1 < cities.length
        cities[arg1].field_3840 = arg2
    else:
        if msg.sender == address(stor4B2):
            require arg1 < cities.length
            cities[arg1].field_3840 = arg2
}

function setCapitol(uint256 arg1, uint256 arg2) payable {
    if msg.sender == address(stor4B1):
        require arg1 < players.length
        players[arg1].field_768 = arg2
    else:
        if msg.sender == address(stor4B2):
            require arg1 < players.length
            players[arg1].field_768 = arg2
}

function setTreasury(uint256 arg1, uint256 arg2) payable {
    if msg.sender == address(stor4B1):
        require arg1 < players.length
        players[arg1].field_512 = arg2
    else:
        if msg.sender == address(stor4B2):
            require arg1 < players.length
            players[arg1].field_512 = arg2
}

function setNumUnits(uint256 arg1, uint256 arg2) payable {
    if msg.sender == address(stor4B1):
        require arg1 < players.length
        players[arg1].field_1280 = arg2
    else:
        if msg.sender == address(stor4B2):
            require arg1 < players.length
            players[arg1].field_1280 = arg2
}

function setNumCities(uint256 arg1, uint256 arg2) payable {
    if msg.sender == address(stor4B1):
        require arg1 < players.length
        players[arg1].field_1024 = arg2
    else:
        if msg.sender == address(stor4B2):
            require arg1 < players.length
            players[arg1].field_1024 = arg2
}

function setLastTimestamp(uint256 arg1, uint256 arg2) payable {
    if msg.sender == address(stor4B1):
        require arg1 < players.length
        players[arg1].field_1536 = arg2
    else:
        if msg.sender == address(stor4B2):
            require arg1 < players.length
            players[arg1].field_1536 = arg2
}

function setMap(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    if msg.sender == address(stor4B1):
        require arg1 < 34
        require arg2 < 34
        stor[arg2 + (34 * arg1) + 44] = arg3
    else:
        if msg.sender == address(stor4B2):
            require arg1 < 34
            require arg2 < 34
            stor[arg2 + (34 * arg1) + 44] = arg3
}

function setUnit(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    if msg.sender == address(stor4B1):
        require arg1 < cities.length
        require arg2 < 10
        stor[arg2 + (17 * arg1) + ('name', 'cities', 37)].field_768 = arg3
    else:
        if msg.sender == address(stor4B2):
            require arg1 < cities.length
            require arg2 < 10
            stor[arg2 + (17 * arg1) + ('name', 'cities', 37)].field_768 = arg3
}

function setName(uint256 arg1, string arg2) payable {
    if msg.sender == address(stor4B1):
        require arg1 < cities.length
        stor[sha3((17 * arg1) + ('name', 'cities', 37) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
    else:
        if msg.sender == address(stor4B2):
            require arg1 < cities.length
            stor[sha3((17 * arg1) + ('name', 'cities', 37) + 1)][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function withdraw(uint256 arg1) payable {
    require stor18[address(msg.sender)] - 1 >= 0
    require stor18[address(msg.sender)] - 1 < players.length
    if block.timestamp - players[stor18[address(msg.sender)]].field_0 < WAIT_TIME:
        myMsg[stor18[address(msg.sender)] - 1] = 2
    else:
        require stor18[address(msg.sender)] - 1 < players.length
        if arg1 < players[stor18[address(msg.sender)]].field_0:
            if arg1 > MIN_WTH:
                require stor18[address(msg.sender)] - 1 < players.length
                players[stor18[address(msg.sender)]].field_0 -= arg1
                totalBalances -= arg1
                call address(players[stor18[address(msg.sender)]].field_0) with:
                   value 99 * arg1 / 100 wei
                     gas 0 wei
}

function setRowcol(uint256 arg1, uint256[2] arg2) payable {
    mem[96 len 64] = call.data[36 len 64]
    if msg.sender == address(stor4B1):
        require arg1 < cities.length
        s = (17 * arg1) + 13
        idx = 96
        while 160 > idx:
            cities[s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (17 * arg1) + 15
        while (17 * arg1) + 15 > idx:
            cities[idx].field_0 = 0
            idx = idx + 1
            continue 
    else:
        if msg.sender == address(stor4B2):
            require arg1 < cities.length
            s = (17 * arg1) + 13
            idx = 96
            while 160 > idx:
                cities[s].field_0 = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = (17 * arg1) + 15
            while (17 * arg1) + 15 > idx:
                cities[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function getCity(uint256 arg1) payable {
    mem[96] = 0
    mem[128] = 0
    mem[160 len 128] = 0
    mem[288] = 0
    mem[320 len 288] = 0
    mem[608] = 0
    mem[640] = 0
    require arg1 < cities.length
    mem[672] = stor[(17 * arg1) + ('name', 'cities', 37) + 1].length
    mem[0] = (17 * arg1) + sha3(37) + 1
    mem[704] = stor[sha3((17 * arg1) + ('name', 'cities', 37) + 1)].field_0
    idx = 704
    s = 0
    while stor[(17 * arg1) + ('name', 'cities', 37) + 1].length + 672 > idx:
        mem[idx + 32] = stor[s + sha3((17 * arg1) + ('name', 'cities', 37) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(17 * arg1) + ('name', 'cities', 37) + 1].length) + 704] = uint8(cities[arg1].field_512)
    idx = ceil32(stor[(17 * arg1) + ('name', 'cities', 37) + 1].length) + 704
    s = 0
    while ceil32(stor[(17 * arg1) + ('name', 'cities', 37) + 1].length) + 864 > idx + 32:
        mem[idx + 32] = stor((17 * arg1) + ('name', 'stor37', 37) + 2)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
        idx = idx + 32
        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
        continue 
    mem[ceil32(stor[(17 * arg1) + ('name', 'cities', 37) + 1].length) + 864] = cities[arg1].field_768
    idx = ceil32(stor[(17 * arg1) + ('name', 'cities', 37) + 1].length) + 864
    s = (17 * arg1) + 3
    while ceil32(stor[(17 * arg1) + ('name', 'cities', 37) + 1].length) + 1184 > idx + 32:
        mem[idx + 32] = cities[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    idx = ceil32(stor[(17 * arg1) + ('name', 'cities', 37) + 1].length) + 1184
    s = (17 * arg1) + 13
    while ceil32(stor[(17 * arg1) + ('name', 'cities', 37) + 1].length) + 1248 > idx + 32:
        mem[idx + 32] = cities[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(17 * arg1) + ('name', 'cities', 37) + 1].length) + 1952 len stor[(17 * arg1) + ('name', 'cities', 37) + 1].length] = mem[704 len stor[(17 * arg1) + ('name', 'cities', 37) + 1].length]
    if not stor[(17 * arg1) + ('name', 'cities', 37) + 1].length % 32:
        return cities[arg1].field_0, 
               672,
               mem[ceil32(stor[(17 * arg1) + ('name', 'cities', 37) + 1].length) + 736 len 128] >> 1024,
               mem[ceil32(stor[(17 * arg1) + ('name', 'cities', 37) + 1].length) + 896 len 288] >> 2304,
               cities[arg1].field_3328,
               mem[ceil32(stor[(17 * arg1) + ('name', 'cities', 37) + 1].length) + 1216],
               cities[arg1].field_3840,
               cities[arg1].field_4096,
               stor[(17 * arg1) + ('name', 'cities', 37) + 1].length,
               mem[704 len stor[(17 * arg1) + ('name', 'cities', 37) + 1].length]
    mem[floor32(stor[(17 * arg1) + ('name', 'cities', 37) + 1].length) + ceil32(stor[(17 * arg1) + ('name', 'cities', 37) + 1].length) + 1952] = mem[floor32(stor[(17 * arg1) + ('name', 'cities', 37) + 1].length) + ceil32(stor[(17 * arg1) + ('name', 'cities', 37) + 1].length) + -stor[(17 * arg1) + ('name', 'cities', 37) + 1].length % 32 + 1984 len stor[(17 * arg1) + ('name', 'cities', 37) + 1].length % 32]
    return cities[arg1].field_0, 
           672,
           mem[ceil32(stor[(17 * arg1) + ('name', 'cities', 37) + 1].length) + 736 len 128] >> 1024,
           mem[ceil32(stor[(17 * arg1) + ('name', 'cities', 37) + 1].length) + 896 len 288] >> 2304,
           cities[arg1].field_3328,
           mem[ceil32(stor[(17 * arg1) + ('name', 'cities', 37) + 1].length) + 1216],
           cities[arg1].field_3840,
           cities[arg1].field_4096,
           stor[(17 * arg1) + ('name', 'cities', 37) + 1].length,
           mem[ceil32(stor[(17 * arg1) + ('name', 'cities', 37) + 1].length) + 1952 len floor32(stor[(17 * arg1) + ('name', 'cities', 37) + 1].length) + 32]
}

function setBuilding(uint256 arg1, uint256 arg2) payable {
    if msg.sender == address(stor4B1):
        require arg1 < cities.length
        require arg2 < 5
        stor[(0.03125 / arg2) + (17 * arg1) + ('name', 'cities', 37)].field_512 = 256^(arg2 % 32) or !(255 * 256^(arg2 % 32)) and stor[(0.03125 / arg2) + (17 * arg1) + ('name', 'cities', 37)].field_512
        if not arg2:
            quarryCities.length++
            if not quarryCities.length <= quarryCities.length + 1:
                idx = quarryCities.length + 1
                while quarryCities.length > idx:
                    quarryCities[idx] = 0
                    idx = idx + 1
                    continue 
            quarryCities[quarryCities.length] = arg1
        else:
            if arg2 == 1:
                farmCities.length++
                if not farmCities.length <= farmCities.length + 1:
                    idx = farmCities.length + 1
                    while farmCities.length > idx:
                        farmCities[idx] = 0
                        idx = idx + 1
                        continue 
                farmCities[farmCities.length] = arg1
            else:
                if arg2 == 2:
                    woodworksCities.length++
                    if not woodworksCities.length <= woodworksCities.length + 1:
                        idx = woodworksCities.length + 1
                        while woodworksCities.length > idx:
                            woodworksCities[idx] = 0
                            idx = idx + 1
                            continue 
                    woodworksCities[woodworksCities.length] = arg1
                else:
                    if arg2 == 3:
                        metalworksCities.length++
                        if not metalworksCities.length <= metalworksCities.length + 1:
                            idx = metalworksCities.length + 1
                            while metalworksCities.length > idx:
                                metalworksCities[idx] = 0
                                idx = idx + 1
                                continue 
                        metalworksCities[metalworksCities.length] = arg1
                    else:
                        if arg2 == 4:
                            stablesCities.length++
                            if not stablesCities.length <= stablesCities.length + 1:
                                idx = stablesCities.length + 1
                                while stablesCities.length > idx:
                                    stablesCities[idx] = 0
                                    idx = idx + 1
                                    continue 
                            stablesCities[stablesCities.length] = arg1
    else:
        if msg.sender == address(stor4B2):
            require arg1 < cities.length
            require arg2 < 5
            stor[(0.03125 / arg2) + (17 * arg1) + ('name', 'cities', 37)].field_512 = 256^(arg2 % 32) or !(255 * 256^(arg2 % 32)) and stor[(0.03125 / arg2) + (17 * arg1) + ('name', 'cities', 37)].field_512
            if not arg2:
                quarryCities.length++
                if not quarryCities.length <= quarryCities.length + 1:
                    idx = quarryCities.length + 1
                    while quarryCities.length > idx:
                        quarryCities[idx] = 0
                        idx = idx + 1
                        continue 
                quarryCities[quarryCities.length] = arg1
            else:
                if arg2 == 1:
                    farmCities.length++
                    if not farmCities.length <= farmCities.length + 1:
                        idx = farmCities.length + 1
                        while farmCities.length > idx:
                            farmCities[idx] = 0
                            idx = idx + 1
                            continue 
                    farmCities[farmCities.length] = arg1
                else:
                    if arg2 == 2:
                        woodworksCities.length++
                        if not woodworksCities.length <= woodworksCities.length + 1:
                            idx = woodworksCities.length + 1
                            while woodworksCities.length > idx:
                                woodworksCities[idx] = 0
                                idx = idx + 1
                                continue 
                        woodworksCities[woodworksCities.length] = arg1
                    else:
                        if arg2 == 3:
                            metalworksCities.length++
                            if not metalworksCities.length <= metalworksCities.length + 1:
                                idx = metalworksCities.length + 1
                                while metalworksCities.length > idx:
                                    metalworksCities[idx] = 0
                                    idx = idx + 1
                                    continue 
                            metalworksCities[metalworksCities.length] = arg1
                        else:
                            if arg2 == 4:
                                stablesCities.length++
                                if not stablesCities.length <= stablesCities.length + 1:
                                    idx = stablesCities.length + 1
                                    while stablesCities.length > idx:
                                        stablesCities[idx] = 0
                                        idx = idx + 1
                                        continue 
                                stablesCities[stablesCities.length] = arg1
}

function pushCity() payable {
    if msg.sender == address(stor4B1):
        uint8(stor22.field_0) = 0
        uint8(stor22.field_8) = 0
        cities.length++
        if not cities.length <= cities.length + 1:
            mem[0] = 37
            idx = (17 * cities.length) + 17
            while sha3(37) + (17 * cities.length) > idx + sha3(mem[0]):
                stor[idx + sha3(mem[0])] = 0
                stor[idx + sha3(mem[0]) + 1] = 0
                if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                    stor[idx + sha3(mem[0]) + 2] = 0
                    s = s + sha3(mem[0]) + 3
                    while 1:
                        stor[s + sha3(mem[0])] = 0
                        s = s + 1
                        continue 
                    stor[s + sha3(mem[0]) + 13] = 0
                    stor[s + sha3(mem[0]) + 14] = 0
                    stor[s + sha3(mem[0]) + 15] = 0
                    stor[s + sha3(mem[0]) + 16] = 0
                    s = s + 17
                    continue 
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                stor[idx + sha3(mem[0]) + 2] = 0
                s = idx + sha3(mem[0]) + 3
                while idx + sha3(mem[0]) + 13 > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
                stor[idx + sha3(mem[0]) + 13] = 0
                stor[idx + sha3(mem[0]) + 14] = 0
                stor[idx + sha3(mem[0]) + 15] = 0
                stor[idx + sha3(mem[0]) + 16] = 0
                idx = idx + 17
                continue 
        cities[cities.length].field_0 = stor20
        if 31 >= stor21.length:
            cities[cities.length].field_256 = stor21.length
            idx = 0
            while stor[(17 * cities.length) + ('name', 'cities', 37) + 1].length + 31 / 32 > idx:
                stor[idx + sha3((17 * cities.length) + ('name', 'cities', 37) + 1)].field_0 = 0
                idx = idx + 1
                continue 
        else:
            cities[cities.length].field_256 = Mask(255, 1, (256 * not bool(stor21.length)) - 1 and stor21.length) + 1
            if not Mask(255, 1, (256 * not bool(stor21.length)) - 1 and stor21.length):
                idx = 0
                while stor[(17 * cities.length) + ('name', 'cities', 37) + 1].length + 31 / 32 > idx:
                    stor[idx + sha3((17 * cities.length) + ('name', 'cities', 37) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while stor21.length + 31 / 32 > idx:
                    stor[s + sha3((17 * cities.length) + ('name', 'cities', 37) + 1)].field_0 = uint256(stor21[idx])
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = stor21.length + 31 / 32
                while stor[(17 * cities.length) + ('name', 'cities', 37) + 1].length + 31 / 32 > idx:
                    stor[idx + sha3((17 * cities.length) + ('name', 'cities', 37) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
        s = (17 * cities.length) + 2
        idx = 22
        while 23 > idx:
            cities[s].field_0 = stor[idx]
            s = s + 1
            idx = idx + 1
            continue 
        idx = (17 * cities.length) + 3
        while (17 * cities.length) + 3 > idx:
            uint8(cities[idx].field_0) = 0
            idx = idx + 1
            continue 
        s = (17 * cities.length) + 3
        idx = 23
        while 33 > idx:
            cities[s].field_0 = stor[idx]
            s = s + 1
            idx = idx + 1
            continue 
        idx = (17 * cities.length) + 13
        while (17 * cities.length) + 13 > idx:
            cities[idx].field_0 = 0
            idx = idx + 1
            continue 
        s = (17 * cities.length) + 13
        idx = 33
        while 35 > idx:
            cities[s].field_0 = stor[idx]
            s = s + 1
            idx = idx + 1
            continue 
        idx = (17 * cities.length) + 15
        while (17 * cities.length) + 15 > idx:
            cities[idx].field_0 = 0
            idx = idx + 1
            continue 
        cities[cities.length].field_3840 = stor35
        cities[cities.length].field_4096 = stor36
    else:
        if msg.sender == address(stor4B2):
            uint8(stor22.field_0) = 0
            uint8(stor22.field_8) = 0
            cities.length++
            if not cities.length <= cities.length + 1:
                mem[0] = 37
                idx = (17 * cities.length) + 17
                while sha3(37) + (17 * cities.length) > idx + sha3(mem[0]):
                    stor[idx + sha3(mem[0])] = 0
                    stor[idx + sha3(mem[0]) + 1] = 0
                    if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                        stor[idx + sha3(mem[0]) + 2] = 0
                        s = s + sha3(mem[0]) + 3
                        while 1:
                            stor[s + sha3(mem[0])] = 0
                            s = s + 1
                            continue 
                        stor[s + sha3(mem[0]) + 13] = 0
                        stor[s + sha3(mem[0]) + 14] = 0
                        stor[s + sha3(mem[0]) + 15] = 0
                        stor[s + sha3(mem[0]) + 16] = 0
                        s = s + 17
                        continue 
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    stor[idx + sha3(mem[0]) + 2] = 0
                    s = idx + sha3(mem[0]) + 3
                    while idx + sha3(mem[0]) + 13 > s:
                        stor[s] = 0
                        s = s + 1
                        continue 
                    stor[idx + sha3(mem[0]) + 13] = 0
                    stor[idx + sha3(mem[0]) + 14] = 0
                    stor[idx + sha3(mem[0]) + 15] = 0
                    stor[idx + sha3(mem[0]) + 16] = 0
                    idx = idx + 17
                    continue 
            cities[cities.length].field_0 = stor20
            if 31 >= stor21.length:
                cities[cities.length].field_256 = stor21.length
                idx = 0
                while stor[(17 * cities.length) + ('name', 'cities', 37) + 1].length + 31 / 32 > idx:
                    stor[idx + sha3((17 * cities.length) + ('name', 'cities', 37) + 1)].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                cities[cities.length].field_256 = Mask(255, 1, (256 * not bool(stor21.length)) - 1 and stor21.length) + 1
                if not Mask(255, 1, (256 * not bool(stor21.length)) - 1 and stor21.length):
                    idx = 0
                    while stor[(17 * cities.length) + ('name', 'cities', 37) + 1].length + 31 / 32 > idx:
                        stor[idx + sha3((17 * cities.length) + ('name', 'cities', 37) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    s = 0
                    idx = 0
                    while stor21.length + 31 / 32 > idx:
                        stor[s + sha3((17 * cities.length) + ('name', 'cities', 37) + 1)].field_0 = uint256(stor21[idx])
                        s = s + 1
                        idx = idx + 1
                        continue 
                    idx = stor21.length + 31 / 32
                    while stor[(17 * cities.length) + ('name', 'cities', 37) + 1].length + 31 / 32 > idx:
                        stor[idx + sha3((17 * cities.length) + ('name', 'cities', 37) + 1)].field_0 = 0
                        idx = idx + 1
                        continue 
            s = (17 * cities.length) + 2
            idx = 22
            while 23 > idx:
                cities[s].field_0 = stor[idx]
                s = s + 1
                idx = idx + 1
                continue 
            idx = (17 * cities.length) + 3
            while (17 * cities.length) + 3 > idx:
                uint8(cities[idx].field_0) = 0
                idx = idx + 1
                continue 
            s = (17 * cities.length) + 3
            idx = 23
            while 33 > idx:
                cities[s].field_0 = stor[idx]
                s = s + 1
                idx = idx + 1
                continue 
            idx = (17 * cities.length) + 13
            while (17 * cities.length) + 13 > idx:
                cities[idx].field_0 = 0
                idx = idx + 1
                continue 
            s = (17 * cities.length) + 13
            idx = 33
            while 35 > idx:
                cities[s].field_0 = stor[idx]
                s = s + 1
                idx = idx + 1
                continue 
            idx = (17 * cities.length) + 15
            while (17 * cities.length) + 15 > idx:
                cities[idx].field_0 = 0
                idx = idx + 1
                continue 
            cities[cities.length].field_3840 = stor35
            cities[cities.length].field_4096 = stor36
}



}
