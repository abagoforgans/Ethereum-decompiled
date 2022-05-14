contract main {


// =======================  Init code  ======================


uint8 stor0;
address stor0; offset 8
address stor1;
uint256 stor11;
uint256 stor12;
address stor13;

function _fallback() payable {
    uint8(stor0.field_0) = 0
    stor11 = 12 * 10^6 * 24 * 3600
    stor12 = 960000 * 24 * 3600
    require not msg.value
    require code.data[5412 len 20]
    address(stor0.field_8) = msg.sender
    stor1 = code.data[5412 len 20]
    stor13 = 0x2c1e693ccc537c8c98c73fac0262cd7e18a3ad60
    return code.data[193 len 5207]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const GRAPE_SECS_TO_GROW_VINE = (24 * 3600)

const LAND_ADDRESS = 0x2c1e693ccc537c8c98c73fac0262cd7e18a3ad60

const VINE_CAPACITY_PER_LAND = 1000

const STARTING_VINES = 300


uint8 stor0;
address ceoAddress; offset 8
address ceoWalletAddress;
mapping of uint256 sub_5f7d35a9;
mapping of uint256 sub_0b86deb9;
mapping of uint256 lastHarvest;
mapping of address referrals;
bool stor6;
uint256 stor6;
uint256 stor6; offset 1
uint256 marketGrapes;
mapping of uint256 myLandMultiplier;
mapping of uint256 sub_2011f8db;
mapping of uint256 myWine;
mapping of uint256 wineProductionRate;
uint256 grapesToBuildWinery;
uint256 grapesToProduceBottle;
address stor13;

function ceoAddress() {
    return ceoAddress
}

function sub_0b86deb9(?) {
    return sub_0b86deb9[arg1]
}

function initialized() {
    return bool(stor0)
}

function sub_2011f8db(?) {
    return sub_2011f8db[arg1]
}

function ceoWallet() {
    return ceoWalletAddress
}

function getMyLandMultiplier() {
    return myLandMultiplier[address(msg.sender)]
}

function lastHarvest(address arg1) {
    return lastHarvest[arg1]
}

function sub_5f7d35a9(?) {
    return sub_5f7d35a9[arg1]
}

function grapesToProduceBottle() {
    return grapesToProduceBottle
}

function grapesToBuildWinery() {
    return grapesToBuildWinery
}

function getWineProductionRate() {
    return wineProductionRate[address(msg.sender)]
}

function referrals(address arg1) {
    return referrals[arg1]
}

function getGrapesToBuildWinery() {
    return grapesToBuildWinery
}

function getMyWine() {
    return myWine[address(msg.sender)]
}

function marketGrapes() {
    return marketGrapes
}

function sub_bfaabb84(?) {
    return myLandMultiplier[arg1]
}

function getMyVines() {
    return sub_5f7d35a9[address(msg.sender)]
}

function sub_d1df8b5a(?) {
    return wineProductionRate[arg1]
}

function sub_ff727258(?) {
    return myWine[arg1]
}

function _fallback() payable {
    revert
}

function seedMarket(uint256 arg1) payable {
    require not marketGrapes
    stor0 = 1
    marketGrapes = arg1
}

function devFee(uint256 arg1) {
    if not arg1:
        return 0
    require 3 * arg1 / arg1 == 3
    return (3 * arg1 / 100)
}

function transferWalletOwnership(address arg1) {
    require ceoAddress == msg.sender
    require arg1
    ceoWalletAddress = arg1
}

function getFreeVines() {
    require stor0
    require not sub_5f7d35a9[address(msg.sender)]
    lastHarvest[address(msg.sender)] = block.timestamp
    sub_5f7d35a9[address(msg.sender)] = 300
    wineProductionRate[address(msg.sender)] = 1
    myLandMultiplier[address(msg.sender)] = 1
    sub_2011f8db[address(msg.sender)] = 1000
}

function addFreeVineyard(address arg1) {
    require stor0
    require ceoAddress == msg.sender
    require not sub_5f7d35a9[address(arg1)]
    lastHarvest[address(arg1)] = block.timestamp
    sub_5f7d35a9[address(arg1)] = 300
    wineProductionRate[address(arg1)] = 1
    myLandMultiplier[address(arg1)] = 1
    sub_2011f8db[address(arg1)] = 1000
}

function getGrapesSinceLastHarvest(address arg1) {
    require lastHarvest[address(arg1)] <= block.timestamp
    require 1 <= myLandMultiplier[address(arg1)]
    require (myLandMultiplier[address(arg1)] - 1 / 5) + 1 >= 1
    if not sub_5f7d35a9[address(arg1)]:
        if not block.timestamp - lastHarvest[address(arg1)]:
            return 0
        if not 0 / block.timestamp - lastHarvest[address(arg1)]:
            return 0
    else:
        if sub_5f7d35a9[address(arg1)] + (myLandMultiplier[address(arg1)] - 1 / 5 * sub_5f7d35a9[address(arg1)]) / sub_5f7d35a9[address(arg1)] == (myLandMultiplier[address(arg1)] - 1 / 5) + 1:
            if not block.timestamp - lastHarvest[address(arg1)]:
                return 0
            if (block.timestamp * sub_5f7d35a9[address(arg1)]) - (lastHarvest[address(arg1)] * sub_5f7d35a9[address(arg1)]) + (block.timestamp * myLandMultiplier[address(arg1)] - 1 / 5 * sub_5f7d35a9[address(arg1)]) - (lastHarvest[address(arg1)] * myLandMultiplier[address(arg1)] - 1 / 5 * sub_5f7d35a9[address(arg1)]) / block.timestamp - lastHarvest[address(arg1)] == sub_5f7d35a9[address(arg1)] + (myLandMultiplier[address(arg1)] - 1 / 5 * sub_5f7d35a9[address(arg1)]):
                return ((block.timestamp * sub_5f7d35a9[address(arg1)]) - (lastHarvest[address(arg1)] * sub_5f7d35a9[address(arg1)]) + (block.timestamp * myLandMultiplier[address(arg1)] - 1 / 5 * sub_5f7d35a9[address(arg1)]) - (lastHarvest[address(arg1)] * myLandMultiplier[address(arg1)] - 1 / 5 * sub_5f7d35a9[address(arg1)]))
    revert
}

function getMyGrapes() {
    require lastHarvest[address(msg.sender)] <= block.timestamp
    require 1 <= myLandMultiplier[address(msg.sender)]
    require (myLandMultiplier[address(msg.sender)] - 1 / 5) + 1 >= 1
    if not sub_5f7d35a9[address(msg.sender)]:
        if not block.timestamp - lastHarvest[address(msg.sender)]:
            if sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]:
                return sub_0b86deb9[address(msg.sender)]
        else:
            if not 0 / block.timestamp - lastHarvest[address(msg.sender)]:
                if sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]:
                    return sub_0b86deb9[address(msg.sender)]
    else:
        if sub_5f7d35a9[address(msg.sender)] + (myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) / sub_5f7d35a9[address(msg.sender)] == (myLandMultiplier[address(msg.sender)] - 1 / 5) + 1:
            if not block.timestamp - lastHarvest[address(msg.sender)]:
                if sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]:
                    return sub_0b86deb9[address(msg.sender)]
            else:
                if (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) / block.timestamp - lastHarvest[address(msg.sender)] == sub_5f7d35a9[address(msg.sender)] + (myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]):
                    if (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]:
                        return ((block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)])
    revert
}

function calculateTrade(uint256 arg1, uint256 arg2, uint256 arg3) {
    if not arg3:
        if not arg2:
            if not arg1:
                if arg1:
                    if (0 / arg1) + 5000 >= 0 / arg1:
                        if (0 / arg1) + 5000:
                            return (0 / (0 / arg1) + 5000)
            else:
                if 5000 * arg1 / arg1 == 5000:
                    if 5000 * arg1 >= 0:
                        if arg1:
                            if (5000 * arg1 / arg1) + 5000 >= 5000 * arg1 / arg1:
                                if (5000 * arg1 / arg1) + 5000:
                                    return (0 / (5000 * arg1 / arg1) + 5000)
        else:
            if 10000 * arg2 / arg2 == 10000:
                if not arg1:
                    if 10000 * arg2 >= 10000 * arg2:
                        if arg1:
                            if (10000 * arg2 / arg1) + 5000 >= 10000 * arg2 / arg1:
                                if (10000 * arg2 / arg1) + 5000:
                                    return (0 / (10000 * arg2 / arg1) + 5000)
                else:
                    if 5000 * arg1 / arg1 == 5000:
                        if (5000 * arg1) + (10000 * arg2) >= 10000 * arg2:
                            if arg1:
                                if ((5000 * arg1) + (10000 * arg2) / arg1) + 5000 >= (5000 * arg1) + (10000 * arg2) / arg1:
                                    if ((5000 * arg1) + (10000 * arg2) / arg1) + 5000:
                                        return (0 / ((5000 * arg1) + (10000 * arg2) / arg1) + 5000)
    else:
        if 10000 * arg3 / arg3 == 10000:
            if not arg2:
                if not arg1:
                    if arg1:
                        if (0 / arg1) + 5000 >= 0 / arg1:
                            if (0 / arg1) + 5000:
                                return (10000 * arg3 / (0 / arg1) + 5000)
                else:
                    if 5000 * arg1 / arg1 == 5000:
                        if 5000 * arg1 >= 0:
                            if arg1:
                                if (5000 * arg1 / arg1) + 5000 >= 5000 * arg1 / arg1:
                                    if (5000 * arg1 / arg1) + 5000:
                                        return (10000 * arg3 / (5000 * arg1 / arg1) + 5000)
            else:
                if 10000 * arg2 / arg2 == 10000:
                    if not arg1:
                        if 10000 * arg2 >= 10000 * arg2:
                            if arg1:
                                if (10000 * arg2 / arg1) + 5000 >= 10000 * arg2 / arg1:
                                    if (10000 * arg2 / arg1) + 5000:
                                        return (10000 * arg3 / (10000 * arg2 / arg1) + 5000)
                    else:
                        if 5000 * arg1 / arg1 == 5000:
                            if (5000 * arg1) + (10000 * arg2) >= 10000 * arg2:
                                if arg1:
                                    if ((5000 * arg1) + (10000 * arg2) / arg1) + 5000 >= (5000 * arg1) + (10000 * arg2) / arg1:
                                        if ((5000 * arg1) + (10000 * arg2) / arg1) + 5000:
                                            return (10000 * arg3 / ((5000 * arg1) + (10000 * arg2) / arg1) + 5000)
    revert
}

function calculateGrapeBuy(uint256 arg1, uint256 arg2) {
    if not marketGrapes:
        if not arg2:
            if not arg1:
                if arg1:
                    if (0 / arg1) + 5000 >= 0 / arg1:
                        if (0 / arg1) + 5000:
                            return (0 / (0 / arg1) + 5000)
            else:
                if 5000 * arg1 / arg1 == 5000:
                    if 5000 * arg1 >= 0:
                        if arg1:
                            if (5000 * arg1 / arg1) + 5000 >= 5000 * arg1 / arg1:
                                if (5000 * arg1 / arg1) + 5000:
                                    return (0 / (5000 * arg1 / arg1) + 5000)
        else:
            if 10000 * arg2 / arg2 == 10000:
                if not arg1:
                    if 10000 * arg2 >= 10000 * arg2:
                        if arg1:
                            if (10000 * arg2 / arg1) + 5000 >= 10000 * arg2 / arg1:
                                if (10000 * arg2 / arg1) + 5000:
                                    return (0 / (10000 * arg2 / arg1) + 5000)
                else:
                    if 5000 * arg1 / arg1 == 5000:
                        if (5000 * arg1) + (10000 * arg2) >= 10000 * arg2:
                            if arg1:
                                if ((5000 * arg1) + (10000 * arg2) / arg1) + 5000 >= (5000 * arg1) + (10000 * arg2) / arg1:
                                    if ((5000 * arg1) + (10000 * arg2) / arg1) + 5000:
                                        return (0 / ((5000 * arg1) + (10000 * arg2) / arg1) + 5000)
    else:
        if 10000 * marketGrapes / marketGrapes == 10000:
            if not arg2:
                if not arg1:
                    if arg1:
                        if (0 / arg1) + 5000 >= 0 / arg1:
                            if (0 / arg1) + 5000:
                                return (10000 * marketGrapes / (0 / arg1) + 5000)
                else:
                    if 5000 * arg1 / arg1 == 5000:
                        if 5000 * arg1 >= 0:
                            if arg1:
                                if (5000 * arg1 / arg1) + 5000 >= 5000 * arg1 / arg1:
                                    if (5000 * arg1 / arg1) + 5000:
                                        return (10000 * marketGrapes / (5000 * arg1 / arg1) + 5000)
            else:
                if 10000 * arg2 / arg2 == 10000:
                    if not arg1:
                        if 10000 * arg2 >= 10000 * arg2:
                            if arg1:
                                if (10000 * arg2 / arg1) + 5000 >= 10000 * arg2 / arg1:
                                    if (10000 * arg2 / arg1) + 5000:
                                        return (10000 * marketGrapes / (10000 * arg2 / arg1) + 5000)
                    else:
                        if 5000 * arg1 / arg1 == 5000:
                            if (5000 * arg1) + (10000 * arg2) >= 10000 * arg2:
                                if arg1:
                                    if ((5000 * arg1) + (10000 * arg2) / arg1) + 5000 >= (5000 * arg1) + (10000 * arg2) / arg1:
                                        if ((5000 * arg1) + (10000 * arg2) / arg1) + 5000:
                                            return (10000 * marketGrapes / ((5000 * arg1) + (10000 * arg2) / arg1) + 5000)
    revert
}

function setLandProductionMultiplier(address arg1) {
    require ext_code.size(stor13)
    call stor13.addressToNumVillages(address arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor13)
    call stor13.addressToNumTowns(address arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(stor13)
        call stor13.addressToNumCities(address arg1) with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        if not ext_call.return_data[0]:
            require ext_call.return_data[0] >= ext_call.return_data[0]
            require ext_call.return_data[0] + 1 >= 1
            myLandMultiplier[address(arg1)] = ext_call.return_data[0] + 1
            if not ext_call.return_data[0] + 1:
                sub_2011f8db[address(arg1)] = 0
            else:
                require (1000 * ext_call.return_data[0]) + 1000 / ext_call.return_data[0] + 1 == 1000
                sub_2011f8db[address(arg1)] = (1000 * ext_call.return_data[0]) + 1000
        else:
            require 9 * ext_call.return_data[0] / ext_call.return_data[0] == 9
            require 9 * ext_call.return_data[0] >= 0
            require 10 * ext_call.return_data[0] >= ext_call.return_data[0]
            require (10 * ext_call.return_data[0]) + 1 >= 1
            myLandMultiplier[address(arg1)] = (10 * ext_call.return_data[0]) + 1
            if not (10 * ext_call.return_data[0]) + 1:
                sub_2011f8db[address(arg1)] = 0
            else:
                require (10000 * ext_call.return_data[0]) + 1000 / (10 * ext_call.return_data[0]) + 1 == 1000
                sub_2011f8db[address(arg1)] = (10000 * ext_call.return_data[0]) + 1000
    else:
        require 3 * ext_call.return_data[0] / ext_call.return_data[0] == 3
        require ext_code.size(stor13)
        call stor13.addressToNumCities(address arg1) with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        if not ext_call.return_data[0]:
            require 3 * ext_call.return_data[0] >= 3 * ext_call.return_data[0]
            require 4 * ext_call.return_data[0] >= ext_call.return_data[0]
            require (4 * ext_call.return_data[0]) + 1 >= 1
            myLandMultiplier[address(arg1)] = (4 * ext_call.return_data[0]) + 1
            if not (4 * ext_call.return_data[0]) + 1:
                sub_2011f8db[address(arg1)] = 0
            else:
                require (4000 * ext_call.return_data[0]) + 1000 / (4 * ext_call.return_data[0]) + 1 == 1000
                sub_2011f8db[address(arg1)] = (4000 * ext_call.return_data[0]) + 1000
        else:
            require 9 * ext_call.return_data[0] / ext_call.return_data[0] == 9
            require 12 * ext_call.return_data[0] >= 3 * ext_call.return_data[0]
            require 13 * ext_call.return_data[0] >= ext_call.return_data[0]
            require (13 * ext_call.return_data[0]) + 1 >= 1
            myLandMultiplier[address(arg1)] = (13 * ext_call.return_data[0]) + 1
            if not (13 * ext_call.return_data[0]) + 1:
                sub_2011f8db[address(arg1)] = 0
            else:
                require (13000 * ext_call.return_data[0]) + 1000 / (13 * ext_call.return_data[0]) + 1 == 1000
                sub_2011f8db[address(arg1)] = (13000 * ext_call.return_data[0]) + 1000
}

function setLandProductionMultiplierCCUser(bytes32 arg1, address arg2) {
    require ceoAddress == msg.sender
    require ext_code.size(stor13)
    call stor13.userToNumVillages(bytes32 arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    require ext_code.size(stor13)
    call stor13.userToNumTowns(bytes32 arg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    if not ext_call.return_data[0]:
        require ext_code.size(stor13)
        call stor13.userToNumCities(bytes32 arg1) with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        if not ext_call.return_data[0]:
            require ext_call.return_data[0] >= ext_call.return_data[0]
            require ext_call.return_data[0] + 1 >= 1
            myLandMultiplier[address(arg2)] = ext_call.return_data[0] + 1
            if not ext_call.return_data[0] + 1:
                sub_2011f8db[address(arg2)] = 0
            else:
                require (1000 * ext_call.return_data[0]) + 1000 / ext_call.return_data[0] + 1 == 1000
                sub_2011f8db[address(arg2)] = (1000 * ext_call.return_data[0]) + 1000
        else:
            require 9 * ext_call.return_data[0] / ext_call.return_data[0] == 9
            require 9 * ext_call.return_data[0] >= 0
            require 10 * ext_call.return_data[0] >= ext_call.return_data[0]
            require (10 * ext_call.return_data[0]) + 1 >= 1
            myLandMultiplier[address(arg2)] = (10 * ext_call.return_data[0]) + 1
            if not (10 * ext_call.return_data[0]) + 1:
                sub_2011f8db[address(arg2)] = 0
            else:
                require (10000 * ext_call.return_data[0]) + 1000 / (10 * ext_call.return_data[0]) + 1 == 1000
                sub_2011f8db[address(arg2)] = (10000 * ext_call.return_data[0]) + 1000
    else:
        require 3 * ext_call.return_data[0] / ext_call.return_data[0] == 3
        require ext_code.size(stor13)
        call stor13.userToNumCities(bytes32 arg1) with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        if not ext_call.return_data[0]:
            require 3 * ext_call.return_data[0] >= 3 * ext_call.return_data[0]
            require 4 * ext_call.return_data[0] >= ext_call.return_data[0]
            require (4 * ext_call.return_data[0]) + 1 >= 1
            myLandMultiplier[address(arg2)] = (4 * ext_call.return_data[0]) + 1
            if not (4 * ext_call.return_data[0]) + 1:
                sub_2011f8db[address(arg2)] = 0
            else:
                require (4000 * ext_call.return_data[0]) + 1000 / (4 * ext_call.return_data[0]) + 1 == 1000
                sub_2011f8db[address(arg2)] = (4000 * ext_call.return_data[0]) + 1000
        else:
            require 9 * ext_call.return_data[0] / ext_call.return_data[0] == 9
            require 12 * ext_call.return_data[0] >= 3 * ext_call.return_data[0]
            require 13 * ext_call.return_data[0] >= ext_call.return_data[0]
            require (13 * ext_call.return_data[0]) + 1 >= 1
            myLandMultiplier[address(arg2)] = (13 * ext_call.return_data[0]) + 1
            if not (13 * ext_call.return_data[0]) + 1:
                sub_2011f8db[address(arg2)] = 0
            else:
                require (13000 * ext_call.return_data[0]) + 1000 / (13 * ext_call.return_data[0]) + 1 == 1000
                sub_2011f8db[address(arg2)] = (13000 * ext_call.return_data[0]) + 1000
}

function calculateGrapeSell(uint256 arg1) {
    if not eth.balance(this.address):
        if not marketGrapes:
            if not arg1:
                if arg1:
                    if (0 / arg1) + 5000 >= 0 / arg1:
                        if (0 / arg1) + 5000:
                            return (0 / (0 / arg1) + 5000)
            else:
                if 5000 * arg1 / arg1 == 5000:
                    if 5000 * arg1 >= 0:
                        if arg1:
                            if (5000 * arg1 / arg1) + 5000 >= 5000 * arg1 / arg1:
                                if (5000 * arg1 / arg1) + 5000:
                                    return (0 / (5000 * arg1 / arg1) + 5000)
        else:
            if 10000 * marketGrapes / marketGrapes == 10000:
                if not arg1:
                    if 10000 * marketGrapes >= 10000 * marketGrapes:
                        if arg1:
                            if (10000 * marketGrapes / arg1) + 5000 >= 10000 * marketGrapes / arg1:
                                if (10000 * marketGrapes / arg1) + 5000:
                                    return (0 / (10000 * marketGrapes / arg1) + 5000)
                else:
                    if 5000 * arg1 / arg1 == 5000:
                        if (5000 * arg1) + (10000 * marketGrapes) >= 10000 * marketGrapes:
                            if arg1:
                                if ((5000 * arg1) + (10000 * marketGrapes) / arg1) + 5000 >= (5000 * arg1) + (10000 * marketGrapes) / arg1:
                                    if ((5000 * arg1) + (10000 * marketGrapes) / arg1) + 5000:
                                        return (0 / ((5000 * arg1) + (10000 * marketGrapes) / arg1) + 5000)
    else:
        if 10000 * eth.balance(this.address) / eth.balance(this.address) == 10000:
            if not marketGrapes:
                if not arg1:
                    if arg1:
                        if (0 / arg1) + 5000 >= 0 / arg1:
                            if (0 / arg1) + 5000:
                                return (10000 * eth.balance(this.address) / (0 / arg1) + 5000)
                else:
                    if 5000 * arg1 / arg1 == 5000:
                        if 5000 * arg1 >= 0:
                            if arg1:
                                if (5000 * arg1 / arg1) + 5000 >= 5000 * arg1 / arg1:
                                    if (5000 * arg1 / arg1) + 5000:
                                        return (10000 * eth.balance(this.address) / (5000 * arg1 / arg1) + 5000)
            else:
                if 10000 * marketGrapes / marketGrapes == 10000:
                    if not arg1:
                        if 10000 * marketGrapes >= 10000 * marketGrapes:
                            if arg1:
                                if (10000 * marketGrapes / arg1) + 5000 >= 10000 * marketGrapes / arg1:
                                    if (10000 * marketGrapes / arg1) + 5000:
                                        return (10000 * eth.balance(this.address) / (10000 * marketGrapes / arg1) + 5000)
                    else:
                        if 5000 * arg1 / arg1 == 5000:
                            if (5000 * arg1) + (10000 * marketGrapes) >= 10000 * marketGrapes:
                                if arg1:
                                    if ((5000 * arg1) + (10000 * marketGrapes) / arg1) + 5000 >= (5000 * arg1) + (10000 * marketGrapes) / arg1:
                                        if ((5000 * arg1) + (10000 * marketGrapes) / arg1) + 5000:
                                            return (10000 * eth.balance(this.address) / ((5000 * arg1) + (10000 * marketGrapes) / arg1) + 5000)
    revert
}

function calculateGrapeBuySimple(uint256 arg1) {
    if not marketGrapes:
        if not eth.balance(this.address):
            if not arg1:
                if arg1:
                    if (0 / arg1) + 5000 >= 0 / arg1:
                        if (0 / arg1) + 5000:
                            return (0 / (0 / arg1) + 5000)
            else:
                if 5000 * arg1 / arg1 == 5000:
                    if 5000 * arg1 >= 0:
                        if arg1:
                            if (5000 * arg1 / arg1) + 5000 >= 5000 * arg1 / arg1:
                                if (5000 * arg1 / arg1) + 5000:
                                    return (0 / (5000 * arg1 / arg1) + 5000)
        else:
            if 10000 * eth.balance(this.address) / eth.balance(this.address) == 10000:
                if not arg1:
                    if 10000 * eth.balance(this.address) >= 10000 * eth.balance(this.address):
                        if arg1:
                            if (10000 * eth.balance(this.address) / arg1) + 5000 >= 10000 * eth.balance(this.address) / arg1:
                                if (10000 * eth.balance(this.address) / arg1) + 5000:
                                    return (0 / (10000 * eth.balance(this.address) / arg1) + 5000)
                else:
                    if 5000 * arg1 / arg1 == 5000:
                        if (5000 * arg1) + (10000 * eth.balance(this.address)) >= 10000 * eth.balance(this.address):
                            if arg1:
                                if ((5000 * arg1) + (10000 * eth.balance(this.address)) / arg1) + 5000 >= (5000 * arg1) + (10000 * eth.balance(this.address)) / arg1:
                                    if ((5000 * arg1) + (10000 * eth.balance(this.address)) / arg1) + 5000:
                                        return (0 / ((5000 * arg1) + (10000 * eth.balance(this.address)) / arg1) + 5000)
    else:
        if 10000 * marketGrapes / marketGrapes == 10000:
            if not eth.balance(this.address):
                if not arg1:
                    if arg1:
                        if (0 / arg1) + 5000 >= 0 / arg1:
                            if (0 / arg1) + 5000:
                                return (10000 * marketGrapes / (0 / arg1) + 5000)
                else:
                    if 5000 * arg1 / arg1 == 5000:
                        if 5000 * arg1 >= 0:
                            if arg1:
                                if (5000 * arg1 / arg1) + 5000 >= 5000 * arg1 / arg1:
                                    if (5000 * arg1 / arg1) + 5000:
                                        return (10000 * marketGrapes / (5000 * arg1 / arg1) + 5000)
            else:
                if 10000 * eth.balance(this.address) / eth.balance(this.address) == 10000:
                    if not arg1:
                        if 10000 * eth.balance(this.address) >= 10000 * eth.balance(this.address):
                            if arg1:
                                if (10000 * eth.balance(this.address) / arg1) + 5000 >= 10000 * eth.balance(this.address) / arg1:
                                    if (10000 * eth.balance(this.address) / arg1) + 5000:
                                        return (10000 * marketGrapes / (10000 * eth.balance(this.address) / arg1) + 5000)
                    else:
                        if 5000 * arg1 / arg1 == 5000:
                            if (5000 * arg1) + (10000 * eth.balance(this.address)) >= 10000 * eth.balance(this.address):
                                if arg1:
                                    if ((5000 * arg1) + (10000 * eth.balance(this.address)) / arg1) + 5000 >= (5000 * arg1) + (10000 * eth.balance(this.address)) / arg1:
                                        if ((5000 * arg1) + (10000 * eth.balance(this.address)) / arg1) + 5000:
                                            return (10000 * marketGrapes / ((5000 * arg1) + (10000 * eth.balance(this.address)) / arg1) + 5000)
    revert
}

function buildWinery() {
    require stor0
    require wineProductionRate[address(msg.sender)] <= myLandMultiplier[address(msg.sender)]
    require lastHarvest[address(msg.sender)] <= block.timestamp
    require 1 <= myLandMultiplier[address(msg.sender)]
    require (myLandMultiplier[address(msg.sender)] - 1 / 5) + 1 >= 1
    if not sub_5f7d35a9[address(msg.sender)]:
        if block.timestamp - lastHarvest[address(msg.sender)]:
            require not 0 / block.timestamp - lastHarvest[address(msg.sender)]
        require sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
        require sub_0b86deb9[address(msg.sender)] >= grapesToBuildWinery
        require grapesToBuildWinery <= sub_0b86deb9[address(msg.sender)]
        sub_0b86deb9[address(msg.sender)] -= grapesToBuildWinery
    else:
        require sub_5f7d35a9[address(msg.sender)] + (myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) / sub_5f7d35a9[address(msg.sender)] == (myLandMultiplier[address(msg.sender)] - 1 / 5) + 1
        if not block.timestamp - lastHarvest[address(msg.sender)]:
            require sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
            require sub_0b86deb9[address(msg.sender)] >= grapesToBuildWinery
            require grapesToBuildWinery <= sub_0b86deb9[address(msg.sender)]
            sub_0b86deb9[address(msg.sender)] -= grapesToBuildWinery
        else:
            require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) / block.timestamp - lastHarvest[address(msg.sender)] == sub_5f7d35a9[address(msg.sender)] + (myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)])
            require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
            require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] >= grapesToBuildWinery
            require grapesToBuildWinery <= (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
            sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] - grapesToBuildWinery
    lastHarvest[address(msg.sender)] = block.timestamp
    wineProductionRate[address(msg.sender)]++
    require grapesToBuildWinery + (6 * 10^6 * 24 * 3600) >= grapesToBuildWinery
    grapesToBuildWinery += 6 * 10^6 * 24 * 3600
    require 1000 <= sub_5f7d35a9[address(msg.sender)]
    sub_5f7d35a9[address(msg.sender)] -= 1000
}

function harvest(address arg1) {
    require stor0
    if not referrals[address(msg.sender)]:
        if referrals[address(msg.sender)] != msg.sender:
            referrals[address(msg.sender)] = arg1
    require lastHarvest[address(msg.sender)] <= block.timestamp
    require 1 <= myLandMultiplier[address(msg.sender)]
    require (myLandMultiplier[address(msg.sender)] - 1 / 5) + 1 >= 1
    if not sub_5f7d35a9[address(msg.sender)]:
        if block.timestamp - lastHarvest[address(msg.sender)]:
            require not 0 / block.timestamp - lastHarvest[address(msg.sender)]
        require sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
        require (sub_0b86deb9[address(msg.sender)] / 24 * 3600) + sub_5f7d35a9[address(msg.sender)] >= sub_5f7d35a9[address(msg.sender)]
        require (sub_0b86deb9[address(msg.sender)] / 24 * 3600) + sub_5f7d35a9[address(msg.sender)] >= sub_5f7d35a9[address(msg.sender)]
        if (sub_0b86deb9[address(msg.sender)] / 24 * 3600) + sub_5f7d35a9[address(msg.sender)] <= sub_2011f8db[address(msg.sender)]:
            sub_5f7d35a9[address(msg.sender)] += sub_0b86deb9[address(msg.sender)] / 24 * 3600
            sub_0b86deb9[address(msg.sender)] = 0
            lastHarvest[address(msg.sender)] = block.timestamp
            require (sub_0b86deb9[address(msg.sender)] / 5) + sub_0b86deb9[stor5[address(msg.sender)]] >= sub_0b86deb9[stor5[address(msg.sender)]]
            sub_0b86deb9[stor5[address(msg.sender)]] += sub_0b86deb9[address(msg.sender)] / 5
        else:
            require sub_2011f8db[address(msg.sender)] <= (sub_0b86deb9[address(msg.sender)] / 24 * 3600) + sub_5f7d35a9[address(msg.sender)]
            if not (sub_0b86deb9[address(msg.sender)] / 24 * 3600) + sub_5f7d35a9[address(msg.sender)] - sub_2011f8db[address(msg.sender)]:
                sub_0b86deb9[address(msg.sender)] = 0
            else:
                require (24 * 3600 * sub_0b86deb9[address(msg.sender)] / 24 * 3600) + (24 * 3600 * sub_5f7d35a9[address(msg.sender)]) - (24 * 3600 * sub_2011f8db[address(msg.sender)]) / (sub_0b86deb9[address(msg.sender)] / 24 * 3600) + sub_5f7d35a9[address(msg.sender)] - sub_2011f8db[address(msg.sender)] == 24 * 3600
                sub_0b86deb9[address(msg.sender)] = (24 * 3600 * sub_0b86deb9[address(msg.sender)] / 24 * 3600) + (24 * 3600 * sub_5f7d35a9[address(msg.sender)]) - (24 * 3600 * sub_2011f8db[address(msg.sender)])
            sub_5f7d35a9[address(msg.sender)] = sub_2011f8db[address(msg.sender)]
            lastHarvest[address(msg.sender)] = block.timestamp
            require (0 / 5) + sub_0b86deb9[stor5[address(msg.sender)]] >= sub_0b86deb9[stor5[address(msg.sender)]]
            sub_0b86deb9[stor5[address(msg.sender)]] += 0 / 5
    else:
        require sub_5f7d35a9[address(msg.sender)] + (myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) / sub_5f7d35a9[address(msg.sender)] == (myLandMultiplier[address(msg.sender)] - 1 / 5) + 1
        if not block.timestamp - lastHarvest[address(msg.sender)]:
            require sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
            require (sub_0b86deb9[address(msg.sender)] / 24 * 3600) + sub_5f7d35a9[address(msg.sender)] >= sub_5f7d35a9[address(msg.sender)]
            require (sub_0b86deb9[address(msg.sender)] / 24 * 3600) + sub_5f7d35a9[address(msg.sender)] >= sub_5f7d35a9[address(msg.sender)]
            if (sub_0b86deb9[address(msg.sender)] / 24 * 3600) + sub_5f7d35a9[address(msg.sender)] <= sub_2011f8db[address(msg.sender)]:
                sub_5f7d35a9[address(msg.sender)] += sub_0b86deb9[address(msg.sender)] / 24 * 3600
                sub_0b86deb9[address(msg.sender)] = 0
                lastHarvest[address(msg.sender)] = block.timestamp
                require (sub_0b86deb9[address(msg.sender)] / 5) + sub_0b86deb9[stor5[address(msg.sender)]] >= sub_0b86deb9[stor5[address(msg.sender)]]
                sub_0b86deb9[stor5[address(msg.sender)]] += sub_0b86deb9[address(msg.sender)] / 5
            else:
                require sub_2011f8db[address(msg.sender)] <= (sub_0b86deb9[address(msg.sender)] / 24 * 3600) + sub_5f7d35a9[address(msg.sender)]
                if not (sub_0b86deb9[address(msg.sender)] / 24 * 3600) + sub_5f7d35a9[address(msg.sender)] - sub_2011f8db[address(msg.sender)]:
                    sub_0b86deb9[address(msg.sender)] = 0
                else:
                    require (24 * 3600 * sub_0b86deb9[address(msg.sender)] / 24 * 3600) + (24 * 3600 * sub_5f7d35a9[address(msg.sender)]) - (24 * 3600 * sub_2011f8db[address(msg.sender)]) / (sub_0b86deb9[address(msg.sender)] / 24 * 3600) + sub_5f7d35a9[address(msg.sender)] - sub_2011f8db[address(msg.sender)] == 24 * 3600
                    sub_0b86deb9[address(msg.sender)] = (24 * 3600 * sub_0b86deb9[address(msg.sender)] / 24 * 3600) + (24 * 3600 * sub_5f7d35a9[address(msg.sender)]) - (24 * 3600 * sub_2011f8db[address(msg.sender)])
                sub_5f7d35a9[address(msg.sender)] = sub_2011f8db[address(msg.sender)]
                lastHarvest[address(msg.sender)] = block.timestamp
                require (0 / 5) + sub_0b86deb9[stor5[address(msg.sender)]] >= sub_0b86deb9[stor5[address(msg.sender)]]
                sub_0b86deb9[stor5[address(msg.sender)]] += 0 / 5
        else:
            require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) / block.timestamp - lastHarvest[address(msg.sender)] == sub_5f7d35a9[address(msg.sender)] + (myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)])
            require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
            require ((block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] / 24 * 3600) + sub_5f7d35a9[address(msg.sender)] >= sub_5f7d35a9[address(msg.sender)]
            require ((block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] / 24 * 3600) + sub_5f7d35a9[address(msg.sender)] >= sub_5f7d35a9[address(msg.sender)]
            if ((block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] / 24 * 3600) + sub_5f7d35a9[address(msg.sender)] <= sub_2011f8db[address(msg.sender)]:
                sub_5f7d35a9[address(msg.sender)] += (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] / 24 * 3600
                sub_0b86deb9[address(msg.sender)] = 0
                lastHarvest[address(msg.sender)] = block.timestamp
                require ((block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] / 5) + sub_0b86deb9[stor5[address(msg.sender)]] >= sub_0b86deb9[stor5[address(msg.sender)]]
                sub_0b86deb9[stor5[address(msg.sender)]] += (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] / 5
            else:
                require sub_2011f8db[address(msg.sender)] <= ((block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] / 24 * 3600) + sub_5f7d35a9[address(msg.sender)]
                if not ((block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] / 24 * 3600) + sub_5f7d35a9[address(msg.sender)] - sub_2011f8db[address(msg.sender)]:
                    sub_0b86deb9[address(msg.sender)] = 0
                else:
                    require (24 * 3600 * (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] / 24 * 3600) + (24 * 3600 * sub_5f7d35a9[address(msg.sender)]) - (24 * 3600 * sub_2011f8db[address(msg.sender)]) / ((block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] / 24 * 3600) + sub_5f7d35a9[address(msg.sender)] - sub_2011f8db[address(msg.sender)] == 24 * 3600
                    sub_0b86deb9[address(msg.sender)] = (24 * 3600 * (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] / 24 * 3600) + (24 * 3600 * sub_5f7d35a9[address(msg.sender)]) - (24 * 3600 * sub_2011f8db[address(msg.sender)])
                sub_5f7d35a9[address(msg.sender)] = sub_2011f8db[address(msg.sender)]
                lastHarvest[address(msg.sender)] = block.timestamp
                require ((block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) / 5) + sub_0b86deb9[stor5[address(msg.sender)]] >= sub_0b86deb9[stor5[address(msg.sender)]]
                sub_0b86deb9[stor5[address(msg.sender)]] += (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) / 5
}

function produceWine() {
    require stor0
    require lastHarvest[address(msg.sender)] <= block.timestamp
    require 1 <= myLandMultiplier[address(msg.sender)]
    require (myLandMultiplier[address(msg.sender)] - 1 / 5) + 1 >= 1
    if not sub_5f7d35a9[address(msg.sender)]:
        if block.timestamp - lastHarvest[address(msg.sender)]:
            require not 0 / block.timestamp - lastHarvest[address(msg.sender)]
        require sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
        if not sub_0b86deb9[address(msg.sender)]:
            require grapesToProduceBottle
            sub_0b86deb9[address(msg.sender)] = 0
            lastHarvest[address(msg.sender)] = block.timestamp
            require 240 * 24 * 3600 * 0 / grapesToProduceBottle / 240 * 24 * 3600 == 0 / grapesToProduceBottle
            require grapesToProduceBottle + (240 * 24 * 3600 * 0 / grapesToProduceBottle) >= 240 * 24 * 3600 * 0 / grapesToProduceBottle
            grapesToProduceBottle += 240 * 24 * 3600 * 0 / grapesToProduceBottle
            require (0 / grapesToProduceBottle) + myWine[address(msg.sender)] >= myWine[address(msg.sender)]
            myWine[address(msg.sender)] += 0 / grapesToProduceBottle
        else:
            require wineProductionRate[address(msg.sender)] * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)] == wineProductionRate[address(msg.sender)]
            require grapesToProduceBottle
            sub_0b86deb9[address(msg.sender)] = 0
            lastHarvest[address(msg.sender)] = block.timestamp
            require 240 * 24 * 3600 * wineProductionRate[address(msg.sender)] * sub_0b86deb9[address(msg.sender)] / grapesToProduceBottle / 240 * 24 * 3600 == wineProductionRate[address(msg.sender)] * sub_0b86deb9[address(msg.sender)] / grapesToProduceBottle
            require grapesToProduceBottle + (240 * 24 * 3600 * wineProductionRate[address(msg.sender)] * sub_0b86deb9[address(msg.sender)] / grapesToProduceBottle) >= 240 * 24 * 3600 * wineProductionRate[address(msg.sender)] * sub_0b86deb9[address(msg.sender)] / grapesToProduceBottle
            grapesToProduceBottle += 240 * 24 * 3600 * wineProductionRate[address(msg.sender)] * sub_0b86deb9[address(msg.sender)] / grapesToProduceBottle
            require (wineProductionRate[address(msg.sender)] * sub_0b86deb9[address(msg.sender)] / grapesToProduceBottle) + myWine[address(msg.sender)] >= myWine[address(msg.sender)]
            myWine[address(msg.sender)] += wineProductionRate[address(msg.sender)] * sub_0b86deb9[address(msg.sender)] / grapesToProduceBottle
    else:
        require sub_5f7d35a9[address(msg.sender)] + (myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) / sub_5f7d35a9[address(msg.sender)] == (myLandMultiplier[address(msg.sender)] - 1 / 5) + 1
        if not block.timestamp - lastHarvest[address(msg.sender)]:
            require sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
            if not sub_0b86deb9[address(msg.sender)]:
                require grapesToProduceBottle
                sub_0b86deb9[address(msg.sender)] = 0
                lastHarvest[address(msg.sender)] = block.timestamp
                require 240 * 24 * 3600 * 0 / grapesToProduceBottle / 240 * 24 * 3600 == 0 / grapesToProduceBottle
                require grapesToProduceBottle + (240 * 24 * 3600 * 0 / grapesToProduceBottle) >= 240 * 24 * 3600 * 0 / grapesToProduceBottle
                grapesToProduceBottle += 240 * 24 * 3600 * 0 / grapesToProduceBottle
                require (0 / grapesToProduceBottle) + myWine[address(msg.sender)] >= myWine[address(msg.sender)]
                myWine[address(msg.sender)] += 0 / grapesToProduceBottle
            else:
                require wineProductionRate[address(msg.sender)] * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)] == wineProductionRate[address(msg.sender)]
                require grapesToProduceBottle
                sub_0b86deb9[address(msg.sender)] = 0
                lastHarvest[address(msg.sender)] = block.timestamp
                require 240 * 24 * 3600 * wineProductionRate[address(msg.sender)] * sub_0b86deb9[address(msg.sender)] / grapesToProduceBottle / 240 * 24 * 3600 == wineProductionRate[address(msg.sender)] * sub_0b86deb9[address(msg.sender)] / grapesToProduceBottle
                require grapesToProduceBottle + (240 * 24 * 3600 * wineProductionRate[address(msg.sender)] * sub_0b86deb9[address(msg.sender)] / grapesToProduceBottle) >= 240 * 24 * 3600 * wineProductionRate[address(msg.sender)] * sub_0b86deb9[address(msg.sender)] / grapesToProduceBottle
                grapesToProduceBottle += 240 * 24 * 3600 * wineProductionRate[address(msg.sender)] * sub_0b86deb9[address(msg.sender)] / grapesToProduceBottle
                require (wineProductionRate[address(msg.sender)] * sub_0b86deb9[address(msg.sender)] / grapesToProduceBottle) + myWine[address(msg.sender)] >= myWine[address(msg.sender)]
                myWine[address(msg.sender)] += wineProductionRate[address(msg.sender)] * sub_0b86deb9[address(msg.sender)] / grapesToProduceBottle
        else:
            require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) / block.timestamp - lastHarvest[address(msg.sender)] == sub_5f7d35a9[address(msg.sender)] + (myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)])
            require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
            if not (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]:
                require grapesToProduceBottle
                sub_0b86deb9[address(msg.sender)] = 0
                lastHarvest[address(msg.sender)] = block.timestamp
                require 240 * 24 * 3600 * 0 / grapesToProduceBottle / 240 * 24 * 3600 == 0 / grapesToProduceBottle
                require grapesToProduceBottle + (240 * 24 * 3600 * 0 / grapesToProduceBottle) >= 240 * 24 * 3600 * 0 / grapesToProduceBottle
                grapesToProduceBottle += 240 * 24 * 3600 * 0 / grapesToProduceBottle
                require (0 / grapesToProduceBottle) + myWine[address(msg.sender)] >= myWine[address(msg.sender)]
                myWine[address(msg.sender)] += 0 / grapesToProduceBottle
            else:
                require (block.timestamp * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) + (sub_0b86deb9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] == wineProductionRate[address(msg.sender)]
                require grapesToProduceBottle
                sub_0b86deb9[address(msg.sender)] = 0
                lastHarvest[address(msg.sender)] = block.timestamp
                require 240 * 24 * 3600 * (block.timestamp * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) + (sub_0b86deb9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) / grapesToProduceBottle / 240 * 24 * 3600 == (block.timestamp * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) + (sub_0b86deb9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) / grapesToProduceBottle
                require grapesToProduceBottle + (240 * 24 * 3600 * (block.timestamp * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) + (sub_0b86deb9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) / grapesToProduceBottle) >= 240 * 24 * 3600 * (block.timestamp * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) + (sub_0b86deb9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) / grapesToProduceBottle
                grapesToProduceBottle += 240 * 24 * 3600 * (block.timestamp * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) + (sub_0b86deb9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) / grapesToProduceBottle
                require ((block.timestamp * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) + (sub_0b86deb9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) / grapesToProduceBottle) + myWine[address(msg.sender)] >= myWine[address(msg.sender)]
                myWine[address(msg.sender)] += (block.timestamp * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) + (sub_0b86deb9[address(msg.sender)] * wineProductionRate[address(msg.sender)]) / grapesToProduceBottle
}

function buyGrapes() payable {
    require stor0
    require msg.value <= eth.balance(this.address)
    require msg.value <= eth.balance(this.address) - msg.value
    require sub_5f7d35a9[address(msg.sender)] > 0
    require msg.value <= eth.balance(this.address)
    if not marketGrapes:
        if not eth.balance(this.address) - msg.value:
            if not msg.value:
                require msg.value
                require (0 / msg.value) + 5000 >= 0 / msg.value
                require (0 / msg.value) + 5000
                if not 0 / (0 / msg.value) + 5000:
                    require 0 <= 0 / (0 / msg.value) + 5000
                    require 0 / (0 / msg.value) + 5000 <= marketGrapes
                    marketGrapes -= 0 / (0 / msg.value) + 5000
                    if not msg.value:
                        call ceoWalletAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call ceoWalletAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (0 / (0 / msg.value) + 5000) + sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
                    sub_0b86deb9[address(msg.sender)] += 0 / (0 / msg.value) + 5000
                else:
                    require 3 * 0 / (0 / msg.value) + 5000 / 0 / (0 / msg.value) + 5000 == 3
                    require 3 * 0 / (0 / msg.value) + 5000 / 100 <= 0 / (0 / msg.value) + 5000
                    require (0 / (0 / msg.value) + 5000) - (3 * 0 / (0 / msg.value) + 5000 / 100) <= marketGrapes
                    marketGrapes = marketGrapes - (0 / (0 / msg.value) + 5000) + (3 * 0 / (0 / msg.value) + 5000 / 100)
                    if not msg.value:
                        call ceoWalletAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call ceoWalletAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (0 / (0 / msg.value) + 5000) - (3 * 0 / (0 / msg.value) + 5000 / 100) + sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
                    sub_0b86deb9[address(msg.sender)] = (0 / (0 / msg.value) + 5000) - (3 * 0 / (0 / msg.value) + 5000 / 100) + sub_0b86deb9[address(msg.sender)]
            else:
                require 5000 * msg.value / msg.value == 5000
                require 5000 * msg.value >= 0
                require msg.value
                require (5000 * msg.value / msg.value) + 5000 >= 5000 * msg.value / msg.value
                require (5000 * msg.value / msg.value) + 5000
                if not 0 / (5000 * msg.value / msg.value) + 5000:
                    require 0 <= 0 / (5000 * msg.value / msg.value) + 5000
                    require 0 / (5000 * msg.value / msg.value) + 5000 <= marketGrapes
                    marketGrapes -= 0 / (5000 * msg.value / msg.value) + 5000
                    if not msg.value:
                        call ceoWalletAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call ceoWalletAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (0 / (5000 * msg.value / msg.value) + 5000) + sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
                    sub_0b86deb9[address(msg.sender)] += 0 / (5000 * msg.value / msg.value) + 5000
                else:
                    require 3 * 0 / (5000 * msg.value / msg.value) + 5000 / 0 / (5000 * msg.value / msg.value) + 5000 == 3
                    require 3 * 0 / (5000 * msg.value / msg.value) + 5000 / 100 <= 0 / (5000 * msg.value / msg.value) + 5000
                    require (0 / (5000 * msg.value / msg.value) + 5000) - (3 * 0 / (5000 * msg.value / msg.value) + 5000 / 100) <= marketGrapes
                    marketGrapes = marketGrapes - (0 / (5000 * msg.value / msg.value) + 5000) + (3 * 0 / (5000 * msg.value / msg.value) + 5000 / 100)
                    if not msg.value:
                        call ceoWalletAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call ceoWalletAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (0 / (5000 * msg.value / msg.value) + 5000) - (3 * 0 / (5000 * msg.value / msg.value) + 5000 / 100) + sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
                    sub_0b86deb9[address(msg.sender)] = (0 / (5000 * msg.value / msg.value) + 5000) - (3 * 0 / (5000 * msg.value / msg.value) + 5000 / 100) + sub_0b86deb9[address(msg.sender)]
        else:
            require (10000 * eth.balance(this.address)) - (10000 * msg.value) / eth.balance(this.address) - msg.value == 10000
            if not msg.value:
                require msg.value
                require ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000 >= (10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value
                require ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000
                if not 0 / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000:
                    require 0 <= 0 / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000
                    require 0 / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000 <= marketGrapes
                    marketGrapes -= 0 / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000
                    if not msg.value:
                        call ceoWalletAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call ceoWalletAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (0 / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000) + sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
                    sub_0b86deb9[address(msg.sender)] += 0 / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000
                else:
                    require 3 * 0 / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000 / 0 / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000 == 3
                    require 3 * 0 / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000 / 100 <= 0 / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000
                    require (0 / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000) - (3 * 0 / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000 / 100) <= marketGrapes
                    marketGrapes = marketGrapes - (0 / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000) + (3 * 0 / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000 / 100)
                    if not msg.value:
                        call ceoWalletAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call ceoWalletAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (0 / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000) - (3 * 0 / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000 / 100) + sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
                    sub_0b86deb9[address(msg.sender)] = (0 / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000) - (3 * 0 / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000 / 100) + sub_0b86deb9[address(msg.sender)]
            else:
                require 5000 * msg.value / msg.value == 5000
                require -5000 * msg.value >= -10000 * msg.value
                require msg.value
                require ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000 >= (-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value
                require ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000
                if not 0 / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000:
                    require 0 <= 0 / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000
                    require 0 / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000 <= marketGrapes
                    marketGrapes -= 0 / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000
                    if not msg.value:
                        call ceoWalletAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call ceoWalletAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (0 / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000) + sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
                    sub_0b86deb9[address(msg.sender)] += 0 / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000
                else:
                    require 3 * 0 / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000 / 0 / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000 == 3
                    require 3 * 0 / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000 / 100 <= 0 / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000
                    require (0 / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000) - (3 * 0 / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000 / 100) <= marketGrapes
                    marketGrapes = marketGrapes - (0 / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000) + (3 * 0 / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000 / 100)
                    if not msg.value:
                        call ceoWalletAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call ceoWalletAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (0 / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000) - (3 * 0 / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000 / 100) + sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
                    sub_0b86deb9[address(msg.sender)] = (0 / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000) - (3 * 0 / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000 / 100) + sub_0b86deb9[address(msg.sender)]
    else:
        require 10000 * marketGrapes / marketGrapes == 10000
        if not eth.balance(this.address) - msg.value:
            if not msg.value:
                require msg.value
                require (0 / msg.value) + 5000 >= 0 / msg.value
                require (0 / msg.value) + 5000
                if not 10000 * marketGrapes / (0 / msg.value) + 5000:
                    require 0 <= 10000 * marketGrapes / (0 / msg.value) + 5000
                    require 10000 * marketGrapes / (0 / msg.value) + 5000 <= marketGrapes
                    marketGrapes -= 10000 * marketGrapes / (0 / msg.value) + 5000
                    if not msg.value:
                        call ceoWalletAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call ceoWalletAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (10000 * marketGrapes / (0 / msg.value) + 5000) + sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
                    sub_0b86deb9[address(msg.sender)] += 10000 * marketGrapes / (0 / msg.value) + 5000
                else:
                    require 3 * 10000 * marketGrapes / (0 / msg.value) + 5000 / 10000 * marketGrapes / (0 / msg.value) + 5000 == 3
                    require 3 * 10000 * marketGrapes / (0 / msg.value) + 5000 / 100 <= 10000 * marketGrapes / (0 / msg.value) + 5000
                    require (10000 * marketGrapes / (0 / msg.value) + 5000) - (3 * 10000 * marketGrapes / (0 / msg.value) + 5000 / 100) <= marketGrapes
                    marketGrapes = marketGrapes - (10000 * marketGrapes / (0 / msg.value) + 5000) + (3 * 10000 * marketGrapes / (0 / msg.value) + 5000 / 100)
                    if not msg.value:
                        call ceoWalletAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call ceoWalletAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (10000 * marketGrapes / (0 / msg.value) + 5000) - (3 * 10000 * marketGrapes / (0 / msg.value) + 5000 / 100) + sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
                    sub_0b86deb9[address(msg.sender)] = (10000 * marketGrapes / (0 / msg.value) + 5000) - (3 * 10000 * marketGrapes / (0 / msg.value) + 5000 / 100) + sub_0b86deb9[address(msg.sender)]
            else:
                require 5000 * msg.value / msg.value == 5000
                require 5000 * msg.value >= 0
                require msg.value
                require (5000 * msg.value / msg.value) + 5000 >= 5000 * msg.value / msg.value
                require (5000 * msg.value / msg.value) + 5000
                if not 10000 * marketGrapes / (5000 * msg.value / msg.value) + 5000:
                    require 0 <= 10000 * marketGrapes / (5000 * msg.value / msg.value) + 5000
                    require 10000 * marketGrapes / (5000 * msg.value / msg.value) + 5000 <= marketGrapes
                    marketGrapes -= 10000 * marketGrapes / (5000 * msg.value / msg.value) + 5000
                    if not msg.value:
                        call ceoWalletAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call ceoWalletAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (10000 * marketGrapes / (5000 * msg.value / msg.value) + 5000) + sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
                    sub_0b86deb9[address(msg.sender)] += 10000 * marketGrapes / (5000 * msg.value / msg.value) + 5000
                else:
                    require 3 * 10000 * marketGrapes / (5000 * msg.value / msg.value) + 5000 / 10000 * marketGrapes / (5000 * msg.value / msg.value) + 5000 == 3
                    require 3 * 10000 * marketGrapes / (5000 * msg.value / msg.value) + 5000 / 100 <= 10000 * marketGrapes / (5000 * msg.value / msg.value) + 5000
                    require (10000 * marketGrapes / (5000 * msg.value / msg.value) + 5000) - (3 * 10000 * marketGrapes / (5000 * msg.value / msg.value) + 5000 / 100) <= marketGrapes
                    marketGrapes = marketGrapes - (10000 * marketGrapes / (5000 * msg.value / msg.value) + 5000) + (3 * 10000 * marketGrapes / (5000 * msg.value / msg.value) + 5000 / 100)
                    if not msg.value:
                        call ceoWalletAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call ceoWalletAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (10000 * marketGrapes / (5000 * msg.value / msg.value) + 5000) - (3 * 10000 * marketGrapes / (5000 * msg.value / msg.value) + 5000 / 100) + sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
                    sub_0b86deb9[address(msg.sender)] = (10000 * marketGrapes / (5000 * msg.value / msg.value) + 5000) - (3 * 10000 * marketGrapes / (5000 * msg.value / msg.value) + 5000 / 100) + sub_0b86deb9[address(msg.sender)]
        else:
            require (10000 * eth.balance(this.address)) - (10000 * msg.value) / eth.balance(this.address) - msg.value == 10000
            if not msg.value:
                require msg.value
                require ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000 >= (10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value
                require ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000
                if not 10000 * marketGrapes / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000:
                    require 0 <= 10000 * marketGrapes / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000
                    require 10000 * marketGrapes / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000 <= marketGrapes
                    marketGrapes -= 10000 * marketGrapes / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000
                    if not msg.value:
                        call ceoWalletAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call ceoWalletAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (10000 * marketGrapes / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000) + sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
                    sub_0b86deb9[address(msg.sender)] += 10000 * marketGrapes / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000
                else:
                    require 3 * 10000 * marketGrapes / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000 / 10000 * marketGrapes / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000 == 3
                    require 3 * 10000 * marketGrapes / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000 / 100 <= 10000 * marketGrapes / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000
                    require (10000 * marketGrapes / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000) - (3 * 10000 * marketGrapes / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000 / 100) <= marketGrapes
                    marketGrapes = marketGrapes - (10000 * marketGrapes / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000) + (3 * 10000 * marketGrapes / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000 / 100)
                    if not msg.value:
                        call ceoWalletAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call ceoWalletAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (10000 * marketGrapes / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000) - (3 * 10000 * marketGrapes / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000 / 100) + sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
                    sub_0b86deb9[address(msg.sender)] = (10000 * marketGrapes / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000) - (3 * 10000 * marketGrapes / ((10000 * eth.balance(this.address)) - (10000 * msg.value) / msg.value) + 5000 / 100) + sub_0b86deb9[address(msg.sender)]
            else:
                require 5000 * msg.value / msg.value == 5000
                require -5000 * msg.value >= -10000 * msg.value
                require msg.value
                require ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000 >= (-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value
                require ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000
                if not 10000 * marketGrapes / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000:
                    require 0 <= 10000 * marketGrapes / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000
                    require 10000 * marketGrapes / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000 <= marketGrapes
                    marketGrapes -= 10000 * marketGrapes / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000
                    if not msg.value:
                        call ceoWalletAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call ceoWalletAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (10000 * marketGrapes / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000) + sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
                    sub_0b86deb9[address(msg.sender)] += 10000 * marketGrapes / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000
                else:
                    require 3 * 10000 * marketGrapes / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000 / 10000 * marketGrapes / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000 == 3
                    require 3 * 10000 * marketGrapes / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000 / 100 <= 10000 * marketGrapes / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000
                    require (10000 * marketGrapes / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000) - (3 * 10000 * marketGrapes / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000 / 100) <= marketGrapes
                    marketGrapes = marketGrapes - (10000 * marketGrapes / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000) + (3 * 10000 * marketGrapes / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000 / 100)
                    if not msg.value:
                        call ceoWalletAddress with:
                             gas 2300 wei
                    else:
                        require 3 * msg.value / msg.value == 3
                        call ceoWalletAddress with:
                           value 3 * msg.value / 100 wei
                             gas 2300 * is_zero(value) wei
                    require ext_call.success
                    require (10000 * marketGrapes / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000) - (3 * 10000 * marketGrapes / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000 / 100) + sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
                    sub_0b86deb9[address(msg.sender)] = (10000 * marketGrapes / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000) - (3 * 10000 * marketGrapes / ((-5000 * msg.value) + (10000 * eth.balance(this.address)) / msg.value) + 5000 / 100) + sub_0b86deb9[address(msg.sender)]
}

function sellGrapes() {
    require stor0
    require lastHarvest[address(msg.sender)] <= block.timestamp
    require 1 <= myLandMultiplier[address(msg.sender)]
    require (myLandMultiplier[address(msg.sender)] - 1 / 5) + 1 >= 1
    if not sub_5f7d35a9[address(msg.sender)]:
        if block.timestamp - lastHarvest[address(msg.sender)]:
            require not 0 / block.timestamp - lastHarvest[address(msg.sender)]
        require sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
        if sub_0b86deb9[address(msg.sender)] <= marketGrapes:
            if not eth.balance(this.address):
                if not marketGrapes:
                    if not sub_0b86deb9[address(msg.sender)]:
                        require sub_0b86deb9[address(msg.sender)]
                        require (0 / sub_0b86deb9[address(msg.sender)]) + 5000 >= 0 / sub_0b86deb9[address(msg.sender)]
                        require (0 / sub_0b86deb9[address(msg.sender)]) + 5000
                        if not 0 / (0 / sub_0b86deb9[address(msg.sender)]) + 5000:
                            require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] = 0
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                            marketGrapes += sub_0b86deb9[address(msg.sender)]
                            call ceoWalletAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= 0 / (0 / sub_0b86deb9[address(msg.sender)]) + 5000
                            call msg.sender with:
                               value 0 / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * 0 / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 / 0 / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                            require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] = 0
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                            marketGrapes += sub_0b86deb9[address(msg.sender)]
                            call ceoWalletAddress with:
                               value 3 * 0 / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 3 * 0 / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 0 / (0 / sub_0b86deb9[address(msg.sender)]) + 5000
                            call msg.sender with:
                               value (0 / (0 / sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 0 / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require 5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)] == 5000
                        require 5000 * sub_0b86deb9[address(msg.sender)] >= 0
                        require sub_0b86deb9[address(msg.sender)]
                        require (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 >= 5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]
                        require (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000
                        if not 0 / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000:
                            require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] = 0
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                            marketGrapes += sub_0b86deb9[address(msg.sender)]
                            call ceoWalletAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= 0 / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000
                            call msg.sender with:
                               value 0 / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * 0 / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 / 0 / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                            require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] = 0
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                            marketGrapes += sub_0b86deb9[address(msg.sender)]
                            call ceoWalletAddress with:
                               value 3 * 0 / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 3 * 0 / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 0 / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000
                            call msg.sender with:
                               value (0 / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 0 / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require 10000 * marketGrapes / marketGrapes == 10000
                    if not sub_0b86deb9[address(msg.sender)]:
                        require 10000 * marketGrapes >= 10000 * marketGrapes
                        require sub_0b86deb9[address(msg.sender)]
                        require (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 >= 10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]
                        require (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000
                        if not 0 / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000:
                            require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] = 0
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                            marketGrapes += sub_0b86deb9[address(msg.sender)]
                            call ceoWalletAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= 0 / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000
                            call msg.sender with:
                               value 0 / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * 0 / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 / 0 / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                            require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] = 0
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                            marketGrapes += sub_0b86deb9[address(msg.sender)]
                            call ceoWalletAddress with:
                               value 3 * 0 / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 3 * 0 / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 0 / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000
                            call msg.sender with:
                               value (0 / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 0 / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require 5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)] == 5000
                        require (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) >= 10000 * marketGrapes
                        require sub_0b86deb9[address(msg.sender)]
                        require ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 >= (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]
                        require ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000
                        if not 0 / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000:
                            require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] = 0
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                            marketGrapes += sub_0b86deb9[address(msg.sender)]
                            call ceoWalletAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= 0 / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000
                            call msg.sender with:
                               value 0 / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * 0 / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 / 0 / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                            require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] = 0
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                            marketGrapes += sub_0b86deb9[address(msg.sender)]
                            call ceoWalletAddress with:
                               value 3 * 0 / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 3 * 0 / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 0 / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000
                            call msg.sender with:
                               value (0 / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 0 / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                 gas 2300 * is_zero(value) wei
            else:
                require 10000 * eth.balance(this.address) / eth.balance(this.address) == 10000
                if not marketGrapes:
                    if not sub_0b86deb9[address(msg.sender)]:
                        require sub_0b86deb9[address(msg.sender)]
                        require (0 / sub_0b86deb9[address(msg.sender)]) + 5000 >= 0 / sub_0b86deb9[address(msg.sender)]
                        require (0 / sub_0b86deb9[address(msg.sender)]) + 5000
                        if not 10000 * eth.balance(this.address) / (0 / sub_0b86deb9[address(msg.sender)]) + 5000:
                            require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] = 0
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                            marketGrapes += sub_0b86deb9[address(msg.sender)]
                            call ceoWalletAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= 10000 * eth.balance(this.address) / (0 / sub_0b86deb9[address(msg.sender)]) + 5000
                            call msg.sender with:
                               value 10000 * eth.balance(this.address) / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * 10000 * eth.balance(this.address) / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 / 10000 * eth.balance(this.address) / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                            require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] = 0
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                            marketGrapes += sub_0b86deb9[address(msg.sender)]
                            call ceoWalletAddress with:
                               value 3 * 10000 * eth.balance(this.address) / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 3 * 10000 * eth.balance(this.address) / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 10000 * eth.balance(this.address) / (0 / sub_0b86deb9[address(msg.sender)]) + 5000
                            call msg.sender with:
                               value (10000 * eth.balance(this.address) / (0 / sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 10000 * eth.balance(this.address) / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require 5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)] == 5000
                        require 5000 * sub_0b86deb9[address(msg.sender)] >= 0
                        require sub_0b86deb9[address(msg.sender)]
                        require (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 >= 5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]
                        require (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000
                        if not 10000 * eth.balance(this.address) / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000:
                            require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] = 0
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                            marketGrapes += sub_0b86deb9[address(msg.sender)]
                            call ceoWalletAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= 10000 * eth.balance(this.address) / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000
                            call msg.sender with:
                               value 10000 * eth.balance(this.address) / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * 10000 * eth.balance(this.address) / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 / 10000 * eth.balance(this.address) / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                            require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] = 0
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                            marketGrapes += sub_0b86deb9[address(msg.sender)]
                            call ceoWalletAddress with:
                               value 3 * 10000 * eth.balance(this.address) / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 3 * 10000 * eth.balance(this.address) / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 10000 * eth.balance(this.address) / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000
                            call msg.sender with:
                               value (10000 * eth.balance(this.address) / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 10000 * eth.balance(this.address) / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                 gas 2300 * is_zero(value) wei
                else:
                    require 10000 * marketGrapes / marketGrapes == 10000
                    if not sub_0b86deb9[address(msg.sender)]:
                        require 10000 * marketGrapes >= 10000 * marketGrapes
                        require sub_0b86deb9[address(msg.sender)]
                        require (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 >= 10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]
                        require (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000
                        if not 10000 * eth.balance(this.address) / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000:
                            require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] = 0
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                            marketGrapes += sub_0b86deb9[address(msg.sender)]
                            call ceoWalletAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= 10000 * eth.balance(this.address) / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000
                            call msg.sender with:
                               value 10000 * eth.balance(this.address) / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 / 10000 * eth.balance(this.address) / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                            require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] = 0
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                            marketGrapes += sub_0b86deb9[address(msg.sender)]
                            call ceoWalletAddress with:
                               value 3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 10000 * eth.balance(this.address) / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000
                            call msg.sender with:
                               value (10000 * eth.balance(this.address) / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require 5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)] == 5000
                        require (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) >= 10000 * marketGrapes
                        require sub_0b86deb9[address(msg.sender)]
                        require ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 >= (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]
                        require ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000
                        if not 10000 * eth.balance(this.address) / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000:
                            require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] = 0
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                            marketGrapes += sub_0b86deb9[address(msg.sender)]
                            call ceoWalletAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= 10000 * eth.balance(this.address) / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000
                            call msg.sender with:
                               value 10000 * eth.balance(this.address) / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * 10000 * eth.balance(this.address) / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 / 10000 * eth.balance(this.address) / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                            require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] = 0
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                            marketGrapes += sub_0b86deb9[address(msg.sender)]
                            call ceoWalletAddress with:
                               value 3 * 10000 * eth.balance(this.address) / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 3 * 10000 * eth.balance(this.address) / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 10000 * eth.balance(this.address) / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000
                            call msg.sender with:
                               value (10000 * eth.balance(this.address) / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 10000 * eth.balance(this.address) / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                 gas 2300 * is_zero(value) wei
        else:
            if not eth.balance(this.address):
                if not marketGrapes:
                    require marketGrapes
                    require (0 / marketGrapes) + 5000 >= 0 / marketGrapes
                    require (0 / marketGrapes) + 5000
                    if not 0 / (0 / marketGrapes) + 5000:
                        require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                        sub_0b86deb9[address(msg.sender)] -= marketGrapes
                        lastHarvest[address(msg.sender)] = block.timestamp
                        require 2 * marketGrapes >= marketGrapes
                        bool(stor6.field_0) = 0
                        uint255(stor6.field_1) = uint255(stor6.field_0)
                        call ceoWalletAddress with:
                             gas 2300 wei
                        require ext_call.success
                        require 0 <= 0 / (0 / marketGrapes) + 5000
                        call msg.sender with:
                           value 0 / (0 / marketGrapes) + 5000 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 3 * 0 / (0 / marketGrapes) + 5000 / 0 / (0 / marketGrapes) + 5000 == 3
                        require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                        sub_0b86deb9[address(msg.sender)] -= marketGrapes
                        lastHarvest[address(msg.sender)] = block.timestamp
                        require 2 * marketGrapes >= marketGrapes
                        bool(stor6.field_0) = 0
                        uint255(stor6.field_1) = uint255(stor6.field_0)
                        call ceoWalletAddress with:
                           value 3 * 0 / (0 / marketGrapes) + 5000 / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require 3 * 0 / (0 / marketGrapes) + 5000 / 100 <= 0 / (0 / marketGrapes) + 5000
                        call msg.sender with:
                           value (0 / (0 / marketGrapes) + 5000) - (3 * 0 / (0 / marketGrapes) + 5000 / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require 10000 * marketGrapes / marketGrapes == 10000
                    if not marketGrapes:
                        require 10000 * marketGrapes >= 10000 * marketGrapes
                        require marketGrapes
                        require (10000 * marketGrapes / marketGrapes) + 5000 >= 10000 * marketGrapes / marketGrapes
                        require (10000 * marketGrapes / marketGrapes) + 5000
                        if not 0 / (10000 * marketGrapes / marketGrapes) + 5000:
                            require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] -= marketGrapes
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require 2 * marketGrapes >= marketGrapes
                            bool(stor6.field_0) = 0
                            uint255(stor6.field_1) = uint255(stor6.field_0)
                            call ceoWalletAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= 0 / (10000 * marketGrapes / marketGrapes) + 5000
                            call msg.sender with:
                               value 0 / (10000 * marketGrapes / marketGrapes) + 5000 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * 0 / (10000 * marketGrapes / marketGrapes) + 5000 / 0 / (10000 * marketGrapes / marketGrapes) + 5000 == 3
                            require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] -= marketGrapes
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require 2 * marketGrapes >= marketGrapes
                            bool(stor6.field_0) = 0
                            uint255(stor6.field_1) = uint255(stor6.field_0)
                            call ceoWalletAddress with:
                               value 3 * 0 / (10000 * marketGrapes / marketGrapes) + 5000 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 3 * 0 / (10000 * marketGrapes / marketGrapes) + 5000 / 100 <= 0 / (10000 * marketGrapes / marketGrapes) + 5000
                            call msg.sender with:
                               value (0 / (10000 * marketGrapes / marketGrapes) + 5000) - (3 * 0 / (10000 * marketGrapes / marketGrapes) + 5000 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require 5000 * marketGrapes / marketGrapes == 5000
                        require 15000 * marketGrapes >= 10000 * marketGrapes
                        require marketGrapes
                        require (15000 * marketGrapes / marketGrapes) + 5000 >= 15000 * marketGrapes / marketGrapes
                        require (15000 * marketGrapes / marketGrapes) + 5000
                        if not 0 / (15000 * marketGrapes / marketGrapes) + 5000:
                            require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] -= marketGrapes
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require 2 * marketGrapes >= marketGrapes
                            bool(stor6.field_0) = 0
                            uint255(stor6.field_1) = uint255(stor6.field_0)
                            call ceoWalletAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= 0 / (15000 * marketGrapes / marketGrapes) + 5000
                            call msg.sender with:
                               value 0 / (15000 * marketGrapes / marketGrapes) + 5000 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * 0 / (15000 * marketGrapes / marketGrapes) + 5000 / 0 / (15000 * marketGrapes / marketGrapes) + 5000 == 3
                            require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] -= marketGrapes
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require 2 * marketGrapes >= marketGrapes
                            bool(stor6.field_0) = 0
                            uint255(stor6.field_1) = uint255(stor6.field_0)
                            call ceoWalletAddress with:
                               value 3 * 0 / (15000 * marketGrapes / marketGrapes) + 5000 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 3 * 0 / (15000 * marketGrapes / marketGrapes) + 5000 / 100 <= 0 / (15000 * marketGrapes / marketGrapes) + 5000
                            call msg.sender with:
                               value (0 / (15000 * marketGrapes / marketGrapes) + 5000) - (3 * 0 / (15000 * marketGrapes / marketGrapes) + 5000 / 100) wei
                                 gas 2300 * is_zero(value) wei
            else:
                require 10000 * eth.balance(this.address) / eth.balance(this.address) == 10000
                if not marketGrapes:
                    require marketGrapes
                    require (0 / marketGrapes) + 5000 >= 0 / marketGrapes
                    require (0 / marketGrapes) + 5000
                    if not 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000:
                        require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                        sub_0b86deb9[address(msg.sender)] -= marketGrapes
                        lastHarvest[address(msg.sender)] = block.timestamp
                        require 2 * marketGrapes >= marketGrapes
                        bool(stor6.field_0) = 0
                        uint255(stor6.field_1) = uint255(stor6.field_0)
                        call ceoWalletAddress with:
                             gas 2300 wei
                        require ext_call.success
                        require 0 <= 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000
                        call msg.sender with:
                           value 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000 wei
                             gas 2300 * is_zero(value) wei
                    else:
                        require 3 * 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000 / 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000 == 3
                        require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                        sub_0b86deb9[address(msg.sender)] -= marketGrapes
                        lastHarvest[address(msg.sender)] = block.timestamp
                        require 2 * marketGrapes >= marketGrapes
                        bool(stor6.field_0) = 0
                        uint255(stor6.field_1) = uint255(stor6.field_0)
                        call ceoWalletAddress with:
                           value 3 * 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000 / 100 wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        require 3 * 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000 / 100 <= 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000
                        call msg.sender with:
                           value (10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000) - (3 * 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000 / 100) wei
                             gas 2300 * is_zero(value) wei
                else:
                    require 10000 * marketGrapes / marketGrapes == 10000
                    if not marketGrapes:
                        require 10000 * marketGrapes >= 10000 * marketGrapes
                        require marketGrapes
                        require (10000 * marketGrapes / marketGrapes) + 5000 >= 10000 * marketGrapes / marketGrapes
                        require (10000 * marketGrapes / marketGrapes) + 5000
                        if not 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000:
                            require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] -= marketGrapes
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require 2 * marketGrapes >= marketGrapes
                            bool(stor6.field_0) = 0
                            uint255(stor6.field_1) = uint255(stor6.field_0)
                            call ceoWalletAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000
                            call msg.sender with:
                               value 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000 / 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000 == 3
                            require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] -= marketGrapes
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require 2 * marketGrapes >= marketGrapes
                            bool(stor6.field_0) = 0
                            uint255(stor6.field_1) = uint255(stor6.field_0)
                            call ceoWalletAddress with:
                               value 3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000 / 100 <= 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000
                            call msg.sender with:
                               value (10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000) - (3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require 5000 * marketGrapes / marketGrapes == 5000
                        require 15000 * marketGrapes >= 10000 * marketGrapes
                        require marketGrapes
                        require (15000 * marketGrapes / marketGrapes) + 5000 >= 15000 * marketGrapes / marketGrapes
                        require (15000 * marketGrapes / marketGrapes) + 5000
                        if not 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000:
                            require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] -= marketGrapes
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require 2 * marketGrapes >= marketGrapes
                            bool(stor6.field_0) = 0
                            uint255(stor6.field_1) = uint255(stor6.field_0)
                            call ceoWalletAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000
                            call msg.sender with:
                               value 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000 / 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000 == 3
                            require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] -= marketGrapes
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require 2 * marketGrapes >= marketGrapes
                            bool(stor6.field_0) = 0
                            uint255(stor6.field_1) = uint255(stor6.field_0)
                            call ceoWalletAddress with:
                               value 3 * 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 3 * 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000 / 100 <= 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000
                            call msg.sender with:
                               value (10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000) - (3 * 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000 / 100) wei
                                 gas 2300 * is_zero(value) wei
    else:
        require sub_5f7d35a9[address(msg.sender)] + (myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) / sub_5f7d35a9[address(msg.sender)] == (myLandMultiplier[address(msg.sender)] - 1 / 5) + 1
        if not block.timestamp - lastHarvest[address(msg.sender)]:
            require sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
            if sub_0b86deb9[address(msg.sender)] <= marketGrapes:
                if not eth.balance(this.address):
                    if not marketGrapes:
                        if not sub_0b86deb9[address(msg.sender)]:
                            require sub_0b86deb9[address(msg.sender)]
                            require (0 / sub_0b86deb9[address(msg.sender)]) + 5000 >= 0 / sub_0b86deb9[address(msg.sender)]
                            require (0 / sub_0b86deb9[address(msg.sender)]) + 5000
                            if not 0 / (0 / sub_0b86deb9[address(msg.sender)]) + 5000:
                                require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = 0
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes += sub_0b86deb9[address(msg.sender)]
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 0 / (0 / sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value 0 / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 0 / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 / 0 / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                                require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = 0
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes += sub_0b86deb9[address(msg.sender)]
                                call ceoWalletAddress with:
                                   value 3 * 0 / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 0 / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 0 / (0 / sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value (0 / (0 / sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 0 / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require 5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)] == 5000
                            require 5000 * sub_0b86deb9[address(msg.sender)] >= 0
                            require sub_0b86deb9[address(msg.sender)]
                            require (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 >= 5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]
                            require (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000
                            if not 0 / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000:
                                require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = 0
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes += sub_0b86deb9[address(msg.sender)]
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 0 / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value 0 / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 0 / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 / 0 / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                                require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = 0
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes += sub_0b86deb9[address(msg.sender)]
                                call ceoWalletAddress with:
                                   value 3 * 0 / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 0 / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 0 / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value (0 / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 0 / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
                    else:
                        require 10000 * marketGrapes / marketGrapes == 10000
                        if not sub_0b86deb9[address(msg.sender)]:
                            require 10000 * marketGrapes >= 10000 * marketGrapes
                            require sub_0b86deb9[address(msg.sender)]
                            require (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 >= 10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]
                            require (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000
                            if not 0 / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000:
                                require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = 0
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes += sub_0b86deb9[address(msg.sender)]
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 0 / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value 0 / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 0 / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 / 0 / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                                require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = 0
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes += sub_0b86deb9[address(msg.sender)]
                                call ceoWalletAddress with:
                                   value 3 * 0 / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 0 / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 0 / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value (0 / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 0 / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require 5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)] == 5000
                            require (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) >= 10000 * marketGrapes
                            require sub_0b86deb9[address(msg.sender)]
                            require ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 >= (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]
                            require ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000
                            if not 0 / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000:
                                require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = 0
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes += sub_0b86deb9[address(msg.sender)]
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 0 / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value 0 / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 0 / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 / 0 / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                                require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = 0
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes += sub_0b86deb9[address(msg.sender)]
                                call ceoWalletAddress with:
                                   value 3 * 0 / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 0 / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 0 / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value (0 / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 0 / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
                else:
                    require 10000 * eth.balance(this.address) / eth.balance(this.address) == 10000
                    if not marketGrapes:
                        if not sub_0b86deb9[address(msg.sender)]:
                            require sub_0b86deb9[address(msg.sender)]
                            require (0 / sub_0b86deb9[address(msg.sender)]) + 5000 >= 0 / sub_0b86deb9[address(msg.sender)]
                            require (0 / sub_0b86deb9[address(msg.sender)]) + 5000
                            if not 10000 * eth.balance(this.address) / (0 / sub_0b86deb9[address(msg.sender)]) + 5000:
                                require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = 0
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes += sub_0b86deb9[address(msg.sender)]
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 10000 * eth.balance(this.address) / (0 / sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value 10000 * eth.balance(this.address) / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 10000 * eth.balance(this.address) / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 / 10000 * eth.balance(this.address) / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                                require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = 0
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes += sub_0b86deb9[address(msg.sender)]
                                call ceoWalletAddress with:
                                   value 3 * 10000 * eth.balance(this.address) / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 10000 * eth.balance(this.address) / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 10000 * eth.balance(this.address) / (0 / sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value (10000 * eth.balance(this.address) / (0 / sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 10000 * eth.balance(this.address) / (0 / sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require 5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)] == 5000
                            require 5000 * sub_0b86deb9[address(msg.sender)] >= 0
                            require sub_0b86deb9[address(msg.sender)]
                            require (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 >= 5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]
                            require (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000
                            if not 10000 * eth.balance(this.address) / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000:
                                require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = 0
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes += sub_0b86deb9[address(msg.sender)]
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 10000 * eth.balance(this.address) / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value 10000 * eth.balance(this.address) / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 10000 * eth.balance(this.address) / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 / 10000 * eth.balance(this.address) / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                                require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = 0
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes += sub_0b86deb9[address(msg.sender)]
                                call ceoWalletAddress with:
                                   value 3 * 10000 * eth.balance(this.address) / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 10000 * eth.balance(this.address) / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 10000 * eth.balance(this.address) / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value (10000 * eth.balance(this.address) / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 10000 * eth.balance(this.address) / (5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
                    else:
                        require 10000 * marketGrapes / marketGrapes == 10000
                        if not sub_0b86deb9[address(msg.sender)]:
                            require 10000 * marketGrapes >= 10000 * marketGrapes
                            require sub_0b86deb9[address(msg.sender)]
                            require (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 >= 10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]
                            require (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000
                            if not 10000 * eth.balance(this.address) / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000:
                                require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = 0
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes += sub_0b86deb9[address(msg.sender)]
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 10000 * eth.balance(this.address) / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value 10000 * eth.balance(this.address) / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 / 10000 * eth.balance(this.address) / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                                require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = 0
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes += sub_0b86deb9[address(msg.sender)]
                                call ceoWalletAddress with:
                                   value 3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 10000 * eth.balance(this.address) / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value (10000 * eth.balance(this.address) / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require 5000 * sub_0b86deb9[address(msg.sender)] / sub_0b86deb9[address(msg.sender)] == 5000
                            require (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) >= 10000 * marketGrapes
                            require sub_0b86deb9[address(msg.sender)]
                            require ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 >= (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]
                            require ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000
                            if not 10000 * eth.balance(this.address) / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000:
                                require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = 0
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes += sub_0b86deb9[address(msg.sender)]
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 10000 * eth.balance(this.address) / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value 10000 * eth.balance(this.address) / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 10000 * eth.balance(this.address) / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 / 10000 * eth.balance(this.address) / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                                require sub_0b86deb9[address(msg.sender)] <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = 0
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes += sub_0b86deb9[address(msg.sender)]
                                call ceoWalletAddress with:
                                   value 3 * 10000 * eth.balance(this.address) / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 10000 * eth.balance(this.address) / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 10000 * eth.balance(this.address) / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value (10000 * eth.balance(this.address) / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 10000 * eth.balance(this.address) / ((5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
            else:
                if not eth.balance(this.address):
                    if not marketGrapes:
                        require marketGrapes
                        require (0 / marketGrapes) + 5000 >= 0 / marketGrapes
                        require (0 / marketGrapes) + 5000
                        if not 0 / (0 / marketGrapes) + 5000:
                            require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] -= marketGrapes
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require 2 * marketGrapes >= marketGrapes
                            bool(stor6.field_0) = 0
                            uint255(stor6.field_1) = uint255(stor6.field_0)
                            call ceoWalletAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= 0 / (0 / marketGrapes) + 5000
                            call msg.sender with:
                               value 0 / (0 / marketGrapes) + 5000 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * 0 / (0 / marketGrapes) + 5000 / 0 / (0 / marketGrapes) + 5000 == 3
                            require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] -= marketGrapes
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require 2 * marketGrapes >= marketGrapes
                            bool(stor6.field_0) = 0
                            uint255(stor6.field_1) = uint255(stor6.field_0)
                            call ceoWalletAddress with:
                               value 3 * 0 / (0 / marketGrapes) + 5000 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 3 * 0 / (0 / marketGrapes) + 5000 / 100 <= 0 / (0 / marketGrapes) + 5000
                            call msg.sender with:
                               value (0 / (0 / marketGrapes) + 5000) - (3 * 0 / (0 / marketGrapes) + 5000 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require 10000 * marketGrapes / marketGrapes == 10000
                        if not marketGrapes:
                            require 10000 * marketGrapes >= 10000 * marketGrapes
                            require marketGrapes
                            require (10000 * marketGrapes / marketGrapes) + 5000 >= 10000 * marketGrapes / marketGrapes
                            require (10000 * marketGrapes / marketGrapes) + 5000
                            if not 0 / (10000 * marketGrapes / marketGrapes) + 5000:
                                require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] -= marketGrapes
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require 2 * marketGrapes >= marketGrapes
                                bool(stor6.field_0) = 0
                                uint255(stor6.field_1) = uint255(stor6.field_0)
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 0 / (10000 * marketGrapes / marketGrapes) + 5000
                                call msg.sender with:
                                   value 0 / (10000 * marketGrapes / marketGrapes) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 0 / (10000 * marketGrapes / marketGrapes) + 5000 / 0 / (10000 * marketGrapes / marketGrapes) + 5000 == 3
                                require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] -= marketGrapes
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require 2 * marketGrapes >= marketGrapes
                                bool(stor6.field_0) = 0
                                uint255(stor6.field_1) = uint255(stor6.field_0)
                                call ceoWalletAddress with:
                                   value 3 * 0 / (10000 * marketGrapes / marketGrapes) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 0 / (10000 * marketGrapes / marketGrapes) + 5000 / 100 <= 0 / (10000 * marketGrapes / marketGrapes) + 5000
                                call msg.sender with:
                                   value (0 / (10000 * marketGrapes / marketGrapes) + 5000) - (3 * 0 / (10000 * marketGrapes / marketGrapes) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require 5000 * marketGrapes / marketGrapes == 5000
                            require 15000 * marketGrapes >= 10000 * marketGrapes
                            require marketGrapes
                            require (15000 * marketGrapes / marketGrapes) + 5000 >= 15000 * marketGrapes / marketGrapes
                            require (15000 * marketGrapes / marketGrapes) + 5000
                            if not 0 / (15000 * marketGrapes / marketGrapes) + 5000:
                                require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] -= marketGrapes
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require 2 * marketGrapes >= marketGrapes
                                bool(stor6.field_0) = 0
                                uint255(stor6.field_1) = uint255(stor6.field_0)
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 0 / (15000 * marketGrapes / marketGrapes) + 5000
                                call msg.sender with:
                                   value 0 / (15000 * marketGrapes / marketGrapes) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 0 / (15000 * marketGrapes / marketGrapes) + 5000 / 0 / (15000 * marketGrapes / marketGrapes) + 5000 == 3
                                require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] -= marketGrapes
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require 2 * marketGrapes >= marketGrapes
                                bool(stor6.field_0) = 0
                                uint255(stor6.field_1) = uint255(stor6.field_0)
                                call ceoWalletAddress with:
                                   value 3 * 0 / (15000 * marketGrapes / marketGrapes) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 0 / (15000 * marketGrapes / marketGrapes) + 5000 / 100 <= 0 / (15000 * marketGrapes / marketGrapes) + 5000
                                call msg.sender with:
                                   value (0 / (15000 * marketGrapes / marketGrapes) + 5000) - (3 * 0 / (15000 * marketGrapes / marketGrapes) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
                else:
                    require 10000 * eth.balance(this.address) / eth.balance(this.address) == 10000
                    if not marketGrapes:
                        require marketGrapes
                        require (0 / marketGrapes) + 5000 >= 0 / marketGrapes
                        require (0 / marketGrapes) + 5000
                        if not 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000:
                            require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] -= marketGrapes
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require 2 * marketGrapes >= marketGrapes
                            bool(stor6.field_0) = 0
                            uint255(stor6.field_1) = uint255(stor6.field_0)
                            call ceoWalletAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000
                            call msg.sender with:
                               value 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000 / 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000 == 3
                            require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] -= marketGrapes
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require 2 * marketGrapes >= marketGrapes
                            bool(stor6.field_0) = 0
                            uint255(stor6.field_1) = uint255(stor6.field_0)
                            call ceoWalletAddress with:
                               value 3 * 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 3 * 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000 / 100 <= 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000
                            call msg.sender with:
                               value (10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000) - (3 * 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require 10000 * marketGrapes / marketGrapes == 10000
                        if not marketGrapes:
                            require 10000 * marketGrapes >= 10000 * marketGrapes
                            require marketGrapes
                            require (10000 * marketGrapes / marketGrapes) + 5000 >= 10000 * marketGrapes / marketGrapes
                            require (10000 * marketGrapes / marketGrapes) + 5000
                            if not 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000:
                                require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] -= marketGrapes
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require 2 * marketGrapes >= marketGrapes
                                bool(stor6.field_0) = 0
                                uint255(stor6.field_1) = uint255(stor6.field_0)
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000
                                call msg.sender with:
                                   value 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000 / 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000 == 3
                                require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] -= marketGrapes
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require 2 * marketGrapes >= marketGrapes
                                bool(stor6.field_0) = 0
                                uint255(stor6.field_1) = uint255(stor6.field_0)
                                call ceoWalletAddress with:
                                   value 3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000 / 100 <= 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000
                                call msg.sender with:
                                   value (10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000) - (3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require 5000 * marketGrapes / marketGrapes == 5000
                            require 15000 * marketGrapes >= 10000 * marketGrapes
                            require marketGrapes
                            require (15000 * marketGrapes / marketGrapes) + 5000 >= 15000 * marketGrapes / marketGrapes
                            require (15000 * marketGrapes / marketGrapes) + 5000
                            if not 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000:
                                require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] -= marketGrapes
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require 2 * marketGrapes >= marketGrapes
                                bool(stor6.field_0) = 0
                                uint255(stor6.field_1) = uint255(stor6.field_0)
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000
                                call msg.sender with:
                                   value 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000 / 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000 == 3
                                require marketGrapes <= sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] -= marketGrapes
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require 2 * marketGrapes >= marketGrapes
                                bool(stor6.field_0) = 0
                                uint255(stor6.field_1) = uint255(stor6.field_0)
                                call ceoWalletAddress with:
                                   value 3 * 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000 / 100 <= 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000
                                call msg.sender with:
                                   value (10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000) - (3 * 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
        else:
            require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) / block.timestamp - lastHarvest[address(msg.sender)] == sub_5f7d35a9[address(msg.sender)] + (myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)])
            require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] >= sub_0b86deb9[address(msg.sender)]
            if (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] <= marketGrapes:
                if not eth.balance(this.address):
                    if not marketGrapes:
                        if not (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]:
                            require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                            require (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 >= 0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                            require (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                            if not 0 / (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000:
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)])
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 0 / (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value 0 / (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 0 / (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 0 / (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)])
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes
                                call ceoWalletAddress with:
                                   value 3 * 0 / (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 0 / (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 0 / (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value (0 / (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 0 / (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require (5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] == 5000
                            require (5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) >= 0
                            require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                            require ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 >= (5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                            require ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                            if not 0 / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000:
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)])
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 0 / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value 0 / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 0 / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 0 / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)])
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes
                                call ceoWalletAddress with:
                                   value 3 * 0 / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 0 / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 0 / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value (0 / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 0 / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
                    else:
                        require 10000 * marketGrapes / marketGrapes == 10000
                        if not (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]:
                            require 10000 * marketGrapes >= 10000 * marketGrapes
                            require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                            require (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 >= 10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                            require (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                            if not 0 / (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000:
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)])
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 0 / (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value 0 / (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 0 / (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 0 / (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)])
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes
                                call ceoWalletAddress with:
                                   value 3 * 0 / (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 0 / (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 0 / (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value (0 / (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 0 / (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require (5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] == 5000
                            require (5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) >= 10000 * marketGrapes
                            require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                            require ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 >= (5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                            require ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                            if not 0 / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000:
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)])
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 0 / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value 0 / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 0 / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 0 / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)])
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes
                                call ceoWalletAddress with:
                                   value 3 * 0 / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 0 / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 0 / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value (0 / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 0 / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
                else:
                    require 10000 * eth.balance(this.address) / eth.balance(this.address) == 10000
                    if not marketGrapes:
                        if not (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]:
                            require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                            require (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 >= 0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                            require (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                            if not 10000 * eth.balance(this.address) / (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000:
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)])
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 10000 * eth.balance(this.address) / (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value 10000 * eth.balance(this.address) / (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 10000 * eth.balance(this.address) / (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 10000 * eth.balance(this.address) / (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)])
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes
                                call ceoWalletAddress with:
                                   value 3 * 10000 * eth.balance(this.address) / (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 10000 * eth.balance(this.address) / (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 10000 * eth.balance(this.address) / (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value (10000 * eth.balance(this.address) / (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 10000 * eth.balance(this.address) / (0 / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require (5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] == 5000
                            require (5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) >= 0
                            require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                            require ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 >= (5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                            require ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                            if not 10000 * eth.balance(this.address) / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000:
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)])
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 10000 * eth.balance(this.address) / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value 10000 * eth.balance(this.address) / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 10000 * eth.balance(this.address) / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 10000 * eth.balance(this.address) / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)])
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes
                                call ceoWalletAddress with:
                                   value 3 * 10000 * eth.balance(this.address) / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 10000 * eth.balance(this.address) / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 10000 * eth.balance(this.address) / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value (10000 * eth.balance(this.address) / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 10000 * eth.balance(this.address) / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
                    else:
                        require 10000 * marketGrapes / marketGrapes == 10000
                        if not (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]:
                            require 10000 * marketGrapes >= 10000 * marketGrapes
                            require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                            require (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 >= 10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                            require (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                            if not 10000 * eth.balance(this.address) / (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000:
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)])
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 10000 * eth.balance(this.address) / (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value 10000 * eth.balance(this.address) / (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 10000 * eth.balance(this.address) / (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)])
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes
                                call ceoWalletAddress with:
                                   value 3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 10000 * eth.balance(this.address) / (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value (10000 * eth.balance(this.address) / (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require (5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] == 5000
                            require (5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) >= 10000 * marketGrapes
                            require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                            require ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 >= (5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                            require ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                            if not 10000 * eth.balance(this.address) / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000:
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)])
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 10000 * eth.balance(this.address) / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value 10000 * eth.balance(this.address) / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 10000 * eth.balance(this.address) / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 10000 * eth.balance(this.address) / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 == 3
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) - (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)])
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes >= marketGrapes
                                marketGrapes = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] + marketGrapes
                                call ceoWalletAddress with:
                                   value 3 * 10000 * eth.balance(this.address) / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 10000 * eth.balance(this.address) / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100 <= 10000 * eth.balance(this.address) / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000
                                call msg.sender with:
                                   value (10000 * eth.balance(this.address) / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000) - (3 * 10000 * eth.balance(this.address) / ((5000 * block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (5000 * block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (5000 * lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + (5000 * sub_0b86deb9[address(msg.sender)]) + (10000 * marketGrapes) / (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
            else:
                if not eth.balance(this.address):
                    if not marketGrapes:
                        require marketGrapes
                        require (0 / marketGrapes) + 5000 >= 0 / marketGrapes
                        require (0 / marketGrapes) + 5000
                        if not 0 / (0 / marketGrapes) + 5000:
                            require marketGrapes <= (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] - marketGrapes
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require 2 * marketGrapes >= marketGrapes
                            bool(stor6.field_0) = 0
                            uint255(stor6.field_1) = uint255(stor6.field_0)
                            call ceoWalletAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= 0 / (0 / marketGrapes) + 5000
                            call msg.sender with:
                               value 0 / (0 / marketGrapes) + 5000 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * 0 / (0 / marketGrapes) + 5000 / 0 / (0 / marketGrapes) + 5000 == 3
                            require marketGrapes <= (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] - marketGrapes
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require 2 * marketGrapes >= marketGrapes
                            bool(stor6.field_0) = 0
                            uint255(stor6.field_1) = uint255(stor6.field_0)
                            call ceoWalletAddress with:
                               value 3 * 0 / (0 / marketGrapes) + 5000 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 3 * 0 / (0 / marketGrapes) + 5000 / 100 <= 0 / (0 / marketGrapes) + 5000
                            call msg.sender with:
                               value (0 / (0 / marketGrapes) + 5000) - (3 * 0 / (0 / marketGrapes) + 5000 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require 10000 * marketGrapes / marketGrapes == 10000
                        if not marketGrapes:
                            require 10000 * marketGrapes >= 10000 * marketGrapes
                            require marketGrapes
                            require (10000 * marketGrapes / marketGrapes) + 5000 >= 10000 * marketGrapes / marketGrapes
                            require (10000 * marketGrapes / marketGrapes) + 5000
                            if not 0 / (10000 * marketGrapes / marketGrapes) + 5000:
                                require marketGrapes <= (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] - marketGrapes
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require 2 * marketGrapes >= marketGrapes
                                bool(stor6.field_0) = 0
                                uint255(stor6.field_1) = uint255(stor6.field_0)
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 0 / (10000 * marketGrapes / marketGrapes) + 5000
                                call msg.sender with:
                                   value 0 / (10000 * marketGrapes / marketGrapes) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 0 / (10000 * marketGrapes / marketGrapes) + 5000 / 0 / (10000 * marketGrapes / marketGrapes) + 5000 == 3
                                require marketGrapes <= (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] - marketGrapes
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require 2 * marketGrapes >= marketGrapes
                                bool(stor6.field_0) = 0
                                uint255(stor6.field_1) = uint255(stor6.field_0)
                                call ceoWalletAddress with:
                                   value 3 * 0 / (10000 * marketGrapes / marketGrapes) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 0 / (10000 * marketGrapes / marketGrapes) + 5000 / 100 <= 0 / (10000 * marketGrapes / marketGrapes) + 5000
                                call msg.sender with:
                                   value (0 / (10000 * marketGrapes / marketGrapes) + 5000) - (3 * 0 / (10000 * marketGrapes / marketGrapes) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require 5000 * marketGrapes / marketGrapes == 5000
                            require 15000 * marketGrapes >= 10000 * marketGrapes
                            require marketGrapes
                            require (15000 * marketGrapes / marketGrapes) + 5000 >= 15000 * marketGrapes / marketGrapes
                            require (15000 * marketGrapes / marketGrapes) + 5000
                            if not 0 / (15000 * marketGrapes / marketGrapes) + 5000:
                                require marketGrapes <= (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] - marketGrapes
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require 2 * marketGrapes >= marketGrapes
                                bool(stor6.field_0) = 0
                                uint255(stor6.field_1) = uint255(stor6.field_0)
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 0 / (15000 * marketGrapes / marketGrapes) + 5000
                                call msg.sender with:
                                   value 0 / (15000 * marketGrapes / marketGrapes) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 0 / (15000 * marketGrapes / marketGrapes) + 5000 / 0 / (15000 * marketGrapes / marketGrapes) + 5000 == 3
                                require marketGrapes <= (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] - marketGrapes
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require 2 * marketGrapes >= marketGrapes
                                bool(stor6.field_0) = 0
                                uint255(stor6.field_1) = uint255(stor6.field_0)
                                call ceoWalletAddress with:
                                   value 3 * 0 / (15000 * marketGrapes / marketGrapes) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 0 / (15000 * marketGrapes / marketGrapes) + 5000 / 100 <= 0 / (15000 * marketGrapes / marketGrapes) + 5000
                                call msg.sender with:
                                   value (0 / (15000 * marketGrapes / marketGrapes) + 5000) - (3 * 0 / (15000 * marketGrapes / marketGrapes) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
                else:
                    require 10000 * eth.balance(this.address) / eth.balance(this.address) == 10000
                    if not marketGrapes:
                        require marketGrapes
                        require (0 / marketGrapes) + 5000 >= 0 / marketGrapes
                        require (0 / marketGrapes) + 5000
                        if not 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000:
                            require marketGrapes <= (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] - marketGrapes
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require 2 * marketGrapes >= marketGrapes
                            bool(stor6.field_0) = 0
                            uint255(stor6.field_1) = uint255(stor6.field_0)
                            call ceoWalletAddress with:
                                 gas 2300 wei
                            require ext_call.success
                            require 0 <= 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000
                            call msg.sender with:
                               value 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000 wei
                                 gas 2300 * is_zero(value) wei
                        else:
                            require 3 * 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000 / 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000 == 3
                            require marketGrapes <= (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                            sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] - marketGrapes
                            lastHarvest[address(msg.sender)] = block.timestamp
                            require 2 * marketGrapes >= marketGrapes
                            bool(stor6.field_0) = 0
                            uint255(stor6.field_1) = uint255(stor6.field_0)
                            call ceoWalletAddress with:
                               value 3 * 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000 / 100 wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            require 3 * 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000 / 100 <= 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000
                            call msg.sender with:
                               value (10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000) - (3 * 10000 * eth.balance(this.address) / (0 / marketGrapes) + 5000 / 100) wei
                                 gas 2300 * is_zero(value) wei
                    else:
                        require 10000 * marketGrapes / marketGrapes == 10000
                        if not marketGrapes:
                            require 10000 * marketGrapes >= 10000 * marketGrapes
                            require marketGrapes
                            require (10000 * marketGrapes / marketGrapes) + 5000 >= 10000 * marketGrapes / marketGrapes
                            require (10000 * marketGrapes / marketGrapes) + 5000
                            if not 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000:
                                require marketGrapes <= (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] - marketGrapes
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require 2 * marketGrapes >= marketGrapes
                                bool(stor6.field_0) = 0
                                uint255(stor6.field_1) = uint255(stor6.field_0)
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000
                                call msg.sender with:
                                   value 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000 / 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000 == 3
                                require marketGrapes <= (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] - marketGrapes
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require 2 * marketGrapes >= marketGrapes
                                bool(stor6.field_0) = 0
                                uint255(stor6.field_1) = uint255(stor6.field_0)
                                call ceoWalletAddress with:
                                   value 3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000 / 100 <= 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000
                                call msg.sender with:
                                   value (10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000) - (3 * 10000 * eth.balance(this.address) / (10000 * marketGrapes / marketGrapes) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
                        else:
                            require 5000 * marketGrapes / marketGrapes == 5000
                            require 15000 * marketGrapes >= 10000 * marketGrapes
                            require marketGrapes
                            require (15000 * marketGrapes / marketGrapes) + 5000 >= 15000 * marketGrapes / marketGrapes
                            require (15000 * marketGrapes / marketGrapes) + 5000
                            if not 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000:
                                require marketGrapes <= (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] - marketGrapes
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require 2 * marketGrapes >= marketGrapes
                                bool(stor6.field_0) = 0
                                uint255(stor6.field_1) = uint255(stor6.field_0)
                                call ceoWalletAddress with:
                                     gas 2300 wei
                                require ext_call.success
                                require 0 <= 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000
                                call msg.sender with:
                                   value 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000 wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                require 3 * 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000 / 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000 == 3
                                require marketGrapes <= (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)]
                                sub_0b86deb9[address(msg.sender)] = (block.timestamp * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * sub_5f7d35a9[address(msg.sender)]) + (block.timestamp * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) - (lastHarvest[address(msg.sender)] * myLandMultiplier[address(msg.sender)] - 1 / 5 * sub_5f7d35a9[address(msg.sender)]) + sub_0b86deb9[address(msg.sender)] - marketGrapes
                                lastHarvest[address(msg.sender)] = block.timestamp
                                require 2 * marketGrapes >= marketGrapes
                                bool(stor6.field_0) = 0
                                uint255(stor6.field_1) = uint255(stor6.field_0)
                                call ceoWalletAddress with:
                                   value 3 * 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000 / 100 wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                require 3 * 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000 / 100 <= 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000
                                call msg.sender with:
                                   value (10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000) - (3 * 10000 * eth.balance(this.address) / (15000 * marketGrapes / marketGrapes) + 5000 / 100) wei
                                     gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
