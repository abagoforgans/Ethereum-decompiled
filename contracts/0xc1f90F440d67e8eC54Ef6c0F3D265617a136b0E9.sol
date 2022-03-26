contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
mapping of uint256 stor4;

function _fallback() payable {
    mem[96 len -2726] = code.data[3162 len -2726]
    mem[64] = -2630
    mem[32] = 4
    if mem[96] != 0:
        stor4[address(msg.sender)] = mem[96]
    else:
        stor4[address(msg.sender)] = 10^6
    mem[0] = 0
    stor0.length = (2 * mem[mem[128] + 96]) + 1
    s = 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    idx = mem[128] + 128
    while mem[128] + mem[mem[128] + 96] + 128 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, mem[mem[128] + 96] + 31) >> 5) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
    while (stor0.length + 31 / 32) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    stor1[] = Array(len=mem[mem[160] + 96], data=mem[mem[160] + 128 len mem[mem[160] + 96]])
    stor2 = mem[192]
    return code.data[436 len 2726]
}



// =====================  Runtime code  =====================


#
#  - buyers(uint256 arg1)
#
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
array of struct stor3;
mapping of uint256 balanceOf;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert 
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function sub_e8166d80(?) {
    stor3.length++
    if not stor3.length <= stor3.length + 1:
        mem[0] = 3
        idx = (6 * stor3.length) + 6
        while sha3(3) + (6 * stor3.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                if 31 >= stor[idx + sha3(mem[0]) + 2].length:
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    if 31 >= stor[idx + sha3(mem[0]) + 3].length:
                        uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                        if 31 < stor[idx + sha3(mem[0]) + 4].length:
                            mem[0] = idx + sha3(mem[0]) + 4
                            s = sha3(idx + sha3(mem[0]) + 4)
                            while sha3(idx + sha3(mem[0]) + 4) + (stor[idx + sha3(mem[0]) + 4].length + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                        uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                        idx = idx + 6
                        continue 
                    mem[0] = idx + sha3(mem[0]) + 3
                    s = sha3(s + sha3(mem[0]) + 3)
                    while sha3(s + sha3(mem[0]) + 3) + (stor[s + sha3(mem[0]) + 3].length + 31 / 32) > s + sha3(mem[0]):
                        uint256(stor[s + sha3(mem[0])]) = 0
                        s = s + 1
                        continue 
                    uint256(stor[s + sha3(mem[0]) + 4]) = 0
                    if 31 < stor[s + sha3(mem[0]) + 4].length:
                        mem[0] = s + sha3(mem[0]) + 4
                        t = sha3(s + sha3(mem[0]) + 4)
                        while sha3(s + sha3(mem[0]) + 4) + (stor[s + sha3(mem[0]) + 4].length + 31 / 32) > t:
                            uint256(stor[t]) = 0
                            t = t + 1
                            continue 
                    uint256(stor[s + sha3(mem[0]) + 5]) = 0
                    s = s + 6
                    continue 
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            else:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 2].length:
                    mem[0] = idx + sha3(mem[0]) + 2
                    s = sha3(idx + sha3(mem[0]) + 2)
                    while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 3].length:
                mem[0] = idx + sha3(mem[0]) + 3
                s = sha3(idx + sha3(mem[0]) + 3)
                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 4].length:
                mem[0] = idx + sha3(mem[0]) + 4
                s = sha3(idx + sha3(mem[0]) + 4)
                while sha3(idx + sha3(mem[0]) + 4) + (stor[idx + sha3(mem[0]) + 4].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            idx = idx + 6
            continue 
    uint256(stor3[stor3.length].field_0) = arg5 or Mask(96, 160, uint256(stor3[stor3.length].field_0))
    uint256(stor[sha3((6 * stor3.length) + ('name', 'stor3', 3) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((6 * stor3.length) + ('name', 'stor3', 3) + 2)][].field_0) = Array(len=arg4.length, data=arg4[all])
    uint256(stor[sha3((6 * stor3.length) + ('name', 'stor3', 3) + 3)][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(stor[sha3((6 * stor3.length) + ('name', 'stor3', 3) + 4)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(stor3[stor3.length].field_1280) = 0
}



}
