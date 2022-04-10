contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor7;

function _fallback() {
    bool(stor0.length) = 0
    stor0.length.field_1 = 8
    stor0.length.field_8 = 'timereum' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 3
    stor1.length.field_8 = 'TME' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor5 = 10^18
    stor3 = 10
    stor4 = 1500307354
    stor7 = 107
    return code.data[424 len 3517]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 maxRewardUnitsAvailable;
uint256 startTime;
uint256 initialSupplyPerChildAddress;
uint256 numImports;
uint256 maxImports;
mapping of uint256 balanceOf;
mapping of uint8 stor9;
mapping of address returnChild;
mapping of uint256 numRewardsUsed;

function name() {
    return name[0 len name.length]
}

function maxRewardUnitsAvailable() {
    return maxRewardUnitsAvailable
}

function decimals() {
    return decimals
}

function maxImports() {
    return maxImports
}

function initialSupplyPerChildAddress() {
    return initialSupplyPerChildAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function startTime() {
    return startTime
}

function numImports() {
    return numImports
}

function symbol() {
    return symbol[0 len symbol.length]
}

function parentAddress(address arg1) {
    return bool(stor9[arg1])
}

function returnChildAddressForParent(address arg1) {
    return returnChild[arg1]
}

function numRewardsUsed(address arg1) {
    return numRewardsUsed[arg1]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    if stor9[address(arg1)]:
        if msg.sender == returnChild[address(arg1)]:
            if numRewardsUsed[address(msg.sender)] < maxRewardUnitsAvailable:
                numRewardsUsed[address(msg.sender)]++
                if block.timestamp < startTime + (87600 * 24 * 3600):
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (11891171993911 * block.timestamp) + (-11891171993911 * startTime) + 1250 * 10^18
                else:
                    balanceOf[address(msg.sender)] += 5000 * 10^18
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function importAddresses(address[] arg1, address[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if numImports < maxImports:
        numImports++
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = msg.sender
        emit addressesImported(msg.sender, arg2.length, numImports);
        balanceOf[57005] = numImports * initialSupplyPerChildAddress
        s = 0
        s = 0
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            require idx < arg1.length
            stor9[mem[(32 * idx) + 140 len 20]] = 1
            returnChild[address(mem[(32 * idx) + 128])] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            mem[0] = mem[(32 * idx) + (32 * arg1.length) + 172 len 20]
            mem[32] = 8
            balanceOf[address(mem[(32 * idx) + (32 * arg1.length) + 160])] = initialSupplyPerChildAddress
            s = mem[(32 * idx) + 128]
            s = mem[(32 * idx) + (32 * arg1.length) + 160]
            idx = idx + 1
            continue 
}



}
