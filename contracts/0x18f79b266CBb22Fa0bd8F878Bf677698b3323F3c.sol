contract main {


// =======================  Init code  ======================


uint8 stor0;
uint32 stor2;
uint256 stor4;

function _fallback() payable {
    stor0 = 0
    stor2 = 0
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[58 len 3061]
}



// =====================  Runtime code  =====================


array of uint16 stor0;
mapping of struct getUserRank;
array of uint32 stor2;
mapping of address stor3;
address stor4;
mapping of uint256 stor5;
uint256 storA6EE;

function GetUserRank(uint8 arg1, address arg2) payable {
    return getUserRank[arg1 << 248][3][address(arg2)].field_0
}

function GetCategoryValue(uint8 arg1) payable {
    return getUserRank[arg1 << 248].field_256
}

function _fallback() payable {
  stop
}

function GetMoney(uint256 arg1, address arg2) payable {
    if msg.sender == stor4:
        call arg2 with:
           value arg1 wei
             gas 0 wei
}

function SetRank(uint8 arg1, address arg2, uint16 arg3) payable {
    if stor4 == msg.sender:
        getUserRank[arg1 << 248][3][address(arg2)].field_0 = arg3 or Mask(240, 16, getUserRank[arg1 << 248][3][address(arg2)].field_0)
}

function GetCategoryNumber(bytes4 arg1) payable {
    idx = 0
    while uint8(idx) < uint8(stor0.length):
        mem[0] = uint8(idx)
        mem[32] = 1
        if arg1 != getUserRank[idx << 248].field_0:
            idx = idx + 1
            continue 
        return uint8(idx)
    return 255
}

function GetSmallCotractIndex(address arg1) payable {
    idx = 0
    while idx % 16777216 < stor2.length:
        mem[0] = idx % 16777216
        mem[32] = 3
        if address(stor3[idx << 232]) != arg1:
            idx = idx + 1
            continue 
        return (idx % 16777216)
    return 16777215
}

function sub_3ffd80df(?) payable {
    idx = 0
    while uint8(idx) < uint8(stor0.length):
        mem[0] = uint8(idx)
        mem[32] = 1
        if getUserRank[idx << 248].field_256:
            mem[0] = uint8(idx)
            mem[32] = 1
        idx = idx + 1
        continue 
    storA6EE += eth.balance(this.address)
}

function Reset() payable {
    if msg.sender == stor4:
        idx = 0
        while uint8(idx) < uint8(stor0.length):
            mem[0] = uint8(idx)
            mem[32] = 1
            getUserRank[idx << 248].field_512 = 0
            getUserRank[idx << 248].field_256 = 0
            idx = idx + 1
            continue 
}

function SendAllMoney() payable {
    if msg.sender == stor4:
        idx = 0
        while idx % 16777216 < stor2.length:
            mem[0] = idx % 16777216
            mem[32] = 5
            if stor5[idx << 232] > 0:
                call address(stor3[idx << 232]) with:
                   value stor5[idx << 232] wei
                     gas 0 wei
                mem[0] = idx % 16777216
                mem[32] = 5
                stor5[idx << 232] = 0
            idx = idx + 1
            continue 
}

function sub_1f0ac3c8(?) payable {
    mem[0] = arg3
    mem[32] = 1
    idx = stor2[sha3(mem[0 len 64])] - 1
    while idx % 16777216 >= 0:
        mem[0] = idx % 16777216
        mem[32] = sha3(arg3 << 248, 1) + 4
        if getUserRank[arg3 << 248][4][idx << 232].field_0 != arg2:
            idx = idx - 1
            continue 
        mem[0] = idx % 16777216
        mem[32] = sha3(arg3 << 248, 1) + 4
        if getUserRank[arg3 << 248][4][idx << 232].field_256 != arg1:
            idx = idx - 1
            continue 
        return (idx % 16777216)
    return 16777215
}

function AddNewSmallContract(address arg1) payable {
    if msg.sender == stor4:
        idx = 0
        while idx % 16777216 < stor2.length:
            mem[0] = idx % 16777216
            mem[32] = 3
            if address(stor3[idx << 232]) != arg1:
                idx = idx + 1
                continue 
            if 16777215 == idx % 16777216:
                uint256(stor3[stor2.length]) = arg1 or Mask(96, 160, uint256(stor3[stor2.length]))
                stor2.length = stor2.length + 1 or Mask(232, 24, stor2.length)
        uint256(stor3[stor2.length]) = arg1 or Mask(96, 160, uint256(stor3[stor2.length]))
        stor2.length = stor2.length + 1 or Mask(232, 24, stor2.length)
}

function sub_85a1c950(?) payable {
    if stor4 == msg.sender:
        idx = 0
        while uint8(idx) < uint8(stor0.length):
            mem[0] = uint8(idx)
            mem[32] = 1
            if arg1 != getUserRank[idx << 248].field_0:
                idx = idx + 1
                continue 
            if 255 == uint8(idx):
                getUserRank[uint8(stor0.length)].field_0 = uint32(arg1)
                getUserRank[uint8(stor0.length)].field_256 = 0
                stor0.length = uint8(stor0.length) + 1 or Mask(248, 8, stor0.length)
        getUserRank[uint8(stor0.length)].field_0 = uint32(arg1)
        getUserRank[uint8(stor0.length)].field_256 = 0
        stor0.length = uint8(stor0.length) + 1 or Mask(248, 8, stor0.length)
}

function sub_797fdd7b(?) payable {
    if stor4 == tx.origin:
        idx = 0
        while uint8(idx) < uint8(stor0.length):
            mem[0] = uint8(idx)
            mem[32] = 1
            if arg2 != getUserRank[idx << 248].field_0:
                idx = idx + 1
                continue 
            if uint8(idx) != 255:
                s = 0
                while s % 16777216 < stor2.length:
                    mem[0] = s % 16777216
                    mem[32] = 3
                    if address(stor3[s << 232]) != msg.sender:
                        s = s + 1
                        continue 
                    if s % 16777216 != 16777215:
                        s = 0
                        while s % 16777216 < stor2.length:
                            mem[0] = s % 16777216
                            mem[32] = 3
                            if address(stor3[s << 232]) != arg1:
                                s = s + 1
                                continue 
                            if s % 16777216 != 16777215:
                                getUserRank[idx << 248].field_256 += msg.value
                                if not getUserRank[idx << 248][3][address(msg.sender)].field_0:
                                    getUserRank[idx << 248][3][address(msg.sender)].field_0 = 1000
                                if not getUserRank[idx << 248][3][address(arg1)].field_0:
                                    getUserRank[idx << 248][3][address(arg1)].field_0 = 1000
                                getUserRank[idx << 248][4][getUserRank[idx << 248].field_512].field_256 = arg1 or Mask(96, 160, getUserRank[idx << 248][4][getUserRank[idx << 248].field_512].field_256)
                                getUserRank[idx << 248][4][getUserRank[idx << 248].field_512].field_0 = msg.sender or Mask(96, 160, getUserRank[idx << 248][4][getUserRank[idx << 248].field_512].field_0)
                                getUserRank[idx << 248].field_512 = getUserRank[idx << 248].field_512 + 1 or Mask(232, 24, getUserRank[idx << 248].field_512)
}

function CalcAll() payable {
    if msg.sender == stor4:
        idx = 0
        while uint8(idx) < uint8(stor0.length):
            mem[0] = uint8(idx)
            mem[32] = 1
            if getUserRank[idx << 248].field_256:
                mem[0] = uint8(idx)
                mem[32] = 1
            idx = idx + 1
            continue 
        storA6EE += eth.balance(this.address)
        s = 0
        idx = 0
        while uint8(idx) < uint8(stor0.length):
            s = 0
            while s % 16777216 <= getUserRank[idx << 248].field_512:
                mem[0] = getUserRank[idx << 248][4][s << 232].field_0
                mem[32] = 0
                uint256(stor0[stor1[idx << 248][4][s << 232].field_0]) = uint16(stor0[stor1[idx << 248][4][s << 232].field_0]) + 1 or Mask(240, 16, uint256(stor0[stor1[idx << 248][4][s << 232].field_0]))
                s = s + 1
                continue 
            mem[0] = 0
            mem[32] = 3
            t = 0
            t = 0
            t = 0
            u = 0
            s = 0
            while s % 16777216 <= address(stor3[0]):
                if uint256(stor0[stor1[idx << 248][4][s << 232].field_256]) != 0:
                    uint256(stor0[stor1[idx << 248][4][s << 232].field_256]) += getUserRank[idx << 248][3][getUserRank[idx << 248][4][s << 232].field_0].field_0 / 2 * uint16(stor0[stor1[idx << 248][4][s << 232].field_0])
                    mem[0] = s + 1 % 16777216
                    mem[32] = 3
                    t = getUserRank[idx << 248][3][getUserRank[idx << 248][4][s << 232].field_0].field_0 / 2 * uint16(stor0[stor1[idx << 248][4][s << 232].field_0])
                    t = sha3(s << 232, sha3(idx << 248, 1) + 4)
                    t = t
                    u = (getUserRank[idx << 248][3][getUserRank[idx << 248][4][s << 232].field_0].field_0 / 2 * uint16(stor0[stor1[idx << 248][4][s << 232].field_0])) + u
                    s = s + 1
                    continue 
                uint256(stor0[stor1[idx << 248][4][s << 232].field_256]) = uint16(getUserRank[idx << 248][3][getUserRank[idx << 248][4][s << 232].field_256].field_0 - 1000) + (getUserRank[idx << 248][3][getUserRank[idx << 248][4][s << 232].field_0].field_0 / 2 * uint16(stor0[stor1[idx << 248][4][s << 232].field_0])) + uint256(stor0[stor1[idx << 248][4][s << 232].field_256])
                mem[0] = s + 1 % 16777216
                mem[32] = 3
                t = uint16(getUserRank[idx << 248][3][getUserRank[idx << 248][4][s << 232].field_256].field_0 - 1000) + (getUserRank[idx << 248][3][getUserRank[idx << 248][4][s << 232].field_0].field_0 / 2 * uint16(stor0[stor1[idx << 248][4][s << 232].field_0]))
                t = sha3(s << 232, sha3(idx << 248, 1) + 4)
                t = t + 1
                u = uint16(getUserRank[idx << 248][3][getUserRank[idx << 248][4][s << 232].field_256].field_0 - 1000) + (getUserRank[idx << 248][3][getUserRank[idx << 248][4][s << 232].field_0].field_0 / 2 * uint16(stor0[stor1[idx << 248][4][s << 232].field_0])) + u
                s = s + 1
                continue 
            if u > 1000 * t:
                s = 0
                while s % 16777216 < stor2.length:
                    mem[0] = address(stor3[s << 232])
                    mem[32] = 0
                    uint256(stor0[address(stor3[s << 232])]) = uint256(stor0[address(stor3[s << 232])]) / 1000 * u / t
                    s = s + 1
                    continue 
            if getUserRank[idx << 248].field_512 > 0:
                s = 0
                while s % 16777216 < stor2.length:
                    mem[0] = address(stor3[s << 232])
                    mem[32] = 0
                    if uint256(stor0[address(stor3[s << 232])]) != 0:
                        getUserRank[idx << 248][3][address(stor3[s << 232])].field_0 = uint256(stor0[address(stor3[s << 232])]) + 1000 or Mask(240, 16, getUserRank[idx << 248][3][address(stor3[s << 232])].field_0)
                        mem[0] = s % 16777216
                        mem[32] = 5
                        stor5[s << 232] += 100000 * getUserRank[idx << 248].field_256 / 100000 * u / uint256(stor0[address(stor3[s << 232])])
                    s = s + 1
                    continue 
            s = sha3(idx << 248, 1)
            idx = idx + 1
            continue 
}



}
