contract main {




// =====================  Runtime code  =====================


#
#  - sub_555f599c(?)
#
uint8 stor0;
address stor0;
address deployerAddress; offset 8
array of uint256 stor1;
array of address stor2;
mapping of uint256 sub_2dafc532;
mapping of uint256 sub_6eaef499;

function sub_05e2a985(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    _27 = mem[64]
    mem[mem[64] + 32 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 64 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    _50 = mem[64]
    mem[mem[64]] = arg1.length
    mem[64] = arg1.length + mem[64] + 32
    _52 = mem[_50]
    mem[mem[64] len floor32(mem[_50])] = mem[_50 + 32 len floor32(mem[_50])]
    mem[mem[64] + floor32(mem[_50])] = mem[mem[64] + floor32(mem[_50])] and 256^(-(mem[_50] % 32) + 32) - 1 or mem[_50 + floor32(mem[_50]) + 32] and !(256^(-(mem[_50] % 32) + 32) - 1)
    mem[0] = sha3(mem[mem[64] len arg1.length + _27 + _52 + -mem[64] + 32])
    require 0 < sub_2dafc532[mem[0]]
    require sub_2dafc532[mem[0]] - 1 < sub_05e2a985.length
    mem[mem[64]] = uint256(sub_05e2a985[stor4[mem[0]]].field_0)
    return uint256(sub_05e2a985[stor4[mem[0]]].field_0)
}

function sub_075d6d12(?) {
    require calldata.size - 4 >= 96
    require 0 < sub_6eaef499[address(arg1)]
    require sub_6eaef499[address(arg1)] - 1 < sub_05e2a985.length
    return uint256(stor[(22 * stor5[address(arg1)]) + ('name', 'sub_05e2a985', 3) - 17][address(arg2)][arg3].field_0)
}

function sub_1adc9372(?) {
    require calldata.size - 4 >= 32
    require 0 < sub_6eaef499[address(arg1)]
    require sub_6eaef499[address(arg1)] - 1 < sub_05e2a985.length
    return uint256(sub_05e2a985[stor5[address(arg1)]].field_0)
}

function sub_1d4446e0(?) {
    require calldata.size - 4 >= 64
    require 0 < arg1
    require arg1 <= sub_05e2a985.length
    require arg1 - 1 < sub_05e2a985.length
    require arg2 < uint256(sub_05e2a985[arg1].field_0)
    require arg1 - 1 < sub_05e2a985.length
    require arg2 < uint256(sub_05e2a985[arg1].field_0)
    require arg1 - 1 < sub_05e2a985.length
    require uint256(stor[(3 * arg2) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 1)].field_0) < uint256(sub_05e2a985[arg1].field_0)
    return uint256(stor[(3 * arg2) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 1)].field_256), 
           uint256(stor[(3 * arg2) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 1)].field_512),
           address(stor[(4 * uint256(stor[(3 * arg2) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 1)].field_0)) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 5)].field_512),
           uint256(stor[(4 * uint256(stor[(3 * arg2) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 1)].field_0)) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 5)].field_768)
}

function sub_21825d20(?) {
    require calldata.size - 4 >= 32
    require 0 < sub_2dafc532[arg1]
    require sub_2dafc532[arg1] - 1 < sub_05e2a985.length
    return uint256(sub_05e2a985[stor4[arg1]].field_0)
}

function sub_2dafc532(?) {
    require calldata.size - 4 >= 32
    require 0 < sub_2dafc532[arg1]
    return sub_2dafc532[arg1]
}

function sub_2f013a00(?) {
    return bool(uint8(stor0.field_0))
}

function sub_36c87e6e(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    _27 = mem[64]
    mem[mem[64] + 32 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 64 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    _50 = mem[64]
    mem[mem[64]] = arg1.length
    mem[64] = arg1.length + mem[64] + 32
    _52 = mem[_50]
    mem[mem[64] len floor32(mem[_50])] = mem[_50 + 32 len floor32(mem[_50])]
    mem[mem[64] + floor32(mem[_50])] = mem[mem[64] + floor32(mem[_50])] and 256^(-(mem[_50] % 32) + 32) - 1 or mem[_50 + floor32(mem[_50]) + 32] and !(256^(-(mem[_50] % 32) + 32) - 1)
    mem[0] = sha3(mem[mem[64] len arg1.length + _27 + _52 + -mem[64] + 32])
    require 0 < sub_2dafc532[mem[0]]
    require sub_2dafc532[mem[0]] - 1 < sub_05e2a985.length
    mem[mem[64]] = uint256(sub_05e2a985[stor4[mem[0]]].field_0)
    return uint256(sub_05e2a985[stor4[mem[0]]].field_0)
}

function sub_39364d14(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    _27 = mem[64]
    mem[mem[64] + 32 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 64 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    _50 = mem[64]
    mem[mem[64]] = arg1.length
    mem[64] = arg1.length + mem[64] + 32
    _52 = mem[_50]
    mem[mem[64] len floor32(mem[_50])] = mem[_50 + 32 len floor32(mem[_50])]
    mem[mem[64] + floor32(mem[_50])] = mem[mem[64] + floor32(mem[_50])] and 256^(-(mem[_50] % 32) + 32) - 1 or mem[_50 + floor32(mem[_50]) + 32] and !(256^(-(mem[_50] % 32) + 32) - 1)
    mem[0] = sha3(mem[mem[64] len arg1.length + _27 + _52 + -mem[64] + 32])
    require 0 < sub_2dafc532[mem[0]]
    require sub_2dafc532[mem[0]] - 1 < sub_05e2a985.length
    mem[mem[64]] = address(sub_05e2a985[stor4[mem[0]]].field_0)
    return address(sub_05e2a985[stor4[mem[0]]].field_0)
}

function sub_3e4f1b77(?) {
    require calldata.size - 4 >= 32
    require 0 < arg1
    require arg1 <= sub_05e2a985.length
    require arg1 - 1 < sub_05e2a985.length
    return address(sub_05e2a985[arg1].field_0)
}

function destructor() {
    return deployerAddress
}

function sub_45b8236b(?) {
    require calldata.size - 4 >= 32
    require 0 < arg1
    require arg1 <= sub_05e2a985.length
    require arg1 - 1 < sub_05e2a985.length
    return uint256(sub_05e2a985[arg1].field_0)
}

function operator() {
    return address(stor1.length)
}

function sub_6eaef499(?) {
    require calldata.size - 4 >= 64
    require 0 < sub_6eaef499[address(arg1)]
    require sub_6eaef499[address(arg1)] - 1 < sub_05e2a985.length
    require arg2 < uint256(sub_05e2a985[stor5[address(arg1)]].field_0)
    require sub_6eaef499[address(arg1)] - 1 < sub_05e2a985.length
    require arg2 < uint256(sub_05e2a985[stor5[address(arg1)]].field_0)
    require sub_6eaef499[address(arg1)] - 1 < sub_05e2a985.length
    require uint256(stor[(3 * arg2) + sha3((22 * stor5[address(arg1)]) + ('name', 'sub_05e2a985', 3) - 1)].field_0) < uint256(sub_05e2a985[stor5[address(arg1)]].field_0)
    return uint256(stor[(3 * arg2) + sha3((22 * stor5[address(arg1)]) + ('name', 'sub_05e2a985', 3) - 1)].field_256), 
           uint256(stor[(3 * arg2) + sha3((22 * stor5[address(arg1)]) + ('name', 'sub_05e2a985', 3) - 1)].field_512),
           address(stor[(4 * uint256(stor[(3 * arg2) + sha3((22 * stor5[address(arg1)]) + ('name', 'sub_05e2a985', 3) - 1)].field_0)) + sha3((22 * stor5[address(arg1)]) + ('name', 'sub_05e2a985', 3) - 5)].field_512),
           uint256(stor[(4 * uint256(stor[(3 * arg2) + sha3((22 * stor5[address(arg1)]) + ('name', 'sub_05e2a985', 3) - 1)].field_0)) + sha3((22 * stor5[address(arg1)]) + ('name', 'sub_05e2a985', 3) - 5)].field_768)
}

function sub_74c5f3fd(?) {
    require calldata.size - 4 >= 96
    require 0 < arg1
    require arg1 <= sub_05e2a985.length
    require arg1 - 1 < sub_05e2a985.length
    return uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 17][address(arg2)][arg3].field_0)
}

function sub_7e332b85(?) {
    require calldata.size - 4 >= 32
    require 0 < arg1
    require arg1 <= sub_05e2a985.length
    require arg1 - 1 < sub_05e2a985.length
    return uint256(sub_05e2a985[arg1].field_0)
}

function sub_98359c61(?) {
    require calldata.size - 4 >= 32
    require 0 < sub_2dafc532[arg1]
    require sub_2dafc532[arg1] - 1 < sub_05e2a985.length
    return uint256(sub_05e2a985[stor4[arg1]].field_0)
}

function sub_a3d34ba3(?) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    _29 = mem[64]
    mem[mem[64] + 32 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 64 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    _54 = mem[64]
    mem[mem[64]] = arg1.length
    mem[64] = arg1.length + mem[64] + 32
    _56 = mem[_54]
    mem[mem[64] len floor32(mem[_54])] = mem[_54 + 32 len floor32(mem[_54])]
    mem[mem[64] + floor32(mem[_54])] = mem[mem[64] + floor32(mem[_54])] and 256^(-(mem[_54] % 32) + 32) - 1 or mem[_54 + floor32(mem[_54]) + 32] and !(256^(-(mem[_54] % 32) + 32) - 1)
    mem[0] = sha3(mem[mem[64] len arg1.length + _29 + _56 + -mem[64] + 32])
    require 0 < sub_2dafc532[mem[0]]
    require sub_2dafc532[mem[0]] - 1 < sub_05e2a985.length
    mem[mem[64]] = uint256(stor[(22 * stor4[mem[0]]) + ('name', 'sub_05e2a985', 3) - 11][address(arg2)][arg3].field_0)
    return uint256(stor[(22 * stor4[mem[0]]) + ('name', 'sub_05e2a985', 3) - 11][address(arg2)][arg3].field_0)
}

function sub_aade75e2(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    _26 = mem[64]
    mem[mem[64] + 32 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 64 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    _48 = mem[64]
    mem[mem[64]] = arg1.length
    mem[64] = arg1.length + mem[64] + 32
    _50 = mem[_48]
    mem[arg1.length + _26 + 32 len floor32(mem[_48])] = mem[_48 + 32 len floor32(mem[_48])]
    mem[arg1.length + _26 + floor32(mem[_48]) + 32] = mem[arg1.length + _26 + floor32(mem[_48]) + 32] and 256^(-(mem[_48] % 32) + 32) - 1 or mem[_48 + floor32(mem[_48]) + 32] and !(256^(-(mem[_48] % 32) + 32) - 1)
    require 0 < sub_2dafc532[mem[arg1.length + _26 + 32 len _50]]
    return sub_2dafc532[mem[arg1.length + _26 + 32 len _50]]
}

function sub_ab53b0b4(?) {
    require calldata.size - 4 >= 96
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    _29 = mem[64]
    mem[mem[64] + 32 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 64 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    _54 = mem[64]
    mem[mem[64]] = arg1.length
    mem[64] = arg1.length + mem[64] + 32
    _56 = mem[_54]
    mem[mem[64] len floor32(mem[_54])] = mem[_54 + 32 len floor32(mem[_54])]
    mem[mem[64] + floor32(mem[_54])] = mem[mem[64] + floor32(mem[_54])] and 256^(-(mem[_54] % 32) + 32) - 1 or mem[_54 + floor32(mem[_54]) + 32] and !(256^(-(mem[_54] % 32) + 32) - 1)
    mem[0] = sha3(mem[mem[64] len arg1.length + _29 + _56 + -mem[64] + 32])
    require 0 < sub_2dafc532[mem[0]]
    require sub_2dafc532[mem[0]] - 1 < sub_05e2a985.length
    mem[mem[64]] = uint256(stor[(22 * stor4[mem[0]]) + ('name', 'sub_05e2a985', 3) - 17][address(arg2)][arg3].field_0)
    return uint256(stor[(22 * stor4[mem[0]]) + ('name', 'sub_05e2a985', 3) - 17][address(arg2)][arg3].field_0)
}

function sub_af30b312(?) {
    return address(stor2.length)
}

function sub_b75b74c5(?) {
    require calldata.size - 4 >= 96
    require 0 < sub_2dafc532[arg1]
    require sub_2dafc532[arg1] - 1 < sub_05e2a985.length
    return uint256(stor[(22 * stor4[arg1]) + ('name', 'sub_05e2a985', 3) - 17][address(arg2)][arg3].field_0)
}

function sub_c3a1e4a1(?) {
    require calldata.size - 4 >= 96
    require 0 < arg1
    require arg1 <= sub_05e2a985.length
    require arg1 - 1 < sub_05e2a985.length
    return uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 11][address(arg2)][arg3].field_0)
}

function sub_c66724a9(?) {
    require calldata.size - 4 >= 32
    require 0 < sub_6eaef499[address(arg1)]
    require sub_6eaef499[address(arg1)] - 1 < sub_05e2a985.length
    return uint256(sub_05e2a985[stor5[address(arg1)]].field_0)
}

function sub_c90d6761(?) {
    require calldata.size - 4 >= 64
    require 0 < sub_2dafc532[arg1]
    require sub_2dafc532[arg1] - 1 < sub_05e2a985.length
    require arg2 < uint256(sub_05e2a985[stor4[arg1]].field_0)
    require sub_2dafc532[arg1] - 1 < sub_05e2a985.length
    require arg2 < uint256(sub_05e2a985[stor4[arg1]].field_0)
    require sub_2dafc532[arg1] - 1 < sub_05e2a985.length
    require uint256(stor[(3 * arg2) + sha3((22 * stor4[arg1]) + ('name', 'sub_05e2a985', 3) - 1)].field_0) < uint256(sub_05e2a985[stor4[arg1]].field_0)
    return uint256(stor[(3 * arg2) + sha3((22 * stor4[arg1]) + ('name', 'sub_05e2a985', 3) - 1)].field_256), 
           uint256(stor[(3 * arg2) + sha3((22 * stor4[arg1]) + ('name', 'sub_05e2a985', 3) - 1)].field_512),
           address(stor[(4 * uint256(stor[(3 * arg2) + sha3((22 * stor4[arg1]) + ('name', 'sub_05e2a985', 3) - 1)].field_0)) + sha3((22 * stor4[arg1]) + ('name', 'sub_05e2a985', 3) - 5)].field_512),
           uint256(stor[(4 * uint256(stor[(3 * arg2) + sha3((22 * stor4[arg1]) + ('name', 'sub_05e2a985', 3) - 1)].field_0)) + sha3((22 * stor4[arg1]) + ('name', 'sub_05e2a985', 3) - 5)].field_768)
}

function sub_cdd8fea5(?) {
    return sub_05e2a985.length
}

function deployer() {
    return deployerAddress
}

function sub_df6148fe(?) {
    require calldata.size - 4 >= 32
    require 0 < sub_6eaef499[address(arg1)]
    return sub_6eaef499[address(arg1)]
}

function sub_e452fb95(?) {
    require calldata.size - 4 >= 32
    require 0 < sub_2dafc532[arg1]
    require sub_2dafc532[arg1] - 1 < sub_05e2a985.length
    return address(sub_05e2a985[stor4[arg1]].field_0)
}

function sub_e47b7f43(?) {
    require calldata.size - 4 >= 96
    require 0 < sub_6eaef499[address(arg1)]
    require sub_6eaef499[address(arg1)] - 1 < sub_05e2a985.length
    return uint256(stor[(22 * stor5[address(arg1)]) + ('name', 'sub_05e2a985', 3) - 11][address(arg2)][arg3].field_0)
}

function sub_ed971e88(?) {
    require calldata.size - 4 >= 96
    require 0 < sub_2dafc532[arg1]
    require sub_2dafc532[arg1] - 1 < sub_05e2a985.length
    return uint256(stor[(22 * stor4[arg1]) + ('name', 'sub_05e2a985', 3) - 11][address(arg2)][arg3].field_0)
}

function triggerSelfDestruction() {
    require deployerAddress == msg.sender
    require not uint8(stor0.field_0)
    emit TriggerSelfDestructionEvent(msg.sender);
    selfdestruct(msg.sender)
}

function sub_a2724c33(?) {
    require calldata.size - 4 >= 32
    return (sub_2dafc532[arg1] > 0)
}

function sub_3674c74e(?) {
    require calldata.size - 4 >= 32
    return (sub_6eaef499[address(arg1)] > 0)
}

function disableSelfDestruction() {
    require deployerAddress == msg.sender
    uint8(stor0.field_0) = 1
    emit SelfDestructionDisabledEvent(msg.sender);
}

function sub_d3b41bd2(?) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    if address(stor2.length) != arg1:
        address(stor2.length) = arg1
        emit 0xee9ef6d5: address(stor2.length), arg1
}

function setDeployer(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == deployerAddress
    require arg1
    require arg1 != this.address
    if deployerAddress != arg1:
        deployerAddress = arg1
        emit SetDeployerEvent(address(stor0.field_0), arg1);
}

function setOperator(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor1.length)
    require arg1
    require arg1 != this.address
    if address(stor1.length) != arg1:
        address(stor1.length) = arg1
        emit SetOperatorEvent(address(stor1.length), arg1);
}

function sub_fe86a69e(?) {
    require calldata.size - 4 >= 64
    require 0 < arg1
    require arg1 <= sub_05e2a985.length
    require arg1 - 1 < sub_05e2a985.length
    require arg1 - 1 < sub_05e2a985.length
    if msg.sender == address(stor1.length):
        require uint8(sub_05e2a985[arg1].field_0)
    else:
        require msg.sender == address(sub_05e2a985[arg1].field_0)
        require arg1 - 1 < sub_05e2a985.length
        require uint8(sub_05e2a985[arg1].field_0)
    require arg1 - 1 < sub_05e2a985.length
    uint256(sub_05e2a985[arg1].field_0) = arg2
    emit 0xd84350bb: arg1, uint256(sub_05e2a985[arg1].field_0), arg2
}

function sub_7c810447(?) {
    require calldata.size - 4 >= 64
    require 0 < sub_2dafc532[arg1]
    require sub_2dafc532[arg1] - 1 < sub_05e2a985.length
    require sub_2dafc532[arg1] - 1 < sub_05e2a985.length
    if msg.sender == address(stor1.length):
        require uint8(sub_05e2a985[stor4[arg1]].field_0)
    else:
        require msg.sender == address(sub_05e2a985[stor4[arg1]].field_0)
        require sub_2dafc532[arg1] - 1 < sub_05e2a985.length
        require uint8(sub_05e2a985[stor4[arg1]].field_0)
    require sub_2dafc532[arg1] - 1 < sub_05e2a985.length
    uint256(sub_05e2a985[stor4[arg1]].field_0) = arg2
    emit 0xd04c8ec1: arg1, uint256(sub_05e2a985[stor4[arg1]].field_0), arg2
}

function sub_a5923fcc(?) {
    require calldata.size - 4 >= 64
    require 0 < sub_6eaef499[address(arg1)]
    require sub_6eaef499[address(arg1)] - 1 < sub_05e2a985.length
    require sub_6eaef499[address(arg1)] - 1 < sub_05e2a985.length
    if msg.sender == address(stor1.length):
        require uint8(sub_05e2a985[stor5[address(arg1)]].field_0)
    else:
        require msg.sender == address(sub_05e2a985[stor5[address(arg1)]].field_0)
        require sub_6eaef499[address(arg1)] - 1 < sub_05e2a985.length
        require uint8(sub_05e2a985[stor5[address(arg1)]].field_0)
    require sub_6eaef499[address(arg1)] - 1 < sub_05e2a985.length
    uint256(sub_05e2a985[stor5[address(arg1)]].field_0) = arg2
    emit 0x77531751: address(arg1), uint256(sub_05e2a985[stor5[address(arg1)]].field_0), arg2
}

function sub_0ada9794(?) {
    require calldata.size - 4 >= 64
    require 0 < arg1
    require arg1 <= sub_05e2a985.length
    require arg1 - 1 < sub_05e2a985.length
    if not address(sub_05e2a985[arg1].field_0):
        require msg.sender == address(stor1.length)
    else:
        if msg.sender == address(stor1.length):
            require arg1 - 1 < sub_05e2a985.length
            require uint8(sub_05e2a985[arg1].field_0)
        else:
            require address(sub_05e2a985[arg1].field_0) == msg.sender
            require arg1 - 1 < sub_05e2a985.length
            require uint8(sub_05e2a985[arg1].field_0)
            require arg1 - 1 < sub_05e2a985.length
            if not uint8(sub_05e2a985[arg1].field_0):
                require arg2
    require arg1 - 1 < sub_05e2a985.length
    address(sub_05e2a985[arg1].field_0) = arg2
    if address(sub_05e2a985[arg1].field_0):
        sub_6eaef499[address(stor3[arg1].field_0)] = 0
    if arg2:
        sub_6eaef499[address(arg2)] = arg1 - 1
    emit 0x189f2e1a: arg1, address(sub_05e2a985[arg1].field_0), arg2
}

function sub_d2095df6(?) {
    require calldata.size - 4 >= 64
    require 0 < sub_2dafc532[arg1]
    require sub_2dafc532[arg1] - 1 < sub_05e2a985.length
    if not address(sub_05e2a985[stor4[arg1]].field_0):
        require msg.sender == address(stor1.length)
    else:
        if msg.sender == address(stor1.length):
            require sub_2dafc532[arg1] - 1 < sub_05e2a985.length
            require uint8(sub_05e2a985[stor4[arg1]].field_0)
        else:
            require address(sub_05e2a985[stor4[arg1]].field_0) == msg.sender
            require sub_2dafc532[arg1] - 1 < sub_05e2a985.length
            require uint8(sub_05e2a985[stor4[arg1]].field_0)
            require sub_2dafc532[arg1] - 1 < sub_05e2a985.length
            if not uint8(sub_05e2a985[stor4[arg1]].field_0):
                require arg2
    require sub_2dafc532[arg1] - 1 < sub_05e2a985.length
    address(sub_05e2a985[stor4[arg1]].field_0) = arg2
    if address(sub_05e2a985[stor4[arg1]].field_0):
        sub_6eaef499[address(stor3[stor4[arg1]].field_0)] = 0
    if arg2:
        sub_6eaef499[address(arg2)] = sub_2dafc532[arg1] - 1
    emit 0x1103101f: arg1, address(sub_05e2a985[stor4[arg1]].field_0), arg2
}

function sub_f4cbf8a0(?) {
    require calldata.size - 4 >= 64
    require 0 < sub_6eaef499[address(arg1)]
    require sub_6eaef499[address(arg1)] - 1 < sub_05e2a985.length
    if not address(sub_05e2a985[stor5[address(arg1)]].field_0):
        require msg.sender == address(stor1.length)
    else:
        if msg.sender == address(stor1.length):
            require sub_6eaef499[address(arg1)] - 1 < sub_05e2a985.length
            require uint8(sub_05e2a985[stor5[address(arg1)]].field_0)
        else:
            require address(sub_05e2a985[stor5[address(arg1)]].field_0) == msg.sender
            require sub_6eaef499[address(arg1)] - 1 < sub_05e2a985.length
            require uint8(sub_05e2a985[stor5[address(arg1)]].field_0)
            require sub_6eaef499[address(arg1)] - 1 < sub_05e2a985.length
            if not uint8(sub_05e2a985[stor5[address(arg1)]].field_0):
                require arg2
    require sub_6eaef499[address(arg1)] - 1 < sub_05e2a985.length
    address(sub_05e2a985[stor5[address(arg1)]].field_0) = arg2
    if address(sub_05e2a985[stor5[address(arg1)]].field_0):
        sub_6eaef499[address(stor3[sub_6eaef499[address(arg1)]].field_0)] = 0
    if arg2:
        sub_6eaef499[address(arg2)] = sub_6eaef499[address(arg1)] - 1
    emit 0xfc42fbac: address(arg1), arg2
}

function sub_03a9d054(?) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    _26 = mem[64]
    mem[mem[64] + 32 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 64 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    _48 = mem[64]
    mem[mem[64]] = arg1.length
    mem[64] = arg1.length + mem[64] + 32
    _50 = mem[_48]
    mem[arg1.length + _26 + 32 len floor32(mem[_48])] = mem[_48 + 32 len floor32(mem[_48])]
    mem[arg1.length + _26 + floor32(mem[_48]) + 32] = mem[arg1.length + _26 + floor32(mem[_48]) + 32] and 256^(-(mem[_48] % 32) + 32) - 1 or mem[_48 + floor32(mem[_48]) + 32] and !(256^(-(mem[_48] % 32) + 32) - 1)
    return (sub_2dafc532[mem[arg1.length + _26 + 32 len _50]] > 0)
}

function hashName(string arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    _25 = mem[64]
    mem[mem[64] + 32 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 64 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    _46 = mem[64]
    mem[mem[64]] = arg1.length
    mem[64] = arg1.length + mem[64] + 32
    _48 = mem[_46]
    mem[mem[64] len floor32(mem[_46])] = mem[_46 + 32 len floor32(mem[_46])]
    mem[mem[64] + floor32(mem[_46])] = mem[mem[64] + floor32(mem[_46])] and 256^(-(mem[_46] % 32) + 32) - 1 or mem[_46 + floor32(mem[_46]) + 32] and !(256^(-(mem[_46] % 32) + 32) - 1)
    mem[mem[64]] = sha3(mem[mem[64] len arg1.length + _25 + _48 + -mem[64] + 32])
    return memory
      from mem[64]
       len 32
}

function sub_ad24e3db(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    _40 = mem[64]
    mem[mem[64] + 32 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 64 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    _76 = mem[64]
    mem[mem[64]] = arg1.length
    mem[64] = arg1.length + mem[64] + 32
    _78 = mem[_76]
    mem[arg1.length + _40 + 32 len floor32(mem[_76])] = mem[_76 + 32 len floor32(mem[_76])]
    mem[arg1.length + _40 + floor32(mem[_76]) + 32] = mem[arg1.length + _40 + floor32(mem[_76]) + 32] and 256^(-(mem[_76] % 32) + 32) - 1 or mem[_76 + floor32(mem[_76]) + 32] and !(256^(-(mem[_76] % 32) + 32) - 1)
    mem[0] = sha3(mem[arg1.length + _40 + 32 len _78])
    require 0 < sub_2dafc532[mem[arg1.length + _40 + 32 len _78]]
    require sub_2dafc532[mem[arg1.length + _40 + 32 len _78]] - 1 < sub_05e2a985.length
    require sub_2dafc532[mem[arg1.length + _40 + 32 len _78]] - 1 < sub_05e2a985.length
    if msg.sender == address(stor1.length):
        require uint8(sub_05e2a985[stor4[mem[arg1.length + _40 + 32 len _78]]].field_0)
    else:
        require msg.sender == address(sub_05e2a985[stor4[mem[arg1.length + _40 + 32 len _78]]].field_0)
        require sub_2dafc532[mem[arg1.length + _40 + 32 len _78]] - 1 < sub_05e2a985.length
        require uint8(sub_05e2a985[stor4[mem[arg1.length + _40 + 32 len _78]]].field_0)
    require sub_2dafc532[mem[arg1.length + _40 + 32 len _78]] - 1 < sub_05e2a985.length
    uint256(sub_05e2a985[stor4[mem[arg1.length + _40 + 32 len _78]]].field_0) = arg2
    mem[arg1.length + _40 + 32] = 96
    mem[arg1.length + _40 + 128] = mem[96]
    mem[arg1.length + _40 + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[mem[96] + arg1.length + _40 + 160] = 0
    emit 0x87726011: Array(len=mem[96], data=mem[arg1.length + _40 + 160 len ceil32(mem[96])]), uint256(sub_05e2a985[stor4[mem[0]]].field_0), arg2
}

function sub_b58cff14(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    _34 = mem[64]
    mem[mem[64] + 32 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 64 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    _64 = mem[64]
    mem[mem[64]] = arg1.length
    mem[64] = arg1.length + mem[64] + 32
    _66 = mem[_64]
    mem[mem[64] len floor32(mem[_64])] = mem[_64 + 32 len floor32(mem[_64])]
    mem[mem[64] + floor32(mem[_64])] = mem[mem[64] + floor32(mem[_64])] and 256^(-(mem[_64] % 32) + 32) - 1 or mem[_64 + floor32(mem[_64]) + 32] and !(256^(-(mem[_64] % 32) + 32) - 1)
    mem[0] = sha3(mem[mem[64] len arg1.length + _34 + _66 + -mem[64] + 32])
    mem[32] = 4
    require 0 < sub_2dafc532[mem[0]]
    require sub_2dafc532[mem[0]] - 1 < sub_05e2a985.length
    require arg2 < uint256(sub_05e2a985[stor4[mem[0]]].field_0)
    require sub_2dafc532[mem[0]] - 1 < sub_05e2a985.length
    require arg2 < uint256(sub_05e2a985[stor4[mem[0]]].field_0)
    require sub_2dafc532[mem[0]] - 1 < sub_05e2a985.length
    require uint256(stor[(3 * arg2) + sha3((22 * stor4[mem[0]]) + ('name', 'sub_05e2a985', 3) - 1)].field_0) < uint256(sub_05e2a985[stor4[mem[0]]].field_0)
    mem[mem[64]] = uint256(stor[(3 * arg2) + sha3((22 * stor4[mem[0]]) + ('name', 'sub_05e2a985', 3) - 1)].field_256)
    mem[mem[64] + 32] = uint256(stor[(3 * arg2) + sha3((22 * stor4[mem[0]]) + ('name', 'sub_05e2a985', 3) - 1)].field_512)
    mem[mem[64] + 64] = address(stor[(4 * uint256(stor[(3 * arg2) + sha3((22 * stor4[mem[0]]) + ('name', 'sub_05e2a985', 3) - 1)].field_0)) + sha3((22 * stor4[mem[0]]) + ('name', 'sub_05e2a985', 3) - 5)].field_512)
    mem[mem[64] + 96] = uint256(stor[(4 * uint256(stor[(3 * arg2) + sha3((22 * stor4[mem[0]]) + ('name', 'sub_05e2a985', 3) - 1)].field_0)) + sha3((22 * stor4[mem[0]]) + ('name', 'sub_05e2a985', 3) - 5)].field_768)
    return mem[mem[64] len 64], 
           address(stor[(4 * uint256(stor[(3 * arg2) + sha3((22 * stor4[mem[0]]) + ('name', 'sub_05e2a985', 3) - 1)].field_0)) + sha3((22 * stor4[mem[0]]) + ('name', 'sub_05e2a985', 3) - 5)].field_512),
           uint256(stor[(4 * uint256(stor[(3 * arg2) + sha3((22 * stor4[mem[0]]) + ('name', 'sub_05e2a985', 3) - 1)].field_0)) + sha3((22 * stor4[mem[0]]) + ('name', 'sub_05e2a985', 3) - 5)].field_768)
}

function sub_ee407ec5(?) {
    require calldata.size - 4 >= 160
    require msg.sender == address(stor1.length)
    require not sub_2dafc532[arg1]
    if not arg4:
        require arg5
    sub_05e2a985.length++
    if sub_05e2a985.length > sub_05e2a985.length + 1:
        mem[0] = 3
        idx = (22 * sub_05e2a985.length) + 22
        while sha3(3) + (22 * sub_05e2a985.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            address(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint16(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 7]) = 0
            s = sha3(idx + sha3(mem[0]) + 7)
            while sha3(idx + sha3(mem[0]) + 7) + (2 * uint256(stor[idx + sha3(mem[0]) + 7])) > s:
                address(stor[s]) = 0
                uint256(stor1[s]) = 0
                s = s + 2
                continue 
            uint256(stor[idx + sha3(mem[0]) + 9]) = 0
            s = sha3(idx + sha3(mem[0]) + 9)
            while sha3(idx + sha3(mem[0]) + 9) + (2 * uint256(stor[idx + sha3(mem[0]) + 9])) > s:
                address(stor[s]) = 0
                uint256(stor1[s]) = 0
                s = s + 2
                continue 
            uint256(stor[idx + sha3(mem[0]) + 13]) = 0
            s = sha3(idx + sha3(mem[0]) + 13)
            while sha3(idx + sha3(mem[0]) + 13) + (2 * uint256(stor[idx + sha3(mem[0]) + 13])) > s:
                address(stor[s]) = 0
                uint256(stor1[s]) = 0
                s = s + 2
                continue 
            uint256(stor[idx + sha3(mem[0]) + 15]) = 0
            s = sha3(idx + sha3(mem[0]) + 15)
            while sha3(idx + sha3(mem[0]) + 15) + (2 * uint256(stor[idx + sha3(mem[0]) + 15])) > s:
                address(stor[s]) = 0
                uint256(stor1[s]) = 0
                s = s + 2
                continue 
            uint256(stor[idx + sha3(mem[0]) + 17]) = 0
            s = sha3(idx + sha3(mem[0]) + 17)
            while sha3(idx + sha3(mem[0]) + 17) + (4 * uint256(stor[idx + sha3(mem[0]) + 17])) > s:
                uint256(stor[s]) = 0
                uint256(stor1[s]) = 0
                address(stor2[s]) = 0
                uint256(sub_05e2a985[s].field_0) = 0
                s = s + 4
                continue 
            uint256(stor[idx + sha3(mem[0]) + 19]) = 0
            s = sha3(idx + sha3(mem[0]) + 19)
            while sha3(idx + sha3(mem[0]) + 19) + (4 * uint256(stor[idx + sha3(mem[0]) + 19])) > s:
                uint256(stor[s]) = 0
                uint256(stor1[s]) = 0
                address(stor2[s]) = 0
                uint256(sub_05e2a985[s].field_0) = 0
                s = s + 4
                continue 
            uint256(stor[idx + sha3(mem[0]) + 21]) = 0
            mem[0] = idx + sha3(mem[0]) + 21
            s = sha3(idx + sha3(mem[0]) + 21)
            while sha3(idx + sha3(mem[0]) + 21) + (3 * uint256(stor[idx + sha3(mem[0]) + 21])) > s:
                uint256(stor[s]) = 0
                uint256(stor1[s]) = 0
                uint256(stor2[s]) = 0
                s = s + 3
                continue 
            idx = idx + 22
            continue 
    require sub_05e2a985.length - 1 < sub_05e2a985.length
    uint256(sub_05e2a985[sub_05e2a985.length].field_0) = arg1
    uint256(sub_05e2a985[sub_05e2a985.length].field_0) = arg2
    require sub_05e2a985.length - 1 < sub_05e2a985.length
    address(sub_05e2a985[sub_05e2a985.length].field_0) = arg3
    Mask(248, 0, sub_05e2a985[sub_05e2a985.length].field_0) = Mask(248, 0, arg4)
    uint8(sub_05e2a985[sub_05e2a985.length].field_0) = uint8(arg5)
    uint256(sub_05e2a985[sub_05e2a985.length].field_0) = sub_05e2a985.length
    sub_2dafc532[arg1] = sub_05e2a985.length
    sub_6eaef499[address(arg3)] = sub_05e2a985.length
    emit 0x8c8cf8d6: arg1, arg2, arg3
}

function sub_e1fc2872(?) {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    _124 = mem[64]
    mem[mem[64] + 32 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 64 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    _244 = mem[64]
    mem[mem[64]] = arg1.length
    mem[64] = arg1.length + mem[64] + 32
    _246 = mem[_244]
    mem[arg1.length + _124 + 32 len floor32(mem[_244])] = mem[_244 + 32 len floor32(mem[_244])]
    mem[arg1.length + _124 + floor32(mem[_244]) + 32] = mem[arg1.length + _124 + floor32(mem[_244]) + 32] and 256^(-(mem[_244] % 32) + 32) - 1 or mem[_244 + floor32(mem[_244]) + 32] and !(256^(-(mem[_244] % 32) + 32) - 1)
    mem[0] = sha3(mem[arg1.length + _124 + 32 len _246])
    require 0 < sub_2dafc532[mem[arg1.length + _124 + 32 len _246]]
    require sub_2dafc532[mem[arg1.length + _124 + 32 len _246]] - 1 < sub_05e2a985.length
    if not address(sub_05e2a985[stor4[mem[arg1.length + _124 + 32 len _246]]].field_0):
        require msg.sender == address(stor1.length)
    else:
        if msg.sender == address(stor1.length):
            require sub_2dafc532[mem[arg1.length + _124 + 32 len _246]] - 1 < sub_05e2a985.length
            require uint8(sub_05e2a985[stor4[mem[arg1.length + _124 + 32 len _246]]].field_0)
        else:
            require address(sub_05e2a985[stor4[mem[arg1.length + _124 + 32 len _246]]].field_0) == msg.sender
            require sub_2dafc532[mem[arg1.length + _124 + 32 len _246]] - 1 < sub_05e2a985.length
            require uint8(sub_05e2a985[stor4[mem[arg1.length + _124 + 32 len _246]]].field_0)
            require sub_2dafc532[mem[arg1.length + _124 + 32 len _246]] - 1 < sub_05e2a985.length
            if not uint8(sub_05e2a985[stor4[mem[arg1.length + _124 + 32 len _246]]].field_0):
                require arg2
    require sub_2dafc532[mem[arg1.length + _124 + 32 len _246]] - 1 < sub_05e2a985.length
    address(sub_05e2a985[stor4[mem[arg1.length + _124 + 32 len _246]]].field_0) = arg2
    if address(sub_05e2a985[stor4[mem[arg1.length + _124 + 32 len _246]]].field_0):
        sub_6eaef499[address(stor3[stor4[mem[arg1.length + _124 + 32 len _246]]].field_0)] = 0
    if arg2:
        sub_6eaef499[address(arg2)] = sub_2dafc532[mem[arg1.length + _124 + 32 len _246]] - 1
    mem[arg1.length + _124 + 32] = 96
    mem[arg1.length + _124 + 128] = mem[96]
    mem[arg1.length + _124 + 160 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
    if ceil32(mem[96]) > mem[96]:
        mem[mem[96] + arg1.length + _124 + 160] = 0
    emit 0x79e02859: Array(len=mem[96], data=mem[arg1.length + _124 + 160 len ceil32(mem[96])]), address(sub_05e2a985[stor4[mem[0]]].field_0), address(arg2)
}

function receiveEthersTo(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require ext_code.size(0x2fcb98529d58669e229c453de4b4705bb6b2d414)
    delegate 0x2fcb98529d58669e229c453de4b4705bb6b2d414.toNonZeroInt256(uint256 arg1) with:
         gas gas_remaining wei
        args msg.value
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 - 1 < sub_05e2a985.length
    if 0, delegate.return_data[4 len 28] < 0:
        require 0, delegate.return_data[4 len 28] + uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 17][0][0].field_0) < uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 17][0][0].field_0)
    else:
        if 0, delegate.return_data[4 len 28] + uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 17][0][0].field_0) < uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 17][0][0].field_0):
            require 0, delegate.return_data[4 len 28] < 0
            require 0, delegate.return_data[4 len 28] + uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 17][0][0].field_0) < uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 17][0][0].field_0)
    uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 17][0][0].field_0) += 0, delegate.return_data[4 len 28]
    uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 16][0][0].field_0)++
    uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 16][0][0][uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 16][0][0].field_0)].field_0) = 0, delegate.return_data[4 len 28] + uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 17][0][0].field_0)
    uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 16][0][0][uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 16][0][0].field_0)].field_256) = block.number
    if uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 17][0][0].field_0):
        if not uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0):
            if not uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0):
                uint256(sub_05e2a985[arg1].field_0)++
                address(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(sub_05e2a985[arg1].field_0))].field_0) = 0
                stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(sub_05e2a985[arg1].field_0))].field_256 % 1 = 0
                uint256(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(sub_05e2a985[arg1].field_0))].field_256) = 0
                uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) = uint256(sub_05e2a985[arg1].field_0)
            if not uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 12][0][0].field_0):
                uint256(sub_05e2a985[arg1].field_0)++
                address(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 13) + (2 * uint256(sub_05e2a985[arg1].field_0))].field_0) = 0
                stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 13) + (2 * uint256(sub_05e2a985[arg1].field_0))].field_256 % 1 = 0
                uint256(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 13) + (2 * uint256(sub_05e2a985[arg1].field_0))].field_256) = 0
                uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 12][0][0].field_0) = uint256(sub_05e2a985[arg1].field_0)
    else:
        if uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0):
            if uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) > 0:
                require uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) - 1 < uint256(sub_05e2a985[arg1].field_0)
                if uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) < uint256(sub_05e2a985[arg1].field_0):
                    require uint256(sub_05e2a985[arg1].field_0) - 1 < uint256(sub_05e2a985[arg1].field_0)
                    require uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) - 1 < uint256(sub_05e2a985[arg1].field_0)
                    address(stor[(2 * uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) - 1) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15)].field_0) = address(stor[(2 * uint256(sub_05e2a985[arg1].field_0) - 1) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15)].field_0)
                    uint256(stor[(2 * uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) - 1) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15)].field_256) = uint256(stor[(2 * uint256(sub_05e2a985[arg1].field_0) - 1) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15)].field_256)
                    uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][address(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) - 1)].field_0)][uint256(stor[(2 * uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) - 1) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15)].field_256)].field_0) = uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0)
                uint256(sub_05e2a985[arg1].field_0)--
                if uint256(sub_05e2a985[arg1].field_0) > uint256(sub_05e2a985[arg1].field_0) - 1:
                    idx = 2 * uint256(sub_05e2a985[arg1].field_0) - 1
                    while 2 * uint256(sub_05e2a985[arg1].field_0) > idx:
                        address(stor[idx + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15)].field_0) = 0
                        uint256(stor[idx + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15)].field_256) = 0
                        idx = idx + 2
                        continue 
                uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][address(stor[(2 * uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) - 1) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15)].field_0)][uint256(stor[(2 * uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) - 1) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15)].field_256)].field_0) = 0
        else:
            if not uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0):
                if not uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0):
                    uint256(sub_05e2a985[arg1].field_0)++
                    address(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(sub_05e2a985[arg1].field_0))].field_0) = 0
                    stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(sub_05e2a985[arg1].field_0))].field_256 % 1 = 0
                    uint256(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(sub_05e2a985[arg1].field_0))].field_256) = 0
                    uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) = uint256(sub_05e2a985[arg1].field_0)
                if not uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 12][0][0].field_0):
                    uint256(sub_05e2a985[arg1].field_0)++
                    address(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 13) + (2 * uint256(sub_05e2a985[arg1].field_0))].field_0) = 0
                    stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 13) + (2 * uint256(sub_05e2a985[arg1].field_0))].field_256 % 1 = 0
                    uint256(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 13) + (2 * uint256(sub_05e2a985[arg1].field_0))].field_256) = 0
                    uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 12][0][0].field_0) = uint256(sub_05e2a985[arg1].field_0)
    require arg1 - 1 < sub_05e2a985.length
    uint256(sub_05e2a985[arg1].field_0)++
    uint256(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 5) + (4 * uint256(sub_05e2a985[arg1].field_0))].field_0) = 0, delegate.return_data[4 len 28]
    uint256(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 5) + (4 * uint256(sub_05e2a985[arg1].field_0))].field_256) = block.number
    address(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 5) + (4 * uint256(sub_05e2a985[arg1].field_0))].field_512) = 0
    uint256(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 5) + (4 * uint256(sub_05e2a985[arg1].field_0))].field_768) = 0
    uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 4][0][0].field_0)++
    uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 4][0][0][uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 4][0][0].field_0)].field_0) = 0, delegate.return_data[4 len 28]
    uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 4][0][0][uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 4][0][0].field_0)].field_256) = block.number
    address(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 4][0][0][uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 4][0][0].field_0)].field_512) = 0
    uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 4][0][0][uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 4][0][0].field_0)].field_768) = 0
    uint256(sub_05e2a985[arg1].field_0)++
    uint256(stor[(3 * uint256(sub_05e2a985[arg1].field_0)) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 1)].field_0) = uint256(sub_05e2a985[arg1].field_0) - 1
    uint256(stor[(3 * uint256(sub_05e2a985[arg1].field_0)) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 1)].field_256) = uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 17][0][0].field_0)
    uint256(stor[(3 * uint256(sub_05e2a985[arg1].field_0)) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 1)].field_512) = block.number
    emit ReceiveEvent(address arg1, int256 arg2, address arg3, uint256 arg4):
                      msg.sender,
                      0,
                      delegate.return_data[4 len 28],
                      0,
                      0,
}

function receiveTokensTo(address arg1, string arg2, int256 arg3, address arg4, uint256 arg5, string arg6) {
    require calldata.size - 4 >= 192
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 128 >= 96 and ceil32(arg2.length) + 128 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    require arg6 <= test266151307()
    require calldata.size > arg6 + 35
    require arg6.length <= test266151307()
    require ceil32(arg6.length) + 160 >= 128 and ceil32(arg2.length) + ceil32(arg6.length) + 160 <= test266151307()
    require arg6 + arg6.length + 36 <= calldata.size
    require arg1 - 1 < sub_05e2a985.length
    require ext_code.size(0x2fcb98529d58669e229c453de4b4705bb6b2d414)
    delegate 0x2fcb98529d58669e229c453de4b4705bb6b2d414.isNonZeroPositiveInt256(int256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, delegate.return_data[4 len 28]
    require ext_code.size(address(stor2.length))
    call address(stor2.length).transferController(address arg1, string arg2) with:
         gas gas_remaining wei
        args address(arg4), Array(len=arg6.length, data=arg6[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getReceiveSignature() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    delegate address(ext_call.return_data[0]) with:
       funct (Mask(32, 224, ext_call.return_data[0]) >> 224)
         gas gas_remaining wei
        args msg.sender, this.address, arg3, address(arg4), arg5
    require delegate.return_code
    require arg1 - 1 < sub_05e2a985.length
    if arg3 < 0:
        require arg3 + uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 17][address(arg4)][arg5].field_0) < uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 17][address(arg4)][arg5].field_0)
    else:
        if arg3 + uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 17][address(arg4)][arg5].field_0) < uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 17][address(arg4)][arg5].field_0):
            require arg3 < 0
            require arg3 + uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 17][address(arg4)][arg5].field_0) < uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 17][address(arg4)][arg5].field_0)
    uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 17][address(arg4)][arg5].field_0) += arg3
    uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 16][address(arg4)][arg5].field_0)++
    uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 16][address(arg4)][arg5][uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 16][address(arg4)][arg5].field_0)].field_0) = arg3 + uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 17][address(arg4)][arg5].field_0)
    uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 16][address(arg4)][arg5][uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 16][address(arg4)][arg5].field_0)].field_256) = block.number
    if uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 17][address(arg4)][arg5].field_0):
        if not uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][address(arg4)][arg5].field_0):
            if not uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][address(arg4)][arg5].field_0):
                uint256(sub_05e2a985[arg1].field_0)++
                address(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(sub_05e2a985[arg1].field_0))].field_0) = arg4
                uint256(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(sub_05e2a985[arg1].field_0))].field_256) = arg5
                uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][address(arg4)][arg5].field_0) = uint256(sub_05e2a985[arg1].field_0)
            if not uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 12][address(arg4)][arg5].field_0):
                uint256(sub_05e2a985[arg1].field_0)++
                address(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 13) + (2 * uint256(sub_05e2a985[arg1].field_0))].field_0) = arg4
                uint256(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 13) + (2 * uint256(sub_05e2a985[arg1].field_0))].field_256) = arg5
                uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 12][address(arg4)][arg5].field_0) = uint256(sub_05e2a985[arg1].field_0)
    else:
        if not uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][address(arg4)][arg5].field_0):
            if not uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][address(arg4)][arg5].field_0):
                if not uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][address(arg4)][arg5].field_0):
                    uint256(sub_05e2a985[arg1].field_0)++
                    address(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(sub_05e2a985[arg1].field_0))].field_0) = arg4
                    uint256(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(sub_05e2a985[arg1].field_0))].field_256) = arg5
                    uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][address(arg4)][arg5].field_0) = uint256(sub_05e2a985[arg1].field_0)
                if not uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 12][address(arg4)][arg5].field_0):
                    uint256(sub_05e2a985[arg1].field_0)++
                    address(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 13) + (2 * uint256(sub_05e2a985[arg1].field_0))].field_0) = arg4
                    uint256(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 13) + (2 * uint256(sub_05e2a985[arg1].field_0))].field_256) = arg5
                    uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 12][address(arg4)][arg5].field_0) = uint256(sub_05e2a985[arg1].field_0)
        else:
            if uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][address(arg4)][arg5].field_0) > 0:
                require uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][address(arg4)][arg5].field_0) - 1 < uint256(sub_05e2a985[arg1].field_0)
                if uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][address(arg4)][arg5].field_0) < uint256(sub_05e2a985[arg1].field_0):
                    require uint256(sub_05e2a985[arg1].field_0) - 1 < uint256(sub_05e2a985[arg1].field_0)
                    require uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][address(arg4)][arg5].field_0) - 1 < uint256(sub_05e2a985[arg1].field_0)
                    address(stor[(2 * uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][address(arg4)][arg5].field_0) - 1) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15)].field_0) = address(stor[(2 * uint256(sub_05e2a985[arg1].field_0) - 1) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15)].field_0)
                    uint256(stor[(2 * uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][address(arg4)][arg5].field_0) - 1) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15)].field_256) = uint256(stor[(2 * uint256(sub_05e2a985[arg1].field_0) - 1) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15)].field_256)
                    uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][address(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][address(arg4)][arg5].field_0) - 1)].field_0)][uint256(stor[(2 * uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][address(arg4)][arg5].field_0) - 1) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15)].field_256)].field_0) = uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][address(arg4)][arg5].field_0)
                uint256(sub_05e2a985[arg1].field_0)--
                if uint256(sub_05e2a985[arg1].field_0) > uint256(sub_05e2a985[arg1].field_0) - 1:
                    idx = 2 * uint256(sub_05e2a985[arg1].field_0) - 1
                    while 2 * uint256(sub_05e2a985[arg1].field_0) > idx:
                        address(stor[idx + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15)].field_0) = 0
                        uint256(stor[idx + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15)].field_256) = 0
                        idx = idx + 2
                        continue 
                uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][address(stor[(2 * uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][address(arg4)][arg5].field_0) - 1) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15)].field_0)][uint256(stor[(2 * uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 14][address(arg4)][arg5].field_0) - 1) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 15)].field_256)].field_0) = 0
    require arg1 - 1 < sub_05e2a985.length
    uint256(sub_05e2a985[arg1].field_0)++
    uint256(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 5) + (4 * uint256(sub_05e2a985[arg1].field_0))].field_0) = arg3
    uint256(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 5) + (4 * uint256(sub_05e2a985[arg1].field_0))].field_256) = block.number
    address(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 5) + (4 * uint256(sub_05e2a985[arg1].field_0))].field_512) = arg4
    uint256(stor[sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 5) + (4 * uint256(sub_05e2a985[arg1].field_0))].field_768) = arg5
    uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 4][address(arg4)][arg5].field_0)++
    uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 4][address(arg4)][arg5][uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 4][address(arg4)][arg5].field_0)].field_0) = arg3
    uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 4][address(arg4)][arg5][uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 4][address(arg4)][arg5].field_0)].field_256) = block.number
    address(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 4][address(arg4)][arg5][uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 4][address(arg4)][arg5].field_0)].field_512) = arg4
    uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 4][address(arg4)][arg5][uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 4][address(arg4)][arg5].field_0)].field_768) = arg5
    uint256(sub_05e2a985[arg1].field_0)++
    uint256(stor[(3 * uint256(sub_05e2a985[arg1].field_0)) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 1)].field_0) = uint256(sub_05e2a985[arg1].field_0) - 1
    uint256(stor[(3 * uint256(sub_05e2a985[arg1].field_0)) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 1)].field_256) = uint256(stor[(22 * arg1) + ('name', 'sub_05e2a985', 3) - 17][address(arg4)][arg5].field_0)
    uint256(stor[(3 * uint256(sub_05e2a985[arg1].field_0)) + sha3((22 * arg1) + ('name', 'sub_05e2a985', 3) - 1)].field_512) = block.number
    emit ReceiveEvent(msg.sender, arg3, address(arg4), arg5);
}

function _fallback() payable {
    require 0 < sub_6eaef499[address(msg.sender)]
    require ext_code.size(0x2fcb98529d58669e229c453de4b4705bb6b2d414)
    delegate 0x2fcb98529d58669e229c453de4b4705bb6b2d414.toNonZeroInt256(uint256 arg1) with:
         gas gas_remaining wei
        args msg.value
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_6eaef499[address(msg.sender)] - 1 < sub_05e2a985.length
    if delegate.return_data[0] < 0:
        require delegate.return_data[0] + uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 17][0][0].field_0) < uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 17][0][0].field_0)
    else:
        if delegate.return_data[0] + uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 17][0][0].field_0) < uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 17][0][0].field_0):
            require delegate.return_data[0] < 0
            require delegate.return_data[0] + uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 17][0][0].field_0) < uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 17][0][0].field_0)
    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 17][0][0].field_0) += delegate.return_data[0]
    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 16][0][0].field_0)++
    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 16][0][0][uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 16][0][0].field_0)].field_0) = delegate.return_data[0] + uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 17][0][0].field_0)
    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 16][0][0][uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 16][0][0].field_0)].field_256) = block.number
    if uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 17][0][0].field_0):
        if not uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0):
            if not uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0):
                uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)++
                address(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_0) = 0
                stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_256 % 1 = 0
                uint256(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_256) = 0
                uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) = uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)
            if not uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 12][0][0].field_0):
                uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)++
                address(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 13) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_0) = 0
                stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 13) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_256 % 1 = 0
                uint256(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 13) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_256) = 0
                uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 12][0][0].field_0) = uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)
    else:
        if uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0):
            if uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) > 0:
                require uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) - 1 < uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)
                if uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) < uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0):
                    require uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) - 1 < uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)
                    require uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) - 1 < uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)
                    address(stor[(2 * uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) - 1) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15)].field_0) = address(stor[(2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) - 1) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15)].field_0)
                    uint256(stor[(2 * uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) - 1) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15)].field_256) = uint256(stor[(2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) - 1) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15)].field_256)
                    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][address(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) - 1)].field_0)][uint256(stor[(2 * uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) - 1) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15)].field_256)].field_0) = uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0)
                uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)--
                if uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) > uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) - 1:
                    idx = 2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) - 1
                    while 2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) > idx:
                        address(stor[idx + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15)].field_0) = 0
                        uint256(stor[idx + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15)].field_256) = 0
                        idx = idx + 2
                        continue 
                uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][address(stor[(2 * uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) - 1) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15)].field_0)][uint256(stor[(2 * uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) - 1) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15)].field_256)].field_0) = 0
        else:
            if not uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0):
                if not uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0):
                    uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)++
                    address(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_0) = 0
                    stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_256 % 1 = 0
                    uint256(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_256) = 0
                    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][0][0].field_0) = uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)
                if not uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 12][0][0].field_0):
                    uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)++
                    address(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 13) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_0) = 0
                    stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 13) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_256 % 1 = 0
                    uint256(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 13) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_256) = 0
                    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 12][0][0].field_0) = uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)
    require sub_6eaef499[address(msg.sender)] - 1 < sub_05e2a985.length
    uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)++
    uint256(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 5) + (4 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_0) = delegate.return_data[0]
    uint256(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 5) + (4 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_256) = block.number
    address(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 5) + (4 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_512) = 0
    uint256(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 5) + (4 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_768) = 0
    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 4][0][0].field_0)++
    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 4][0][0][uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 4][0][0].field_0)].field_0) = delegate.return_data[0]
    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 4][0][0][uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 4][0][0].field_0)].field_256) = block.number
    address(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 4][0][0][uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 4][0][0].field_0)].field_512) = 0
    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 4][0][0][uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 4][0][0].field_0)].field_768) = 0
    uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)++
    uint256(stor[(3 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 1)].field_0) = uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) - 1
    uint256(stor[(3 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 1)].field_256) = uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 17][0][0].field_0)
    uint256(stor[(3 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 1)].field_512) = block.number
    emit ReceiveEvent(msg.sender, delegate.return_data[0], 0, 0);
}

function sub_0f200f9b(?) {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 >= 96 and ceil32(arg4.length) + 128 <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require 0 < sub_6eaef499[address(msg.sender)]
    require ext_code.size(0x2fcb98529d58669e229c453de4b4705bb6b2d414)
    delegate 0x2fcb98529d58669e229c453de4b4705bb6b2d414.isPositiveInt256(int256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, delegate.return_data[4 len 28]
    require sub_6eaef499[address(msg.sender)] - 1 < sub_05e2a985.length
    require ext_code.size(0x2fcb98529d58669e229c453de4b4705bb6b2d414)
    delegate 0x2fcb98529d58669e229c453de4b4705bb6b2d414.clampMax(int256 arg1, int256 arg2) with:
         gas gas_remaining wei
        args arg1, uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 11][address(arg2)][arg3].field_0)
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require sub_6eaef499[address(msg.sender)] - 1 < sub_05e2a985.length
    if delegate.return_data[0] < 0:
        require uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 11][address(arg2)][arg3].field_0) - delegate.return_data[0] > uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 11][address(arg2)][arg3].field_0)
    else:
        if uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 11][address(arg2)][arg3].field_0) - delegate.return_data[0] > uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 11][address(arg2)][arg3].field_0):
            require delegate.return_data[0] < 0
            require uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 11][address(arg2)][arg3].field_0) - delegate.return_data[0] > uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 11][address(arg2)][arg3].field_0)
    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 11][address(arg2)][arg3].field_0) -= delegate.return_data[0]
    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 10][address(arg2)][arg3].field_0)++
    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 10][address(arg2)][arg3][uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 10][address(arg2)][arg3].field_0)].field_0) = uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 11][address(arg2)][arg3].field_0) - delegate.return_data[0]
    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 10][address(arg2)][arg3][uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 10][address(arg2)][arg3].field_0)].field_256) = block.number
    if uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 11][address(arg2)][arg3].field_0):
        if not uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 8][address(arg2)][arg3].field_0):
            if not uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 8][address(arg2)][arg3].field_0):
                uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)++
                address(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 9) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_0) = arg2
                uint256(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 9) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_256) = arg3
                uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 8][address(arg2)][arg3].field_0) = uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)
            if not uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 6][address(arg2)][arg3].field_0):
                uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)++
                address(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 7) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_0) = arg2
                uint256(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 7) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_256) = arg3
                uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 6][address(arg2)][arg3].field_0) = uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)
    else:
        if not uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 8][address(arg2)][arg3].field_0):
            if not uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 8][address(arg2)][arg3].field_0):
                if not uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 8][address(arg2)][arg3].field_0):
                    uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)++
                    address(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 9) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_0) = arg2
                    uint256(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 9) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_256) = arg3
                    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 8][address(arg2)][arg3].field_0) = uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)
                if not uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 6][address(arg2)][arg3].field_0):
                    uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)++
                    address(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 7) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_0) = arg2
                    uint256(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 7) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_256) = arg3
                    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 6][address(arg2)][arg3].field_0) = uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)
        else:
            if uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 8][address(arg2)][arg3].field_0) > 0:
                require uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 8][address(arg2)][arg3].field_0) - 1 < uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)
                if uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 8][address(arg2)][arg3].field_0) < uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0):
                    require uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) - 1 < uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)
                    require uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 8][address(arg2)][arg3].field_0) - 1 < uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)
                    address(stor[(2 * uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 8][address(arg2)][arg3].field_0) - 1) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 9)].field_0) = address(stor[(2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) - 1) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 9)].field_0)
                    uint256(stor[(2 * uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 8][address(arg2)][arg3].field_0) - 1) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 9)].field_256) = uint256(stor[(2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) - 1) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 9)].field_256)
                    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 8][address(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 9) + (2 * uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 8][address(arg2)][arg3].field_0) - 1)].field_0)][uint256(stor[(2 * uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 8][address(arg2)][arg3].field_0) - 1) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 9)].field_256)].field_0) = uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 8][address(arg2)][arg3].field_0)
                uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)--
                if uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) > uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) - 1:
                    idx = 2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) - 1
                    while 2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) > idx:
                        address(stor[idx + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 9)].field_0) = 0
                        uint256(stor[idx + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 9)].field_256) = 0
                        idx = idx + 2
                        continue 
                uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 8][address(stor[(2 * uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 8][address(arg2)][arg3].field_0) - 1) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 9)].field_0)][uint256(stor[(2 * uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 8][address(arg2)][arg3].field_0) - 1) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 9)].field_256)].field_0) = 0
    if arg2:
        require ext_code.size(address(stor2.length))
        call address(stor2.length).transferController(address arg1, string arg2) with:
             gas gas_remaining wei
            args address(arg2), Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).getDispatchSignature() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        delegate address(ext_call.return_data[0]) with:
           funct (Mask(32, 224, ext_call.return_data[0]) >> 224)
             gas gas_remaining wei
            args this.address, msg.sender, delegate.return_data[0], address(arg2), arg3
        require delegate.return_code
    else:
        if not arg3:
            call msg.sender with:
               value delegate.return_data[0] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(stor2.length))
            call address(stor2.length).transferController(address arg1, string arg2) with:
                 gas gas_remaining wei
                args address(arg2), Array(len=arg4.length, data=arg4[all])
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_code.size(address(ext_call.return_data[0]))
            call address(ext_call.return_data[0]).getDispatchSignature() with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            delegate address(ext_call.return_data[0]) with:
               funct (Mask(32, 224, ext_call.return_data[0]) >> 224)
                 gas gas_remaining wei
                args this.address, msg.sender, delegate.return_data[0], address(arg2), arg3
            require delegate.return_code
    emit 0xcf370394: msg.sender, delegate.return_data[0], address(arg2), arg3
}

function sub_828910b0(?) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    mem[64] = ceil32(arg1.length) + 128
    mem[96] = arg1.length
    require arg1 + arg1.length + 36 <= calldata.size
    mem[128 len arg1.length] = arg1[all]
    mem[arg1.length + 128] = 0
    require msg.sender == address(stor1.length)
    require 0 < arg1.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) < 0x6100000000000000000000000000000000000000000000000000000000000000:
            mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        else:
            if Mask(8, 248, mem[idx + 128]) > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
            else:
                mem[idx + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', -32, ('mem', ('range', ('add', 128, ('var', 0)), 1)))), 0) - 256
        idx = idx + 1
        continue 
    _93 = mem[64]
    mem[mem[64] + 32 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[mem[64] + floor32(mem[96]) + -(mem[96] % 32) + 64 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
    _181 = mem[64]
    mem[mem[64]] = arg1.length
    mem[64] = arg1.length + mem[64] + 32
    _183 = mem[_181]
    mem[mem[64] len floor32(mem[_181])] = mem[_181 + 32 len floor32(mem[_181])]
    mem[mem[64] + floor32(mem[_181])] = mem[mem[64] + floor32(mem[_181])] and 256^(-(mem[_181] % 32) + 32) - 1 or mem[_181 + floor32(mem[_181]) + 32] and !(256^(-(mem[_181] % 32) + 32) - 1)
    _262 = sha3(mem[mem[64] len arg1.length + _93 + _183 + -mem[64] + 32])
    mem[0] = sha3(mem[mem[64] len arg1.length + _93 + _183 + -mem[64] + 32])
    require not sub_2dafc532[mem[0]]
    if arg4:
        sub_05e2a985.length++
        if sub_05e2a985.length <= sub_05e2a985.length + 1:
            require sub_05e2a985.length - 1 < sub_05e2a985.length
            uint256(sub_05e2a985[sub_05e2a985.length].field_0) = _262
            uint256(sub_05e2a985[sub_05e2a985.length].field_0) = arg2
            require sub_05e2a985.length - 1 < sub_05e2a985.length
            address(sub_05e2a985[sub_05e2a985.length].field_0) = arg3
            Mask(248, 0, sub_05e2a985[sub_05e2a985.length].field_0) = Mask(248, 0, arg4)
            uint8(sub_05e2a985[sub_05e2a985.length].field_0) = uint8(arg5)
            uint256(sub_05e2a985[sub_05e2a985.length].field_0) = sub_05e2a985.length
            sub_2dafc532[_262] = sub_05e2a985.length
            mem[32] = 5
            sub_6eaef499[address(arg3)] = sub_05e2a985.length
            _283 = mem[64]
            mem[mem[64]] = 96
            _294 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_294) > _294:
                mem[_294 + _283 + 128] = 0
            mem[_283 + 32] = arg2
            mem[_283 + 64] = arg3
            emit 0x818ab4fd: mem[mem[64] len _283 + ceil32(_294) + -mem[64] + 128]
        else:
            mem[0] = 3
            idx = (22 * sub_05e2a985.length) + 22
            while sha3(3) + (22 * sub_05e2a985.length) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                address(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                uint16(stor[idx + sha3(mem[0]) + 4]) = 0
                uint256(stor[idx + sha3(mem[0]) + 7]) = 0
                s = sha3(idx + sha3(mem[0]) + 7)
                while sha3(idx + sha3(mem[0]) + 7) + (2 * uint256(stor[idx + sha3(mem[0]) + 7])) > s:
                    address(stor[s]) = 0
                    uint256(stor1[s]) = 0
                    s = s + 2
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 9]) = 0
                s = sha3(idx + sha3(mem[0]) + 9)
                while sha3(idx + sha3(mem[0]) + 9) + (2 * uint256(stor[idx + sha3(mem[0]) + 9])) > s:
                    address(stor[s]) = 0
                    uint256(stor1[s]) = 0
                    s = s + 2
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 13]) = 0
                s = sha3(idx + sha3(mem[0]) + 13)
                while sha3(idx + sha3(mem[0]) + 13) + (2 * uint256(stor[idx + sha3(mem[0]) + 13])) > s:
                    address(stor[s]) = 0
                    uint256(stor1[s]) = 0
                    s = s + 2
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 15]) = 0
                s = sha3(idx + sha3(mem[0]) + 15)
                while sha3(idx + sha3(mem[0]) + 15) + (2 * uint256(stor[idx + sha3(mem[0]) + 15])) > s:
                    address(stor[s]) = 0
                    uint256(stor1[s]) = 0
                    s = s + 2
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 17]) = 0
                s = sha3(idx + sha3(mem[0]) + 17)
                while sha3(idx + sha3(mem[0]) + 17) + (4 * uint256(stor[idx + sha3(mem[0]) + 17])) > s:
                    uint256(stor[s]) = 0
                    uint256(stor1[s]) = 0
                    address(stor2[s]) = 0
                    uint256(sub_05e2a985[s].field_0) = 0
                    s = s + 4
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 19]) = 0
                s = sha3(idx + sha3(mem[0]) + 19)
                while sha3(idx + sha3(mem[0]) + 19) + (4 * uint256(stor[idx + sha3(mem[0]) + 19])) > s:
                    uint256(stor[s]) = 0
                    uint256(stor1[s]) = 0
                    address(stor2[s]) = 0
                    uint256(sub_05e2a985[s].field_0) = 0
                    s = s + 4
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 21]) = 0
                mem[0] = idx + sha3(mem[0]) + 21
                s = sha3(idx + sha3(mem[0]) + 21)
                while sha3(idx + sha3(mem[0]) + 21) + (3 * uint256(stor[idx + sha3(mem[0]) + 21])) > s:
                    uint256(stor[s]) = 0
                    uint256(stor1[s]) = 0
                    uint256(stor2[s]) = 0
                    s = s + 3
                    continue 
                idx = idx + 22
                continue 
            require sub_05e2a985.length - 1 < sub_05e2a985.length
            uint256(sub_05e2a985[sub_05e2a985.length].field_0) = _262
            uint256(sub_05e2a985[sub_05e2a985.length].field_0) = arg2
            require sub_05e2a985.length - 1 < sub_05e2a985.length
            address(sub_05e2a985[sub_05e2a985.length].field_0) = arg3
            Mask(248, 0, sub_05e2a985[sub_05e2a985.length].field_0) = Mask(248, 0, arg4)
            uint8(sub_05e2a985[sub_05e2a985.length].field_0) = uint8(arg5)
            uint256(sub_05e2a985[sub_05e2a985.length].field_0) = sub_05e2a985.length
            sub_2dafc532[_262] = sub_05e2a985.length
            mem[32] = 5
            sub_6eaef499[address(arg3)] = sub_05e2a985.length
            _355 = mem[64]
            mem[mem[64]] = 96
            _357 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_357) > _357:
                mem[_357 + _355 + 128] = 0
            mem[_355 + 32] = arg2
            mem[_355 + 64] = arg3
            emit 0x818ab4fd: mem[mem[64] len _355 + ceil32(_357) + -mem[64] + 128]
    else:
        require arg5
        sub_05e2a985.length++
        if sub_05e2a985.length <= sub_05e2a985.length + 1:
            require sub_05e2a985.length - 1 < sub_05e2a985.length
            uint256(sub_05e2a985[sub_05e2a985.length].field_0) = _262
            uint256(sub_05e2a985[sub_05e2a985.length].field_0) = arg2
            require sub_05e2a985.length - 1 < sub_05e2a985.length
            address(sub_05e2a985[sub_05e2a985.length].field_0) = arg3
            Mask(248, 0, sub_05e2a985[sub_05e2a985.length].field_0) = Mask(248, 0, arg4)
            uint8(sub_05e2a985[sub_05e2a985.length].field_0) = uint8(arg5)
            uint256(sub_05e2a985[sub_05e2a985.length].field_0) = sub_05e2a985.length
            sub_2dafc532[_262] = sub_05e2a985.length
            mem[0] = arg3
            sub_6eaef499[address(arg3)] = sub_05e2a985.length
            _290 = mem[64]
            mem[mem[64]] = 96
            _301 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_301) > _301:
                mem[_301 + mem[64] + 128] = 0
            mem[mem[64] + 32] = arg2
            mem[_290 + 64] = arg3
            emit 0x818ab4fd: mem[mem[64] len _290 + ceil32(_301) + -mem[64] + 128]
        else:
            mem[0] = 3
            idx = (22 * sub_05e2a985.length) + 22
            while sha3(3) + (22 * sub_05e2a985.length) > idx + sha3(mem[0]):
                uint256(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                address(stor[idx + sha3(mem[0]) + 2]) = 0
                uint256(stor[idx + sha3(mem[0]) + 3]) = 0
                uint16(stor[idx + sha3(mem[0]) + 4]) = 0
                uint256(stor[idx + sha3(mem[0]) + 7]) = 0
                s = sha3(idx + sha3(mem[0]) + 7)
                while sha3(idx + sha3(mem[0]) + 7) + (2 * uint256(stor[idx + sha3(mem[0]) + 7])) > s:
                    address(stor[s]) = 0
                    uint256(stor1[s]) = 0
                    s = s + 2
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 9]) = 0
                s = sha3(idx + sha3(mem[0]) + 9)
                while sha3(idx + sha3(mem[0]) + 9) + (2 * uint256(stor[idx + sha3(mem[0]) + 9])) > s:
                    address(stor[s]) = 0
                    uint256(stor1[s]) = 0
                    s = s + 2
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 13]) = 0
                s = sha3(idx + sha3(mem[0]) + 13)
                while sha3(idx + sha3(mem[0]) + 13) + (2 * uint256(stor[idx + sha3(mem[0]) + 13])) > s:
                    address(stor[s]) = 0
                    uint256(stor1[s]) = 0
                    s = s + 2
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 15]) = 0
                s = sha3(idx + sha3(mem[0]) + 15)
                while sha3(idx + sha3(mem[0]) + 15) + (2 * uint256(stor[idx + sha3(mem[0]) + 15])) > s:
                    address(stor[s]) = 0
                    uint256(stor1[s]) = 0
                    s = s + 2
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 17]) = 0
                s = sha3(idx + sha3(mem[0]) + 17)
                while sha3(idx + sha3(mem[0]) + 17) + (4 * uint256(stor[idx + sha3(mem[0]) + 17])) > s:
                    uint256(stor[s]) = 0
                    uint256(stor1[s]) = 0
                    address(stor2[s]) = 0
                    uint256(sub_05e2a985[s].field_0) = 0
                    s = s + 4
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 19]) = 0
                s = sha3(idx + sha3(mem[0]) + 19)
                while sha3(idx + sha3(mem[0]) + 19) + (4 * uint256(stor[idx + sha3(mem[0]) + 19])) > s:
                    uint256(stor[s]) = 0
                    uint256(stor1[s]) = 0
                    address(stor2[s]) = 0
                    uint256(sub_05e2a985[s].field_0) = 0
                    s = s + 4
                    continue 
                uint256(stor[idx + sha3(mem[0]) + 21]) = 0
                mem[0] = idx + sha3(mem[0]) + 21
                s = sha3(idx + sha3(mem[0]) + 21)
                while sha3(idx + sha3(mem[0]) + 21) + (3 * uint256(stor[idx + sha3(mem[0]) + 21])) > s:
                    uint256(stor[s]) = 0
                    uint256(stor1[s]) = 0
                    uint256(stor2[s]) = 0
                    s = s + 3
                    continue 
                idx = idx + 22
                continue 
            require sub_05e2a985.length - 1 < sub_05e2a985.length
            uint256(sub_05e2a985[sub_05e2a985.length].field_0) = _262
            uint256(sub_05e2a985[sub_05e2a985.length].field_0) = arg2
            require sub_05e2a985.length - 1 < sub_05e2a985.length
            address(sub_05e2a985[sub_05e2a985.length].field_0) = arg3
            Mask(248, 0, sub_05e2a985[sub_05e2a985.length].field_0) = Mask(248, 0, arg4)
            uint8(sub_05e2a985[sub_05e2a985.length].field_0) = uint8(arg5)
            uint256(sub_05e2a985[sub_05e2a985.length].field_0) = sub_05e2a985.length
            sub_2dafc532[_262] = sub_05e2a985.length
            mem[0] = arg3
            sub_6eaef499[address(arg3)] = sub_05e2a985.length
            _356 = mem[64]
            mem[mem[64]] = 96
            _358 = mem[96]
            mem[mem[64] + 96] = mem[96]
            mem[mem[64] + 128 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if ceil32(_358) > _358:
                mem[_358 + mem[64] + 128] = 0
            mem[mem[64] + 32] = arg2
            mem[_356 + 64] = arg3
            emit 0x818ab4fd: mem[mem[64] len _356 + ceil32(_358) + -mem[64] + 128]
}

function receiveTokens(string arg1, int256 arg2, address arg3, uint256 arg4, string arg5) {
    require calldata.size - 4 >= 160
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg5 <= test266151307()
    require calldata.size > arg5 + 35
    require arg5.length <= test266151307()
    require ceil32(arg5.length) + 160 >= 128 and ceil32(arg1.length) + ceil32(arg5.length) + 160 <= test266151307()
    require arg5 + arg5.length + 36 <= calldata.size
    require 0 < sub_6eaef499[address(msg.sender)]
    require sub_6eaef499[address(msg.sender)] - 1 < sub_05e2a985.length
    require ext_code.size(0x2fcb98529d58669e229c453de4b4705bb6b2d414)
    delegate 0x2fcb98529d58669e229c453de4b4705bb6b2d414.isNonZeroPositiveInt256(int256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 0, delegate.return_data[4 len 28]
    require ext_code.size(address(stor2.length))
    call address(stor2.length).transferController(address arg1, string arg2) with:
         gas gas_remaining wei
        args address(arg3), Array(len=arg5.length, data=arg5[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).getReceiveSignature() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    delegate address(ext_call.return_data[0]) with:
       funct (Mask(32, 224, ext_call.return_data[0]) >> 224)
         gas gas_remaining wei
        args msg.sender, this.address, arg2, address(arg3), arg4
    require delegate.return_code
    require sub_6eaef499[address(msg.sender)] - 1 < sub_05e2a985.length
    if arg2 < 0:
        require arg2 + uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 17][address(arg3)][arg4].field_0) < uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 17][address(arg3)][arg4].field_0)
    else:
        if arg2 + uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 17][address(arg3)][arg4].field_0) < uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 17][address(arg3)][arg4].field_0):
            require arg2 < 0
            require arg2 + uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 17][address(arg3)][arg4].field_0) < uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 17][address(arg3)][arg4].field_0)
    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 17][address(arg3)][arg4].field_0) += arg2
    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 16][address(arg3)][arg4].field_0)++
    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 16][address(arg3)][arg4][uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 16][address(arg3)][arg4].field_0)].field_0) = arg2 + uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 17][address(arg3)][arg4].field_0)
    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 16][address(arg3)][arg4][uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 16][address(arg3)][arg4].field_0)].field_256) = block.number
    if uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 17][address(arg3)][arg4].field_0):
        if not uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][address(arg3)][arg4].field_0):
            if not uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][address(arg3)][arg4].field_0):
                uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)++
                address(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_0) = arg3
                uint256(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_256) = arg4
                uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][address(arg3)][arg4].field_0) = uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)
            if not uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 12][address(arg3)][arg4].field_0):
                uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)++
                address(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 13) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_0) = arg3
                uint256(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 13) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_256) = arg4
                uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 12][address(arg3)][arg4].field_0) = uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)
    else:
        if not uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][address(arg3)][arg4].field_0):
            if not uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][address(arg3)][arg4].field_0):
                if not uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][address(arg3)][arg4].field_0):
                    uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)++
                    address(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_0) = arg3
                    uint256(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_256) = arg4
                    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][address(arg3)][arg4].field_0) = uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)
                if not uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 12][address(arg3)][arg4].field_0):
                    uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)++
                    address(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 13) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_0) = arg3
                    uint256(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 13) + (2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_256) = arg4
                    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 12][address(arg3)][arg4].field_0) = uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)
        else:
            if uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][address(arg3)][arg4].field_0) > 0:
                require uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][address(arg3)][arg4].field_0) - 1 < uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)
                if uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][address(arg3)][arg4].field_0) < uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0):
                    require uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) - 1 < uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)
                    require uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][address(arg3)][arg4].field_0) - 1 < uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)
                    address(stor[(2 * uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][address(arg3)][arg4].field_0) - 1) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15)].field_0) = address(stor[(2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) - 1) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15)].field_0)
                    uint256(stor[(2 * uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][address(arg3)][arg4].field_0) - 1) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15)].field_256) = uint256(stor[(2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) - 1) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15)].field_256)
                    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][address(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15) + (2 * uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][address(arg3)][arg4].field_0) - 1)].field_0)][uint256(stor[(2 * uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][address(arg3)][arg4].field_0) - 1) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15)].field_256)].field_0) = uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][address(arg3)][arg4].field_0)
                uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)--
                if uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) > uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) - 1:
                    idx = 2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) - 1
                    while 2 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) > idx:
                        address(stor[idx + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15)].field_0) = 0
                        uint256(stor[idx + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15)].field_256) = 0
                        idx = idx + 2
                        continue 
                uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][address(stor[(2 * uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][address(arg3)][arg4].field_0) - 1) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15)].field_0)][uint256(stor[(2 * uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 14][address(arg3)][arg4].field_0) - 1) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 15)].field_256)].field_0) = 0
    require sub_6eaef499[address(msg.sender)] - 1 < sub_05e2a985.length
    uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)++
    uint256(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 5) + (4 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_0) = arg2
    uint256(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 5) + (4 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_256) = block.number
    address(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 5) + (4 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_512) = arg3
    uint256(stor[sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 5) + (4 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0))].field_768) = arg4
    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 4][address(arg3)][arg4].field_0)++
    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 4][address(arg3)][arg4][uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 4][address(arg3)][arg4].field_0)].field_0) = arg2
    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 4][address(arg3)][arg4][uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 4][address(arg3)][arg4].field_0)].field_256) = block.number
    address(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 4][address(arg3)][arg4][uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 4][address(arg3)][arg4].field_0)].field_512) = arg3
    uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 4][address(arg3)][arg4][uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 4][address(arg3)][arg4].field_0)].field_768) = arg4
    uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)++
    uint256(stor[(3 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 1)].field_0) = uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0) - 1
    uint256(stor[(3 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 1)].field_256) = uint256(stor[(22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 17][address(arg3)][arg4].field_0)
    uint256(stor[(3 * uint256(sub_05e2a985[stor5[address(msg.sender)]].field_0)) + sha3((22 * stor5[address(msg.sender)]) + ('name', 'sub_05e2a985', 3) - 1)].field_512) = block.number
    emit ReceiveEvent(msg.sender, arg2, address(arg3), arg4);
}



}
