contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 2326]




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
address stor2;
uint256 stor2;
array of struct stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
array of uint256 stor38971441815954291753963644440956123609054264817261647753096923611481829733349;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;

function remove() payable {
    if address(stor2) != msg.sender:
        return 0
    selfdestruct(address(stor2))
}

function _fallback() payable {
  stop
}

function terminate() payable {
    if address(stor2) != msg.sender:
        return 0
    stor6 = 0
    return 1
}

function options(uint256 arg1) payable {
    require arg1 < stor0.length
    return uint256(stor0[arg1].field_0), stor5629[arg1]
}

function voters(uint256 arg1) payable {
    require arg1 < stor1.length
    return address(stor[code.data[2294 len 32] + (2 * arg1)].field_0), 
           uint8(stor[code.data[2294 len 32] + (2 * arg1)].field_0),
           uint256(stor[code.data[2294 len 32] + (2 * arg1) + 1].field_0)
}

function winningProposal() payable {
    idx = 0
    s = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor5629[idx] <= s:
            idx = idx + 1
            s = s
            continue 
        require idx < stor0.length
        mem[0] = 0
        idx = idx + 1
        s = stor5629[idx]
        continue 
    return 0
}

function p() payable {
    mem[288] = uint256(stor3.field_0)
    idx = 288
    s = 0
    while stor3.length + 288 > idx + 32:
        mem[idx + 32] = uint256(stor3[s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor2), 
           Array(len=stor3.length, data=mem[288 len stor3.length + (floor32(stor3.length - 1) + -stor3.length + 32 % 32)]),
           stor4,
           stor5,
           stor6
}

function vote(uint256 arg1) payable {
    if block.timestamp > stor4:
        stor6 = 1
        return 0
    if address(stor2) != msg.sender:
        return 0
    if stor6 != 1:
        return 0
    if 0 == stor1.length:
        idx = 0
        while idx < stor0.length:
            if arg1 != uint256(stor0[idx].field_0):
                return 0
            require idx < stor0.length
            mem[0] = 0
            stor5629[idx]++
            stor5++
            idx = idx + 1
            continue 
    else:
        idx = 0
        s = 0
        t = 1
        while idx < stor1.length:
            mem[0] = 1
            if address(stor[code.data[2294 len 32] + (2 * idx)].field_0) != msg.sender:
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < stor1.length
            mem[0] = 1
            if uint8(stor[code.data[2294 len 32] + (2 * idx)].field_160) != 0:
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < stor1.length
            idx = idx + 1
            s = 1
            t = storB10E[idx]
            continue 
        if not s:
            return 0
        idx = 0
        while idx < stor0.length:
            if arg1 != uint256(stor0[idx].field_0):
                return 0
            require idx < stor0.length
            mem[0] = 0
            stor5629[idx] += t
            stor5++
            idx = idx + 1
            continue 
    emit NewVote(arg1);
    return 1
}

function sub_8768bdef(?) payable {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg3.length) + (32 * arg2.length) + ceil32(arg1.length) + 192
    mem[(32 * arg2.length) + ceil32(arg1.length) + 160] = arg3.length
    mem[(32 * arg2.length) + ceil32(arg1.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
    mem[0] = 3
    stor3.length = (2 * arg1.length) + 1
    s = 0xc2575a0e9e593c00f959f8c92f12db2869c3395a3b0502d05e2516446f71f85b
    idx = 128
    while arg1.length + 128 > idx:
        uint256(stor[s].field_0) = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = (Mask(251, 0, arg1.length + 31) >> 5) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5
    while (stor3.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    stor4 = arg4
    stor6 = 1
    stor5 = 0
    idx = 0
    while idx < arg2.length:
        stor0.length++
        if not stor0.length > stor0.length + 1:
            mem[0] = 0
            _291 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[ceil32(arg1.length) + 128]
            mem[_291] = mem[ceil32(arg1.length) + (32 * idx) + 160]
            mem[_291 + 32] = 0
            uint256(stor0[stor0.length].field_0) = mem[_291]
        else:
            s = (2 * stor0.length + 1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
            while (2 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > s:
                uint256(stor[s].field_0) = 0
                uint256(stor1[s].field_0) = 0
                s = s + 1
                continue 
            mem[0] = 0
            _364 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[ceil32(arg1.length) + 128]
            mem[_364] = mem[ceil32(arg1.length) + (32 * idx) + 160]
            mem[_364 + 32] = 0
            uint256(stor0[stor0.length].field_0) = mem[_364]
        uint256(stor0[stor0.length].field_256) = 0
        idx = idx + 1
        continue 
    _354 = mem[(32 * arg2.length) + ceil32(arg1.length) + 160]
    idx = 0
    while idx < _354:
        stor1.length++
        if not stor1.length > stor1.length + 1:
            mem[0] = 1
            _359 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[(32 * arg2.length) + ceil32(arg1.length) + 160]
            mem[_359] = mem[(32 * arg2.length) + ceil32(arg1.length) + (32 * idx) + 192]
            mem[_359 + 32] = 0
            mem[_359 + 64] = 1
            address(stor1[stor1.length].field_0) = mem[_359 + 12 len 20]
            uint8(stor1[stor1.length].field_160) = 0
            Mask(88, 0, stor1[stor1.length].field_168) = mem[_359 len 11]
        else:
            s = (2 * stor1.length + 1) + code.data[2294 len 32]
            while code.data[2294 len 32] + (2 * stor1.length) > s:
                Mask(168, 0, stor[s].field_0) = 0
                uint256(stor1[s].field_0) = 0
                _354 = mem[(32 * arg2.length) + ceil32(arg1.length) + 160]
                s = s + 1
                continue 
            mem[0] = 1
            _392 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[(32 * arg2.length) + ceil32(arg1.length) + 160]
            mem[_392] = mem[(32 * arg2.length) + ceil32(arg1.length) + (32 * idx) + 192]
            mem[_392 + 32] = 0
            mem[_392 + 64] = 1
            address(stor1[stor1.length].field_0) = mem[_392 + 12 len 20]
            uint8(stor1[stor1.length].field_160) = 0
            Mask(88, 0, stor1[stor1.length].field_168) = mem[_392 len 11]
        stor1[stor1.length].field_256 % 1 = 0
        uint256(stor1[stor1.length].field_256) = 1
        _354 = mem[(32 * arg2.length) + ceil32(arg1.length) + 160]
        idx = idx + 1
        continue 
}



}
