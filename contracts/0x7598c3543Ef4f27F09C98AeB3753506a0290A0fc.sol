contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor4;
address stor6;
address stor6; offset 16
mapping of uint256 stor9;
mapping of uint256 stor10;
uint8 stor11; offset 168
uint128 stor11; offset 168

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 4
    stor0.length.field_8 = 'tmed' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'TMED' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor4 = 1500307354
    address(stor6.field_16) = 0x85196da9269b24bdf5ffd2624abb387fca05382b
    if not uint8(stor11):
        Mask(88, 0, stor11) = 1
        stor9[address(stor6.field_0)] += 10^18
        stor10[address(stor6.field_0)] = 10
    return code.data[767 len 6172]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 maxRewardUnitsAvailable;
uint256 startTime;
uint256 totalSupply;
uint8 frozen;
uint8 freezeProhibited; offset 8
uint8 stor6; offset 176
address devAddress; offset 16
uint256 stor6; offset 8
mapping of uint256 returnAmountOfTmex;
mapping of uint256 stor8;
mapping of uint256 balanceOf;
mapping of uint256 numRewardsAvailable;
uint8 tMEXAddressSet;
address tMEXAddress; offset 8

function frozen() {
    return bool(frozen)
}

function name() {
    return name[0 len name.length]
}

function numRewardsAvailable(address arg1) {
    return numRewardsAvailable[arg1]
}

function totalSupply() {
    return totalSupply
}

function maxRewardUnitsAvailable() {
    return maxRewardUnitsAvailable
}

function returnAmountOfTmexAddressCanProduce(address arg1) {
    return returnAmountOfTmex[address(arg1)]
}

function decimals() {
    return decimals
}

function devAddress() {
    return devAddress
}

function freezeProhibited() {
    return bool(freezeProhibited)
}

function TMEXAddressSet() {
    return bool(tMEXAddressSet)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function TMEXAddress() {
    return tMEXAddress
}

function burnAmountAllowed(address arg1) {
    return returnAmountOfTmex[arg1]
}

function startTime() {
    return startTime
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function prohibitFreeze() {
    if tx.origin == devAddress:
        Mask(248, 0, stor6.field_8) = 1
}

function freezeTransfers() {
    if tx.origin == devAddress:
        if not freezeProhibited:
            frozen = 1
}

function approve(address arg1, uint256 arg2) {
    stor8[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setTMEXAddress(address arg1) {
    if tx.origin == devAddress:
        if not tMEXAddressSet:
            tMEXAddressSet = 1
            tMEXAddress = arg1
}

function setNumRewardsAvailableForAddress(uint256 arg1, address arg2) {
    if tx.origin == devAddress:
        if not uint8(stor6.field_176):
            numRewardsAvailable[address(arg2)] = arg1
}

function returnChildAddressForParent(address arg1) {
    require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
    call 0xee22430595ae400a30ffba37883363fbf293e24e.0xb9afd6e1 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[12 len 20]
}

function returnIsParentAddress(address arg1) {
    require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
    call 0xee22430595ae400a30ffba37883363fbf293e24e.parentAddress(address rg1) with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if stor8[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    stor8[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not frozen:
        require balanceOf[address(msg.sender)] >= arg2
        require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
        require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
        call 0xee22430595ae400a30ffba37883363fbf293e24e.parentAddress(address rg1) with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        if ext_call.return_data[0]:
            require ext_code.size(0xee22430595ae400a30ffba37883363fbf293e24e)
            call 0xee22430595ae400a30ffba37883363fbf293e24e.0xb9afd6e1 with:
                 gas gas_remaining - 710 wei
                args arg1
            require ext_call.success
            if msg.sender == ext_call.return_data[12 len 20]:
                if numRewardsAvailable[address(msg.sender)] > 0:
                    numRewardsAvailable[address(msg.sender)]--
                    if block.timestamp < startTime + (87600 * 24 * 3600):
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (11891171993911 * block.timestamp) + (-11891171993911 * startTime) + 1250 * 10^18
                        totalSupply = totalSupply + (11891171993911 * block.timestamp) + (-11891171993911 * startTime) + 1250 * 10^18
                    else:
                        balanceOf[address(msg.sender)] += 5000 * 10^18
                        totalSupply += 5000 * 10^18
        if arg1 == tMEXAddress:
            totalSupply -= arg2
            returnAmountOfTmex[address(msg.sender)] = arg2
            require ext_code.size(tMEXAddress)
            call tMEXAddress.createAmountFromTmedForAddress(uint256 rg1, address rg2) with:
                 gas gas_remaining - 710 wei
                args arg2, msg.sender
            require ext_call.success
            returnAmountOfTmex[address(msg.sender)] = 0
        balanceOf[address(msg.sender)] -= arg2
        balanceOf[address(arg1)] += arg2
        emit Transfer(arg2, msg.sender, arg1);
}



}
