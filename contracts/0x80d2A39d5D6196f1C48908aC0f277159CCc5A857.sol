contract main {


// =======================  Init code  ======================


array of struct stor1;
uint256 stor3;
uint8 storB10E;

function _fallback() payable {
    stor3 = msg.sender or Mask(96, 160, stor3)
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        mem[0] = 1
        idx = (3 * stor1.length) + 3
        while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 1].length:
                mem[0] = idx + sha3(mem[0]) + 1
                s = sha3(idx + sha3(mem[0]) + 1)
                while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint8(stor[idx + sha3(mem[0]) + 2]) = 0
            idx = idx + 3
            continue 
    require 0 < stor1.length
    address(stor[code.data[4466 len 32]]) = 0
    bool(stor1[code.data[4466 len 32]].field_0) = 0
    uint255(stor1[code.data[4466 len 32]].field_1) = 0
    Mask(248, 0, stor1[code.data[4466 len 32]].field_8) = mem[128 len 31]
    idx = 0
    while stor[code.data[4466 len 32] + 1].length + 31 / 32 > idx:
        uint256(stor[idx + sha3(code.data[4466 len 32] + 1)]) = 0
        idx = idx + 1
        continue 
    require 0 < stor1.length
    storB10E = 0
    return code.data[526 len 3940]
}



// =====================  Runtime code  =====================


#
#  - getClaim(bytes32 arg1)
#
mapping of uint256 stor0;
array of struct stor1;
address stor3;
array of uint8 stor80084422859880547211683076133703299733277748156566366325829078699459944779000;

function sub_4a02b3b7(?) {
    return stor1.length
}

function kill() {
    require msg.sender == stor3
    selfdestruct(stor3)
}

function _fallback() payable {
    revert 
}

function sub_0477b59b(?) {
    if 0 == uint256(stor2[arg1].field_256):
        return 0
    return 1
}

function sub_498cf72a(?) {
    if stor3 != msg.sender:
        require stor0[address(msg.sender)]
    if uint256(stor2[arg1].field_256) != 0:
        emit 0x23b6f455: msg.sender, arg1
}

function sub_f23a0f34(?) {
    require stor0[address(arg1)] < stor1.length
    mem[160] = uint256(stor[sha3((3 * stor0[address(arg1)]) + ('name', 'stor1', 1) + 1)].field_0)
    idx = 160
    s = 0
    while stor[(3 * stor0[address(arg1)]) + ('name', 'stor1', 1) + 1].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((3 * stor0[address(arg1)]) + ('name', 'stor1', 1) + 1)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor[(3 * stor0[address(arg1)]) + ('name', 'stor1', 1) + 1].length, data=mem[160 len stor[(3 * stor0[address(arg1)]) + ('name', 'stor1', 1) + 1].length]), 
           bool(uint8(stor1[stor0[address(arg1)]].field_512))
}

function sub_6a1fd7e9(?) {
    require arg1 < stor1.length
    mem[160] = uint256(stor[sha3((3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309)])
    idx = 160
    s = 0
    while stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length + 128 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor1[arg1].field_0), 
           Array(len=stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length, data=mem[160 len stor[(3 * arg1) - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f309].length]),
           bool(uint8(storB10E[arg1]))
}

function sub_ebacf552(?) {
    require msg.sender == stor3
    if stor0[address(arg1)]:
        require stor0[address(arg1)] < stor1.length
        uint256(storB10E[stor0[address(arg1)]]) = arg3 or Mask(248, 8, uint256(storB10E[stor0[address(arg1)]]))
    else:
        stor0[address(arg1)] = stor1.length
        stor1.length++
        if not stor1.length <= stor1.length + 1:
            mem[0] = 1
            idx = (3 * stor1.length) + 3
            while sha3(1) + (3 * stor1.length) > idx + sha3(mem[0]):
                address(stor[idx + sha3(mem[0])]) = 0
                uint256(stor[idx + sha3(mem[0]) + 1]) = 0
                if 31 < stor[idx + sha3(mem[0]) + 1].length:
                    mem[0] = idx + sha3(mem[0]) + 1
                    s = sha3(idx + sha3(mem[0]) + 1)
                    while sha3(idx + sha3(mem[0]) + 1) + (stor[idx + sha3(mem[0]) + 1].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
                uint8(stor[idx + sha3(mem[0]) + 2]) = 0
                idx = idx + 3
                continue 
        require stor1.length < stor1.length
        uint256(stor1[stor1.length].field_0) = Mask(96, 0, stor1[stor1.length].field_160)
        uint256(stor[sha3((3 * stor1.length) + ('name', 'stor1', 1) + 1)][].field_0) = Array(len=arg2.length, data=arg2[all])
        uint256(stor1[stor1.length].field_512) = arg3 or Mask(248, 8, uint256(stor1[stor1.length].field_512))
    emit 0xdcd5cfd5: bool(arg3), arg1
}

function sub_604fc941(?) {
    mem[ceil32(arg3.length) + 160 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if stor3 != msg.sender:
        require stor0[address(msg.sender)] != 0
        require stor0[address(msg.sender)] < stor1.length
        require bool(uint8(storB10E[stor0[address(msg.sender)]])) != 0
    if uint256(stor2[arg1].field_256) != 0:
        return 0
    uint256(stor2[arg1].field_0) = msg.sender or Mask(96, 160, uint256(stor2[arg1].field_0))
    uint256(stor2[arg1].field_256) = block.timestamp
    uint256(stor2[arg1].field_512) = arg2
    uint256(stor2[arg1][3][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(stor2[arg1].field_1024) = arg4
    idx = 0
    while idx < arg5.length:
        mem[32] = 2
        uint256(stor2[arg1].field_1280)++
        if not uint256(stor2[arg1].field_1280) <= uint256(stor2[arg1].field_1280) + 1:
            s = uint256(stor2[arg1].field_1280) + sha3(sha3(arg1, 2) + 5) + 1
            while sha3(sha3(arg1, 2) + 5) + uint256(stor2[arg1].field_1280) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
        mem[0] = sha3(arg1, 2) + 5
        require idx < arg5.length
        uint256(stor[uint256(stor2[arg1].field_1280) + ('array', 5, ('map', ('param', 'arg1'), ('name', 'stor2', 2)))].field_0) = mem[ceil32(arg3.length) + (32 * idx) + 160]
        idx = idx + 1
        continue 
    uint256(stor2[arg1].field_1536) = arg6 or Mask(248, 8, uint256(stor2[arg1].field_1536))
    emit 0xfacc9d13: msg.sender, arg1
    return 1
}

function bytes32ToString(bytes32 arg1) {
    mem[96] = 0
    mem[128] = 0
    mem[160] = 0
    mem[192] = 32
    s = 0
    idx = 0
    s = 0
    while idx < 32:
        if 0 == Mask(8, 248, arg1 * 2^(8 * idx)):
            s = arg1 * 2^(8 * idx)
            idx = idx + 1
            s = s
            continue 
        require s < 32
        mem[s + 224 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mul', ('param', 'arg1'), ('exp', 2, ('mask_shl', 253, 0, 3, ('var', 0))))), 0) - 256
        s = arg1 * 2^(8 * idx)
        idx = idx + 1
        s = s + 1
        continue 
    _msize = max(0, s + 8)
    mem[_msize + 224] = s
    mem[64] = (_msize + 224) + (32 * s) + 32
    t = 0
    while t < s:
        require t < 32
        require t < mem[_msize + 224]
        mem[(_msize + 224) + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 2)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 224, ('var', 2)), 32))), 0) - 256
        t = t + 1
        continue 
    mem[(_msize + 224) + (32 * s) + 32] = 32
    mem[(_msize + 224) + (32 * s) + 64] = mem[_msize + 224]
    mem[(_msize + 224) + (32 * s) + 96 len mem[_msize + 224]] = mem[(_msize + 224) + 32 len mem[_msize + 224]]
    if not mem[max(0, s + 8) + 224] % 32:
        return 32, mem[(_msize + 224) + (32 * s) + 64 len mem[_msize + 224] + 32]
    mem[floor32(mem[_msize + 224]) + (_msize + 224) + (32 * s) + 96] = mem[floor32(mem[_msize + 224]) + (_msize + 224) + (32 * s) + -(mem[_msize + 224] % 32) + 128 len mem[_msize + 224] % 32]
    return 32, mem[_msize + 224], mem[_msize + (32 * s) + 320 len floor32(mem[_msize + 224]) + 32]
}



}
