contract main {


// =======================  Init code  ======================


uint8 stor0;
address stor6;
uint256 stor8;
uint256 stor9;
uint8 stor10;
uint256 stor13;

function _fallback() {
    stor6 = msg.sender
    require stor6 == msg.sender
    stor8 = code.data[4635 len 32]
    stor9 = code.data[4667 len 32]
    require stor13 <= code.data[4730 len 1]
    stor10 = code.data[4730 len 1]
    stor0 = 1
    return code.data[373 len 4262]
}



// =====================  Runtime code  =====================


uint8 stor0;
uint8 stor0; offset 8
uint256 stor1;
uint8 stor10;
uint64 stor11;
uint128 stor11; offset 64
address stor11;
uint64 stor12;
uint128 stor12; offset 64
address stor12;
uint256 stor13;
uint256 stor14;
mapping of struct balance;
bool stor2; offset 256
uint8 stor2;
mapping of uint8 stor3;
mapping of struct stor4;
array of uint256 stor5;
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;

function getBalance(address arg1) {
    require uint8(balance[address(arg1)].field_672)
    return balance[address(arg1)].field_0
}

function _fallback() payable {
    revert 
}

function sub_4f24909d(?) {
    require stor6 == msg.sender
    stor9 = arg1
}

function sub_861b6c12(?) {
    require stor6 == msg.sender
    stor8 = arg1
}

function sub_7f0a16af(?) {
    require uint8(balance[address(arg1)].field_672)
    return balance[address(arg1)].field_0 >= stor8
}

function sub_4aaae94d(?) {
    require stor6 == msg.sender
    require stor13 <= arg1
    stor10 = arg1
    uint8(stor0.field_0) = 1
}

function deposit(address arg1) payable {
    require uint8(balance[address(arg1)].field_672)
    balance[address(arg1)].field_0 += msg.value
}

function lock(address arg1) {
    require stor6 == msg.sender
    require uint8(balance[address(arg1)].field_672)
    uint8(balance[address(arg1)].field_688) = 1
}

function unlock(address arg1) {
    require stor6 == msg.sender
    require uint8(balance[address(arg1)].field_672)
    uint8(balance[address(arg1)].field_688) = 0
}

function sub_4611a4d6(?) {
    if arg1 >= 1:
        if arg1 <= uint8(stor2.field_0):
            return 1
        else:
            return 0
    else:
        return 0
}

function withdrawOwner() {
    require stor6 == msg.sender
    stor7 = 0
    call msg.sender with:
       value stor7 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    return 1
}

function withdraw() {
    require uint8(balance[address(msg.sender)].field_672)
    if uint8(balance[address(msg.sender)].field_688):
        return 0
    balance[address(msg.sender)].field_0 = 0
    call msg.sender with:
       value balance[address(msg.sender)].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    return 1
}

function sub_df002d63(?) {
    if arg1 >= 1:
        if arg1 <= uint8(stor2.field_0):
            idx = address(stor11.field_0)
            while address(idx):
                if stor3[address(idx)] == arg1:
                    return 1
                mem[0] = address(idx)
                mem[32] = 15
                idx = address(balance[address(idx)].field_512)
                continue 
            return 0
        else:
            return 0
    else:
        return 0
}

function sub_8bb6afc6(?) {
    require stor6 == msg.sender
    require stor13 + 1 <= stor10
    if not uint8(balance[address(arg1)].field_672):
        uint8(balance[address(arg1)].field_672) = 1
        stor14++
        uint64(balance[address(arg1)].field_256) = uint64(stor12.field_0)
        Mask(96, 0, balance[address(arg1)].field_320) = 0
        address(balance[address(arg1)].field_512) = 0
        address(balance[address(stor12.field_0)].field_512) = arg1
        address(stor12.field_0) = arg1
        if not address(stor11.field_0):
            address(stor11.field_0) = arg1
    uint8(balance[address(arg1)].field_680) = 1
    stor13++
    uint8(balance[address(arg1)].field_688) = 1
}

function sub_746d89e2(?) payable {
    require uint8(balance[address(msg.sender)].field_672)
    require uint8(balance[address(msg.sender)].field_680)
    require uint8(stor0.field_8)
    require arg1 >= 1
    require arg1 <= uint8(stor2.field_0)
    require address(stor11.field_0)
    s = address(stor11.field_0)
    while stor3[address(stor11.field_0)] != arg1:
        require address(balance[address(s)].field_512)
        mem[0] = address(balance[address(s)].field_512)
        mem[32] = 3
        s = address(balance[address(s)].field_512)
        continue 
    require msg.value == stor1
    require uint8(arg1 - 1) < stor5[address(msg.sender)]
    if not stor('array', ('mask_shl', 3, 5, -5, ('add', -1, ('param', 'arg1'))), ('map', ('mask_shl', 160, 0, 96, 'msg.sender'), ('name', 'stor5', 5)))[uint8(arg1 - 1)]:
        stor4[arg1 - 1 << 248].field_0 += msg.value
        uint8(stor4[arg1 - 1 << 248].field_256) = uint8(uint8(stor4[arg1 - 1 << 248].field_256) + 1)
        require uint8(arg1 - 1) < stor5[address(msg.sender)]
        stor5[address(msg.sender)][uint8(arg1 - 1) / 32] = 256^(arg1 - 1 % 32) or !(255 * 256^(arg1 - 1 % 32)) and stor5[address(msg.sender)][uint8(arg1 - 1) / 32]
}

function sub_78d0e228(?) {
    require stor6 == msg.sender
    require uint8(balance[address(arg1)].field_672)
    if uint8(balance[address(arg1)].field_680):
        if address(stor11.field_0) != arg1:
            if address(stor12.field_0) == arg1:
                address(balance[address(balance[address(arg1)].field_256)].field_512) = 0
                uint64(stor12.field_0) = uint64(balance[address(arg1)].field_256)
                Mask(96, 0, stor12.field_64) = 0
            else:
                uint64(balance[address(balance[address(arg1)].field_512)].field_256) = uint64(balance[address(arg1)].field_256)
                Mask(96, 0, balance[address(balance[address(arg1)].field_512)].field_320) = 0
                uint64(balance[address(balance[address(arg1)].field_256)].field_512) = uint64(balance[address(arg1)].field_512)
                Mask(96, 0, balance[address(balance[address(arg1)].field_256)].field_576) = 0
        else:
            if address(stor12.field_0) == arg1:
                address(stor11.field_0) = 0
                address(stor12.field_0) = 0
            else:
                if address(stor11.field_0) == arg1:
                    address(balance[address(balance[address(arg1)].field_512)].field_256) = 0
                    uint64(stor11.field_0) = uint64(balance[address(arg1)].field_512)
                    Mask(96, 0, stor11.field_64) = 0
                else:
                    if address(stor12.field_0) == arg1:
                        address(balance[address(balance[address(arg1)].field_256)].field_512) = 0
                        uint64(stor12.field_0) = uint64(balance[address(arg1)].field_256)
                        Mask(96, 0, stor12.field_64) = 0
                    else:
                        uint64(balance[address(balance[address(arg1)].field_512)].field_256) = uint64(balance[address(arg1)].field_256)
                        Mask(96, 0, balance[address(balance[address(arg1)].field_512)].field_320) = 0
                        uint64(balance[address(balance[address(arg1)].field_256)].field_512) = uint64(balance[address(arg1)].field_512)
                        Mask(96, 0, balance[address(balance[address(arg1)].field_256)].field_576) = 0
        address(balance[address(arg1)].field_256) = 0
        balance[address(arg1)].field_512 = 0xffffffffffffffffffff00ff0000000000000000000000000000000000000000 and balance[address(arg1)].field_512
        stor13--
        uint8(stor0.field_0) = 1
}

function newRound() {
    require stor6 == msg.sender
    if uint8(stor0.field_8):
        s = 0
        t = 0
        u = 0
        idx = address(stor11.field_0)
        while address(idx):
            if stor3[address(idx)] <= 0:
                mem[0] = address(idx)
                mem[32] = 15
                s = s
                t = t
                u = stor3[address(idx)]
                idx = address(balance[address(idx)].field_512)
                continue 
            require uint8(stor2.field_0)
            if uint8(uint8(100 * uint8(stor4[stor3[address(idx)] - 1 << 248].field_256)) / uint8(stor2.field_0)) <= 50:
                stor7 += stor4[stor3[address(idx)] - 1 << 248].field_0
            else:
                if balance[address(idx)].field_0 >= stor4[stor3[address(idx)] - 1 << 248].field_0:
                    balance[address(idx)].field_0 -= stor4[stor3[address(idx)] - 1 << 248].field_0
            mem[0] = address(idx)
            mem[32] = 15
            s = stor4[stor3[address(idx)] - 1 << 248].field_0
            t = uint8(stor4[stor3[address(idx)] - 1 << 248].field_256)
            u = stor3[address(idx)]
            idx = address(balance[address(idx)].field_512)
            continue 
    uint8(stor2.field_0) = 0
    stor2.field_256 % 1 = 0
    stor1 = stor9
    if uint8(stor0.field_0):
        uint8(stor0.field_0) = 0
        s = uint8(uint8(stor2.field_0) + 1)
        idx = address(stor11.field_0)
        while address(idx):
            stor3[address(idx)] = uint8(s)
            mem[0] = address(idx)
            mem[32] = 15
            if s + 1 <= uint8(stor2.field_0):
                s = s + 1
                idx = address(balance[address(idx)].field_512)
                continue 
            s = 1
            idx = address(balance[address(idx)].field_512)
            continue 
    idx = 0
    while uint8(idx) < uint8(stor2.field_0):
        mem[0] = uint8(idx)
        mem[32] = 4
        uint8(stor4[idx << 248].field_256) = 0
        stor4[idx << 248].field_0 = 0
        idx = idx + 1
        continue 
    idx = address(stor11.field_0)
    while address(idx):
        stor5[address(idx)] = 0
        if not stor5[address(idx)] <= 0:
            s = sha3(sha3(address(idx), 5))
            while sha3(sha3(address(idx), 5)) + (stor5[address(idx)] + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
        stor5[address(idx)] = uint8(stor2.field_0)
        if not stor5[address(idx)] <= uint8(stor2.field_0):
            if stor5[address(idx)] + 31 / 32 > uint8(stor2.field_0) + 31 / 32:
                stor5[address(idx)][0.03125 / uint8(stor2.field_0) + 31] = 0
                s = sha3(sha3(address(idx), 5)) + (uint8(stor2.field_0) + 31 / 32) + 1
                while sha3(sha3(address(idx), 5)) + (stor5[address(idx)] + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
        mem[0] = address(idx)
        mem[32] = 15
        idx = address(balance[address(idx)].field_512)
        continue 
    idx = address(stor11.field_0)
    while address(idx):
        if not stor3[address(idx)]:
            stor3[address(idx)] = uint8(stor3[address(stor12.field_0)] + 1)
        stor3[address(idx)] = uint8(stor3[address(idx)] + 1)
        if uint8(stor3[address(idx)] + 1) > uint8(stor2.field_0):
            stor3[address(idx)] = 1
        mem[0] = address(idx)
        mem[32] = 15
        idx = address(balance[address(idx)].field_512)
        continue 
    uint8(stor0.field_8) = 1
}



}
