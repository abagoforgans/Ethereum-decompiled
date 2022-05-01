contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 3
    stor0.length.field_8 = '0.1' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    return code.data[282 len 4521]
}



// =====================  Runtime code  =====================


const sub_cd2048b2(?) = 4


array of uint256 version;
uint8 stor1;
address stor1;
address stor1; offset 8
uint256 stor1;
array of struct stor2;
uint256 stor3;
array of struct stor4;
uint8 stor5;
uint8 stor5; offset 48
uint32 stor5;
uint64 stor5;
array of struct stor6;
uint8 phase;
address sub_77d53468Address;
array of address members;
mapping of uint256 pendingWithdrawals;
array of struct sub_c55da10c;
address sub_c1253888Address;
address sub_9bdd34cbAddress;
address sub_f3c83e08Address;
address sub_bb04dc49Address;
address sub_cf011459Address;
address sub_cb7cf63cAddress;

function version() {
    return version[0 len version.length]
}

function members(uint256 arg1) {
    require arg1 < members.length
    mem[192] = stor[sha3((2 * arg1) + ('name', 'members', 9) + 1)].field_0
    idx = 192
    s = 0
    while stor[(2 * arg1) + ('name', 'members', 9) + 1].length + 192 > idx + 32:
        mem[idx + 32] = stor[s + sha3((2 * arg1) + ('name', 'members', 9) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(members[arg1].field_0), 
           Array(len=stor[(2 * arg1) + ('name', 'members', 9) + 1].length, data=mem[192 len stor[(2 * arg1) + ('name', 'members', 9) + 1].length + (floor32(stor[(2 * arg1) + ('name', 'members', 9) + 1].length - 1) + -stor[(2 * arg1) + ('name', 'members', 9) + 1].length + 32 % 32)])
}

function sub_77d53468(?) {
    return sub_77d53468Address
}

function sub_9bdd34cb(?) {
    return sub_9bdd34cbAddress
}

function phase() {
    require phase <= 7
    return phase
}

function sub_bb04dc49(?) {
    return sub_bb04dc49Address
}

function sub_c1253888(?) {
    return sub_c1253888Address
}

function sub_c55da10c(?) {
    require arg1 < sub_c55da10c.length
    return address(sub_c55da10c[arg1].field_0), 
           sub_c55da10c[arg1].field_256,
           sub_c55da10c[arg1].field_512,
           sub_c55da10c[arg1].field_768
}

function sub_cb7cf63c(?) {
    return sub_cb7cf63cAddress
}

function sub_cf011459(?) {
    return sub_cf011459Address
}

function sub_f3c83e08(?) {
    return sub_f3c83e08Address
}

function pendingWithdrawals(address arg1) {
    return pendingWithdrawals[arg1]
}

function getMembersLength() {
    return members.length
}

function sub_c6b513b3(?) {
  stop
}

function _fallback() payable {
    revert
}

function sub_e8d0ac6c(?) {
    if not uint8(arg1 % 100):
        return 'feed'
    if uint8(arg1 % 100) == 1:
        return 'revert'
    if uint8(arg1 % 100) == 2:
        return 'setICOContract'
    if uint8(arg1 % 100) != 3:
        return 'InvalidOperation'
    return 'startICO'
}

function currentAction() {
    require uint8(stor5.field_48) <= 4
    mem[416] = uint256(stor2.field_0)
    idx = 416
    s = 0
    while stor2.length + 416 > idx + 32:
        mem[idx + 32] = stor2[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 416] = stor6.length
    mem[stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 448] = uint256(stor6.field_0)
    idx = stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 448
    s = 0
    while stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + stor6.length + 448 > idx + 32:
        mem[idx + 32] = stor6[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return uint8(stor1.field_0), 
           address(stor1.field_0),
           Array(len=stor2.length, data=mem[416 len stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + stor6.length + (floor32(stor6.length - 1) + -stor6.length + 32 % 32) + 32]),
           stor3,
           Mask(32, 224, uint32(stor5.field_0)),
           uint8(stor5.field_0),
           uint8(stor5.field_0),
           uint8(stor5.field_0),
           stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 320
}

function sub_0856f82b(?) payable {
    mem[64] = 96
    require not msg.value
    if sub_77d53468Address != msg.sender:
        idx = 0
        while uint8(idx) < members.length:
            mem[0] = 9
            if address(members[2 * uint8(idx)].field_0) != msg.sender:
                idx = idx + 1
                continue 
            if uint8(idx) == 255:
                mem[128] = 'not a member'
                mem[160] = 5
                idx = 0
                while idx < 12:
                    mem[idx + 320] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[320] = mem[340 len 12]
                emit 0xb6efba8e: 5, Array(len=12, data=mem[320]), msg.sender, members.length
            else:
                mem[128] = 'The voting was reset'
                mem[160] = 2
                idx = 0
                while idx < 20:
                    mem[idx + 320] = mem[idx + 128]
                    idx = idx + 32
                    continue 
                mem[320] = mem[332 len 20]
                emit 0xb6efba8e: 2, Array(len=20, data=mem[320]), msg.sender, uint8(stor1.field_0)
                Mask(168, 0, stor1.field_0) = 0
                stor2.length = 0
                if 31 < stor2.length:
                    idx = sha3(2)
                    while sha3(2) + (stor2.length + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
                stor3 = 0
                stor4.length = 0
                idx = sha3(4)
                while sha3(4) + stor4.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
                stor5.field_0 % 72057594037927936 = 0
                stor6.length = 0
                if 31 < stor6.length:
                    idx = sha3(6)
                    while sha3(6) + (stor6.length + 31 / 32) > idx:
                        stor[idx] = 0
                        idx = idx + 1
                        continue 
        emit 0xb6efba8e: 5, 'not a member', msg.sender, members.length
    else:
        emit 0xb6efba8e: 2, 'The voting was reset', msg.sender, uint8(stor1.field_0)
        Mask(168, 0, stor1.field_0) = 0
        stor2.length = 0
        if 31 < stor2.length:
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        stor3 = 0
        stor4.length = 0
        idx = 0
        while stor4.length > idx:
            stor4[idx].field_0 = 0
            idx = idx + 1
            continue 
        stor5.field_0 % 72057594037927936 = 0
        stor6.length = 0
        if 31 < stor6.length:
            idx = 0
            while stor6.length + 31 / 32 > idx:
                stor6[idx].field_0 = 0
                idx = idx + 1
                continue 
}

function sub_6c18f73e(?) {
    require uint8(uint8(stor1.field_0) % 100) <= 4
    require uint8(stor5.field_48) <= 4
    if uint8(stor5.field_48) == 1:
        require uint8(uint8(stor1.field_0) % 100) <= 4
        if not uint8(uint8(stor1.field_0) % 100):
            require ext_code.size(sub_9bdd34cbAddress)
            if stor3:
                call sub_9bdd34cbAddress.0x2e1a7d4d with:
                     gas gas_remaining - 710 wei
                    args stor3
            else:
                call sub_9bdd34cbAddress.0x2e1a7d4d with:
                     gas gas_remaining - 710 wei
                    args eth.balance(sub_9bdd34cbAddress)
            require ext_call.success
            mem[288] = uint256(stor2.field_0)
            idx = 288
            s = 0
            while stor2.length + 288 > idx + 32:
                mem[idx + 32] = stor2[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 288] = stor4.length
            if not stor4.length:
                emit 0x29b6fa9b: uint8(stor1.field_0), address(stor1.field_0), Array(len=stor2.length, data=mem[288 len stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 32]), stor3, stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 192
            else:
                mem[stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 320] = uint256(stor4.field_0)
                idx = stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 320
                s = 0
                while stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + (32 * stor4.length) + 320 > idx + 32:
                    mem[idx + 32] = stor4[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                emit 0x29b6fa9b: uint8(stor1.field_0), address(stor1.field_0), Array(len=stor2.length, data=mem[288 len stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + (32 * stor4.length) + 32]), stor3, stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 192
            Mask(168, 0, stor1.field_0) = 0
            stor2.length = 0
            if 31 < stor2.length:
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            stor3 = 0
            stor4.length = 0
            idx = 0
            while stor4.length > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
            stor5.field_0 % 72057594037927936 = 0
            stor6.length = 0
            if 31 < stor6.length:
                idx = 0
                while stor6.length + 31 / 32 > idx:
                    stor6[idx].field_0 = 0
                    idx = idx + 1
                    continue 
        else:
            require uint8(uint8(stor1.field_0) % 100) <= 4
            if uint8(uint8(stor1.field_0) % 100) == 1:
                require ext_code.size(sub_9bdd34cbAddress)
                call sub_9bdd34cbAddress.setOpen(bool arg1) with:
                     gas gas_remaining - 710 wei
                    args 1
                require ext_call.success
                sub_cb7cf63cAddress = address(stor1.field_8)
                phase = 2
                mem[288] = uint256(stor2.field_0)
                idx = 288
                s = 0
                while stor2.length + 288 > idx + 32:
                    mem[idx + 32] = stor2[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                mem[stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 288] = stor4.length
                if not stor4.length:
                    emit 0x29b6fa9b: uint8(stor1.field_0), address(stor1.field_0), Array(len=stor2.length, data=mem[288 len stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 32]), stor3, stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 192
                else:
                    mem[stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 320] = uint256(stor4.field_0)
                    idx = stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 320
                    s = 0
                    while stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + (32 * stor4.length) + 320 > idx + 32:
                        mem[idx + 32] = stor4[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    emit 0x29b6fa9b: uint8(stor1.field_0), address(stor1.field_0), Array(len=stor2.length, data=mem[288 len stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + (32 * stor4.length) + 32]), stor3, stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 192
                Mask(168, 0, stor1.field_0) = 0
                stor2.length = 0
                if 31 < stor2.length:
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                stor3 = 0
                stor4.length = 0
                idx = 0
                while stor4.length > idx:
                    stor4[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                stor5.field_0 % 72057594037927936 = 0
                stor6.length = 0
                if 31 < stor6.length:
                    idx = 0
                    while stor6.length + 31 / 32 > idx:
                        stor6[idx].field_0 = 0
                        idx = idx + 1
                        continue 
            else:
                require uint8(uint8(stor1.field_0) % 100) <= 4
                if uint8(uint8(stor1.field_0) % 100) == 2:
                    sub_f3c83e08Address = address(stor1.field_8)
                    mem[288] = uint256(stor2.field_0)
                    idx = 288
                    s = 0
                    while stor2.length + 288 > idx + 32:
                        mem[idx + 32] = stor2[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    mem[stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 288] = stor4.length
                    if not stor4.length:
                        emit 0x29b6fa9b: uint8(stor1.field_0), address(stor1.field_0), Array(len=stor2.length, data=mem[288 len stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 32]), stor3, stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 192
                    else:
                        mem[stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 320] = uint256(stor4.field_0)
                        idx = stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 320
                        s = 0
                        while stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + (32 * stor4.length) + 320 > idx + 32:
                            mem[idx + 32] = stor4[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        emit 0x29b6fa9b: uint8(stor1.field_0), address(stor1.field_0), Array(len=stor2.length, data=mem[288 len stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + (32 * stor4.length) + 32]), stor3, stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 192
                    Mask(168, 0, stor1.field_0) = 0
                    stor2.length = 0
                    if 31 < stor2.length:
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    stor3 = 0
                    stor4.length = 0
                    idx = 0
                    while stor4.length > idx:
                        stor4[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    stor5.field_0 % 72057594037927936 = 0
                    stor6.length = 0
                    if 31 < stor6.length:
                        idx = 0
                        while stor6.length + 31 / 32 > idx:
                            stor6[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                else:
                    require uint8(uint8(stor1.field_0) % 100) <= 4
                    if uint8(uint8(stor1.field_0) % 100) == 3:
                        sub_cb7cf63cAddress = address(stor1.field_8)
                        phase = 4
                        mem[288] = uint256(stor2.field_0)
                        idx = 288
                        s = 0
                        while stor2.length + 288 > idx + 32:
                            mem[idx + 32] = stor2[s].field_256
                            idx = idx + 32
                            s = s + 1
                            continue 
                        mem[stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 288] = stor4.length
                        if not stor4.length:
                            emit 0x29b6fa9b: uint8(stor1.field_0), address(stor1.field_0), Array(len=stor2.length, data=mem[288 len stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 32]), stor3, stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 192
                        else:
                            mem[stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 320] = uint256(stor4.field_0)
                            idx = stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 320
                            s = 0
                            while stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + (32 * stor4.length) + 320 > idx + 32:
                                mem[idx + 32] = stor4[s].field_256
                                idx = idx + 32
                                s = s + 1
                                continue 
                            emit 0x29b6fa9b: uint8(stor1.field_0), address(stor1.field_0), Array(len=stor2.length, data=mem[288 len stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + (32 * stor4.length) + 32]), stor3, stor2.length + (floor32(stor2.length - 1) + -stor2.length + 32 % 32) + 192
                        Mask(168, 0, stor1.field_0) = 0
                        stor2.length = 0
                        if 31 < stor2.length:
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                        stor3 = 0
                        stor4.length = 0
                        idx = 0
                        while stor4.length > idx:
                            stor4[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        stor5.field_0 % 72057594037927936 = 0
                        stor6.length = 0
                        if 31 < stor6.length:
                            idx = 0
                            while stor6.length + 31 / 32 > idx:
                                stor6[idx].field_0 = 0
                                idx = idx + 1
                                continue 
}



}
