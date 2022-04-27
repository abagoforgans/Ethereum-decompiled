contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - buyTank(uint32 arg1)
#
const upgradePrice = 5 * 10^16

const getContractBalance = eth.balance(this.address)


address upgradeMasterAddress;
address auctionMasterAddress;
mapping of uint32 stor10;
mapping of struct stor11;
mapping of uint256 playerBalance;
address tankSellMasterAddress;
uint8 stor3; offset 160
uint32 stor3;
uint32 newIdTank; offset 168
uint32 howManyTanks; offset 200
uint128 stor3; offset 160
address exportMasterAddress;
uint8 stor4; offset 96
uint32 stor4; offset 104
uint32 newIdTankHull;
uint32 newIdTankWeapon; offset 32
uint32 createNewTankHull; offset 64
uint32 createNewTankWeapon; offset 96
uint256 newIdAuctionEntity;
mapping of struct tankDetails;
mapping of struct tankName;
mapping of uint32 stor8;

function getTankSell(uint32 arg1) {
    return bool(uint8(tankDetails[arg1 << 224].field_928))
}

function getTankName(uint32 arg1) {
    return tankName[arg1 << 224][0 len tankName[arg1 << 224].length].field_0
}

function getCurrentPrice(uint32 arg1) {
    return tankName[arg1 << 224].field_768
}

function getTankDetails(uint32 arg1) {
    return uint32(tankDetails[arg1 << 224].field_0), 
           uint8(tankDetails[arg1 << 224].field_256),
           uint8(tankDetails[arg1 << 224].field_256),
           uint8(tankDetails[arg1 << 224].field_256),
           uint8(tankDetails[arg1 << 224].field_256),
           uint32(tankDetails[arg1 << 224].field_1536)
}

function newIdTankProduct() {
    return howManyTanks
}

function UpgradeMaster() {
    return upgradeMasterAddress
}

function newIdTank() {
    return newIdTank
}

function canExport() {
    return bool(uint8(stor3.field_160))
}

function getTankAuctionEntity(uint32 arg1) {
    return tankDetails[arg1 << 224].field_1024
}

function getTankTotalEarned(uint32 arg1) {
    return tankDetails[arg1 << 224].field_1280
}

function getTankOwner(uint32 arg1) {
    return address(tankDetails[arg1 << 224].field_512)
}

function createNewTankWeapon() {
    return createNewTankWeapon
}

function AuctionMaster() {
    return auctionMasterAddress
}

function newIdTankWeapon() {
    return newIdTankWeapon
}

function howManyTanks() {
    return howManyTanks
}

function getProductEarning(uint32 arg1) {
    return tankName[arg1 << 224].field_1024
}

function ExportMaster() {
    return exportMasterAddress
}

function TankSellMaster() {
    return tankSellMasterAddress
}

function createNewTankHull() {
    return createNewTankHull
}

function getPlayerBalance(address arg1) {
    return playerBalance[address(arg1)]
}

function newIdAuctionEntity() {
    return newIdAuctionEntity
}

function newIdTankHull() {
    return newIdTankHull
}

function _fallback() payable {
    revert
}

function login(string arg1) {
    emit EventLogin(Array(len=arg1.length, data=arg1[all]), msg.sender);
}

function FinishedExporting() {
    require msg.sender == exportMasterAddress
    Mask(96, 0, stor3.field_160) = 0
}

function ChangeAuctionMaster(address arg1) {
    require msg.sender == auctionMasterAddress
    auctionMasterAddress = arg1
}

function ChangeUpgradeMaster(address arg1) {
    require msg.sender == upgradeMasterAddress
    upgradeMasterAddress = arg1
}

function ChangeTankSellMaster(address arg1) {
    require msg.sender == tankSellMasterAddress
    tankSellMasterAddress = arg1
}

function tanksBeforeTheNewTankType() {
    return uint32((-120 * howManyTanks) + (20 * howManyTanks * howManyTanks) + (-11 * howManyTanks * howManyTanks) + (howManyTanks * howManyTanks * howManyTanks) + -newIdTank - 100)
}

function getTankEarning(uint32 arg1) {
    return (tankName[uint32(stor6[arg1 << 224].field_0)].field_1024 * uint32(uint32(tankName[uint32(stor6[arg1 << 224].field_0)].field_1536) - uint32(tankDetails[arg1 << 224].field_1568)))
}

function getTankProduct(uint32 arg1) {
    return stor8[uint32(stor7[arg1 << 224].field_256)], 
           stor8[uint32(stor7[arg1 << 224].field_256)],
           stor10[uint32(stor7[arg1 << 224].field_256)],
           stor10[uint32(stor7[arg1 << 224].field_256)],
           stor10[uint32(stor7[arg1 << 224].field_256)],
           uint32(tankName[arg1 << 224].field_1280)
}

function _transferAction(uint32 arg1, address arg2, uint8 arg3) {
    require arg1 > 0
    require arg1 < newIdTank
    require address(tankDetails[arg1 << 224].field_512) == msg.sender
    require arg2 != msg.sender
    require not uint8(tankDetails[arg1 << 224].field_928)
    address(tankDetails[arg1 << 224].field_512) = arg2
    emit EventTransferAction(arg1 << 224, arg3, msg.sender, arg2);
}

function _transfer(uint32 arg1, address arg2) {
    require arg1 > 0
    require arg1 < newIdTank
    require address(tankDetails[arg1 << 224].field_512) == msg.sender
    require arg2 != msg.sender
    require not uint8(tankDetails[arg1 << 224].field_928)
    address(tankDetails[arg1 << 224].field_512) = arg2
    address(tankDetails[arg1 << 224].field_768) = arg2
    emit EventTransfer(arg1, msg.sender, arg2);
}

function cancelAuction(uint32 arg1) {
    require arg1 > 0
    require arg1 < newIdTank
    require bool(uint8(tankDetails[arg1 << 224].field_928)) == 1
    require address(tankDetails[arg1 << 224].field_512) == msg.sender
    Mask(96, 0, tankDetails[arg1 << 224].field_928) = 0
    uint32(stor11[stor6[arg1 << 224].field_1024].field_0) = 0
    stor11[stor6[arg1 << 224].field_1024].field_256 = 0
    stor11[stor6[arg1 << 224].field_1024].field_512 = 0
    stor11[stor6[arg1 << 224].field_1024].field_768 = 0
    stor11[stor6[arg1 << 224].field_1024].field_1024 = 0
    tankDetails[arg1 << 224].field_1024 = 0
    emit EventCancelAuction(arg1);
}

function cashOut(uint256 arg1) payable {
    require arg1 >= 0
    require arg1 == uint128(arg1)
    require eth.balance(this.address) >= arg1
    require playerBalance[address(msg.sender)] >= arg1
    if arg1:
        call msg.sender with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            playerBalance[address(msg.sender)] -= arg1
        emit EventCashOut(arg1, msg.sender);
    else:
        call msg.sender with:
           value playerBalance[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        if ext_call.success:
            playerBalance[address(msg.sender)] = 0
        emit EventCashOut(playerBalance[address(msg.sender)], msg.sender);
}

function sellTank(uint32 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require arg1 > 0
    require arg1 < newIdTank
    require address(tankDetails[arg1 << 224].field_512) == msg.sender
    require not uint8(tankDetails[arg1 << 224].field_928)
    require arg2 >= arg3
    require arg2 > 0
    require arg3 >= 0
    require arg4 > 0
    require arg2 == uint128(arg2)
    require arg3 == uint128(arg3)
    uint32(stor11[stor5].field_0) = arg1
    stor11[stor5].field_256 = arg2
    stor11[stor5].field_512 = arg3
    stor11[stor5].field_768 = block.timestamp
    stor11[stor5].field_1024 = arg4
    Mask(96, 0, tankDetails[arg1 << 224].field_928) = 1
    newIdAuctionEntity++
    tankDetails[arg1 << 224].field_1024 = newIdAuctionEntity
    emit EventAuction(arg1 << 224, arg2, arg3, arg4, block.timestamp, msg.sender);
}

function upgradeTank(uint32 arg1, uint8 arg2) payable {
    require arg1 > 0
    require arg1 < newIdTank
    require address(tankDetails[arg1 << 224].field_512) == msg.sender
    require arg2 >= 0
    require arg2 < 4
    require stor((Mask(3, 5, arg2) >> 5) + ('map', ('mask_shl', 32, 0, 224, ('param', 'arg1')), ('name', 'stor6', 6)) + 1)[uint8(arg2)] < 5
    require msg.value >= 5 * 10^16
    require arg2 < 4
    tankDetails[arg1 << 224][uint8(arg2) / 32].field_256 = uint8(stor((Mask(3, 5, arg2) >> 5) + ('map', ('mask_shl', 32, 0, 224, ('param', 'arg1')), ('name', 'stor6', 6)) + 1)[uint8(arg2)] + 1) * 256^(arg2 % 32) or !(255 * 256^(arg2 % 32)) and tankDetails[arg1 << 224][uint8(arg2) / 32].field_256
    playerBalance[address(msg.sender)] = playerBalance[address(msg.sender)] + msg.value - 5 * 10^16
    playerBalance[stor0] += 5 * 10^16
    emit EventUpgradeTank(arg1 << 224, arg2, msg.sender);
}

function getCurrentPriceAuction(uint32 arg1) {
    require uint8(tankDetails[arg1 << 224].field_928)
    require stor11[stor6[arg1 << 224].field_1024].field_1024
    if stor11[stor6[arg1 << 224].field_1024].field_256 - (block.timestamp * stor11[stor6[arg1 << 224].field_1024].field_256 - stor11[stor6[arg1 << 224].field_1024].field_512 / stor11[stor6[arg1 << 224].field_1024].field_1024) + (stor11[stor6[arg1 << 224].field_1024].field_768 * stor11[stor6[arg1 << 224].field_1024].field_256 - stor11[stor6[arg1 << 224].field_1024].field_512 / stor11[stor6[arg1 << 224].field_1024].field_1024) >= stor11[stor6[arg1 << 224].field_1024].field_512:
        return (stor11[stor6[arg1 << 224].field_1024].field_256 - (block.timestamp * stor11[stor6[arg1 << 224].field_1024].field_256 - stor11[stor6[arg1 << 224].field_1024].field_512 / stor11[stor6[arg1 << 224].field_1024].field_1024) + (stor11[stor6[arg1 << 224].field_1024].field_768 * stor11[stor6[arg1 << 224].field_1024].field_256 - stor11[stor6[arg1 << 224].field_1024].field_512 / stor11[stor6[arg1 << 224].field_1024].field_1024))
    return stor11[stor6[arg1 << 224].field_1024].field_512
}

function cashOutTank(uint32 arg1) payable {
    require arg1 > 0
    require arg1 < newIdTank
    require address(tankDetails[arg1 << 224].field_512) == msg.sender
    require eth.balance(this.address) >= tankName[uint32(stor6[arg1 << 224].field_0)].field_1024 * uint32(uint32(tankName[uint32(stor6[arg1 << 224].field_0)].field_1536) - uint32(tankDetails[arg1 << 224].field_1568))
    require tankName[uint32(stor6[arg1 << 224].field_0)].field_1024 * uint32(uint32(tankName[uint32(stor6[arg1 << 224].field_0)].field_1536) - uint32(tankDetails[arg1 << 224].field_1568)) > 0
    call address(tankDetails[arg1 << 224].field_512) with:
       value tankName[uint32(stor6[arg1 << 224].field_0)].field_1024 * uint32(uint32(tankName[uint32(stor6[arg1 << 224].field_0)].field_1536) - uint32(tankDetails[arg1 << 224].field_1568)) wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        Mask(224, 0, tankDetails[arg1 << 224].field_1568) = uint32(tankName[uint32(stor6[arg1 << 224].field_0)].field_1536)
    emit EventCashOut((tankName[uint32(stor6[arg1 << 224].field_0)].field_1024 * uint32(uint32(tankName[uint32(stor6[arg1 << 224].field_0)].field_1536) - uint32(tankDetails[arg1 << 224].field_1568))), msg.sender);
}

function exportTank(address arg1, uint32 arg2) {
    require bool(uint8(stor3.field_160)) == 1
    tankName[arg2 << 224].field_768 += tankName[arg2 << 224].field_1024
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[480] = 0
    uint32(tankName[arg2 << 224].field_1536) = uint32(uint32(tankName[arg2 << 224].field_1536) + 1)
    newIdTank = uint32(newIdTank + 1)
    uint32(tankDetails[uint32(stor3.field_0)].field_0) = arg2
    s = 0
    idx = 384
    while 512 > idx:
        tankDetails[uint32(stor3.field_0)].field_256 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and tankDetails[uint32(stor3.field_0)].field_256
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 4
    s = sha3(uint32(stor3.field_0), 6) + 1
    while idx:
        stor[s] = !(255 * 256^idx) and stor[s]
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-2 * None + 3 / 32) + (None * None + 3 / 32) + 1
    while 2 > idx:
        uint8(tankDetails[uint32(stor3.field_0)][idx].field_0) = 0
        idx = idx + 1
        continue 
    address(tankDetails[uint32(stor3.field_0)].field_512) = arg1
    address(tankDetails[uint32(stor3.field_0)].field_768) = arg1
    Mask(96, 0, tankDetails[uint32(stor3.field_0)].field_928) = 0
    tankDetails[uint32(stor3.field_0)].field_1024 = 0
    tankDetails[uint32(stor3.field_0)].field_1280 = 0
    uint32(tankDetails[uint32(stor3.field_0)].field_1536) = 0
    tankDetails[uint32(stor3.field_0)].field_1792 % 1 = 0
    uint32(tankDetails[uint32(stor3.field_0)].field_1568) = uint32(uint32(tankName[arg2 << 224].field_1536) + 1)
    emit EventBuyTank(arg2 << 224, uint32(newIdTank - 1), msg.sender);
}

function newTankType() {
    if howManyTanks <= 121:
        if createNewTankHull >= uint32(newIdTankHull - 1):
            createNewTankWeapon = uint32(createNewTankWeapon + 1)
            if createNewTankHull == createNewTankWeapon:
                createNewTankWeapon = uint32(createNewTankWeapon + 1)
        else:
            if createNewTankWeapon < uint32(newIdTankWeapon - 1):
                createNewTankWeapon = uint32(createNewTankWeapon + 1)
                if createNewTankHull == createNewTankWeapon:
                    createNewTankWeapon = uint32(createNewTankWeapon + 1)
            else:
                uint8(stor4.field_96) = 1
                stor4.field_104 % 16777216 = 0
                createNewTankHull = uint32(createNewTankHull + 1)
        howManyTanks = uint32(howManyTanks + 1)
        bool(tankName[uint32(stor3.field_0)].field_0) = 0
        uint255(tankName[uint32(stor3.field_0)].field_1) = 4
        Mask(248, 0, tankName[uint32(stor3.field_0)].field_8) = 'Tank' / 256
        idx = 0
        while tankName[uint32(stor3.field_0)].length + 31 / 32 > idx:
            tankName[uint32(stor3.field_0)][idx].field_0 = 0
            idx = idx + 1
            continue 
        uint32(tankName[uint32(stor3.field_0)].field_256) = createNewTankHull
        uint32(tankName[uint32(stor3.field_0)].field_288) = createNewTankWeapon
        tankName[uint32(stor3.field_0)].field_512 = 2 * 10^17
        tankName[uint32(stor3.field_0)].field_768 = 2 * 10^17
        tankName[uint32(stor3.field_0)].field_1024 = 3 * 10^15
        tankName[uint32(stor3.field_0)].field_1280 = block.timestamp + 3600
        uint32(tankName[uint32(stor3.field_0)].field_1536) = 0
        tankName[uint32(stor3.field_0)].field_1792 % 1 = 0
        emit EventProduct(uint32 rg1, string rg2, uint32 rg3, uint32 rg4, uint256 rg5, uint256 rg6, uint256 rg7, uint256 rg8):
                          howManyTanks - 1 << 224,
                          256,
                          newIdTankHull,
                          newIdTankHull,
                          2 * 10^17,
                          3 * 10^15,
                          block.timestamp + 3600,
                          block.timestamp,
                          4,
                          uint32('Tank'),
}

function bid(uint32 arg1) payable {
    require arg1 > 0
    require arg1 < newIdTank
    require bool(uint8(tankDetails[arg1 << 224].field_928)) == 1
    require stor11[stor6[arg1 << 224].field_1024].field_1024
    if stor11[stor6[arg1 << 224].field_1024].field_256 - (block.timestamp * stor11[stor6[arg1 << 224].field_1024].field_256 - stor11[stor6[arg1 << 224].field_1024].field_512 / stor11[stor6[arg1 << 224].field_1024].field_1024) + (stor11[stor6[arg1 << 224].field_1024].field_768 * stor11[stor6[arg1 << 224].field_1024].field_256 - stor11[stor6[arg1 << 224].field_1024].field_512 / stor11[stor6[arg1 << 224].field_1024].field_1024) >= stor11[stor6[arg1 << 224].field_1024].field_512:
        require stor11[stor6[arg1 << 224].field_1024].field_256 - (block.timestamp * stor11[stor6[arg1 << 224].field_1024].field_256 - stor11[stor6[arg1 << 224].field_1024].field_512 / stor11[stor6[arg1 << 224].field_1024].field_1024) + (stor11[stor6[arg1 << 224].field_1024].field_768 * stor11[stor6[arg1 << 224].field_1024].field_256 - stor11[stor6[arg1 << 224].field_1024].field_512 / stor11[stor6[arg1 << 224].field_1024].field_1024) >= 0
        require msg.value >= stor11[stor6[arg1 << 224].field_1024].field_256 - (block.timestamp * stor11[stor6[arg1 << 224].field_1024].field_256 - stor11[stor6[arg1 << 224].field_1024].field_512 / stor11[stor6[arg1 << 224].field_1024].field_1024) + (stor11[stor6[arg1 << 224].field_1024].field_768 * stor11[stor6[arg1 << 224].field_1024].field_256 - stor11[stor6[arg1 << 224].field_1024].field_512 / stor11[stor6[arg1 << 224].field_1024].field_1024)
        playerBalance[address(stor6[arg1 << 224].field_512)] = playerBalance[address(stor6[arg1 << 224].field_512)] + stor11[stor6[arg1 << 224].field_1024].field_256 - (block.timestamp * stor11[stor6[arg1 << 224].field_1024].field_256 - stor11[stor6[arg1 << 224].field_1024].field_512 / stor11[stor6[arg1 << 224].field_1024].field_1024) + (stor11[stor6[arg1 << 224].field_1024].field_768 * stor11[stor6[arg1 << 224].field_1024].field_256 - stor11[stor6[arg1 << 224].field_1024].field_512 / stor11[stor6[arg1 << 224].field_1024].field_1024) - (3 * stor11[stor6[arg1 << 224].field_1024].field_256 - (block.timestamp * stor11[stor6[arg1 << 224].field_1024].field_256 - stor11[stor6[arg1 << 224].field_1024].field_512 / stor11[stor6[arg1 << 224].field_1024].field_1024) + (stor11[stor6[arg1 << 224].field_1024].field_768 * stor11[stor6[arg1 << 224].field_1024].field_256 - stor11[stor6[arg1 << 224].field_1024].field_512 / stor11[stor6[arg1 << 224].field_1024].field_1024) / 100)
        playerBalance[stor1] += 3 * stor11[stor6[arg1 << 224].field_1024].field_256 - (block.timestamp * stor11[stor6[arg1 << 224].field_1024].field_256 - stor11[stor6[arg1 << 224].field_1024].field_512 / stor11[stor6[arg1 << 224].field_1024].field_1024) + (stor11[stor6[arg1 << 224].field_1024].field_768 * stor11[stor6[arg1 << 224].field_1024].field_256 - stor11[stor6[arg1 << 224].field_1024].field_512 / stor11[stor6[arg1 << 224].field_1024].field_1024) / 100
        playerBalance[address(msg.sender)] = playerBalance[address(msg.sender)] + msg.value - stor11[stor6[arg1 << 224].field_1024].field_256 + (block.timestamp * stor11[stor6[arg1 << 224].field_1024].field_256 - stor11[stor6[arg1 << 224].field_1024].field_512 / stor11[stor6[arg1 << 224].field_1024].field_1024) - (stor11[stor6[arg1 << 224].field_1024].field_768 * stor11[stor6[arg1 << 224].field_1024].field_256 - stor11[stor6[arg1 << 224].field_1024].field_512 / stor11[stor6[arg1 << 224].field_1024].field_1024)
    else:
        require stor11[stor6[arg1 << 224].field_1024].field_512 >= 0
        require msg.value >= stor11[stor6[arg1 << 224].field_1024].field_512
        playerBalance[address(stor6[arg1 << 224].field_512)] = playerBalance[address(stor6[arg1 << 224].field_512)] + stor11[stor6[arg1 << 224].field_1024].field_512 - (3 * stor11[stor6[arg1 << 224].field_1024].field_512 / 100)
        playerBalance[stor1] += 3 * stor11[stor6[arg1 << 224].field_1024].field_512 / 100
        playerBalance[address(msg.sender)] = playerBalance[address(msg.sender)] + msg.value - stor11[stor6[arg1 << 224].field_1024].field_512
    address(tankDetails[arg1 << 224].field_512) = msg.sender
    Mask(96, 0, tankDetails[arg1 << 224].field_928) = 0
    uint32(stor11[stor6[arg1 << 224].field_1024].field_0) = 0
    stor11[stor6[arg1 << 224].field_1024].field_256 = 0
    stor11[stor6[arg1 << 224].field_1024].field_512 = 0
    stor11[stor6[arg1 << 224].field_1024].field_768 = 0
    stor11[stor6[arg1 << 224].field_1024].field_1024 = 0
    tankDetails[arg1 << 224].field_1024 = 0
    emit EventBid(arg1);
}



}
