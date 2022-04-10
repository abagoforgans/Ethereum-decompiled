contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
array of address stor6;
mapping of uint256 stor8;

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
    stor4 = 1499952556
    stor8[0x18e77bee1511f4c89b47722bb1d45f82de229b45] = stor5
    mem[224] = 0x1cbe51911e1ba60b2959297c8100a9be2d4cdcf4
    mem[256] = 0x18e77bee1511f4c89b47722bb1d45f82de229b45
    mem[288] = 0x2f6ef3fea45d465d13451b8a8230bb147923d967
    mem[320] = 0xe84426c7e7cf88889c64aaa805f9cdfaa1162cad
    stor6.length = 4
    s = 0
    idx = 224
    while 352 > idx:
        stor6[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 4
    while stor6.length > idx:
        stor6[idx] = 0
        idx = idx + 1
        continue 
    return code.data[1045 len 2626]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 maxRewardUnitsAvailable;
uint256 startTime;
uint256 sub_c44506c3;
array of struct addressArray;
uint8 stor7;
mapping of uint256 balanceOf;
mapping of uint256 numRewardsUsed;

function name() {
    return name[0 len name.length]
}

function addressArray(uint256 arg1) {
    require arg1 < addressArray.length
    return addressArray[arg1].field_0
}

function maxRewardUnitsAvailable() {
    return maxRewardUnitsAvailable
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function startTime() {
    return startTime
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_c44506c3(?) {
    return sub_c44506c3
}

function numRewardsUsed(address arg1) {
    return numRewardsUsed[arg1]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    if not stor7:
        stor7 = 1
        idx = 1
        while idx < addressArray.length:
            mem[0] = addressArray[idx].field_0
            mem[32] = 8
            balanceOf[stor6[idx].field_0] = sub_c44506c3
            idx = idx + 2
            continue 
    require balanceOf[address(msg.sender)] >= arg2
    s = 0
    t = 0
    u = 0
    v = 0
    w = 0
    x = 0
    idx = 0
    while idx < addressArray.length:
        mem[0] = 6
        if addressArray[idx].field_0 != arg1:
            s = s
            t = t
            u = u
            v = v
            w = w
            x = x
            idx = idx + 1
            continue 
        if bool(idx):
            s = s
            t = t
            u = u
            v = v
            w = w
            x = x
            idx = idx + 1
            continue 
        require idx + 1 < addressArray.length
        mem[0] = 6
        if addressArray[idx].field_256 != msg.sender:
            s = s
            t = t
            u = u
            v = v
            w = w
            x = x
            idx = idx + 1
            continue 
        mem[0] = msg.sender
        mem[32] = 9
        if numRewardsUsed[address(msg.sender)] >= maxRewardUnitsAvailable:
            s = s
            t = t
            u = u
            v = v
            w = w
            x = x
            idx = idx + 1
            continue 
        numRewardsUsed[address(msg.sender)]++
        mem[0] = msg.sender
        mem[32] = 8
        if block.timestamp < startTime + (87600 * 24 * 3600):
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (11891171993911 * block.timestamp) + (-11891171993911 * startTime) + 1250 * 10^18
            s = (11891171993911 * block.timestamp) + (-11891171993911 * startTime) + 1250 * 10^18
            t = startTime + (87600 * 24 * 3600)
            u = block.timestamp - startTime
            v = 87600 * 24 * 3600
            w = 5000 * 10^18
            x = block.timestamp
            idx = idx + 1
            continue 
        balanceOf[address(msg.sender)] += 5000 * 10^18
        s = 5000 * 10^18
        t = startTime + (87600 * 24 * 3600)
        u = block.timestamp - startTime
        v = 87600 * 24 * 3600
        w = 5000 * 10^18
        x = block.timestamp
        idx = idx + 1
        continue 
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
