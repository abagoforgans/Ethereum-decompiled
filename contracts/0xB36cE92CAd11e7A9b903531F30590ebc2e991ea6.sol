contract main {


// =======================  Init code  ======================


uint8 stor0;
uint32 stor2;
uint256 stor4;

function _fallback() payable {
    stor0 = 0
    stor2 = 0
    stor4 = msg.sender or Mask(96, 160, stor4)
    return code.data[58 len 4686]
}



// =====================  Runtime code  =====================


array of struct stor0;
mapping of struct getUserRank;
array of struct stor2;
mapping of address stor3;
address stor4;
mapping of uint256 stor5;

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
        getUserRank[arg1 << 248][3][address(arg2)].field_0 = arg3
        getUserRank[arg1 << 248][3][address(arg2)].field_16 = 0
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
        if arg1 != address(stor3[idx << 232]):
            idx = idx + 1
            continue 
        return (idx % 16777216)
    return 16777215
}

function Reset() payable {
    if msg.sender == stor4:
        idx = 0
        while uint8(idx) < uint8(stor0.length):
            mem[0] = uint8(idx)
            mem[32] = 1
            getUserRank[idx << 248].field_688 = 0
            getUserRank[idx << 248].field_256 = 0
            idx = idx + 1
            continue 
}

function CheckUserVote(uint8 arg1, uint8 arg2) payable {
    mem[0] = arg1
    mem[32] = 1
    idx = stor2[sha3(mem[0 len 64])].field_176 - 1
    while idx % 16777216 > 0:
        mem[0] = idx % 16777216
        mem[32] = sha3(arg1 << 248, 1) + 4
        if arg2 != getUserRank[arg1 << 248][4][idx << 232].field_416:
            idx = idx - 1
            continue 
        return 1
    if arg2 != getUserRank[arg1 << 248][4][0].field_416:
        return 0
    return 1
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

function SetNewBigContract(address arg1) payable {
    if msg.sender == stor4:
        s = 0
        idx = 0
        while idx % 16777216 < stor2.length:
            mem[0] = idx % 16777216
            mem[32] = 3
            mem[96] = 0xcf09e6e100000000000000000000000000000000000000000000000000000000
            mem[100] = arg1
            call address(stor3[idx << 232]).SetBigContract(address rg1) with:
                 gas gas_remaining - 25050 wei
                args arg1
            require ext_call.success
            s = address(stor3[idx << 232])
            idx = idx + 1
            continue 
}

function AddNewSmallContract(address arg1) payable {
    if msg.sender == stor4:
        idx = 0
        while idx % 16777216 < stor2.length:
            mem[0] = idx % 16777216
            mem[32] = 3
            if arg1 != address(stor3[idx << 232]):
                idx = idx + 1
                continue 
            if 16777215 == idx % 16777216:
                uint256(stor3[stor2.length]) = arg1 or Mask(96, 160, uint256(stor3[stor2.length]))
                stor2.length = stor2.length + 1 or Mask(232, 24, stor2.length)
        uint256(stor3[stor2.length]) = arg1 or Mask(96, 160, uint256(stor3[stor2.length]))
        stor2.length = stor2.length + 1 or Mask(232, 24, stor2.length)
}

function AddNewCategory(bytes4 arg1, uint8 arg2, uint8 arg3, address arg4) payable {
    if msg.sender == stor4:
        idx = 0
        while uint8(idx) < uint8(stor0.length):
            mem[0] = uint8(idx)
            mem[32] = 1
            if arg1 != getUserRank[idx << 248].field_0:
                idx = idx + 1
                continue 
            if 255 == uint8(idx):
                getUserRank[uint8(stor0.length)].field_0 = arg1
                getUserRank[uint8(stor0.length)].field_672 = Mask(96, 0, arg2)
                getUserRank[uint8(stor0.length)].field_680 = Mask(88, 0, arg3)
                getUserRank[uint8(stor0.length)].field_512 = arg4 or Mask(96, 160, getUserRank[uint8(stor0.length)].field_512)
                getUserRank[uint8(stor0.length)].field_256 = 0
                stor0.length = stor0.length.field_8
        getUserRank[uint8(stor0.length)].field_0 = arg1
        getUserRank[uint8(stor0.length)].field_672 = Mask(96, 0, arg2)
        getUserRank[uint8(stor0.length)].field_680 = Mask(88, 0, arg3)
        getUserRank[uint8(stor0.length)].field_512 = arg4 or Mask(96, 160, getUserRank[uint8(stor0.length)].field_512)
        getUserRank[uint8(stor0.length)].field_256 = 0
        stor0.length = stor0.length.field_8
}

function NormalizeMoney() payable {
    if stor4 == msg.sender:
        s = 0
        idx = 0
        s = 255
        t = eth.balance(this.address)
        while uint8(idx) < uint8(stor0.length):
            if getUserRank[idx << 248].field_680 * getUserRank[idx << 248].field_256 / 100 > 0:
                call getUserRank[idx << 248].field_512 with:
                   value getUserRank[idx << 248].field_680 * getUserRank[idx << 248].field_256 / 100 wei
                     gas 0 wei
            mem[0] = uint8(idx)
            mem[32] = 1
            getUserRank[idx << 248].field_256 -= getUserRank[idx << 248].field_680 * getUserRank[idx << 248].field_256 / 100
            if uint8(s) != 255:
                s = getUserRank[idx << 248].field_680 * getUserRank[idx << 248].field_256 / 100
                idx = idx + 1
                s = s
                t = t - getUserRank[idx << 248].field_256
                continue 
            mem[0] = uint8(idx)
            mem[32] = 1
            if getUserRank[idx << 248].field_256 <= 5 * 10^15:
                s = getUserRank[idx << 248].field_680 * getUserRank[idx << 248].field_256 / 100
                idx = idx + 1
                s = s
                t = t - getUserRank[idx << 248].field_256
                continue 
            s = getUserRank[idx << 248].field_680 * getUserRank[idx << 248].field_256 / 100
            idx = idx + 1
            s = idx
            t = t - getUserRank[idx << 248].field_256
            continue 
        if t > 5 * 10^15:
            call stor4 with:
               value t - 5 * 10^15 wei
                 gas 0 wei
        else:
            if uint8(s) != 255:
                getUserRank[s << 248].field_256 = getUserRank[s << 248].field_256 + t - 5 * 10^15
}

function CalcAll() payable {
    if msg.sender == stor4:
        s = 0
        idx = 0
        while uint8(idx) < uint8(stor0.length):
            mem[0] = uint8(idx)
            mem[32] = 1
            s = 0
            while s % 16777216 < getUserRank[idx << 248].field_688:
                mem[0] = getUserRank[idx << 248][4][s << 232].field_0
                mem[32] = 0
                stor0[stor1[idx << 248][4][s << 232].field_0].field_0 = 0
                s = s + 1
                continue 
            s = 0
            while s % 16777216 < getUserRank[idx << 248].field_688:
                if not stor0[stor1[idx << 248][4][s << 232].field_0].field_0:
                    stor0[stor1[idx << 248][4][s << 232].field_0].field_16 = getUserRank[idx << 248][3][getUserRank[idx << 248][4][s << 232].field_0].field_0
                mem[0] = getUserRank[idx << 248][4][s << 232].field_0
                mem[32] = 0
                stor0[stor1[idx << 248][4][s << 232].field_0].field_0 = stor0[stor1[idx << 248][4][s << 232].field_0].field_0 + 1 or Mask(240, 16, stor0[stor1[idx << 248][4][s << 232].field_0].field_0)
                s = s + 1
                continue 
            s = 0
            s = 0
            while s % 16777216 < getUserRank[idx << 248].field_688:
                mem[0] = getUserRank[idx << 248][4][s << 232].field_256
                mem[32] = sha3(idx << 248, 1) + 3
                getUserRank[idx << 248][3][getUserRank[idx << 248][4][s << 232].field_256].field_0 = getUserRank[idx << 248][3][getUserRank[idx << 248][4][s << 232].field_256].field_24
                s = sha3(s << 232, sha3(idx << 248, 1) + 4)
                s = s + 1
                continue 
            s = sha3(idx << 248, 1)
            idx = idx + 1
            continue 
}

function Thanks(address arg1, address arg2, uint8 arg3, uint8 arg4) payable {
    if msg.sender == stor4:
        if arg3 != 255:
            idx = 0
            while idx % 16777216 < stor2.length:
                mem[0] = idx % 16777216
                mem[32] = 3
                if arg1 != address(stor3[idx << 232]):
                    idx = idx + 1
                    continue 
                if idx % 16777216 != 16777215:
                    idx = 0
                    while idx % 16777216 < stor2.length:
                        mem[0] = idx % 16777216
                        mem[32] = 3
                        if arg2 != address(stor3[idx << 232]):
                            idx = idx + 1
                            continue 
                        if idx % 16777216 != 16777215:
                            call arg1.0x3cc86b80 with:
                                 gas gas_remaining - 25050 wei
                                args 10^16, this.address
                            require ext_call.success
                            getUserRank[arg3 << 248].field_256 += 10^16
                            if 0 == getUserRank[arg3 << 248][3][address(arg1)].field_0:
                                getUserRank[arg3 << 248][3][address(arg1)].field_0 = 1000
                                getUserRank[arg3 << 248][3][address(arg1)].field_16 = 0
                            if not getUserRank[arg3 << 248][3][address(arg2)].field_0:
                                getUserRank[arg3 << 248][3][address(arg2)].field_0 = 1000
                                getUserRank[arg3 << 248][3][address(arg2)].field_16 = 0
                            getUserRank[arg3 << 248][4][getUserRank[arg3 << 248].field_512].field_0 = arg1 or Mask(96, 160, getUserRank[arg3 << 248][4][getUserRank[arg3 << 248].field_512].field_0)
                            getUserRank[arg3 << 248][4][getUserRank[arg3 << 248].field_688].field_256 = arg2 or Mask(96, 160, getUserRank[arg3 << 248][4][getUserRank[arg3 << 248].field_688].field_256)
                            getUserRank[arg3 << 248][4][getUserRank[arg3 << 248].field_688].field_416 = Mask(96, 0, arg4)
                            getUserRank[arg3 << 248].field_688 = Mask(80, 0, getUserRank[arg3 << 248].field_688 + 1)
}

function NormalizeRanks() payable {
    if msg.sender == stor4:
        s = 0
        idx = 0
        while uint8(idx) < uint8(stor0.length):
            mem[0] = uint8(idx)
            mem[32] = 1
            t = 0
            u = 0
            s = 0
            while s % 16777216 < stor2.length:
                mem[0] = address(stor3[s << 232])
                mem[32] = sha3(idx << 248, 1) + 3
                if not getUserRank[idx << 248][3][address(stor3[s << 232])].field_0:
                    t = t
                    u = u
                    s = s + 1
                    continue 
                mem[0] = address(stor3[s << 232])
                mem[32] = sha3(idx << 248, 1) + 3
                t = t + 1
                u = u + (getUserRank[idx << 248][3][address(stor3[s << 232])].field_0 - 1000 % 16777216)
                s = s + 1
                continue 
            if u <= uint16(1000 * t):
                if getUserRank[idx << 248].field_256 > 0:
                    s = 0
                    while s % 16777216 < stor2.length:
                        mem[0] = address(stor3[s << 232])
                        mem[32] = sha3(idx << 248, 1) + 3
                        if getUserRank[idx << 248][3][address(stor3[s << 232])].field_0 > 1000:
                            mem[0] = s % 16777216
                            mem[32] = 5
                            stor5[s << 232] += 100000 * getUserRank[idx << 248].field_256 / 100000 * u / getUserRank[idx << 248][3][address(stor3[s << 232])].field_0 - 1000 % 16777216
                        s = s + 1
                        continue 
            else:
                s = 0
                while s % 16777216 < stor2.length:
                    mem[0] = address(stor3[s << 232])
                    mem[32] = sha3(idx << 248, 1) + 3
                    if getUserRank[idx << 248][3][address(stor3[s << 232])].field_0 > 1000:
                        mem[0] = address(stor3[s << 232])
                        mem[32] = sha3(idx << 248, 1) + 3
                        getUserRank[idx << 248][3][address(stor3[s << 232])].field_0 = (1000 * getUserRank[idx << 248][3][address(stor3[s << 232])].field_0 - 1000 % 16777216 / u / uint16(t) % 16777216) + 1000 or Mask(232, 24, getUserRank[idx << 248][3][address(stor3[s << 232])].field_0)
                    s = s + 1
                    continue 
                if getUserRank[idx << 248].field_256 > 0:
                    s = 0
                    while s % 16777216 < stor2.length:
                        mem[0] = address(stor3[s << 232])
                        mem[32] = sha3(idx << 248, 1) + 3
                        if getUserRank[idx << 248][3][address(stor3[s << 232])].field_0 > 1000:
                            mem[0] = s % 16777216
                            mem[32] = 5
                            stor5[s << 232] += 100000 * getUserRank[idx << 248].field_256 / 100000 * uint16(1000 * t) / getUserRank[idx << 248][3][address(stor3[s << 232])].field_0 - 1000 % 16777216
                        s = s + 1
                        continue 
            s = sha3(idx << 248, 1)
            idx = idx + 1
            continue 
}

function UniversalFunction(uint8 arg1, bytes32 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5, bytes32 arg6) payable {
    idx = 0
    while idx % 16777216 < stor2.length:
        mem[0] = idx % 16777216
        mem[32] = 3
        if address(stor3[idx << 232]) != msg.sender:
            idx = idx + 1
            continue 
        if idx % 16777216 != 16777215:
            if 1 == arg1:
                if uint8(arg3) != 255:
                    idx = 0
                    while idx % 16777216 < stor2.length:
                        mem[0] = idx % 16777216
                        mem[32] = 3
                        if address(stor3[idx << 232]) != msg.sender:
                            idx = idx + 1
                            continue 
                        if idx % 16777216 != 16777215:
                            idx = 0
                            while idx % 16777216 < stor2.length:
                                mem[0] = idx % 16777216
                                mem[32] = 3
                                if address(arg2) != address(stor3[idx << 232]):
                                    idx = idx + 1
                                    continue 
                                if idx % 16777216 != 16777215:
                                    call msg.sender.0x3cc86b80 with:
                                         gas gas_remaining - 25050 wei
                                        args 10^16, this.address
                                    require ext_call.success
                                    getUserRank[arg3 << 248].field_256 += 10^16
                                    if 0 == getUserRank[arg3 << 248][3][address(msg.sender)].field_0:
                                        getUserRank[arg3 << 248][3][address(msg.sender)].field_0 = 1000
                                        getUserRank[arg3 << 248][3][address(msg.sender)].field_16 = 0
                                    if not getUserRank[arg3 << 248][3][address(arg2)].field_0:
                                        getUserRank[arg3 << 248][3][address(arg2)].field_0 = 1000
                                        getUserRank[arg3 << 248][3][address(arg2)].field_16 = 0
                                    getUserRank[arg3 << 248][4][getUserRank[arg3 << 248].field_512].field_0 = msg.sender or Mask(96, 160, getUserRank[arg3 << 248][4][getUserRank[arg3 << 248].field_512].field_0)
                                    getUserRank[arg3 << 248][4][getUserRank[arg3 << 248].field_688].field_256 = arg2 or Mask(96, 160, getUserRank[arg3 << 248][4][getUserRank[arg3 << 248].field_688].field_256)
                                    getUserRank[arg3 << 248][4][getUserRank[arg3 << 248].field_688].field_416 = 0
                                    getUserRank[arg3 << 248].field_688 = Mask(80, 0, getUserRank[arg3 << 248].field_688 + 1)
                                if 2 == arg1:
                                    call msg.sender.0x3cc86b80 with:
                                         gas gas_remaining - 25050 wei
                                        args arg2, address(arg3)
                                    require ext_call.success
                        if 2 == arg1:
                            call msg.sender.0x3cc86b80 with:
                                 gas gas_remaining - 25050 wei
                                args arg2, address(arg3)
                            require ext_call.success
            if 2 == arg1:
                call msg.sender.0x3cc86b80 with:
                     gas gas_remaining - 25050 wei
                    args arg2, address(arg3)
                require ext_call.success
}



}
