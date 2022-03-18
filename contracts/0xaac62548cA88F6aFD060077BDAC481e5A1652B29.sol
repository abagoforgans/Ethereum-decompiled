contract main {


// =======================  Init code  ======================


uint8 stor0;
uint32 stor2;
uint256 stor4;

function _fallback() payable {
    stor0 = 0
    stor2 = 0
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[58 len 3099]
}



// =====================  Runtime code  =====================


array of uint16 stor0;
mapping of struct getUserRank;
uint32 stor2;
uint256 stor2;
mapping of address stor3;
address stor4;
uint256 storA6EE;

function GetUserRank(uint8 arg1, address arg2) payable {
    return getUserRank[arg1 << 248][2][address(arg2)].field_0
}

function GetCategoryValue(uint8 arg1) payable {
    return getUserRank[arg1 << 248].field_256
}

function sub_8a4c4527(?) payable {
    return getUserRank[arg3 << 248][3][address(arg1)][address(arg2)].field_0
}

function _fallback() payable {
  stop
}

function sub_f1273c0b(?) payable {
    return not not address(stor3[arg1 << 232])
}

function GetMoney(uint256 arg1, address arg2) payable {
    if msg.sender == stor4:
        call arg2 with:
           value arg1 wei
             gas 0 wei
}

function sub_95df6906(?) payable {
    if stor4 == msg.sender:
        getUserRank[arg1 << 248][2][address(arg2)].field_0 = arg3 or Mask(240, 16, getUserRank[arg1 << 248][2][address(arg2)].field_0)
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
    while idx % 16777216 < stor2 % 16777216:
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

function AddNewSmallContract(address arg1) payable {
    if msg.sender == stor4:
        idx = 0
        while idx % 16777216 < stor2 % 16777216:
            mem[0] = idx % 16777216
            mem[32] = 3
            if address(stor3[idx << 232]) != arg1:
                idx = idx + 1
                continue 
            if 16777215 == idx % 16777216:
                uint256(stor3[stor2 % 16777216]) = arg1 or Mask(96, 160, uint256(stor3[stor2 % 16777216]))
                uint256(stor2) = stor2 % 16777216 + 1 or Mask(232, 24, uint256(stor2))
        uint256(stor3[stor2 % 16777216]) = arg1 or Mask(96, 160, uint256(stor3[stor2 % 16777216]))
        uint256(stor2) = stor2 % 16777216 + 1 or Mask(232, 24, uint256(stor2))
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
                while s % 16777216 < stor2 % 16777216:
                    mem[0] = s % 16777216
                    mem[32] = 3
                    if address(stor3[s << 232]) != msg.sender:
                        s = s + 1
                        continue 
                    if s % 16777216 != 16777215:
                        s = 0
                        while s % 16777216 < stor2 % 16777216:
                            mem[0] = s % 16777216
                            mem[32] = 3
                            if address(stor3[s << 232]) != arg1:
                                s = s + 1
                                continue 
                            if s % 16777216 != 16777215:
                                getUserRank[idx << 248].field_256 += msg.value
                                if not getUserRank[idx << 248][2][address(msg.sender)].field_0:
                                    getUserRank[idx << 248][2][address(msg.sender)].field_0 = 1000
                                if not getUserRank[idx << 248][2][address(arg1)].field_0:
                                    getUserRank[idx << 248][2][address(arg1)].field_0 = 1000
                                getUserRank[idx << 248][3][address(arg1)][address(msg.sender)].field_0 = getUserRank[idx << 248][3][address(arg1)][address(msg.sender)].field_0 + 1 or Mask(240, 16, getUserRank[idx << 248][3][address(arg1)][address(msg.sender)].field_0)
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
            mem[0] = uint8(idx)
            mem[32] = 1
            t = 0
            s = 0
            while s % 16777216 < stor2 % 16777216:
                mem[0] = s % 16777216
                mem[32] = 0
                uint16(stor0[s << 232]) = 0
                u = 0
                while u % 16777216 < stor2 % 16777216:
                    mem[0] = s % 16777216
                    mem[32] = 0
                    uint256(stor0[s << 232]) = uint16(stor0[s << 232]) + getUserRank[idx << 248][3][address(stor3[u << 232])][address(stor3[s << 232])].field_0 or Mask(240, 16, uint256(stor0[s << 232]))
                    u = u + 1
                    continue 
                u = None
                s = s + 1
                continue 
            u = 0
            v = 0
            w = t
            s = 0
            while s % 16777216 < stor2 % 16777216:
                mem[0] = address(stor3[s << 232])
                mem[32] = sha3(idx << 248, 1) + 2
                if getUserRank[idx << 248][2][address(stor3[s << 232])].field_0 <= 0:
                    u = u
                    v = v
                    w = w
                    s = s + 1
                    continue 
                w = 0
                w = 0
                t = 0
                while t % 16777216 < stor2 % 16777216:
                    mem[0] = address(stor3[t << 232])
                    mem[32] = sha3(idx << 248, 1) + 2
                    if getUserRank[idx << 248][2][address(stor3[t << 232])].field_0:
                        if s % 16777216 == t % 16777216:
                            w = getUserRank[idx << 248][2][address(stor3[t << 232])].field_0
                            w = w
                            t = t + 1
                            continue 
                        mem[0] = address(stor3[t << 232])
                        mem[32] = sha3(address(stor3[s << 232]), sha3(idx << 248, 1) + 3)
                        if 0 == getUserRank[idx << 248][3][address(stor3[s << 232])][address(stor3[t << 232])].field_0:
                            w = getUserRank[idx << 248][2][address(stor3[t << 232])].field_0
                            w = w
                            t = t + 1
                            continue 
                        mem[0] = address(stor3[t << 232])
                        mem[32] = sha3(address(stor3[s << 232]), sha3(idx << 248, 1) + 3)
                        w = getUserRank[idx << 248][2][address(stor3[t << 232])].field_0
                        w = w + (getUserRank[idx << 248][2][address(stor3[t << 232])].field_0 * getUserRank[idx << 248][3][address(stor3[s << 232])][address(stor3[t << 232])].field_0 / uint16(stor0[t << 232]))
                        t = t + 1
                        continue 
                    if s % 16777216 == t % 16777216:
                        w = 1000
                        w = w
                        t = t + 1
                        continue 
                    mem[0] = address(stor3[t << 232])
                    mem[32] = sha3(address(stor3[s << 232]), sha3(idx << 248, 1) + 3)
                    if 0 == getUserRank[idx << 248][3][address(stor3[s << 232])][address(stor3[t << 232])].field_0:
                        w = 1000
                        w = w
                        t = t + 1
                        continue 
                    mem[0] = address(stor3[t << 232])
                    mem[32] = sha3(address(stor3[s << 232]), sha3(idx << 248, 1) + 3)
                    w = 1000
                    w = w + (1000 * getUserRank[idx << 248][3][address(stor3[s << 232])][address(stor3[t << 232])].field_0 / uint16(stor0[t << 232]))
                    t = t + 1
                    continue 
                mem[0] = s % 16777216
                mem[32] = 0
                uint256(stor0[s << 232]) = (w / 2) + uint16(getUserRank[idx << 248][2][address(stor3[s << 232])].field_0 - 1000)
                u = u + 1
                v = v + (w / 2) + uint16(getUserRank[idx << 248][2][address(stor3[s << 232])].field_0 - 1000)
                w = t
                s = s + 1
                continue 
            if v <= 1000 * u:
                s = 0
                while s % 16777216 < stor2 % 16777216:
                    mem[0] = s % 16777216
                    mem[32] = 0
                    if uint256(stor0[s << 232]):
                        getUserRank[idx << 248][2][address(stor3[s << 232])].field_0 = getUserRank[idx << 248][2][address(stor3[s << 232])].field_16
                        mem[0] = s % 16777216
                        mem[32] = 0
                        uint256(stor0[s << 232]) += getUserRank[idx << 248].field_256 / v / uint256(stor0[s << 232])
                    s = s + 1
                    continue 
                getUserRank[idx << 248].field_256 = 0
                s = sha3(idx << 248, 1)
                idx = idx + 1
                continue 
            t = 0
            while t % 16777216 < stor2 % 16777216:
                mem[0] = t % 16777216
                mem[32] = 0
                uint256(stor0[t << 232]) = uint256(stor0[t << 232]) / 1000 * v / u
                t = t + 1
                continue 
            s = 0
            while s % 16777216 < stor2 % 16777216:
                mem[0] = s % 16777216
                mem[32] = 0
                if uint256(stor0[s << 232]):
                    getUserRank[idx << 248][2][address(stor3[s << 232])].field_0 = getUserRank[idx << 248][2][address(stor3[s << 232])].field_16
                    mem[0] = s % 16777216
                    mem[32] = 0
                    uint256(stor0[s << 232]) += getUserRank[idx << 248].field_256 / v / uint256(stor0[s << 232])
                s = s + 1
                continue 
            getUserRank[idx << 248].field_256 = 0
            t = sha3(idx << 248, 1)
            idx = idx + 1
            continue 
        idx = 0
        while idx % 16777216 < stor2 % 16777216:
            mem[0] = idx % 16777216
            mem[32] = 0
            call address(stor3[idx << 232]) with:
               value uint256(stor0[idx << 232]) wei
                 gas 0 wei
            idx = idx + 1
            continue 
}



}
