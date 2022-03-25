contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor2;
uint8 stor3;

function _fallback() payable {
    stor1 = msg.sender
    stor2 = 2397 * 10^6
    stor3 = 1
    return code.data[157 len 4465]
}



// =====================  Runtime code  =====================


#
#  - getPresale(uint256 arg1)
#
array of struct stor0;
address masterAddress;
uint256 amountLeft;
uint8 stor3;

function presaleGoing() {
    return bool(stor3)
}

function presaleAmount() {
    return amountLeft
}

function getPresaleNumber() {
    return stor0.length
}

function master() {
    return masterAddress
}

function getAmountLeft() {
    return amountLeft
}

function _fallback() payable {
    revert 
}

function stopPresale() {
    if masterAddress != msg.sender:
        return 0
    stor3 = 0
    return 1
}

function makePresale(string arg1, address arg2, uint256 arg3, uint256 arg4, string arg5, string arg6) {
    if not stor3:
        return 0
    if masterAddress != msg.sender:
        return 0
    if amountLeft - arg4 < 0:
        return 0
    amountLeft -= arg4
    stor0.length++
    if not stor0.length > stor0.length + 1:
        address(stor0[stor0.length].field_0) = arg2
    else:
        mem[0] = 0
        idx = (6 * stor0.length) + 6
        while sha3(0) + (6 * stor0.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 >= stor[idx + sha3(mem[0]) + 1].length:
                uint256(stor[idx + sha3(mem[0]) + 2]) = 0
                if 31 >= stor[idx + sha3(mem[0]) + 2].length:
                    uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                    if 31 < stor[idx + sha3(mem[0]) + 3].length:
                        mem[0] = idx + sha3(mem[0]) + 3
                        s = sha3(idx + sha3(mem[0]) + 3)
                        while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                            uint256(stor[s]) = 0
                            s = s + 1
                            continue 
                    uint256(stor[idx + sha3(mem[0]) + 4]) = 0
                    uint256(stor[idx + sha3(mem[0]) + 5]) = 0
                    idx = idx + 6
                    continue 
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(s + sha3(mem[0]) + 2)
                while sha3(s + sha3(mem[0]) + 2) + (stor[s + sha3(mem[0]) + 2].length + 31 / 32) > s + sha3(mem[0]):
                    uint256(stor[s + sha3(mem[0])]) = 0
                    s = s + 1
                    continue 
                uint256(stor[s + sha3(mem[0]) + 3]) = 0
                if 31 < stor[s + sha3(mem[0]) + 3].length:
                    mem[0] = s + sha3(mem[0]) + 3
                    t = sha3(s + sha3(mem[0]) + 3)
                    while sha3(s + sha3(mem[0]) + 3) + (stor[s + sha3(mem[0]) + 3].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                uint256(stor[s + sha3(mem[0]) + 4]) = 0
                uint256(stor[s + sha3(mem[0]) + 5]) = 0
                s = s + 6
                continue 
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
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            idx = idx + 6
            continue 
        address(stor0[stor0.length].field_0) = uint64(arg2) << 96
    uint256(stor[sha3((6 * stor0.length) + ('name', 'stor0', 0) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((6 * stor0.length) + ('name', 'stor0', 0) + 2)][].field_0) = Array(len=arg5.length, data=arg5[all])
    uint256(stor[sha3((6 * stor0.length) + ('name', 'stor0', 0) + 3)][].field_0) = Array(len=arg6.length, data=arg6[all])
    uint256(stor0[stor0.length].field_1024) = arg3
    uint256(stor0[stor0.length].field_1280) = arg4
    return 1
}

function entries(uint256 arg1) {
    require arg1 < stor0.length
    mem[320] = uint256(stor[sha3((6 * arg1) + ('name', 'stor0', 0) + 1)].field_0)
    idx = 320
    s = 0
    while stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + 320 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'stor0', 0) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 320] = stor[(6 * arg1) + ('name', 'stor0', 0) + 2].length
    mem[stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 352] = uint256(stor[sha3((6 * arg1) + ('name', 'stor0', 0) + 2)].field_0)
    idx = stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 352
    s = 0
    while stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + stor[(6 * arg1) + ('name', 'stor0', 0) + 2].length + 352 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'stor0', 0) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + stor[(6 * arg1) + ('name', 'stor0', 0) + 2].length + (floor32(stor[(6 * arg1) + ('name', 'stor0', 0) + 2].length - 1) + -stor[(6 * arg1) + ('name', 'stor0', 0) + 2].length + 32 % 32) + 384] = uint256(stor[sha3((6 * arg1) + ('name', 'stor0', 0) + 3)].field_0)
    idx = stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + stor[(6 * arg1) + ('name', 'stor0', 0) + 2].length + (floor32(stor[(6 * arg1) + ('name', 'stor0', 0) + 2].length - 1) + -stor[(6 * arg1) + ('name', 'stor0', 0) + 2].length + 32 % 32) + 384
    s = 0
    while stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + stor[(6 * arg1) + ('name', 'stor0', 0) + 2].length + (floor32(stor[(6 * arg1) + ('name', 'stor0', 0) + 2].length - 1) + -stor[(6 * arg1) + ('name', 'stor0', 0) + 2].length + 32 % 32) + stor[(6 * arg1) + ('name', 'stor0', 0) + 3].length + 384 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((6 * arg1) + ('name', 'stor0', 0) + 3)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor0[arg1].field_0), 
           Array(len=stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length, data=mem[320 len stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + stor[(6 * arg1) + ('name', 'stor0', 0) + 2].length + (floor32(stor[(6 * arg1) + ('name', 'stor0', 0) + 2].length - 1) + -stor[(6 * arg1) + ('name', 'stor0', 0) + 2].length + 32 % 32) + 32], stor[(6 * arg1) + ('name', 'stor0', 0) + 3].length, mem[stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + stor[(6 * arg1) + ('name', 'stor0', 0) + 2].length + (floor32(stor[(6 * arg1) + ('name', 'stor0', 0) + 2].length - 1) + -stor[(6 * arg1) + ('name', 'stor0', 0) + 2].length + 32 % 32) + 384 len stor[(6 * arg1) + ('name', 'stor0', 0) + 3].length + (floor32(stor[(6 * arg1) + ('name', 'stor0', 0) + 3].length - 1) + -stor[(6 * arg1) + ('name', 'stor0', 0) + 3].length + 32 % 32)]),
           stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + 224,
           stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + (floor32(stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length - 1) + -stor[(6 * arg1) + ('name', 'stor0', 0) + 1].length + 32 % 32) + stor[(6 * arg1) + ('name', 'stor0', 0) + 2].length + (floor32(stor[(6 * arg1) + ('name', 'stor0', 0) + 2].length - 1) + -stor[(6 * arg1) + ('name', 'stor0', 0) + 2].length + 32 % 32) + 256,
           uint256(stor0[arg1].field_1024),
           uint256(stor0[arg1].field_1280)
}



}
