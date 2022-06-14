contract main {




// =====================  Runtime code  =====================


#
#  - sub_370760ed(?)
#
const getMultiplier = 100000


address owner;
array of struct sub_0f543432;
array of uint32 stor10;
mapping of uint32 sub_60bb4cbf;
array of uint256 stor3;
array of uint32 stor4;
array of uint256 stor5;
array of uint256 stor6;
array of uint256 stor7;
array of struct stor8;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037085;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037086;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037087;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037088;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037089;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037090;
array of struct stor87903029871075914254377627908054574944891091886930582284385770809450030037091;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037092;
array of uint32 stor87903029871075914254377627908054574944891091886930582284385770809450030037093;
array of uint256 stor9;

function sub_0977eb77(?) {
    if 0 >= uint256(sub_0f543432[arg1 << 224].field_2304):
        revert with 0, '25'
    return bool(uint8(sub_0f543432[arg1 << 224].field_2056))
}

function sub_0f543432(?) {
    if 0 >= uint256(sub_0f543432[arg1 << 224].field_2304):
        revert with 0, '25'
    return uint32(sub_0f543432[arg1 << 224].field_2560)
}

function sub_12081ef5(?) {
    idx = 896
    s = 0
    while sub_0f543432[arg1 << 224].length + 896 > idx + 32:
        mem[idx + 32] = uint256(sub_0f543432[arg1 << 224][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    idx = ceil32(sub_0f543432[arg1 << 224].length) + 928
    s = 0
    while ceil32(sub_0f543432[arg1 << 224].length) + sub_0f543432[arg1 << 224][1].length + 896 > idx:
        mem[idx + 32] = uint256(sub_0f543432[arg1 << 224][s + 1].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return uint256(sub_0f543432[arg1 << 224].field_1280), 
           uint256(sub_0f543432[arg1 << 224].field_1536),
           uint256(sub_0f543432[arg1 << 224].field_1792),
           bool(uint8(sub_0f543432[arg1 << 224].field_2048)),
           bool(uint8(sub_0f543432[arg1 << 224].field_2056)),
           uint256(sub_0f543432[arg1 << 224].field_2304)
}

function sub_307e47cb(?) {
    if 0 >= uint256(sub_0f543432[arg1 << 224].field_2304):
        revert with 0, '25'
    return uint256(sub_0f543432[arg1 << 224].field_768)
}

function sub_60bb4cbf(?) {
    return uint32(sub_60bb4cbf[arg1[all]][arg2[all]])
}

function getOwner() {
    return owner
}

function sub_bcda2a76(?) {
    if 0 >= uint256(sub_0f543432[arg1 << 224].field_2304):
        revert with 0, '25'
    return uint256(sub_0f543432[arg1 << 224].field_1792)
}

function sub_c519b54b(?) {
    return uint8(stor5.length.field_8)
}

function sub_c7fe2366(?) {
    if 0 >= uint256(sub_0f543432[arg1 << 224].field_2304):
        revert with 0, '25'
    return uint256(sub_0f543432[arg1 << 224].field_2304)
}

function sub_cb50aa78(?) {
    if 0 >= uint256(sub_0f543432[arg1 << 224].field_2304):
        revert with 0, '25'
    return bool(uint8(sub_0f543432[arg1 << 224].field_2048))
}

function sub_cf1999da(?) {
    if 0 >= uint256(sub_0f543432[arg1 << 224].field_2304):
        revert with 0, '25'
    return uint256(sub_0f543432[arg1 << 224].field_1024)
}

function sub_d4e66db7(?) {
    if 0 >= uint256(sub_0f543432[arg1 << 224].field_2304):
        revert with 0, '25'
    return uint256(sub_0f543432[arg1 << 224].field_512)
}

function sub_db5a4e99(?) {
    require arg1 < stor4.length
    return sub_db5a4e99[uint8(arg1)]
}

function sub_e3b1e2fe(?) {
    return uint8(stor5.length.field_16)
}

function sub_f887b097(?) {
    return uint8(stor5.length)
}

function _fallback() payable {
    revert
}

function sub_1ada4339(?) {
    return (uint256(sub_0f543432[arg1 << 224].field_2304) > 0)
}

function sub_c38cc8ff(?) {
    return (uint256(sub_0f543432[arg1 << 224].field_2304) > 0)
}

function setOwner(address arg1) {
    if owner != msg.sender:
        revert with 0, '1'
    owner = arg1
}

function sub_5678fa73(?) {
    return uint8(stor5.length), uint8(stor5.length), uint8(stor5.length.field_16)
}

function sub_df7c6650(?) {
    if owner != msg.sender:
        revert with 0, '1'
    uint8(stor5.length) = arg1
    uint8(stor5.length.field_8) = arg2
    uint8(stor5.length.field_16) = arg3
}

function sub_e530cb17(?) {
    if owner != msg.sender:
        revert with 0, '1'
    require uint32(sub_0f543432[arg1 << 224].field_2560) > 0
    uint256(sub_0f543432[arg1 << 224].field_1280) = arg2
    uint256(sub_0f543432[arg1 << 224].field_1536) = arg3
    uint256(sub_0f543432[arg1 << 224].field_1792) = arg4
    uint8(sub_0f543432[arg1 << 224].field_2048) = uint8(arg5)
    Mask(248, 0, sub_0f543432[arg1 << 224].field_2056) = Mask(248, 0, arg6)
    Mask(240, 0, sub_0f543432[arg1 << 224].field_2064) = Mask(240, 16, arg5) >> 16
    uint256(sub_0f543432[arg1 << 224].field_2304) = arg7
    return 0
}

function bytes32ToStr(bytes32 arg1) {
    mem[128 len 1024] = code.data[9903 len 1024]
    idx = 0
    while idx < 32:
        require idx < 32
        mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('param', 'arg1')), 0)), ('var', 0)), 0) - 256
        idx = idx + 1
        continue 
    return 32, 32, mem[128]
}

function getInstruments() {
    if not stor4.length:
        mem[(32 * stor4.length) + 128] = stor4.length
    else:
        mem[128 len 32 * stor4.length] = code.data[9903 len 32 * stor4.length]
        mem[(32 * stor4.length) + 128] = stor4.length
        mem[(32 * stor4.length) + 160 len 32 * stor4.length] = code.data[9903 len 32 * stor4.length]
    idx = 0
    while idx < stor4.length:
        require idx < stor4.length
        mem[(32 * idx) + 128] = stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        require idx < stor4.length
        if 0 >= uint256(sub_0f543432[uint32(stor4[0.125 / idx].field_(32 * idx % 8) - 224)].field_2304):
            revert with 0, '25'
        mem[0] = stor('array', ('div', 0.125, ('var', 0)), ('name', 'stor4', 4))[uint8(idx)]
        mem[32] = 1
        require idx < mem[(32 * stor4.length) + 128]
        mem[(32 * stor4.length) + (32 * idx) + 160] = uint32(sub_0f543432[uint32(stor4[0.125 / idx].field_(32 * idx % 8) - 224)].field_2560)
        idx = idx + 1
        continue 
    mem[(64 * stor4.length) + 160] = 64
    mem[(64 * stor4.length) + 224] = stor4.length
    mem[(64 * stor4.length) + 256 len floor32(stor4.length)] = mem[128 len floor32(stor4.length)]
    mem[(64 * stor4.length) + 192] = (32 * stor4.length) + 96
    mem[(98 * stor4.length) + 256] = mem[(32 * stor4.length) + 128]
    s = 0
    while stor4.length < 32 * mem[(32 * stor4.length) + 128]:
        mem[(99 * stor4.length) + 288] = mem[(34 * stor4.length) + 160]
        s = stor4.length + 32
        continue 
    return memory
      from (64 * stor4.length) + 160
       len (32 * mem[(32 * stor4.length) + 128]) + (161 * stor4.length) + 128
}

function sub_e2491a34(?) {
    if uint256(sub_0f543432[arg1 << 224].field_2304) <= 0:
        return 0, 'Ticker not found'
    if 0 >= uint256(sub_0f543432[arg1 << 224].field_2304):
        revert with 0, '25'
    if not uint8(sub_0f543432[arg1 << 224].field_2048):
        return 0, 'Trade for instrument is forbided'
    if 0 >= uint256(sub_0f543432[arg1 << 224].field_2304):
        revert with 0, '25'
    if arg3 < 0:
        if not uint8(sub_0f543432[arg1 << 224].field_2056):
            return 0, 'Short for instrument is forbided'
    require ext_code.size(0x4454205ecd208cc580643bcd6bf710c9009b5a34)
    delegate 0x4454205ecd208cc580643bcd6bf710c9009b5a34.abs(int256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if delegate.return_data[0] < uint256(sub_0f543432[arg1 << 224].field_512):
        return 0, 'Volume too low'
    if 0 >= uint256(sub_0f543432[arg1 << 224].field_2304):
        revert with 0, '25'
    require ext_code.size(0x4454205ecd208cc580643bcd6bf710c9009b5a34)
    delegate 0x4454205ecd208cc580643bcd6bf710c9009b5a34.abs(int256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require uint256(sub_0f543432[arg1 << 224].field_1024)
    if delegate.return_data[0] % uint256(sub_0f543432[arg1 << 224].field_1024):
        return 0, 'VolStep is not correct'
    if 0 >= uint256(sub_0f543432[arg1 << 224].field_2304):
        revert with 0, '25'
    if arg2 <= uint256(sub_0f543432[arg1 << 224].field_768):
        return 1, 0
    return 0, 'Aim volume too huge'
}

function sub_1719b3d5(?) {
    mem[32] = 1
    mem[96] = sub_0f543432[arg1].length
    mem[0] = sha3(arg1, 1)
    mem[128] = uint256(sub_0f543432[arg1].field_0)
    idx = 128
    s = 0
    while sub_0f543432[arg1].length + 96 > idx:
        mem[idx + 32] = uint256(sub_0f543432[arg1][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(sub_0f543432[arg1].length) + ceil32(sub_0f543432[arg1][1].length) + 160
    mem[ceil32(sub_0f543432[arg1].length) + 128] = sub_0f543432[arg1][1].length
    mem[ceil32(sub_0f543432[arg1].length) + 160] = uint256(sub_0f543432[arg1][1].field_0)
    idx = ceil32(sub_0f543432[arg1].length) + 160
    s = 0
    while ceil32(sub_0f543432[arg1].length) + sub_0f543432[arg1][1].length + 128 > idx:
        mem[idx + 32] = uint256(sub_0f543432[arg1][s + 1].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_0f543432[arg1].length) + ceil32(sub_0f543432[arg1][1].length) + 224] = uint256(sub_0f543432[arg1].field_512)
    mem[ceil32(sub_0f543432[arg1].length) + ceil32(sub_0f543432[arg1][1].length) + 256] = uint256(sub_0f543432[arg1].field_768)
    mem[ceil32(sub_0f543432[arg1].length) + ceil32(sub_0f543432[arg1][1].length) + 288] = uint256(sub_0f543432[arg1].field_1024)
    mem[ceil32(sub_0f543432[arg1].length) + ceil32(sub_0f543432[arg1][1].length) + 320] = uint256(sub_0f543432[arg1].field_1280)
    mem[ceil32(sub_0f543432[arg1].length) + ceil32(sub_0f543432[arg1][1].length) + 352] = uint256(sub_0f543432[arg1].field_1536)
    mem[ceil32(sub_0f543432[arg1].length) + ceil32(sub_0f543432[arg1][1].length) + 384] = uint256(sub_0f543432[arg1].field_1792)
    mem[ceil32(sub_0f543432[arg1].length) + ceil32(sub_0f543432[arg1][1].length) + 416] = bool(uint8(sub_0f543432[arg1].field_2048))
    mem[ceil32(sub_0f543432[arg1].length) + ceil32(sub_0f543432[arg1][1].length) + 448] = bool(uint8(sub_0f543432[arg1].field_2056))
    mem[ceil32(sub_0f543432[arg1].length) + ceil32(sub_0f543432[arg1][1].length) + 480] = uint256(sub_0f543432[arg1].field_2304)
    mem[ceil32(sub_0f543432[arg1].length) + ceil32(sub_0f543432[arg1][1].length) + 512] = uint32(sub_0f543432[arg1].field_2560)
    mem[ceil32(sub_0f543432[arg1].length) + ceil32(sub_0f543432[arg1][1].length) + 160] = 384
    mem[ceil32(sub_0f543432[arg1].length) + ceil32(sub_0f543432[arg1][1].length) + 544] = sub_0f543432[arg1].length
    mem[ceil32(sub_0f543432[arg1].length) + ceil32(sub_0f543432[arg1][1].length) + 576 len ceil32(sub_0f543432[arg1].length)] = mem[128 len ceil32(sub_0f543432[arg1].length)]
    mem[ceil32(sub_0f543432[arg1].length) + ceil32(sub_0f543432[arg1][1].length) + 192] = sub_0f543432[arg1].length + 416
    mem[sub_0f543432[arg1].length + ceil32(sub_0f543432[arg1].length) + ceil32(sub_0f543432[arg1][1].length) + 576] = sub_0f543432[arg1][1].length
    mem[sub_0f543432[arg1].length + ceil32(sub_0f543432[arg1].length) + ceil32(sub_0f543432[arg1][1].length) + 608 len ceil32(sub_0f543432[arg1][1].length)] = mem[ceil32(sub_0f543432[arg1].length) + 160 len ceil32(sub_0f543432[arg1][1].length)]
    if not sub_0f543432[arg1][1].length % 32:
        return Array(len=sub_0f543432[arg1].length, data=mem[128 len ceil32(sub_0f543432[arg1].length)], mem[(2 * ceil32(sub_0f543432[arg1].length)) + ceil32(sub_0f543432[arg1][1].length) + 576 len sub_0f543432[arg1][1].length + sub_0f543432[arg1].length + -ceil32(sub_0f543432[arg1].length) + 32]), 
               sub_0f543432[arg1].length + 416,
               uint256(sub_0f543432[arg1].field_512),
               uint256(sub_0f543432[arg1].field_768),
               uint256(sub_0f543432[arg1].field_1024),
               uint256(sub_0f543432[arg1].field_1280),
               uint256(sub_0f543432[arg1].field_1536),
               uint256(sub_0f543432[arg1].field_1792),
               bool(uint8(sub_0f543432[arg1].field_2048)),
               bool(uint8(sub_0f543432[arg1].field_2056)),
               uint256(sub_0f543432[arg1].field_2304),
               uint32(sub_0f543432[arg1].field_2560)
    mem[floor32(sub_0f543432[arg1][1].length) + sub_0f543432[arg1].length + ceil32(sub_0f543432[arg1].length) + ceil32(sub_0f543432[arg1][1].length) + 608] = mem[floor32(sub_0f543432[arg1][1].length) + sub_0f543432[arg1].length + ceil32(sub_0f543432[arg1].length) + ceil32(sub_0f543432[arg1][1].length) + -sub_0f543432[arg1][1].length % 32 + 640 len sub_0f543432[arg1][1].length % 32]
    return Array(len=sub_0f543432[arg1].length, data=mem[128 len ceil32(sub_0f543432[arg1].length)], mem[(2 * ceil32(sub_0f543432[arg1].length)) + ceil32(sub_0f543432[arg1][1].length) + 576 len floor32(sub_0f543432[arg1][1].length) + sub_0f543432[arg1].length + -ceil32(sub_0f543432[arg1].length) + 64]), 
           sub_0f543432[arg1].length + 416,
           uint256(sub_0f543432[arg1].field_512),
           uint256(sub_0f543432[arg1].field_768),
           uint256(sub_0f543432[arg1].field_1024),
           uint256(sub_0f543432[arg1].field_1280),
           uint256(sub_0f543432[arg1].field_1536),
           uint256(sub_0f543432[arg1].field_1792),
           bool(uint8(sub_0f543432[arg1].field_2048)),
           bool(uint8(sub_0f543432[arg1].field_2056)),
           uint256(sub_0f543432[arg1].field_2304),
           uint32(sub_0f543432[arg1].field_2560)
}

function sub_63276d6e(?) {
    mem[96] = 96
    mem[128] = 96
    mem[160] = 0
    mem[192] = 0
    mem[224] = 0
    mem[256] = 0
    mem[288] = 0
    mem[320] = 0
    mem[352] = 0
    mem[384] = 0
    mem[416] = 0
    mem[448] = 0
    mem[32] = 1
    mem[864] = sub_0f543432[arg1 << 224].length
    mem[896] = uint256(sub_0f543432[arg1 << 224].field_0)
    idx = 896
    s = 0
    while sub_0f543432[arg1 << 224].length + 896 > idx + 32:
        mem[idx + 32] = uint256(sub_0f543432[arg1 << 224][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[480] = 864
    mem[64] = ceil32(sub_0f543432[arg1 << 224].length) + ceil32(sub_0f543432[arg1 << 224][1].length) + 928
    mem[ceil32(sub_0f543432[arg1 << 224].length) + 896] = sub_0f543432[arg1 << 224][1].length
    mem[0] = sha3(arg1 << 224, 1) + 1
    mem[ceil32(sub_0f543432[arg1 << 224].length) + 928] = uint256(sub_0f543432[arg1 << 224][1].field_0)
    idx = ceil32(sub_0f543432[arg1 << 224].length) + 928
    s = 0
    while ceil32(sub_0f543432[arg1 << 224].length) + sub_0f543432[arg1 << 224][1].length + 896 > idx:
        mem[idx + 32] = uint256(sub_0f543432[arg1 << 224][s + 1].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[512] = ceil32(sub_0f543432[arg1 << 224].length) + 896
    mem[544] = uint256(sub_0f543432[arg1 << 224].field_512)
    mem[576] = uint256(sub_0f543432[arg1 << 224].field_768)
    mem[608] = uint256(sub_0f543432[arg1 << 224].field_1024)
    mem[640] = uint256(sub_0f543432[arg1 << 224].field_1280)
    mem[672] = uint256(sub_0f543432[arg1 << 224].field_1536)
    mem[704] = uint256(sub_0f543432[arg1 << 224].field_1792)
    mem[736] = bool(uint8(sub_0f543432[arg1 << 224].field_2048))
    mem[768] = bool(uint8(sub_0f543432[arg1 << 224].field_2056))
    mem[800] = uint256(sub_0f543432[arg1 << 224].field_2304)
    mem[832] = uint32(sub_0f543432[arg1 << 224].field_2560)
    mem[ceil32(sub_0f543432[arg1 << 224].length) + ceil32(sub_0f543432[arg1 << 224][1].length) + 992] = uint256(sub_0f543432[arg1 << 224].field_512)
    mem[ceil32(sub_0f543432[arg1 << 224].length) + ceil32(sub_0f543432[arg1 << 224][1].length) + 1024] = uint256(sub_0f543432[arg1 << 224].field_768)
    mem[ceil32(sub_0f543432[arg1 << 224].length) + ceil32(sub_0f543432[arg1 << 224][1].length) + 1056] = uint256(sub_0f543432[arg1 << 224].field_1024)
    mem[ceil32(sub_0f543432[arg1 << 224].length) + ceil32(sub_0f543432[arg1 << 224][1].length) + 1088] = uint32(sub_0f543432[arg1 << 224].field_2560)
    mem[ceil32(sub_0f543432[arg1 << 224].length) + ceil32(sub_0f543432[arg1 << 224][1].length) + 928] = 192
    mem[ceil32(sub_0f543432[arg1 << 224].length) + ceil32(sub_0f543432[arg1 << 224][1].length) + 1120] = sub_0f543432[arg1 << 224].length
    mem[ceil32(sub_0f543432[arg1 << 224].length) + ceil32(sub_0f543432[arg1 << 224][1].length) + 1152 len ceil32(sub_0f543432[arg1 << 224].length)] = mem[896 len ceil32(sub_0f543432[arg1 << 224].length)]
    mem[ceil32(sub_0f543432[arg1 << 224].length) + ceil32(sub_0f543432[arg1 << 224][1].length) + 960] = sub_0f543432[arg1 << 224].length + 224
    mem[sub_0f543432[arg1 << 224].length + ceil32(sub_0f543432[arg1 << 224].length) + ceil32(sub_0f543432[arg1 << 224][1].length) + 1152] = sub_0f543432[arg1 << 224][1].length
    mem[sub_0f543432[arg1 << 224].length + ceil32(sub_0f543432[arg1 << 224].length) + ceil32(sub_0f543432[arg1 << 224][1].length) + 1184 len ceil32(sub_0f543432[arg1 << 224][1].length)] = mem[ceil32(sub_0f543432[arg1 << 224].length) + 928 len ceil32(sub_0f543432[arg1 << 224][1].length)]
    if not sub_0f543432[arg1 << 224][1].length % 32:
        return Array(len=sub_0f543432[arg1 << 224].length, data=mem[896 len ceil32(sub_0f543432[arg1 << 224].length)], mem[(2 * ceil32(sub_0f543432[arg1 << 224].length)) + ceil32(sub_0f543432[arg1 << 224][1].length) + 1152 len sub_0f543432[arg1 << 224][1].length + sub_0f543432[arg1 << 224].length + -ceil32(sub_0f543432[arg1 << 224].length) + 32]), 
               sub_0f543432[arg1 << 224].length + 224,
               uint256(sub_0f543432[arg1 << 224].field_512),
               uint256(sub_0f543432[arg1 << 224].field_768),
               uint256(sub_0f543432[arg1 << 224].field_1024),
               uint32(sub_0f543432[arg1 << 224].field_2560)
    mem[floor32(sub_0f543432[arg1 << 224][1].length) + sub_0f543432[arg1 << 224].length + ceil32(sub_0f543432[arg1 << 224].length) + ceil32(sub_0f543432[arg1 << 224][1].length) + 1184] = mem[floor32(sub_0f543432[arg1 << 224][1].length) + sub_0f543432[arg1 << 224].length + ceil32(sub_0f543432[arg1 << 224].length) + ceil32(sub_0f543432[arg1 << 224][1].length) + -sub_0f543432[arg1 << 224][1].length % 32 + 1216 len sub_0f543432[arg1 << 224][1].length % 32]
    return Array(len=sub_0f543432[arg1 << 224].length, data=mem[896 len ceil32(sub_0f543432[arg1 << 224].length)], mem[(2 * ceil32(sub_0f543432[arg1 << 224].length)) + ceil32(sub_0f543432[arg1 << 224][1].length) + 1152 len floor32(sub_0f543432[arg1 << 224][1].length) + sub_0f543432[arg1 << 224].length + -ceil32(sub_0f543432[arg1 << 224].length) + 64]), 
           sub_0f543432[arg1 << 224].length + 224,
           uint256(sub_0f543432[arg1 << 224].field_512),
           uint256(sub_0f543432[arg1 << 224].field_768),
           uint256(sub_0f543432[arg1 << 224].field_1024),
           uint32(sub_0f543432[arg1 << 224].field_2560)
}

function sub_e6dbd5f2(?) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if owner != msg.sender:
        revert with 0, '1'
    uint256(sub_0f543432[arg1 << 224][].field_0) = Array(len=arg2.length, data=arg2[all])
    uint256(sub_0f543432[arg1 << 224][1][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(sub_0f543432[arg1 << 224].field_512) = arg4
    uint256(sub_0f543432[arg1 << 224].field_768) = arg5
    uint256(sub_0f543432[arg1 << 224].field_1024) = arg6
    uint32(sub_0f543432[arg1 << 224].field_2560) = arg7
    uint256(sub_0f543432[arg1 << 224].field_1280) = 0
    uint256(sub_0f543432[arg1 << 224].field_1536) = 0
    uint256(sub_0f543432[arg1 << 224].field_1792) = 0
    uint16(sub_0f543432[arg1 << 224].field_2048) = 0
    uint256(sub_0f543432[arg1 << 224].field_2304) = 100
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160] = 256^(-(arg3.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160] or call.data[arg3 + floor32(arg3.length) + 36 len arg3.length % 32], mem[ceil32(arg2.length) + arg3.length + 160 len -(arg3.length % 32) + 32] and !(256^(-(arg3.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + ceil32(arg3.length) + arg3.length + 160] = 2
    _1762 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg3.length) + 160 len (arg3.length % 32) + 32])
    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160] = !(256^(-(arg2.length % 32) + 32) - 1) and call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] or 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160]
    mem[arg2.length + ceil32(arg2.length) + ceil32(arg3.length) + 160] = _1762
    uint32(stor[mem[ceil32(arg2.length) + ceil32(arg3.length) + floor32(arg2.length) + 160 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]]) = arg1
    stor3.length++
    if 31 >= sub_0f543432[arg1 << 224].length:
        stor3[stor3.length] = uint256(sub_0f543432[arg1 << 224].field_0)
        idx = 0
        while stor3[stor3.length].length + 31 / 32 > idx:
            stor3[(11 * stor3.length) + idx] = 0
            idx = idx + 1
            continue 
        if 31 >= sub_0f543432[arg1 << 224][1].length:
            storC257[stor3.length] = uint256(sub_0f543432[arg1 << 224].field_256)
            idx = 0
            while stor[(11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)]) = 0
                idx = idx + 1
                continue 
        else:
            storC257[stor3.length] = Mask(255, 1, (256 * not bool(sub_0f543432[arg1 << 224].field_256)) - 1 and uint256(sub_0f543432[arg1 << 224].field_256)) + 1
            if not Mask(255, 1, (256 * not bool(sub_0f543432[arg1 << 224].field_256)) - 1 and uint256(sub_0f543432[arg1 << 224].field_256)):
                idx = 0
                while stor[(11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while sub_0f543432[arg1 << 224][1].length + 31 / 32 > idx:
                    uint256(stor[s + sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)]) = uint256(sub_0f543432[arg1 << 224][idx + 1].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = sub_0f543432[arg1 << 224][1].length + 31 / 32
                while stor[(11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)]) = 0
                    idx = idx + 1
                    continue 
    else:
        stor3[stor3.length] = Mask(255, 1, uint256(sub_0f543432[arg1 << 224].field_0) and (256 * not bool(sub_0f543432[arg1 << 224].field_0)) - 1) + 1
        if not Mask(255, 1, uint256(sub_0f543432[arg1 << 224].field_0) and (256 * not bool(sub_0f543432[arg1 << 224].field_0)) - 1):
            idx = 0
            while stor3[stor3.length].length + 31 / 32 > idx:
                stor3[(11 * stor3.length) + idx] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while sub_0f543432[arg1 << 224].length + 31 / 32 > idx:
                stor3[(11 * stor3.length) + s] = uint256(sub_0f543432[arg1 << 224][idx].field_0)
                s = s + 1
                idx = idx + 1
                continue 
            idx = sub_0f543432[arg1 << 224].length + 31 / 32
            while stor3[stor3.length].length + 31 / 32 > idx:
                stor3[(11 * stor3.length) + idx] = 0
                idx = idx + 1
                continue 
        if 31 >= sub_0f543432[arg1 << 224][1].length:
            storC257[stor3.length] = uint256(sub_0f543432[arg1 << 224].field_256)
            idx = 0
            while stor[(11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 31 / 32 > idx:
                uint256(stor[idx + sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)]) = 0
                idx = idx + 1
                continue 
        else:
            storC257[stor3.length] = Mask(255, 1, (256 * not bool(sub_0f543432[arg1 << 224].field_256)) - 1 and uint256(sub_0f543432[arg1 << 224].field_256)) + 1
            if not Mask(255, 1, (256 * not bool(sub_0f543432[arg1 << 224].field_256)) - 1 and uint256(sub_0f543432[arg1 << 224].field_256)):
                idx = 0
                while stor[(11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)]) = 0
                    idx = idx + 1
                    continue 
            else:
                s = 0
                idx = 0
                while sub_0f543432[arg1 << 224][1].length + 31 / 32 > idx:
                    uint256(stor[s + sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)]) = uint256(sub_0f543432[arg1 << 224][idx + 1].field_0)
                    s = s + 1
                    idx = idx + 1
                    continue 
                idx = sub_0f543432[arg1 << 224][1].length + 31 / 32
                while stor[(11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 31 / 32 > idx:
                    uint256(stor[idx + sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)]) = 0
                    idx = idx + 1
                    continue 
    storC257[stor3.length] = uint256(sub_0f543432[arg1 << 224].field_512)
    storC257[stor3.length] = uint256(sub_0f543432[arg1 << 224].field_768)
    storC257[stor3.length] = uint256(sub_0f543432[arg1 << 224].field_1024)
    storC257[stor3.length] = uint256(sub_0f543432[arg1 << 224].field_1280)
    storC257[stor3.length] = uint256(sub_0f543432[arg1 << 224].field_1536)
    storC257[stor3.length] = uint256(sub_0f543432[arg1 << 224].field_1792)
    uint8(storC257[stor3.length].field_0) = uint8(bool(uint8(sub_0f543432[arg1 << 224].field_2048)))
    uint8(storC257[stor3.length].field_0) = uint8(bool(uint8(sub_0f543432[arg1 << 224].field_2048)))
    Mask(248, 0, storC257[stor3.length].field_8) = Mask(248, 0, bool(uint8(sub_0f543432[arg1 << 224].field_2056)))
    Mask(240, 0, storC257[stor3.length].field_16) = Mask(240, 16, bool(uint8(sub_0f543432[arg1 << 224].field_2048))) >> 16
    storC257[stor3.length] = uint256(sub_0f543432[arg1 << 224].field_2304)
    storC257[stor3.length] = uint32(sub_0f543432[arg1 << 224].field_2560)
    stor4.length++
    uint256(stor4[Mask(253, 0, stor4.length.field_3)].field_0) = uint256(stor4[Mask(253, 0, stor4.length.field_3)].field_0) and !(test266151307() * 256^(4 * stor4.length % 8)) or 256^(4 * stor4.length % 8) * arg1
    return 0
}

function sub_5923aa0a(?) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + (32 * arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + (32 * arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192] = arg4.length
    mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224] = arg5.length
    mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256] = arg6.length
    mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288 len 32 * arg6.length] = call.data[arg6 + 36 len 32 * arg6.length]
    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288] = arg7.length
    mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 320 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 320] = arg8.length
    mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352 len 32 * arg8.length] = call.data[arg8 + 36 len 32 * arg8.length]
    mem[64] = (32 * arg9.length) + (32 * arg8.length) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384
    mem[(32 * arg8.length) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352] = arg9.length
    mem[(32 * arg8.length) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 384 len 32 * arg9.length] = call.data[arg9 + 36 len 32 * arg9.length]
    if owner != msg.sender:
        revert with 0, '1'
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _490 = mem[(32 * idx) + 128]
        mem[0] = mem[(32 * idx) + 156 len 4]
        mem[32] = 1
        _491 = sha3(mem[(32 * idx) + 156 len 4], 1)
        require idx < mem[(32 * arg1.length) + 128]
        _493 = mem[(32 * idx) + (32 * arg1.length) + 160]
        _494 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        mem[_494 + 32 len 1024] = code.data[9903 len 1024]
        s = 0
        while s < 32:
            require s < mem[_494]
            mem[_494 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_493')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('var', '_493')), 0)), ('var', 1)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_493')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('var', '_493')), 0)), ('var', 1)), 0) - 256
            s = s + 1
            continue 
        _496 = mem[_494]
        mem[0] = sha3(mem[0], 1)
        uint256(stor[_491]) = (2 * _496) + 1
        t = sha3(_491)
        s = _494 + 32
        while _494 + _496 + 32 > s:
            uint256(stor[t]) = mem[s]
            t = t + 1
            s = s + 32
            continue 
        s = sha3(_491) + (Mask(251, 0, _496 + 31) >> 5)
        while sha3(_491) + (stor[_491].length + 31 / 32) > s:
            uint256(stor[s]) = 0
            s = s + 1
            continue 
        require idx < mem[(32 * arg2.length) + (32 * arg1.length) + 160]
        _535 = mem[(32 * idx) + (32 * arg2.length) + (32 * arg1.length) + 192]
        _536 = mem[64]
        mem[mem[64]] = 32
        mem[64] = mem[64] + 64
        mem[_536 + 32 len 1024] = code.data[9903 len 1024]
        s = 0
        while s < 32:
            require s < mem[_536]
            mem[_536 + s + 32 len 8] = Mask(8, -(('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_535')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('var', '_535')), 0)), ('var', 1)), 0) + 256, 0) << (('mask_shl', 8, ('add', 256, ('mul', -1, (('mask_shl', 256, 0, -3, ('var', '_535')), 0))), ('add', -11, (('mask_shl', 256, 0, -3, ('var', '_535')), 0)), ('var', 1)), 0) - 256
            s = s + 1
            continue 
        _962 = mem[_536]
        mem[0] = _491 + 1
        uint256(sub_0f543432[_491].field_0) = (2 * _962) + 1
        t = sha3(_491 + 1)
        s = _536 + 32
        while _536 + _962 + 32 > s:
            uint256(stor[t]) = mem[s]
            t = t + 1
            s = s + 32
            continue 
        s = sha3(_491 + 1) + (Mask(251, 0, _962 + 31) >> 5)
        while sha3(_491 + 1) + (stor[_491 + 1].length + 31 / 32) > s:
            uint256(stor[s]) = 0
            s = s + 1
            continue 
        require 3 * idx < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192]
        uint256(sub_60bb4cbf[_491]) = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (32 * 3 * idx) + 224]
        require (3 * idx) + 1 < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192]
        stor3[_491] = mem[(32 * (3 * idx) + 1) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
        require (3 * idx) + 2 < mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 192]
        uint256(stor4[_491].field_0) = mem[(32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (32 * (3 * idx) + 2) + 224]
        require 2 * idx < mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
        uint256(stor5[_491].field_0) = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (64 * idx) + 256]
        require (2 * idx) + 1 < mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 224]
        stor6[_491] = mem[(32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (32 * (2 * idx) + 1) + 256]
        require idx < mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 256]
        stor7[_491] = mem[(32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 288]
        require 2 * idx < mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288]
        uint8(stor8[_491].field_0) = uint8(bool(mem[(64 * idx) + (32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 320]))
        require (2 * idx) + 1 < mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 288]
        Mask(248, 0, stor8[_491].field_8) = Mask(248, 0, bool(mem[(32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (32 * (2 * idx) + 1) + 320]))
        require idx < mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 320]
        stor9[_491] = mem[(32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + (32 * idx) + 352]
        require idx < mem[(32 * arg8.length) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 352]
        stor10[_491] = mem[(32 * idx) + (32 * arg8.length) + (32 * arg7.length) + (32 * arg6.length) + (32 * arg5.length) + (32 * arg4.length) + (32 * arg3.length) + (32 * arg2.length) + (32 * arg1.length) + 412 len 4]
        _2344 = mem[64]
        mem[0] = _491 + 1
        mem[mem[64]] = uint256(stor[sha3(_491 + 1)])
        s = mem[64]
        t = sha3(mem[0])
        while _2344 + stor[_491 + 1].length > s + 32:
            mem[s + 32] = uint256(sub_0f543432[t].field_0)
            s = s + 32
            t = t + 1
            continue 
        mem[_2344 + stor[_491 + 1].length] = 2
        _2753 = sha3(mem[mem[64] len _2344 + stor[_491 + 1].length + -mem[64] + 32])
        _2754 = mem[64]
        mem[0] = _491
        mem[mem[64]] = uint256(stor[sha3(_491)])
        s = mem[64]
        t = sha3(mem[0])
        while _2754 + stor[_491].length > s + 32:
            mem[s + 32] = uint256(sub_0f543432[t].field_0)
            s = s + 32
            t = t + 1
            continue 
        mem[_2754 + stor[_491].length] = _2753
        uint32(stor[sha3(mem[mem[64] len _2754 + stor[_491].length + -mem[64] + 32])]) = uint32(_490)
        stor3.length++
        if 31 >= stor[_491].length:
            stor3[stor3.length] = uint256(stor[_491])
            s = sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5)
            while sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5) + (stor3[stor3.length].length + 31 / 32) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            if 31 >= stor[_491 + 1].length:
                storC257[stor3.length] = uint256(sub_0f543432[_491].field_0)
                s = sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)
                while sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4) + (stor[(11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            else:
                storC257[stor3.length] = Mask(255, 1, (256 * not bool(sub_0f543432[_491].field_0)) - 1 and uint256(sub_0f543432[_491].field_0)) + 1
                if not Mask(255, 1, (256 * not bool(sub_0f543432[_491].field_0)) - 1 and uint256(sub_0f543432[_491].field_0)):
                    s = sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)
                    while sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4) + (stor[(11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                else:
                    t = sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)
                    s = sha3(_491 + 1)
                    while sha3(_491 + 1) + (stor[_491 + 1].length + 31 / 32) > s:
                        uint256(stor[t]) = uint256(stor[s])
                        t = t + 1
                        s = s + 1
                        continue 
                    s = sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4) + (stor[_491 + 1].length + 31 / 32)
                    while sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4) + (stor[(11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
        else:
            stor3[stor3.length] = Mask(255, 1, (256 * not bool(stor[_491])) - 1 and uint256(stor[_491])) + 1
            if not Mask(255, 1, (256 * not bool(stor[_491])) - 1 and uint256(stor[_491])):
                s = sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5)
                while sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5) + (stor3[stor3.length].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            else:
                t = sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5)
                s = sha3(_491)
                while sha3(_491) + (stor[_491].length + 31 / 32) > s:
                    uint256(stor[t]) = uint256(stor[s])
                    t = t + 1
                    s = s + 1
                    continue 
                s = sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5) + (stor[_491].length + 31 / 32)
                while sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5) + (stor3[stor3.length].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            if 31 >= stor[_491 + 1].length:
                storC257[stor3.length] = uint256(sub_0f543432[_491].field_0)
                s = sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)
                while sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4) + (stor[(11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            else:
                storC257[stor3.length] = Mask(255, 1, (256 * not bool(sub_0f543432[_491].field_0)) - 1 and uint256(sub_0f543432[_491].field_0)) + 1
                if not Mask(255, 1, (256 * not bool(sub_0f543432[_491].field_0)) - 1 and uint256(sub_0f543432[_491].field_0)):
                    s = sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)
                    while sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4) + (stor[(11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                else:
                    t = sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4)
                    s = sha3(_491 + 1)
                    while sha3(_491 + 1) + (stor[_491 + 1].length + 31 / 32) > s:
                        uint256(stor[t]) = uint256(stor[s])
                        t = t + 1
                        s = s + 1
                        continue 
                    s = sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4) + (stor[_491 + 1].length + 31 / 32)
                    while sha3((11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4) + (stor[(11 * stor3.length) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a4].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
        storC257[stor3.length] = uint256(sub_60bb4cbf[_491])
        storC257[stor3.length] = stor3[_491]
        storC257[stor3.length] = uint256(stor4[_491].field_0)
        storC257[stor3.length] = uint256(stor5[_491].field_0)
        storC257[stor3.length] = stor6[_491]
        storC257[stor3.length] = stor7[_491]
        uint8(storC257[stor3.length].field_0) = uint8(bool(uint8(stor8[_491].field_0)))
        uint8(storC257[stor3.length].field_0) = uint8(bool(uint8(stor8[_491].field_0)))
        Mask(248, 0, storC257[stor3.length].field_8) = Mask(248, 0, bool(uint8(stor8[_491].field_8)))
        Mask(240, 0, storC257[stor3.length].field_16) = Mask(240, 16, bool(uint8(stor8[_491].field_0))) >> 16
        storC257[stor3.length] = stor9[_491]
        storC257[stor3.length] = stor10[_491]
        stor4.length++
        mem[0] = 4
        uint256(stor4[Mask(253, 0, stor4.length.field_3)].field_0) = !(test266151307() * 256^(4 * stor4.length % 8)) and uint256(stor4[Mask(253, 0, stor4.length.field_3)].field_0) or 256^(4 * stor4.length % 8) * uint32(_490)
        s = _491
        s = _490
        idx = idx + 1
        continue 
    return 0
}



}
