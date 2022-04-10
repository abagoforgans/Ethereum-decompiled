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
    stor0.length.field_1 = 7
    stor0.length.field_8 = 'testing' / 256
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
    stor4 = 1500000700
    stor8[0x18e77bee1511f4c89b47722bb1d45f82de229b45] = stor5
    stor8[0xe84426c7e7cf88889c64aaa805f9cdfaa1162cad] = stor5
    mem[224] = 0x18e77bee1511f4c89b47722bb1d45f82de229b45
    mem[256] = 0xe84426c7e7cf88889c64aaa805f9cdfaa1162cad
    mem[288] = 0x85bfbdd4c22f2d6bdb6cafb944e6276a86903d0c
    stor6.length = 3
    s = 0
    idx = 224
    while 320 > idx:
        stor6[s] = mem[idx + 12 len 20]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while stor6.length > idx:
        stor6[idx] = 0
        idx = idx + 1
        continue 
    return code.data[1065 len 3153]
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
uint8 stor7; offset 8
uint256 stor7; offset 8
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
    if arg1 == 57005:
        addressArray.length++
        if not addressArray.length <= addressArray.length + 1:
            idx = addressArray.length + 1
            while addressArray.length > idx:
                addressArray[idx].field_0 = 0
                idx = idx + 1
                continue 
        addressArray[addressArray.length].field_0 = 57005
        addressArray[addressArray.length].field_16 = 0
        Mask(248, 0, stor7.field_8) = 1
    if not uint8(stor7.field_8):
        if msg.sender == 0xe84426c7e7cf88889c64aaa805f9cdfaa1162cad:
            addressArray.length++
            if not addressArray.length <= addressArray.length + 1:
                idx = addressArray.length + 1
                while addressArray.length > idx:
                    addressArray[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            addressArray[addressArray.length].field_0 = arg1
    if not uint8(stor7.field_0):
        if msg.sender == 0x18e77bee1511f4c89b47722bb1d45f82de229b45:
            uint8(stor7.field_0) = 1
            idx = 0
            while idx < addressArray.length:
                mem[0] = addressArray[idx].field_0
                mem[32] = 8
                balanceOf[stor6[idx].field_0] = sub_c44506c3
                idx = idx + 1
                continue 
    require balanceOf[address(msg.sender)] >= arg2
    s = 0
    t = 0
    u = 0
    idx = 0
    while idx < addressArray.length:
        mem[0] = 6
        if addressArray[idx].field_0 != msg.sender:
            s = s
            t = t
            u = u
            idx = idx + 1
            continue 
        require idx + 1 < addressArray.length
        mem[0] = 6
        if addressArray[idx].field_256 != arg1:
            s = s
            t = t
            u = u
            idx = idx + 1
            continue 
        mem[0] = msg.sender
        mem[32] = 9
        if numRewardsUsed[address(msg.sender)] >= maxRewardUnitsAvailable:
            s = s
            t = t
            u = u
            idx = idx + 1
            continue 
        numRewardsUsed[address(msg.sender)]++
        mem[0] = msg.sender
        mem[32] = 8
        if block.timestamp < startTime + (87600 * 24 * 3600):
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (11891171993911 * block.timestamp) + (-11891171993911 * startTime) + 1250 * 10^18
            s = (11891171993911 * block.timestamp) + (-11891171993911 * startTime) + 1250 * 10^18
            t = block.timestamp - startTime
            u = 5000 * 10^18
            idx = idx + 1
            continue 
        balanceOf[address(msg.sender)] += 5000 * 10^18
        s = 5000 * 10^18
        t = block.timestamp - startTime
        u = 5000 * 10^18
        idx = idx + 1
        continue 
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}



}
