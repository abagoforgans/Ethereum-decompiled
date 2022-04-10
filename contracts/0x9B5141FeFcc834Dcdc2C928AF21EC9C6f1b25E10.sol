contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


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
    if arg1 != 57005:
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
                balanceOf[address(arg1)] = sub_c44506c3
            if not uint8(stor7.field_8):
                if msg.sender == 0x33f2655d1e74c2208c163578c3fba86db3ad0ac0:
                    require addressArray.length - 1 < addressArray.length
                    addressArray[addressArray.length].field_0 = 0
    else:
        if not uint8(stor7.field_8):
            if msg.sender == 0xe84426c7e7cf88889c64aaa805f9cdfaa1162cad:
                addressArray.length++
                if not addressArray.length <= addressArray.length + 1:
                    idx = addressArray.length + 1
                    while addressArray.length > idx:
                        addressArray[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                addressArray[addressArray.length].field_0 = 57005
                addressArray[addressArray.length].field_16 = 0
                uint8(stor7.field_0) = 1
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
                    balanceOf[address(arg1)] = sub_c44506c3
                if not uint8(stor7.field_8):
                    if msg.sender == 0x33f2655d1e74c2208c163578c3fba86db3ad0ac0:
                        require addressArray.length - 1 < addressArray.length
                        addressArray[addressArray.length].field_0 = 0
    if not uint8(stor7.field_0):
        if msg.sender == 0x18e77bee1511f4c89b47722bb1d45f82de229b45:
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
    while idx < addressArray.length - 1:
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
