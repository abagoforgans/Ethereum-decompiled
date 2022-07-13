contract main {




// =====================  Runtime code  =====================


#
#  - sub_0c145c87(?)
#  - sub_1b92468d(?)
#  - sub_20f510ca(?)
#  - sub_9a9f662c(?)
#  - sub_b5d759d9(?)
#  - sub_ef2e5140(?)
#
const maxBalance = 0xc097ce7bc90715b34b9f1000000001

const basePrice = 10^10

const sub_c7a95480(?) = 0xc9f2c9cd04674edea40000001

const maxPrice = 10000000000000000000001


uint8 stor0; offset 96
uint32 sub_a29685a5;
uint32 sub_52ba28e4; offset 32
uint32 sub_52bcfd5b; offset 64
address owner;
uint32 stor2;
uint32 sub_4320a6cb; offset 160
address operatorAddress;
mapping of address stor3;
mapping of uint32 stor4;
mapping of uint8 sub_6422d517;
mapping of uint32 stor6;
uint32 sub_8dff9f92;
uint256 sub_4f34e1f9;
mapping of address stor9;
mapping of uint32 stor10;
mapping of struct stor11;
uint32 sub_2d5a46ff;
mapping of uint8 sub_4b3488c2;
mapping of address stor14;
mapping of uint8 stor15;
mapping of uint32 sub_082c288f;
uint32 sub_5662ecc7;
mapping of struct stor18;
mapping of uint8 stor19;
mapping of struct stor20;
mapping of struct stor22;
mapping of struct stor101482084901474787496533277358993414562545188466008264437280585788612778976542;

function sub_082c288f(?) {
    return sub_082c288f[msg.sender]
}

function sub_2d5a46ff(?) {
    return sub_2d5a46ff
}

function sub_4320a6cb(?) {
    return sub_4320a6cb
}

function sub_4b3488c2(?) {
    return sub_4b3488c2[stor16[msg.sender]]
}

function sub_4f34e1f9(?) {
    return sub_4f34e1f9
}

function sub_52ba28e4(?) {
    return sub_52ba28e4
}

function sub_52bcfd5b(?) {
    return sub_52bcfd5b
}

function sub_5662ecc7(?) {
    return sub_5662ecc7
}

function operator() {
    return operatorAddress
}

function sub_6422d517(?) {
    return sub_6422d517[arg1 << 224]
}

function owner() {
    return owner
}

function sub_8dff9f92(?) {
    return sub_8dff9f92
}

function sub_a29685a5(?) {
    return sub_a29685a5
}

function sub_a2b6d6d0(?) {
    return bool(stor0)
}

function sub_cc74d6d8(?) {
    return sub_082c288f[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_cd836446(?) {
    require arg2 <= arg1
    return uint128(arg1 - arg2)
}

function sub_8f95b64f(?) {
    require msg.sender == operatorAddress
    sub_4f34e1f9 = arg1
}

function transferOperator(address arg1) {
    require msg.sender == owner
    operatorAddress = arg1
}

function sub_5a230af9(?) {
    require sub_082c288f[msg.sender]
    sub_4b3488c2[stor16[msg.sender]] = arg1
}

function sub_76efb1e3(?) {
    require msg.sender == operatorAddress
    stor19[arg2 << 224][arg1 << 224] = arg3
}

function sub_663754a3(?) {
    require arg1 <= 100
    require stor4[msg.sender]
    sub_6422d517[stor4[msg.sender]] = arg1
}

function sub_072a0ea4(?) {
    require uint128(arg2 + arg1) >= arg1
    require uint128(arg2 + arg1) >= arg2
    return uint128(arg2 + arg1)
}

function sub_41a6e1e0(?) {
    require msg.sender == operatorAddress
    require sub_4320a6cb >= arg1
    require arg1 > 0
    stor4[stor3[arg1 << 224]] = 0
}

function sub_a7890441(?) {
    require msg.sender == operatorAddress
    if sub_082c288f[address(arg2)]:
        stor15[stor16[address(arg2)]] = uint8(arg1)
}

function AddOwner(address arg1) {
    require msg.sender == operatorAddress
    require not stor4[address(arg1)]
    sub_4320a6cb = uint32(sub_4320a6cb + 1)
    stor4[address(arg1)] = uint32(sub_4320a6cb + 1)
    stor3[stor2] = arg1
    if not sub_082c288f[address(arg1)]:
        sub_2d5a46ff = uint32(sub_2d5a46ff + 1)
        sub_082c288f[address(arg1)] = uint32(sub_2d5a46ff + 1)
        stor14[stor12] = arg1
    stor6[stor2] = sub_082c288f[address(arg1)]
}

function sub_598ecf36(?) {
    return stor10[address(arg1)], 
           uint256(stor11[stor10[address(arg1)]].field_0),
           bool(uint8(stor11[stor10[address(arg1)]].field_256)),
           bool(uint8(stor11[stor10[address(arg1)]].field_264)),
           bool(uint8(stor11[stor10[address(arg1)]].field_272)),
           bool(uint8(stor11[stor10[address(arg1)]].field_280)),
           uint32(stor11[stor10[address(arg1)]].field_256),
           Mask(104, 0, stor11[stor10[address(arg1)]].field_320)
}

function sub_fe7d14a8(?) {
    require msg.sender == owner
    stor0 = 0
    if 1 == arg1:
        call msg.sender with:
           value arg2 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        require ext_code.size(stor9[arg1 << 224])
        call stor9[arg1 << 224].0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
}

function sub_899452e5(?) {
    if sub_082c288f[msg.sender] != uint32(stor18[arg1 << 224].field_32):
        if sub_4b3488c2[uint32(stor18[arg1 << 224].field_0)] < 4:
            if operatorAddress != msg.sender:
                require stor4[msg.sender]
    return uint32(stor18[arg1 << 224].field_0), 
           uint32(stor18[arg1 << 224].field_0),
           bool(uint8(stor18[arg1 << 224].field_336)),
           stor18[arg1 << 224].field_256,
           Mask(104, 0, stor18[arg1 << 224].field_0),
           uint32(stor18[arg1 << 224].field_0),
           uint32(stor18[arg1 << 224].field_0)
}

function sub_766fb764(?) {
    if operatorAddress != msg.sender:
        require uint32(stor11[arg1 << 224].field_288) == stor4[msg.sender]
    uint8(stor11[arg1 << 224].field_256) = uint8(arg2)
    uint8(stor11[arg1 << 224].field_264) = uint8(arg3)
    uint8(stor11[arg1 << 224].field_272) = uint8(arg4)
    uint8(stor11[arg1 << 224].field_280) = uint8(arg5)
    uint32(stor11[arg1 << 224].field_288) = arg7
    Mask(104, 0, stor11[arg1 << 224].field_320) = Mask(104, 0, arg6)
    Mask(88, 0, stor11[arg1 << 224].field_424) = Mask(88, 144, arg5) >> 144
    Mask(88, 0, stor11[arg1 << 224].field_424) = Mask(88, 152, arg4) >> 152
    Mask(88, 0, stor11[arg1 << 224].field_424) = Mask(88, 160, arg3) >> 160
    Mask(88, 0, stor11[arg1 << 224].field_424) = Mask(88, 168, arg2) >> 168
}

function sub_d7c35956(?) payable {
    require stor4[msg.sender]
    if msg.value < sub_4f34e1f9:
        require msg.sender == operatorAddress
    require not stor10[address(arg2)]
    require arg1 <= 18
    sub_8dff9f92 = uint32(sub_8dff9f92 + 1)
    stor10[address(arg2)] = uint32(sub_8dff9f92 + 1)
    stor9[stor7] = arg2
    uint256(stor11[stor7].field_0) = 10^arg1
    uint8(stor11[stor7].field_256) = 0
    uint32(stor11[stor7].field_256) = stor4[msg.sender]
    uint8(stor11[stor7].field_264) = 0
    uint8(stor11[stor7].field_272) = 0
    uint8(stor11[stor7].field_280) = 0
    Mask(136, 0, stor11[stor7].field_288) = 0
    Mask(88, 0, stor11[stor7].field_424) = 0
    Mask(88, 0, stor11[stor7].field_424) = 0
    Mask(88, 0, stor11[stor7].field_424) = 0
    Mask(88, 0, stor11[stor7].field_424) = 0
    stor11[stor7].field_512 % 1 = 0
    storE05C[stor6[1]] = uint128(msg.value + storE05C[stor6[1]])
}

function GetOwnerList() {
    if not sub_4320a6cb:
        mem[(32 * sub_4320a6cb) + 128] = sub_4320a6cb
    else:
        mem[128 len 32 * sub_4320a6cb] = code.data[24570 len 32 * sub_4320a6cb]
        mem[(32 * sub_4320a6cb) + 128] = sub_4320a6cb
        mem[(32 * sub_4320a6cb) + 160 len 32 * sub_4320a6cb] = code.data[24570 len 32 * sub_4320a6cb]
    idx = 1
    while uint32(idx) <= sub_4320a6cb:
        mem[0] = uint32(idx)
        mem[32] = 3
        require uint32(idx - 1) < sub_4320a6cb
        mem[(32 * uint32(idx - 1)) + 128] = stor3[idx << 224]
        require uint32(idx - 1) < mem[(32 * sub_4320a6cb) + 128]
        mem[(32 * sub_4320a6cb) + (32 * uint32(idx - 1)) + 160] = uint32(idx)
        idx = idx + 1
        continue 
    mem[(64 * sub_4320a6cb) + 160] = 64
    mem[(64 * sub_4320a6cb) + 224] = sub_4320a6cb
    mem[(64 * sub_4320a6cb) + 256 len floor32(sub_4320a6cb)] = mem[128 len floor32(sub_4320a6cb)]
    mem[(64 * sub_4320a6cb) + 192] = (32 * sub_4320a6cb) + 96
    mem[(98 * sub_4320a6cb) + 256] = mem[(32 * sub_4320a6cb) + 128]
    mem[(98 * sub_4320a6cb) + 288 len floor32(mem[(32 * sub_4320a6cb) + 128])] = mem[(32 * sub_4320a6cb) + 160 len floor32(mem[(32 * sub_4320a6cb) + 128])]
    return memory
      from (64 * sub_4320a6cb) + 160
       len (32 * mem[(32 * sub_4320a6cb) + 128]) + (161 * sub_4320a6cb) + 128
}

function sub_e4c59a17(?) {
    if not sub_8dff9f92:
        mem[(32 * sub_8dff9f92) + 128] = sub_8dff9f92
    else:
        mem[128 len 32 * sub_8dff9f92] = code.data[24570 len 32 * sub_8dff9f92]
        mem[(32 * sub_8dff9f92) + 128] = sub_8dff9f92
        mem[(32 * sub_8dff9f92) + 160 len 32 * sub_8dff9f92] = code.data[24570 len 32 * sub_8dff9f92]
    idx = 1
    while uint32(idx) <= sub_8dff9f92:
        mem[0] = uint32(idx)
        mem[32] = 9
        require uint32(idx - 1) < sub_8dff9f92
        mem[(32 * uint32(idx - 1)) + 128] = stor9[idx << 224]
        require uint32(idx - 1) < mem[(32 * sub_8dff9f92) + 128]
        mem[(32 * sub_8dff9f92) + (32 * uint32(idx - 1)) + 160] = uint32(idx)
        idx = idx + 1
        continue 
    mem[(64 * sub_8dff9f92) + 160] = 64
    mem[(64 * sub_8dff9f92) + 224] = sub_8dff9f92
    mem[(64 * sub_8dff9f92) + 256 len floor32(sub_8dff9f92)] = mem[128 len floor32(sub_8dff9f92)]
    mem[(64 * sub_8dff9f92) + 192] = (32 * sub_8dff9f92) + 96
    mem[(98 * sub_8dff9f92) + 256] = mem[(32 * sub_8dff9f92) + 128]
    mem[(98 * sub_8dff9f92) + 288 len floor32(mem[(32 * sub_8dff9f92) + 128])] = mem[(32 * sub_8dff9f92) + 160 len floor32(mem[(32 * sub_8dff9f92) + 128])]
    return memory
      from (64 * sub_8dff9f92) + 160
       len (32 * mem[(32 * sub_8dff9f92) + 128]) + (161 * sub_8dff9f92) + 128
}

function sub_b83112ab(?) {
    if arg2 < 1:
        if Mask(80, 0, arg1) < 10:
            return 1
        idx = 10000
        while Mask(80, 0, Mask(80, 0, arg1) / 10) > Mask(80, 0, idx):
            idx = 10 * idx
            continue 
        s = idx
        while Mask(80, 0, Mask(80, 0, arg1) / 10) < Mask(80, 0, s):
            s = Mask(80, 0, s) / 10
            continue 
        if Mask(80, 0, arg1) < Mask(80, 0, 50 * s):
            return Mask(80, 0, s)
    else:
        idx = 1
        s = 1
        while uint8(idx) <= uint8(arg2) / 2:
            idx = idx + 1
            s = 10 * s
            continue 
        if Mask(80, 0, arg1) < Mask(80, 0, (100 * None) + 10):
            return 1
        require Mask(80, 0, (10 * None) + 1)
        idx = 10000
        while Mask(80, 0, Mask(80, 0, Mask(80, 0, arg1) / 10) / Mask(80, 0, (10 * None) + 1)) > Mask(80, 0, idx):
            idx = 10 * idx
            continue 
        s = idx
        while Mask(80, 0, Mask(80, 0, Mask(80, 0, arg1) / 10) / Mask(80, 0, (10 * None) + 1)) < Mask(80, 0, s):
            s = Mask(80, 0, s) / 10
            continue 
        if bool(arg2) != 1:
            if Mask(80, 0, arg1) >= Mask(80, 0, (50 * s) + (500 * None * s)):
                return Mask(80, 0, 10 * s)
        else:
            if Mask(80, 0, arg1) < Mask(80, 0, (50 * s) + (500 * None * s)):
                return Mask(80, 0, s)
    return Mask(80, 0, 5 * s)
}

function sub_cae9de43(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    require stor4[msg.sender]
    require sub_082c288f[msg.sender]
    require not stor15[stor16[msg.sender]]
    require arg3.length == arg4.length
    idx = 0
    s = 0
    while uint32(idx) < arg3.length:
        require uint32(idx) < arg4.length
        idx = idx + 1
        s = mem[(32 * arg3.length) + (32 * uint32(idx)) + 179 len 13] + s
        continue 
    require uint128(Mask(104, 0, _27) * None) <= uint128(stor20[arg1 << 224][arg2 << 224][stor16[msg.sender]].field_128)
    uint128(stor20[arg1 << 224][arg2 << 224][stor16[msg.sender]].field_128) = uint128(uint128(stor20[arg1 << 224][arg2 << 224][stor16[msg.sender]].field_128) - (Mask(104, 0, _27) * None))
    idx = 0
    while uint32(idx) < arg3.length:
        require uint32(idx) < arg4.length
        require uint32(idx) < arg3.length
        mem[0] = mem[(32 * uint32(idx)) + 156 len 4]
        mem[32] = sha3(arg2 << 224, sha3(arg1 << 224, 20))
        uint128(stor20[arg1 << 224][arg2 << 224][mem[(32 * uint32(idx)) + 156 len 4]].field_128) = uint128(mem[(32 * arg3.length) + (32 * uint32(idx)) + 179 len 13] + uint128(stor20[arg1 << 224][arg2 << 224][mem[(32 * uint32(idx)) + 156 len 4]].field_128))
        idx = idx + 1
        continue 
}

function sub_ca7c2e4e(?) {
    require sub_082c288f[msg.sender]
    require not stor15[stor16[msg.sender]]
    require Mask(104, 0, arg2) <= uint128(stor20[arg1 << 224][1][stor16[msg.sender]].field_128)
    uint128(stor20[arg1 << 224][1][stor16[msg.sender]].field_128) = uint128(uint128(stor20[arg1 << 224][1][stor16[msg.sender]].field_128) - Mask(104, 0, arg2))
    call msg.sender with:
       value Mask(104, 0, arg2) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    uint32(stor22[arg1 << 224][stor16[msg.sender]].field_0) = uint32(uint32(stor22[arg1 << 224][stor16[msg.sender]].field_0) + 1)
    uint8(stor22[arg1 << 224][stor16[msg.sender]][1][uint32(stor22[arg1 << 224][stor16[msg.sender]].field_0) + 1 << 224].field_0) = 1
    stor22[arg1 << 224][stor16[msg.sender]][1][uint32(stor22[arg1 << 224][stor16[msg.sender]].field_0) + 1 << 224].field_8 % 16777216 = 0
    uint8(stor22[arg1 << 224][stor16[msg.sender]][1][uint32(stor22[arg1 << 224][stor16[msg.sender]].field_0) + 1 << 224].field_32) = 0
    Mask(104, 0, stor22[arg1 << 224][stor16[msg.sender]][1][uint32(stor22[arg1 << 224][stor16[msg.sender]].field_0) + 1 << 224].field_40) = Mask(104, 0, arg2)
    stor22[arg1 << 224][stor16[msg.sender]][1][uint32(stor22[arg1 << 224][stor16[msg.sender]].field_0) + 1 << 224].field_144 % 16777216 = 0
    uint64(stor22[arg1 << 224][stor16[msg.sender]][1][uint32(stor22[arg1 << 224][stor16[msg.sender]].field_0) + 1 << 224].field_168) = uint64(block.timestamp)
    stor22[arg1 << 224][stor16[msg.sender]][1][uint32(stor22[arg1 << 224][stor16[msg.sender]].field_0) + 1 << 224].field_232 % 16777216 = 0
    sub_a29685a5 = uint32(sub_a29685a5 + 1)
    emit 0x24e4b817: 1, arg2 << 152, block.timestamp << 192, sub_a29685a5, arg1, sub_082c288f[msg.sender]
}

function sub_dfdf577e(?) payable {
    require 1 == bool(stor0)
    require arg1 <= sub_4320a6cb
    if not sub_082c288f[address(msg.sender)]:
        sub_2d5a46ff = uint32(sub_2d5a46ff + 1)
        sub_082c288f[address(msg.sender)] = uint32(sub_2d5a46ff + 1)
        stor14[stor12] = msg.sender
    require uint128(msg.value + uint128(stor20[arg1 << 224][1][stor16[address(msg.sender)]].field_128)) >= uint128(stor20[arg1 << 224][1][stor16[address(msg.sender)]].field_128)
    require uint128(msg.value + uint128(stor20[arg1 << 224][1][stor16[address(msg.sender)]].field_128)) >= uint128(msg.value)
    uint128(stor20[arg1 << 224][1][stor16[address(msg.sender)]].field_128) = uint128(msg.value + uint128(stor20[arg1 << 224][1][stor16[address(msg.sender)]].field_128))
    uint32(stor22[arg1 << 224][stor16[address(msg.sender)]].field_0) = uint32(uint32(stor22[arg1 << 224][stor16[address(msg.sender)]].field_0) + 1)
    uint8(stor22[arg1 << 224][stor16[address(msg.sender)]][1][uint32(stor22[arg1 << 224][stor16[address(msg.sender)]].field_0) + 1 << 224].field_0) = 1
    stor22[arg1 << 224][stor16[address(msg.sender)]][1][uint32(stor22[arg1 << 224][stor16[address(msg.sender)]].field_0) + 1 << 224].field_8 % 16777216 = 0
    uint8(stor22[arg1 << 224][stor16[address(msg.sender)]][1][uint32(stor22[arg1 << 224][stor16[address(msg.sender)]].field_0) + 1 << 224].field_32) = 1
    Mask(104, 0, stor22[arg1 << 224][stor16[address(msg.sender)]][1][uint32(stor22[arg1 << 224][stor16[address(msg.sender)]].field_0) + 1 << 224].field_40) = Mask(104, 0, msg.value)
    stor22[arg1 << 224][stor16[address(msg.sender)]][1][uint32(stor22[arg1 << 224][stor16[address(msg.sender)]].field_0) + 1 << 224].field_144 % 16777216 = 0
    uint64(stor22[arg1 << 224][stor16[address(msg.sender)]][1][uint32(stor22[arg1 << 224][stor16[address(msg.sender)]].field_0) + 1 << 224].field_168) = uint64(block.timestamp)
    stor22[arg1 << 224][stor16[address(msg.sender)]][1][uint32(stor22[arg1 << 224][stor16[address(msg.sender)]].field_0) + 1 << 224].field_232 % 16777216 = 0
    sub_a29685a5 = uint32(sub_a29685a5 + 1)
    emit 0x6235021e: 1, msg.value << 152, block.timestamp << 192, sub_a29685a5, arg1, sub_082c288f[address(msg.sender)]
}

function sub_e8384e68(?) {
    if not stor4[msg.sender]:
        require msg.sender == operatorAddress
    idx = 1
    s = 0
    while uint32(idx) <= sub_2d5a46ff:
        mem[0] = uint32(idx)
        mem[32] = sha3(arg2 << 224, sha3(arg1 << 224, 20))
        if uint128(uint128(stor20[arg1 << 224][arg2 << 224][idx << 224].field_0) + uint128(stor20[arg1 << 224][arg2 << 224][idx << 224].field_128)) <= arg3:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = s + 1
        continue 
    if not uint32(s):
        mem[(32 * uint32(s)) + 128] = uint32(s)
    else:
        mem[128 len 32 * uint32(s)] = code.data[24570 len 32 * uint32(s)]
        mem[(32 * uint32(s)) + 128] = uint32(s)
        mem[(32 * uint32(s)) + 160 len 32 * uint32(s)] = code.data[24570 len 32 * uint32(s)]
    t = 0
    idx = 1
    t = 0
    while uint32(idx) <= sub_2d5a46ff:
        mem[0] = uint32(idx)
        mem[32] = sha3(arg2 << 224, sha3(arg1 << 224, 20))
        if uint128(uint128(stor20[arg1 << 224][arg2 << 224][idx << 224].field_128) + uint128(stor20[arg1 << 224][arg2 << 224][idx << 224].field_0)) < arg3:
            t = uint128(stor20[arg1 << 224][arg2 << 224][idx << 224].field_128) + uint128(stor20[arg1 << 224][arg2 << 224][idx << 224].field_0)
            idx = idx + 1
            t = t
            continue 
        require uint32(t) < uint32(s)
        mem[(32 * uint32(t)) + 128] = uint32(idx)
        require uint32(t) < mem[(32 * uint32(s)) + 128]
        mem[(32 * uint32(s)) + (32 * uint32(t)) + 160] = uint128(uint128(stor20[arg1 << 224][arg2 << 224][idx << 224].field_128) + uint128(stor20[arg1 << 224][arg2 << 224][idx << 224].field_0))
        t = uint128(stor20[arg1 << 224][arg2 << 224][idx << 224].field_128) + uint128(stor20[arg1 << 224][arg2 << 224][idx << 224].field_0)
        idx = idx + 1
        t = t + 1
        continue 
    mem[(64 * uint32(s)) + 160] = 64
    mem[(64 * uint32(s)) + 224] = uint32(s)
    mem[(64 * uint32(s)) + 256 len Mask(27, 5, s)] = mem[128 len Mask(27, 5, s)]
    mem[(64 * uint32(s)) + 192] = (32 * uint32(s)) + 96
    mem[(32 * uint32(s)) + (64 * uint32(s)) + 256] = mem[(32 * uint32(s)) + 128]
    mem[(32 * uint32(s)) + (64 * uint32(s)) + 288 len floor32(mem[(32 * uint32(s)) + 128])] = mem[(32 * uint32(s)) + 160 len floor32(mem[(32 * uint32(s)) + 128])]
    return Array(len=s << 224, data=mem[128 len Mask(27, 5, s)], mem[(64 * uint32(s)) + Mask(27, 5, s) + 256 len (32 * mem[(32 * uint32(s)) + 128]) + (32 * uint32(s)) + -Mask(27, 5, s) + 32]), 
           (32 * uint32(s)) + 96
}

function sub_cdcc7996(?) {
    require arg2 < 0xc097ce7bc90715b34b9f1000000001
    require stor10[address(arg4)]
    if not sub_082c288f[address(msg.sender)]:
        sub_2d5a46ff = uint32(sub_2d5a46ff + 1)
        sub_082c288f[address(msg.sender)] = uint32(sub_2d5a46ff + 1)
        stor14[stor12] = msg.sender
    require not stor15[stor16[address(msg.sender)]]
    if arg3 != 1:
        require bool(uint8(stor11[stor10[address(arg4)]].field_280)) == 1
        require arg2 <= uint128(stor20[arg1 << 224][stor10[address(arg4)]][stor16[address(msg.sender)]].field_128)
        uint128(stor20[arg1 << 224][stor10[address(arg4)]][stor16[address(msg.sender)]].field_128) = uint128(uint128(stor20[arg1 << 224][stor10[address(arg4)]][stor16[address(msg.sender)]].field_128) - arg2)
        require ext_code.size(arg4)
        call arg4.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    else:
        require bool(uint8(stor11[stor10[address(arg4)]].field_272)) == 1
        require 1 == bool(stor0)
        require arg1 <= sub_4320a6cb
        require ext_code.size(arg4)
        call arg4.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, this.address, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require uint128(arg2 + uint128(stor20[arg1 << 224][stor10[address(arg4)]][stor16[address(msg.sender)]].field_128)) >= uint128(stor20[arg1 << 224][stor10[address(arg4)]][stor16[address(msg.sender)]].field_128)
        require uint128(arg2 + uint128(stor20[arg1 << 224][stor10[address(arg4)]][stor16[address(msg.sender)]].field_128)) >= arg2
        uint128(stor20[arg1 << 224][stor10[address(arg4)]][stor16[address(msg.sender)]].field_128) = uint128(arg2 + uint128(stor20[arg1 << 224][stor10[address(arg4)]][stor16[address(msg.sender)]].field_128))
        require uint128(arg2 + uint128(stor20[arg1 << 224][stor10[address(arg4)]][stor16[address(msg.sender)]].field_128)) < 0xc097ce7bc90715b34b9f1000000001
    uint32(stor22[arg1 << 224][stor16[address(msg.sender)]].field_0) = uint32(uint32(stor22[arg1 << 224][stor16[address(msg.sender)]].field_0) + 1)
    uint32(stor22[arg1 << 224][stor16[address(msg.sender)]][1][uint32(stor22[arg1 << 224][stor16[address(msg.sender)]].field_0) + 1 << 224].field_0) = stor10[address(arg4)]
    uint8(stor22[arg1 << 224][stor16[address(msg.sender)]][1][uint32(stor22[arg1 << 224][stor16[address(msg.sender)]].field_0) + 1 << 224].field_32) = uint8(arg3)
    uint128(stor22[arg1 << 224][stor16[address(msg.sender)]][1][uint32(stor22[arg1 << 224][stor16[address(msg.sender)]].field_0) + 1 << 224].field_40) = arg2
    uint64(stor22[arg1 << 224][stor16[address(msg.sender)]][1][uint32(stor22[arg1 << 224][stor16[address(msg.sender)]].field_0) + 1 << 224].field_168) = uint64(block.timestamp)
    stor22[arg1 << 224][stor16[address(msg.sender)]][1][uint32(stor22[arg1 << 224][stor16[address(msg.sender)]].field_0) + 1 << 224].field_232 % 16777216 = Mask(24, 200, arg3) >> 200
    sub_a29685a5 = uint32(sub_a29685a5 + 1)
    if arg3 != 1:
        emit 0x24e4b817: stor10[address(arg4)], arg2 << 128, block.timestamp << 192, sub_a29685a5, arg1, sub_082c288f[address(msg.sender)]
    else:
        emit 0x6235021e: stor10[address(arg4)], arg2 << 128, block.timestamp << 192, sub_a29685a5, arg1, sub_082c288f[address(msg.sender)]
}

function sub_f3d5d60a(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    mem[(32 * arg1.length) + 160] = 0
    mem[(32 * arg1.length) + 192] = 0
    mem[(32 * arg1.length) + 224] = arg1.length
    if not arg1.length:
        mem[(64 * arg1.length) + 256] = arg1.length
        mem[64] = (98 * arg1.length) + 288
        s = (32 * arg1.length) + 128
        idx = 0
        while idx < arg1.length:
            require idx < mem[96]
            mem[0] = mem[(32 * idx) + 156 len 4]
            mem[32] = sha3(arg2 << 224, 19)
            _47 = sha3(mem[(32 * idx) + 156 len 4], sha3(arg2 << 224, 19))
            _48 = mem[64]
            mem[64] = mem[64] + 96
            mem[_48] = stor19[arg2 << 224][mem[(32 * idx) + 156 len 4]]
            mem[_48 + 32] = stor[_47].field_8
            mem[_48 + 64] = stor[_47].field_88
            require idx < mem[(32 * arg1.length) + 224]
            mem[(32 * arg1.length) + (32 * idx) + 256] = stor[_47].field_8
            require idx < mem[(64 * arg1.length) + 256]
            mem[(64 * arg1.length) + (32 * idx) + 288] = stor[_47].field_88
            s = _48
            idx = idx + 1
            continue 
        _43 = mem[64]
        mem[mem[64]] = 64
        mem[mem[64] + 64] = mem[(32 * arg1.length) + 224]
        _45 = mem[(32 * arg1.length) + 224]
        mem[mem[64] + 96 len floor32(mem[(32 * arg1.length) + 224])] = mem[(32 * arg1.length) + 256 len floor32(mem[(32 * arg1.length) + 224])]
        mem[mem[64] + 32] = (32 * _45) + 96
        mem[(32 * _45) + _43 + 96] = mem[(64 * arg1.length) + 256]
        _72 = mem[(64 * arg1.length) + 256]
        mem[(32 * _45) + _43 + 128 len floor32(mem[(64 * arg1.length) + 256])] = mem[(64 * arg1.length) + 288 len floor32(mem[(64 * arg1.length) + 256])]
        return memory
          from mem[64]
           len (32 * _72) + (32 * _45) + _43 + -mem[64] + 128
    mem[(32 * arg1.length) + 256 len 32 * arg1.length] = code.data[24570 len 32 * arg1.length]
    mem[(64 * arg1.length) + 256] = arg1.length
    mem[64] = (98 * arg1.length) + 288
    mem[(64 * arg1.length) + 288 len 32 * arg1.length] = code.data[24570 len 32 * arg1.length]
    s = (32 * arg1.length) + 128
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 156 len 4]
        mem[32] = sha3(arg2 << 224, 19)
        _54 = sha3(mem[(32 * idx) + 156 len 4], sha3(arg2 << 224, 19))
        _55 = mem[64]
        mem[64] = mem[64] + 96
        mem[_55] = stor19[arg2 << 224][mem[(32 * idx) + 156 len 4]]
        mem[_55 + 32] = stor[_54].field_8
        mem[_55 + 64] = stor[_54].field_88
        require idx < mem[(32 * arg1.length) + 224]
        mem[(32 * arg1.length) + (32 * idx) + 256] = stor[_54].field_8
        require idx < mem[(64 * arg1.length) + 256]
        mem[(64 * arg1.length) + (32 * idx) + 288] = stor[_54].field_88
        s = _55
        idx = idx + 1
        continue 
    _50 = mem[64]
    mem[mem[64]] = 64
    mem[mem[64] + 64] = mem[(32 * arg1.length) + 224]
    _52 = mem[(32 * arg1.length) + 224]
    mem[mem[64] + 96 len floor32(mem[(32 * arg1.length) + 224])] = mem[(32 * arg1.length) + 256 len floor32(mem[(32 * arg1.length) + 224])]
    mem[mem[64] + 32] = (32 * _52) + 96
    mem[(32 * _52) + _50 + 96] = mem[(64 * arg1.length) + 256]
    _75 = mem[(64 * arg1.length) + 256]
    mem[(32 * _52) + _50 + 128 len floor32(mem[(64 * arg1.length) + 256])] = mem[(64 * arg1.length) + 288 len floor32(mem[(64 * arg1.length) + 256])]
    return memory
      from mem[64]
       len (32 * _75) + (32 * _52) + _50 + -mem[64] + 128
}

function sub_cdf604e2(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if arg3:
        if sub_082c288f[msg.sender] != arg3:
            if sub_4b3488c2[arg3 << 224] < 2:
                if operatorAddress != msg.sender:
                    require stor4[msg.sender]
        mem[(32 * arg2.length) + 128] = arg2.length
        if not arg2.length:
            mem[(64 * arg2.length) + 160] = arg2.length
        else:
            mem[(32 * arg2.length) + 160 len 32 * arg2.length] = code.data[24570 len 32 * arg2.length]
            mem[(64 * arg2.length) + 160] = arg2.length
            mem[(64 * arg2.length) + 192 len 32 * arg2.length] = code.data[24570 len 32 * arg2.length]
        idx = 0
        while uint32(idx) < arg2.length:
            require uint32(idx) < arg2.length
            require uint32(idx) < mem[(32 * arg2.length) + 128]
            mem[(32 * arg2.length) + (32 * uint32(idx)) + 160] = uint128(stor20[arg1 << 224][mem[(32 * uint32(idx)) + 156 len 4]][arg3 << 224].field_128)
            require uint32(idx) < arg2.length
            mem[0] = arg3
            mem[32] = sha3(mem[(32 * uint32(idx)) + 156 len 4], sha3(arg1 << 224, 20))
            require uint32(idx) < mem[(64 * arg2.length) + 160]
            mem[(64 * arg2.length) + (32 * uint32(idx)) + 192] = uint128(stor20[arg1 << 224][mem[(32 * uint32(idx)) + 156 len 4]][arg3 << 224].field_0)
            idx = idx + 1
            continue 
    else:
        if sub_082c288f[msg.sender] != sub_082c288f[msg.sender]:
            if sub_4b3488c2[stor16[msg.sender]] < 2:
                if operatorAddress != msg.sender:
                    require stor4[msg.sender]
        mem[(32 * arg2.length) + 128] = arg2.length
        if not arg2.length:
            mem[(64 * arg2.length) + 160] = arg2.length
        else:
            mem[(32 * arg2.length) + 160 len 32 * arg2.length] = code.data[24570 len 32 * arg2.length]
            mem[(64 * arg2.length) + 160] = arg2.length
            mem[(64 * arg2.length) + 192 len 32 * arg2.length] = code.data[24570 len 32 * arg2.length]
        idx = 0
        while uint32(idx) < arg2.length:
            require uint32(idx) < arg2.length
            require uint32(idx) < mem[(32 * arg2.length) + 128]
            mem[(32 * arg2.length) + (32 * uint32(idx)) + 160] = uint128(stor20[arg1 << 224][mem[(32 * uint32(idx)) + 156 len 4]][stor16[msg.sender]].field_128)
            require uint32(idx) < arg2.length
            mem[0] = sub_082c288f[msg.sender]
            mem[32] = sha3(mem[(32 * uint32(idx)) + 156 len 4], sha3(arg1 << 224, 20))
            require uint32(idx) < mem[(64 * arg2.length) + 160]
            mem[(64 * arg2.length) + (32 * uint32(idx)) + 192] = uint128(stor20[arg1 << 224][mem[(32 * uint32(idx)) + 156 len 4]][stor16[msg.sender]].field_0)
            idx = idx + 1
            continue 
    mem[(98 * arg2.length) + 192] = 64
    mem[(98 * arg2.length) + 256] = mem[(32 * arg2.length) + 128]
    s = 0
    while None < 32 * mem[(32 * arg2.length) + 128]:
        mem[None + (98 * arg2.length) + 288] = mem[None + (32 * arg2.length) + 160]
        s = None + 32
        continue 
    mem[(98 * arg2.length) + 224] = (32 * mem[(32 * arg2.length) + 128]) + 96
    mem[(32 * mem[(32 * arg2.length) + 128]) + (98 * arg2.length) + 288] = mem[(64 * arg2.length) + 160]
    mem[(32 * mem[(32 * arg2.length) + 128]) + (98 * arg2.length) + 320 len floor32(mem[(64 * arg2.length) + 160])] = mem[(64 * arg2.length) + 192 len floor32(mem[(64 * arg2.length) + 160])]
    return 64, 
           (32 * mem[(32 * arg2.length) + 128]) + 96,
           mem[(98 * arg2.length) + 256 len (32 * mem[(64 * arg2.length) + 160]) + (32 * mem[(32 * arg2.length) + 128]) + 64]
}

function sub_dd7da322(?) {
    if Mask(80, 0, arg2) <= 0:
        return Mask(80, 0, arg2)
    if arg3 < 1:
        if Mask(80, 0, arg2) < 10:
            if arg1 != 1:
                return Mask(80, 0, arg2)
            return Mask(80, 0, Mask(80, 0, Mask(80, 0, arg2) - 1) + 1)
        idx = 10000
        while Mask(80, 0, Mask(80, 0, arg2) / 10) > Mask(80, 0, idx):
            idx = 10 * idx
            continue 
        s = idx
        while Mask(80, 0, Mask(80, 0, arg2) / 10) < Mask(80, 0, s):
            s = Mask(80, 0, s) / 10
            continue 
        if Mask(80, 0, arg2) < Mask(80, 0, 50 * s):
            if arg1 != 1:
                if Mask(80, 0, s):
                    return Mask(80, 0, Mask(80, 0, arg2) / Mask(80, 0, s) * s)
            else:
                if Mask(80, 0, s):
                    return Mask(80, 0, s + (Mask(80, 0, Mask(80, 0, arg2) - 1) / Mask(80, 0, s) * s))
            ('iszero', ('mask_shl', 80, 0, 0, ('var', 1)))
        else:
            if arg1 != 1:
                if Mask(80, 0, 5 * s):
                    return Mask(80, 0, 5 * Mask(80, 0, arg2) / Mask(80, 0, 5 * s) * s)
            else:
                if Mask(80, 0, 5 * s):
                    return Mask(80, 0, (5 * s) + (5 * Mask(80, 0, Mask(80, 0, arg2) - 1) / Mask(80, 0, 5 * s) * s))
            ('iszero', ('mask_shl', 80, 0, 0, ('mul', 5, ('var', 1))))
    else:
        idx = 1
        s = 1
        while uint8(idx) <= uint8(arg3) / 2:
            idx = idx + 1
            s = 10 * s
            continue 
        if Mask(80, 0, arg2) < Mask(80, 0, (100 * None) + 10):
            if arg1 != 1:
                return Mask(80, 0, arg2)
            return Mask(80, 0, Mask(80, 0, Mask(80, 0, arg2) - 1) + 1)
        if Mask(80, 0, (10 * None) + 1):
            idx = 10000
            while Mask(80, 0, Mask(80, 0, Mask(80, 0, arg2) / 10) / Mask(80, 0, (10 * None) + 1)) > Mask(80, 0, idx):
                idx = 10 * idx
                continue 
            s = idx
            while Mask(80, 0, Mask(80, 0, Mask(80, 0, arg2) / 10) / Mask(80, 0, (10 * None) + 1)) < Mask(80, 0, s):
                s = Mask(80, 0, s) / 10
                continue 
            if bool(arg3) != 1:
                if Mask(80, 0, arg2) >= Mask(80, 0, (50 * s) + (500 * None * s)):
                    if arg1 != 1:
                        if Mask(80, 0, 10 * s):
                            return Mask(80, 0, 10 * Mask(80, 0, arg2) / Mask(80, 0, 10 * s) * s)
                    else:
                        if Mask(80, 0, 10 * s):
                            return Mask(80, 0, (10 * s) + (10 * Mask(80, 0, Mask(80, 0, arg2) - 1) / Mask(80, 0, 10 * s) * s))
                    ('iszero', ('mask_shl', 80, 0, 0, ('mul', 10, ('var', 1))))
                else:
                    if arg1 != 1:
                        if Mask(80, 0, 5 * s):
                            return Mask(80, 0, 5 * Mask(80, 0, arg2) / Mask(80, 0, 5 * s) * s)
                    else:
                        if Mask(80, 0, 5 * s):
                            return Mask(80, 0, (5 * s) + (5 * Mask(80, 0, Mask(80, 0, arg2) - 1) / Mask(80, 0, 5 * s) * s))
                    ('iszero', ('mask_shl', 80, 0, 0, ('mul', 5, ('var', 1))))
            else:
                if Mask(80, 0, arg2) < Mask(80, 0, (50 * s) + (500 * None * s)):
                    if arg1 != 1:
                        if Mask(80, 0, s):
                            return Mask(80, 0, Mask(80, 0, arg2) / Mask(80, 0, s) * s)
                    else:
                        if Mask(80, 0, s):
                            return Mask(80, 0, s + (Mask(80, 0, Mask(80, 0, arg2) - 1) / Mask(80, 0, s) * s))
                    ('iszero', ('mask_shl', 80, 0, 0, ('var', 1)))
                else:
                    if arg1 != 1:
                        if Mask(80, 0, 5 * s):
                            return Mask(80, 0, 5 * Mask(80, 0, arg2) / Mask(80, 0, 5 * s) * s)
                    else:
                        if Mask(80, 0, 5 * s):
                            return Mask(80, 0, (5 * s) + (5 * Mask(80, 0, Mask(80, 0, arg2) - 1) / Mask(80, 0, 5 * s) * s))
                    ('iszero', ('mask_shl', 80, 0, 0, ('mul', 5, ('var', 1))))
    revert
}

function sub_3cdc2374(?) {
    if sub_082c288f[msg.sender] == arg3:
        if uint32(stor22[arg2 << 224][arg3 << 224].field_0) <= arg1:
            mem[96] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
            if not uint32(stor22[arg2 << 224][arg3 << 224].field_0):
                mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
                mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
                mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
                idx = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
                s = arg1
                while uint32(idx) > 0:
                    require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[96]
                    mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_0)
                    require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]
                    mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160] = bool(uint8(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_32))
                    require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]
                    mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192] = uint128(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_40)
                    mem[0] = uint32(idx)
                    mem[32] = sha3(arg3 << 224, sha3(arg2 << 224, 22)) + 1
                    require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
                    mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + (32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 224] = uint64(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_168)
                    idx = idx - 1
                    s = uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx
                    continue 
                mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 224] = 128
                mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 352] = mem[96]
                mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 384 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 256] = (32 * mem[96]) + 160
                mem[(32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 384] = mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]
                mem[(32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 416 len floor32(mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128])] = mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160 len floor32(mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128])]
                mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 288] = (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 192
                mem[(32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 416] = mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]
                mem[(32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 448 len floor32(mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160])] = mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192 len floor32(mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160])]
                mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 320] = (32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 224
                mem[(32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 448] = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
                _1077 = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
                mem[(32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 480 len floor32(mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192])] = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 224 len floor32(mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192])]
                return 128, 
                       mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 256 len (32 * _1077) + (32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 224]
            mem[128 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)] = code.data[24570 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)]
            mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
            mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)] = code.data[24570 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)]
            mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
            mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)] = code.data[24570 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)]
            mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
            mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 224 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)] = code.data[24570 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)]
            idx = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
            s = arg1
            while uint32(idx) > 0:
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[96]
                mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_0)
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]
                mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160] = bool(uint8(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_32))
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]
                mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192] = uint128(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_40)
                mem[0] = uint32(idx)
                mem[32] = sha3(arg3 << 224, sha3(arg2 << 224, 22)) + 1
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
                mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + (32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 224] = uint64(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_168)
                idx = idx - 1
                s = uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx
                continue 
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 224] = 128
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 352] = mem[96]
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 384 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 256] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 384] = mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]
            mem[(32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 416 len floor32(mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128])] = mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160 len floor32(mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128])]
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 288] = (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 192
            mem[(32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 416] = mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]
            mem[(32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 448 len floor32(mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160])] = mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192 len floor32(mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160])]
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 320] = (32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 224
            mem[(32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 448] = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
            _1080 = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
            mem[(32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 480 len floor32(mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192])] = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 224 len floor32(mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192])]
            return 128, 
                   mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 256 len (32 * _1080) + (32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 224]
        mem[96] = arg1
        if not arg1:
            mem[(32 * uint32(arg1)) + 128] = arg1
            mem[(64 * uint32(arg1)) + 160] = arg1
            mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192] = arg1
            idx = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
            s = arg1
            while uint32(idx) > uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - arg1):
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[96]
                mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_0)
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(32 * uint32(arg1)) + 128]
                mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (32 * uint32(arg1)) + 160] = bool(uint8(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_32))
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(arg1)) + 160]
                mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (64 * uint32(arg1)) + 192] = uint128(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_40)
                mem[0] = uint32(idx)
                mem[32] = sha3(arg3 << 224, sha3(arg2 << 224, 22)) + 1
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
                mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + (32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 224] = uint64(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_168)
                idx = idx - 1
                s = uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx
                continue 
            mem[(uint32(arg1) << 7) + 224] = 128
            mem[(uint32(arg1) << 7) + 352] = mem[96]
            mem[(uint32(arg1) << 7) + 384 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(uint32(arg1) << 7) + 256] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + (uint32(arg1) << 7) + 384] = mem[(32 * uint32(arg1)) + 128]
            mem[(32 * mem[96]) + (uint32(arg1) << 7) + 416 len floor32(mem[(32 * uint32(arg1)) + 128])] = mem[(32 * uint32(arg1)) + 160 len floor32(mem[(32 * uint32(arg1)) + 128])]
            mem[(uint32(arg1) << 7) + 288] = (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 192
            mem[(32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 416] = mem[(64 * uint32(arg1)) + 160]
            _955 = mem[(64 * uint32(arg1)) + 160]
            mem[(32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 448 len floor32(mem[(64 * uint32(arg1)) + 160])] = mem[(64 * uint32(arg1)) + 192 len floor32(mem[(64 * uint32(arg1)) + 160])]
            mem[(uint32(arg1) << 7) + 320] = (32 * _955) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 224
            mem[(32 * _955) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 448] = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
            _1083 = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
            mem[(32 * _955) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 480 len floor32(mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192])] = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 224 len floor32(mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192])]
            return 128, 
                   mem[(uint32(arg1) << 7) + 256 len (32 * _1083) + (32 * _955) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 224]
        mem[128 len 32 * uint32(arg1)] = code.data[24570 len 32 * uint32(arg1)]
        mem[(32 * uint32(arg1)) + 128] = arg1
        mem[(32 * uint32(arg1)) + 160 len 32 * uint32(arg1)] = code.data[24570 len 32 * uint32(arg1)]
        mem[(64 * uint32(arg1)) + 160] = arg1
        mem[(64 * uint32(arg1)) + 192 len 32 * uint32(arg1)] = code.data[24570 len 32 * uint32(arg1)]
        mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192] = arg1
        mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 224 len 32 * uint32(arg1)] = code.data[24570 len 32 * uint32(arg1)]
        idx = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
        s = arg1
        while uint32(idx) > uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - arg1):
            require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[96]
            mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_0)
            require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(32 * uint32(arg1)) + 128]
            mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (32 * uint32(arg1)) + 160] = bool(uint8(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_32))
            require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(arg1)) + 160]
            mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (64 * uint32(arg1)) + 192] = uint128(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_40)
            mem[0] = uint32(idx)
            mem[32] = sha3(arg3 << 224, sha3(arg2 << 224, 22)) + 1
            require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
            mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + (32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 224] = uint64(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_168)
            idx = idx - 1
            s = uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx
            continue 
        mem[(uint32(arg1) << 7) + 224] = 128
        mem[(uint32(arg1) << 7) + 352] = mem[96]
        mem[(uint32(arg1) << 7) + 384 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[(uint32(arg1) << 7) + 256] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + (uint32(arg1) << 7) + 384] = mem[(32 * uint32(arg1)) + 128]
        mem[(32 * mem[96]) + (uint32(arg1) << 7) + 416 len floor32(mem[(32 * uint32(arg1)) + 128])] = mem[(32 * uint32(arg1)) + 160 len floor32(mem[(32 * uint32(arg1)) + 128])]
        mem[(uint32(arg1) << 7) + 288] = (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 192
        mem[(32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 416] = mem[(64 * uint32(arg1)) + 160]
        _958 = mem[(64 * uint32(arg1)) + 160]
        mem[(32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 448 len floor32(mem[(64 * uint32(arg1)) + 160])] = mem[(64 * uint32(arg1)) + 192 len floor32(mem[(64 * uint32(arg1)) + 160])]
        mem[(uint32(arg1) << 7) + 320] = (32 * _958) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 224
        mem[(32 * _958) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 448] = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
        _1086 = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
        mem[(32 * _958) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 480 len floor32(mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192])] = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 224 len floor32(mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192])]
        return 128, 
               mem[(uint32(arg1) << 7) + 256 len (32 * _1086) + (32 * _958) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 224]
    if sub_4b3488c2[arg3 << 224] >= 3:
        if uint32(stor22[arg2 << 224][arg3 << 224].field_0) <= arg1:
            mem[96] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
            if not uint32(stor22[arg2 << 224][arg3 << 224].field_0):
                mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
                mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
                mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
                idx = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
                s = arg1
                while uint32(idx) > 0:
                    require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[96]
                    mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_0)
                    require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]
                    mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160] = bool(uint8(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_32))
                    require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]
                    mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192] = uint128(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_40)
                    mem[0] = uint32(idx)
                    mem[32] = sha3(arg3 << 224, sha3(arg2 << 224, 22)) + 1
                    require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
                    mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + (32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 224] = uint64(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_168)
                    idx = idx - 1
                    s = uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx
                    continue 
                mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 224] = 128
                mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 352] = mem[96]
                mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 384 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 256] = (32 * mem[96]) + 160
                mem[(32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 384] = mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]
                mem[(32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 416 len floor32(mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128])] = mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160 len floor32(mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128])]
                mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 288] = (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 192
                mem[(32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 416] = mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]
                mem[(32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 448 len floor32(mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160])] = mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192 len floor32(mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160])]
                mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 320] = (32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 224
                mem[(32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 448] = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
                _1089 = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
                mem[(32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 480 len floor32(mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192])] = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 224 len floor32(mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192])]
                return 128, 
                       mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 256 len (32 * _1089) + (32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 224]
            mem[128 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)] = code.data[24570 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)]
            mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
            mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)] = code.data[24570 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)]
            mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
            mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)] = code.data[24570 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)]
            mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
            mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 224 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)] = code.data[24570 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)]
            idx = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
            s = arg1
            while uint32(idx) > 0:
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[96]
                mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_0)
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]
                mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160] = bool(uint8(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_32))
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]
                mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192] = uint128(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_40)
                mem[0] = uint32(idx)
                mem[32] = sha3(arg3 << 224, sha3(arg2 << 224, 22)) + 1
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
                mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + (32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 224] = uint64(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_168)
                idx = idx - 1
                s = uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx
                continue 
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 224] = 128
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 352] = mem[96]
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 384 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 256] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 384] = mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]
            mem[(32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 416 len floor32(mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128])] = mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160 len floor32(mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128])]
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 288] = (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 192
            mem[(32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 416] = mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]
            mem[(32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 448 len floor32(mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160])] = mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192 len floor32(mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160])]
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 320] = (32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 224
            mem[(32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 448] = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
            _1092 = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
            mem[(32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 480 len floor32(mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192])] = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 224 len floor32(mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192])]
            return 128, 
                   mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 256 len (32 * _1092) + (32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 224]
        mem[96] = arg1
        if not arg1:
            mem[(32 * uint32(arg1)) + 128] = arg1
            mem[(64 * uint32(arg1)) + 160] = arg1
            mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192] = arg1
            idx = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
            s = arg1
            while uint32(idx) > uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - arg1):
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[96]
                mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_0)
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(32 * uint32(arg1)) + 128]
                mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (32 * uint32(arg1)) + 160] = bool(uint8(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_32))
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(arg1)) + 160]
                mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (64 * uint32(arg1)) + 192] = uint128(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_40)
                mem[0] = uint32(idx)
                mem[32] = sha3(arg3 << 224, sha3(arg2 << 224, 22)) + 1
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
                mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + (32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 224] = uint64(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_168)
                idx = idx - 1
                s = uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx
                continue 
            mem[(uint32(arg1) << 7) + 224] = 128
            mem[(uint32(arg1) << 7) + 352] = mem[96]
            mem[(uint32(arg1) << 7) + 384 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(uint32(arg1) << 7) + 256] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + (uint32(arg1) << 7) + 384] = mem[(32 * uint32(arg1)) + 128]
            mem[(32 * mem[96]) + (uint32(arg1) << 7) + 416 len floor32(mem[(32 * uint32(arg1)) + 128])] = mem[(32 * uint32(arg1)) + 160 len floor32(mem[(32 * uint32(arg1)) + 128])]
            mem[(uint32(arg1) << 7) + 288] = (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 192
            mem[(32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 416] = mem[(64 * uint32(arg1)) + 160]
            _967 = mem[(64 * uint32(arg1)) + 160]
            mem[(32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 448 len floor32(mem[(64 * uint32(arg1)) + 160])] = mem[(64 * uint32(arg1)) + 192 len floor32(mem[(64 * uint32(arg1)) + 160])]
            mem[(uint32(arg1) << 7) + 320] = (32 * _967) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 224
            mem[(32 * _967) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 448] = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
            _1095 = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
            mem[(32 * _967) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 480 len floor32(mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192])] = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 224 len floor32(mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192])]
            return 128, 
                   mem[(uint32(arg1) << 7) + 256 len (32 * _1095) + (32 * _967) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 224]
        mem[128 len 32 * uint32(arg1)] = code.data[24570 len 32 * uint32(arg1)]
        mem[(32 * uint32(arg1)) + 128] = arg1
        mem[(32 * uint32(arg1)) + 160 len 32 * uint32(arg1)] = code.data[24570 len 32 * uint32(arg1)]
        mem[(64 * uint32(arg1)) + 160] = arg1
        mem[(64 * uint32(arg1)) + 192 len 32 * uint32(arg1)] = code.data[24570 len 32 * uint32(arg1)]
        mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192] = arg1
        mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 224 len 32 * uint32(arg1)] = code.data[24570 len 32 * uint32(arg1)]
        idx = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
        s = arg1
        while uint32(idx) > uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - arg1):
            require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[96]
            mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_0)
            require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(32 * uint32(arg1)) + 128]
            mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (32 * uint32(arg1)) + 160] = bool(uint8(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_32))
            require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(arg1)) + 160]
            mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (64 * uint32(arg1)) + 192] = uint128(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_40)
            mem[0] = uint32(idx)
            mem[32] = sha3(arg3 << 224, sha3(arg2 << 224, 22)) + 1
            require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
            mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + (32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 224] = uint64(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_168)
            idx = idx - 1
            s = uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx
            continue 
        mem[(uint32(arg1) << 7) + 224] = 128
        mem[(uint32(arg1) << 7) + 352] = mem[96]
        mem[(uint32(arg1) << 7) + 384 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[(uint32(arg1) << 7) + 256] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + (uint32(arg1) << 7) + 384] = mem[(32 * uint32(arg1)) + 128]
        mem[(32 * mem[96]) + (uint32(arg1) << 7) + 416 len floor32(mem[(32 * uint32(arg1)) + 128])] = mem[(32 * uint32(arg1)) + 160 len floor32(mem[(32 * uint32(arg1)) + 128])]
        mem[(uint32(arg1) << 7) + 288] = (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 192
        mem[(32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 416] = mem[(64 * uint32(arg1)) + 160]
        _970 = mem[(64 * uint32(arg1)) + 160]
        mem[(32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 448 len floor32(mem[(64 * uint32(arg1)) + 160])] = mem[(64 * uint32(arg1)) + 192 len floor32(mem[(64 * uint32(arg1)) + 160])]
        mem[(uint32(arg1) << 7) + 320] = (32 * _970) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 224
        mem[(32 * _970) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 448] = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
        _1098 = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
        mem[(32 * _970) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 480 len floor32(mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192])] = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 224 len floor32(mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192])]
        return 128, 
               mem[(uint32(arg1) << 7) + 256 len (32 * _1098) + (32 * _970) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 224]
    if msg.sender == operatorAddress:
        if uint32(stor22[arg2 << 224][arg3 << 224].field_0) <= arg1:
            mem[96] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
            if not uint32(stor22[arg2 << 224][arg3 << 224].field_0):
                mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
                mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
                mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
                idx = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
                s = arg1
                while uint32(idx) > 0:
                    require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[96]
                    mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_0)
                    require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]
                    mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160] = bool(uint8(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_32))
                    require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]
                    mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192] = uint128(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_40)
                    mem[0] = uint32(idx)
                    mem[32] = sha3(arg3 << 224, sha3(arg2 << 224, 22)) + 1
                    require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
                    mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + (32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 224] = uint64(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_168)
                    idx = idx - 1
                    s = uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx
                    continue 
                mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 224] = 128
                mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 352] = mem[96]
                mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 384 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
                mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 256] = (32 * mem[96]) + 160
                mem[(32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 384] = mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]
                mem[(32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 416 len floor32(mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128])] = mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160 len floor32(mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128])]
                mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 288] = (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 192
                mem[(32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 416] = mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]
                mem[(32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 448 len floor32(mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160])] = mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192 len floor32(mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160])]
                mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 320] = (32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 224
                mem[(32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 448] = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
                _1101 = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
                mem[(32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 480 len floor32(mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192])] = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 224 len floor32(mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192])]
                return 128, 
                       mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 256 len (32 * _1101) + (32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 224]
            mem[128 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)] = code.data[24570 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)]
            mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
            mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)] = code.data[24570 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)]
            mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
            mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)] = code.data[24570 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)]
            mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
            mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 224 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)] = code.data[24570 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)]
            idx = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
            s = arg1
            while uint32(idx) > 0:
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[96]
                mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_0)
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]
                mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160] = bool(uint8(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_32))
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]
                mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192] = uint128(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_40)
                mem[0] = uint32(idx)
                mem[32] = sha3(arg3 << 224, sha3(arg2 << 224, 22)) + 1
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
                mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + (32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 224] = uint64(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_168)
                idx = idx - 1
                s = uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx
                continue 
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 224] = 128
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 352] = mem[96]
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 384 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 256] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 384] = mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]
            mem[(32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 416 len floor32(mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128])] = mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160 len floor32(mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128])]
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 288] = (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 192
            mem[(32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 416] = mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]
            _976 = mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]
            mem[(32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 448 len floor32(mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160])] = mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192 len floor32(mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160])]
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 320] = (32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 224
            mem[(32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 448] = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
            _1104 = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
            mem[(32 * _976) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 480 len floor32(mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192])] = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 224 len floor32(mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192])]
            return 128, 
                   mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 256 len (32 * _1104) + (32 * _976) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 224]
        mem[96] = arg1
        if not arg1:
            mem[(32 * uint32(arg1)) + 128] = arg1
            mem[(64 * uint32(arg1)) + 160] = arg1
            mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192] = arg1
            idx = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
            s = arg1
            while uint32(idx) > uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - arg1):
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[96]
                mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_0)
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(32 * uint32(arg1)) + 128]
                mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (32 * uint32(arg1)) + 160] = bool(uint8(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_32))
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(arg1)) + 160]
                mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (64 * uint32(arg1)) + 192] = uint128(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_40)
                mem[0] = uint32(idx)
                mem[32] = sha3(arg3 << 224, sha3(arg2 << 224, 22)) + 1
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
                mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + (32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 224] = uint64(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_168)
                idx = idx - 1
                s = uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx
                continue 
            mem[(uint32(arg1) << 7) + 224] = 128
            mem[(uint32(arg1) << 7) + 352] = mem[96]
            mem[(uint32(arg1) << 7) + 384 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(uint32(arg1) << 7) + 256] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + (uint32(arg1) << 7) + 384] = mem[(32 * uint32(arg1)) + 128]
            mem[(32 * mem[96]) + (uint32(arg1) << 7) + 416 len floor32(mem[(32 * uint32(arg1)) + 128])] = mem[(32 * uint32(arg1)) + 160 len floor32(mem[(32 * uint32(arg1)) + 128])]
            mem[(uint32(arg1) << 7) + 288] = (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 192
            mem[(32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 416] = mem[(64 * uint32(arg1)) + 160]
            _979 = mem[(64 * uint32(arg1)) + 160]
            mem[(32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 448 len floor32(mem[(64 * uint32(arg1)) + 160])] = mem[(64 * uint32(arg1)) + 192 len floor32(mem[(64 * uint32(arg1)) + 160])]
            mem[(uint32(arg1) << 7) + 320] = (32 * _979) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 224
            mem[(32 * _979) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 448] = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
            _1107 = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
            mem[(32 * _979) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 480 len floor32(mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192])] = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 224 len floor32(mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192])]
            return 128, 
                   mem[(uint32(arg1) << 7) + 256 len (32 * _1107) + (32 * _979) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 224]
        mem[128 len 32 * uint32(arg1)] = code.data[24570 len 32 * uint32(arg1)]
        mem[(32 * uint32(arg1)) + 128] = arg1
        mem[(32 * uint32(arg1)) + 160 len 32 * uint32(arg1)] = code.data[24570 len 32 * uint32(arg1)]
        mem[(64 * uint32(arg1)) + 160] = arg1
        mem[(64 * uint32(arg1)) + 192 len 32 * uint32(arg1)] = code.data[24570 len 32 * uint32(arg1)]
        mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192] = arg1
        mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 224 len 32 * uint32(arg1)] = code.data[24570 len 32 * uint32(arg1)]
        idx = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
        s = arg1
        while uint32(idx) > uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - arg1):
            require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[96]
            mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_0)
            require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(32 * uint32(arg1)) + 128]
            mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (32 * uint32(arg1)) + 160] = bool(uint8(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_32))
            require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(arg1)) + 160]
            mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (64 * uint32(arg1)) + 192] = uint128(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_40)
            mem[0] = uint32(idx)
            mem[32] = sha3(arg3 << 224, sha3(arg2 << 224, 22)) + 1
            require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
            mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + (32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 224] = uint64(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_168)
            idx = idx - 1
            s = uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx
            continue 
        mem[(uint32(arg1) << 7) + 224] = 128
        mem[(uint32(arg1) << 7) + 352] = mem[96]
        mem[(uint32(arg1) << 7) + 384 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[(uint32(arg1) << 7) + 256] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + (uint32(arg1) << 7) + 384] = mem[(32 * uint32(arg1)) + 128]
        mem[(32 * mem[96]) + (uint32(arg1) << 7) + 416 len floor32(mem[(32 * uint32(arg1)) + 128])] = mem[(32 * uint32(arg1)) + 160 len floor32(mem[(32 * uint32(arg1)) + 128])]
        mem[(uint32(arg1) << 7) + 288] = (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 192
        mem[(32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 416] = mem[(64 * uint32(arg1)) + 160]
        _982 = mem[(64 * uint32(arg1)) + 160]
        mem[(32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 448 len floor32(mem[(64 * uint32(arg1)) + 160])] = mem[(64 * uint32(arg1)) + 192 len floor32(mem[(64 * uint32(arg1)) + 160])]
        mem[(uint32(arg1) << 7) + 320] = (32 * _982) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 224
        mem[(32 * _982) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 448] = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
        _1110 = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
        mem[(32 * _982) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 480 len floor32(mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192])] = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 224 len floor32(mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192])]
        return 128, 
               mem[(uint32(arg1) << 7) + 256 len (32 * _1110) + (32 * _982) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 224]
    require stor4[msg.sender]
    if uint32(stor22[arg2 << 224][arg3 << 224].field_0) <= arg1:
        mem[96] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
        if not uint32(stor22[arg2 << 224][arg3 << 224].field_0):
            mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
            mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
            mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
            idx = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
            s = arg1
            while uint32(idx) > 0:
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[96]
                mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_0)
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]
                mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160] = bool(uint8(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_32))
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]
                mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192] = uint128(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_40)
                mem[0] = uint32(idx)
                mem[32] = sha3(arg3 << 224, sha3(arg2 << 224, 22)) + 1
                require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
                mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + (32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 224] = uint64(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_168)
                idx = idx - 1
                s = uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx
                continue 
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 224] = 128
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 352] = mem[96]
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 384 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 256] = (32 * mem[96]) + 160
            mem[(32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 384] = mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]
            mem[(32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 416 len floor32(mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128])] = mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160 len floor32(mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128])]
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 288] = (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 192
            mem[(32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 416] = mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]
            mem[(32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 448 len floor32(mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160])] = mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192 len floor32(mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160])]
            mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 320] = (32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 224
            mem[(32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 448] = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
            _1113 = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
            mem[(32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 480 len floor32(mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192])] = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 224 len floor32(mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192])]
            return 128, 
                   mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 256 len (32 * _1113) + (32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 224]
        mem[128 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)] = code.data[24570 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)]
        mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
        mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)] = code.data[24570 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)]
        mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
        mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)] = code.data[24570 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)]
        mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192] = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
        mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 224 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)] = code.data[24570 len 32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)]
        idx = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
        s = arg1
        while uint32(idx) > 0:
            require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[96]
            mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_0)
            require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]
            mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160] = bool(uint8(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_32))
            require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]
            mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192] = uint128(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_40)
            mem[0] = uint32(idx)
            mem[32] = sha3(arg3 << 224, sha3(arg2 << 224, 22)) + 1
            require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
            mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + (32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 224] = uint64(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_168)
            idx = idx - 1
            s = uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx
            continue 
        mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 224] = 128
        mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 352] = mem[96]
        mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 384 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 256] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 384] = mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]
        mem[(32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 416 len floor32(mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128])] = mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160 len floor32(mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128])]
        mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 288] = (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 192
        mem[(32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 416] = mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]
        mem[(32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 448 len floor32(mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160])] = mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192 len floor32(mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160])]
        mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 320] = (32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 224
        mem[(32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 448] = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
        _1116 = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192]
        mem[(32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + (131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 480 len floor32(mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192])] = mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 224 len floor32(mem[(98 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 192])]
        return 128, 
               mem[(131 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 256 len (32 * _1116) + (32 * mem[(64 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 160]) + (32 * mem[(32 * uint32(stor22[arg2 << 224][arg3 << 224].field_0)) + 128]) + (32 * mem[96]) + 224]
    mem[96] = arg1
    if not arg1:
        mem[(32 * uint32(arg1)) + 128] = arg1
        mem[(64 * uint32(arg1)) + 160] = arg1
        mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192] = arg1
        idx = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
        s = arg1
        while uint32(idx) > uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - arg1):
            require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[96]
            mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_0)
            require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(32 * uint32(arg1)) + 128]
            mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (32 * uint32(arg1)) + 160] = bool(uint8(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_32))
            require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(arg1)) + 160]
            mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (64 * uint32(arg1)) + 192] = uint128(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_40)
            mem[0] = uint32(idx)
            mem[32] = sha3(arg3 << 224, sha3(arg2 << 224, 22)) + 1
            require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
            mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + (32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 224] = uint64(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_168)
            idx = idx - 1
            s = uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx
            continue 
        mem[(uint32(arg1) << 7) + 224] = 128
        mem[(uint32(arg1) << 7) + 352] = mem[96]
        mem[(uint32(arg1) << 7) + 384 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[(uint32(arg1) << 7) + 256] = (32 * mem[96]) + 160
        mem[(32 * mem[96]) + (uint32(arg1) << 7) + 384] = mem[(32 * uint32(arg1)) + 128]
        mem[(32 * mem[96]) + (uint32(arg1) << 7) + 416 len floor32(mem[(32 * uint32(arg1)) + 128])] = mem[(32 * uint32(arg1)) + 160 len floor32(mem[(32 * uint32(arg1)) + 128])]
        mem[(uint32(arg1) << 7) + 288] = (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 192
        mem[(32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 416] = mem[(64 * uint32(arg1)) + 160]
        _991 = mem[(64 * uint32(arg1)) + 160]
        mem[(32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 448 len floor32(mem[(64 * uint32(arg1)) + 160])] = mem[(64 * uint32(arg1)) + 192 len floor32(mem[(64 * uint32(arg1)) + 160])]
        mem[(uint32(arg1) << 7) + 320] = (32 * _991) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 224
        mem[(32 * _991) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 448] = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
        _1119 = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
        mem[(32 * _991) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 480 len floor32(mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192])] = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 224 len floor32(mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192])]
        return 128, 
               mem[(uint32(arg1) << 7) + 256 len (32 * _1119) + (32 * _991) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 224]
    mem[128 len 32 * uint32(arg1)] = code.data[24570 len 32 * uint32(arg1)]
    mem[(32 * uint32(arg1)) + 128] = arg1
    mem[(32 * uint32(arg1)) + 160 len 32 * uint32(arg1)] = code.data[24570 len 32 * uint32(arg1)]
    mem[(64 * uint32(arg1)) + 160] = arg1
    mem[(64 * uint32(arg1)) + 192 len 32 * uint32(arg1)] = code.data[24570 len 32 * uint32(arg1)]
    mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192] = arg1
    mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 224 len 32 * uint32(arg1)] = code.data[24570 len 32 * uint32(arg1)]
    idx = uint32(stor22[arg2 << 224][arg3 << 224].field_0)
    s = arg1
    while uint32(idx) > uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - arg1):
        require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[96]
        mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 128] = uint32(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_0)
        require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(32 * uint32(arg1)) + 128]
        mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (32 * uint32(arg1)) + 160] = bool(uint8(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_32))
        require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(arg1)) + 160]
        mem[(32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + (64 * uint32(arg1)) + 192] = uint128(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_40)
        mem[0] = uint32(idx)
        mem[32] = sha3(arg3 << 224, sha3(arg2 << 224, 22)) + 1
        require uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx) < mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
        mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + (32 * uint32(uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx)) + 224] = uint64(stor22[arg2 << 224][arg3 << 224][1][idx << 224].field_168)
        idx = idx - 1
        s = uint32(stor22[arg2 << 224][arg3 << 224].field_0) - idx
        continue 
    mem[(uint32(arg1) << 7) + 224] = 128
    mem[(uint32(arg1) << 7) + 352] = mem[96]
    mem[(uint32(arg1) << 7) + 384 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[(uint32(arg1) << 7) + 256] = (32 * mem[96]) + 160
    mem[(32 * mem[96]) + (uint32(arg1) << 7) + 384] = mem[(32 * uint32(arg1)) + 128]
    mem[(32 * mem[96]) + (uint32(arg1) << 7) + 416 len floor32(mem[(32 * uint32(arg1)) + 128])] = mem[(32 * uint32(arg1)) + 160 len floor32(mem[(32 * uint32(arg1)) + 128])]
    mem[(uint32(arg1) << 7) + 288] = (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 192
    mem[(32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 416] = mem[(64 * uint32(arg1)) + 160]
    _994 = mem[(64 * uint32(arg1)) + 160]
    mem[(32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 448 len floor32(mem[(64 * uint32(arg1)) + 160])] = mem[(64 * uint32(arg1)) + 192 len floor32(mem[(64 * uint32(arg1)) + 160])]
    mem[(uint32(arg1) << 7) + 320] = (32 * _994) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 224
    mem[(32 * _994) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 448] = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
    _1122 = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192]
    mem[(32 * _994) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + (uint32(arg1) << 7) + 480 len floor32(mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192])] = mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 224 len floor32(mem[(64 * uint32(arg1)) + (32 * uint32(arg1)) + 192])]
    return 128, 
           mem[(uint32(arg1) << 7) + 256 len (32 * _1122) + (32 * _994) + (32 * mem[(32 * uint32(arg1)) + 128]) + (32 * mem[96]) + 224]
}



}
