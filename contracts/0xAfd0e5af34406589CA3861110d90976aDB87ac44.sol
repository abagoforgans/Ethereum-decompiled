contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 3693]
}



// =====================  Runtime code  =====================


#
#  - sub_afc5cc0f(?)
#
uint8 contractState; offset 160
address owner;
array of struct stor1;

function contractState() {
    require contractState <= 1
    return contractState
}

function owner() {
    return owner
}

function sub_b6428fe1(?) {
    return stor1.length
}

function kill() {
    if owner != msg.sender:
    contractState = 0
    selfdestruct(owner)
}

function _fallback() payable {
    revert 
}

function isContract(address arg1) {
    return (ext_code.size(arg1) > 1)
}

function sub_fbbc1171(?) {
    if owner == msg.sender:
        contractState = 0
}

function activateContract() {
    if owner == msg.sender:
        contractState = 1
}

function changeOwner(address arg1) {
    if owner == msg.sender:
        owner = arg1
        emit OwnerChanged(owner, arg1);
}

function sub_1485e4ce(?) {
    if arg1.length > 0:
        mem[ceil32(arg1.length) + 128] = arg2.length
        mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
        if arg2.length > 0:
            stor1.length++
            if not stor1.length <= stor1.length + 1:
                mem[0] = 1
                idx = (3 * stor1.length) + 3
                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                    uint8(stor[idx + sha3(mem[0])]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 1].length:
                        mem[0] = idx + sha3(mem[0]) + 1
                        s = sha3(idx + sha3(mem[0]) + 1)
                        while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 2].length:
                        mem[0] = idx + sha3(mem[0]) + 2
                        if sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > sha3(idx + sha3(mem[0]) + 2):
                            uint256(stor[sha3(idx + sha3(mem[0]) + 2)]) = 0
                            s = sha3(idx + sha3(mem[0]) + 2) + 1
                            while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                                uint256(stor[s]) = 0
                                s = s + 1
                                continue 
                    idx = idx + 3
                    continue 
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 1
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg1.length
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len arg1.length] = arg1[all]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = ceil32(arg1.length) + ceil32(arg2.length) + 256
            mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 288] = arg2.length
            mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320 len arg2.length] = arg2[all]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 288
            uint8(stor1[stor1.length].field_0) = 1
            uint256(stor1[stor1.length].field_256) = (2 * arg1.length) + 1
            s = 0
            idx = ceil32(arg1.length) + ceil32(arg2.length) + 288
            while ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 288 > idx:
                uint256(stor[s + sha3((3 * stor1.length) + ('name', 'stor1', 1) + 1)].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            if stor[(3 * stor1.length) + ('name', 'stor1', 1) + 1].length + 31 / 32 > Mask(251, 0, arg1.length + 31) >> 5:
                uint256(stor[sha3((3 * stor1.length) + ('name', 'stor1', 1) + 1) + (Mask(251, 0, arg1.length + 31) >> 5)].field_0) = 0
                idx = (Mask(251, 0, arg1.length + 31) >> 5) + 1
                while stor[(3 * stor1.length) + ('name', 'stor1', 1) + 1].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) + 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            uint256(stor1[stor1.length].field_512) = (2 * arg2.length) + 1
            s = 0
            idx = (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320
            while (2 * ceil32(arg1.length)) + ceil32(arg2.length) + arg2.length + 320 > idx:
                uint256(stor[s + sha3((3 * stor1.length) + ('name', 'stor1', 1) + 2)].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            if stor[(3 * stor1.length) + ('name', 'stor1', 1) + 2].length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
                uint256(stor[sha3((3 * stor1.length) + ('name', 'stor1', 1) + 2) + (Mask(251, 0, arg2.length + 31) >> 5)].field_0) = 0
                idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
                while stor[(3 * stor1.length) + ('name', 'stor1', 1) + 2].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) + 2)].field_0) = 0
                    idx = idx + 1
                    continue 
            emit 0xb4be688a: 1, Array(len=arg1.length, data=arg1[all]), arg1.length + 128
}

function sub_bb1f8ae0(?) {
    if arg1.length > 0:
        mem[ceil32(arg1.length) + 128] = arg2.length
        mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
        if arg2.length > 0:
            stor1.length++
            if not stor1.length <= stor1.length + 1:
                mem[0] = 1
                idx = (3 * stor1.length) + 3
                while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                    uint8(stor[idx + sha3(mem[0])]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                    if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                        uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                        if 31 < stor[idx + sha3(mem[0]) + 2].length:
                            mem[0] = idx + sha3(mem[0]) + 2
                            if sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > sha3(idx + sha3(mem[0]) + 2):
                                uint256(stor[sha3(idx + sha3(mem[0]) + 2)]) = 0
                                s = sha3(idx + sha3(mem[0]) + 2) + 1
                                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                        idx = idx + 3
                        continue 
                    mem[0] = idx + sha3(mem[0]) + 1
                    if sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) <= sha3(idx + sha3(mem[0]) + 1):
                        uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                        if 31 < stor[idx + sha3(mem[0]) + 2].length:
                            mem[0] = idx + sha3(mem[0]) + 2
                            if sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > sha3(idx + sha3(mem[0]) + 2):
                                uint256(stor[sha3(idx + sha3(mem[0]) + 2)]) = 0
                                s = sha3(idx + sha3(mem[0]) + 2) + 1
                                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                                    uint256(stor[s]) = 0
                                    s = s + 1
                                    continue 
                        idx = idx + 3
                        continue 
                    uint256(stor[sha3(idx + sha3(mem[0]) + 1)]) = 0
                    s = sha3(s + sha3(mem[0]) + 1) + 1
                    while sha3(s + sha3(mem[0]) + 1) + (stor[s + sha3(mem[0]) + 1].length + 31 / 32) > s + sha3(mem[0]):
                        uint256(stor[s + sha3(mem[0])]) = 0
                        s = s + 1
                        continue 
                    uint256(stor[s + sha3(mem[0]) + 2]) = 0
                    if 31 < stor[s + sha3(mem[0]) + 2].length:
                        mem[0] = s + sha3(mem[0]) + 2
                        if sha3(s + sha3(mem[0]) + 2) + (stor[s + sha3(mem[0]) + 2].length + 31 / 32) > sha3(s + sha3(mem[0]) + 2):
                            uint256(stor[sha3(s + sha3(mem[0]) + 2)]) = 0
                            t = sha3(s + sha3(mem[0]) + 2) + 1
                            while sha3(s + sha3(mem[0]) + 2) + (stor[s + sha3(mem[0]) + 2].length + 31 / 32) > t:
                                uint256(stor[t]) = 0
                                t = t + 1
                                continue 
                    s = s + 3
                    continue 
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = 0
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 256] = arg1.length
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 288 len arg1.length] = arg1[all]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 192] = ceil32(arg1.length) + ceil32(arg2.length) + 256
            mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 288] = arg2.length
            mem[(2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320 len arg2.length] = arg2[all]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 224] = (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 288
            uint8(stor1[stor1.length].field_0) = 0
            stor1[stor1.length].field_256 % 1 = 0
            uint256(stor1[stor1.length].field_256) = (2 * arg1.length) + 1
            s = 0
            idx = ceil32(arg1.length) + ceil32(arg2.length) + 288
            while ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 288 > idx:
                uint256(stor[s + sha3((3 * stor1.length) + ('name', 'stor1', 1) + 1)].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            if stor[(3 * stor1.length) + ('name', 'stor1', 1) + 1].length + 31 / 32 > Mask(251, 0, arg1.length + 31) >> 5:
                uint256(stor[sha3((3 * stor1.length) + ('name', 'stor1', 1) + 1) + (Mask(251, 0, arg1.length + 31) >> 5)].field_0) = 0
                idx = (Mask(251, 0, arg1.length + 31) >> 5) + 1
                while stor[(3 * stor1.length) + ('name', 'stor1', 1) + 1].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) + 1)].field_0) = 0
                    idx = idx + 1
                    continue 
            uint256(stor1[stor1.length].field_512) = (2 * arg2.length) + 1
            s = 0
            idx = (2 * ceil32(arg1.length)) + ceil32(arg2.length) + 320
            while (2 * ceil32(arg1.length)) + ceil32(arg2.length) + arg2.length + 320 > idx:
                uint256(stor[s + sha3((3 * stor1.length) + ('name', 'stor1', 1) + 2)].field_0) = mem[idx]
                s = s + 1
                idx = idx + 32
                continue 
            if stor[(3 * stor1.length) + ('name', 'stor1', 1) + 2].length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
                uint256(stor[sha3((3 * stor1.length) + ('name', 'stor1', 1) + 2) + (Mask(251, 0, arg2.length + 31) >> 5)].field_0) = 0
                idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
                while stor[(3 * stor1.length) + ('name', 'stor1', 1) + 2].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((3 * stor1.length) + ('name', 'stor1', 1) + 2)].field_0) = 0
                    idx = idx + 1
                    continue 
            emit 0xb4be688a: 0, 96, arg1.length + 128, arg1.length, arg1[all], arg2.length, arg2[all]
}



}
