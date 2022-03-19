contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 1970]




// =====================  Runtime code  =====================


array of struct stor0;
array of struct stor1;
address stor2;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint8 stor6;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;
array of uint256 stor80084422859880547211683076133703299733277748156566366325829078699459944778999;

function remove() payable {
    if address(stor2) != msg.sender:
        return 0
    selfdestruct(address(stor2))
}

function _fallback() payable {
  stop
}

function p() payable {
    return address(stor2), stor3, stor4, stor5, stor6
}

function terminate() payable {
    if address(stor2) != msg.sender:
        return 0
    stor6 = 0
    return 1
}

function options(uint256 arg1) payable {
    require arg1 < stor0.length
    return uint256(stor0[arg1].field_0), stor290D[arg1]
}

function voters(uint256 arg1) payable {
    require arg1 < stor1.length
    return address(stor[code.data[1938 len 32] + (2 * arg1)].field_0), 
           uint8(stor[code.data[1938 len 32] + (2 * arg1)].field_0),
           uint256(stor[code.data[1938 len 32] + (2 * arg1) + 1].field_0)
}

function winningProposal() payable {
    idx = 0
    s = 0
    while idx < stor0.length:
        mem[0] = 0
        if stor290D[idx] <= s:
            idx = idx + 1
            s = s
            continue 
        require idx < stor0.length
        idx = idx + 1
        s = stor290D[idx]
        continue 
    return 0
}

function vote(bytes32 arg1) payable {
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
            mem[0] = 0
            if arg1 != uint256(stor0[idx].field_0):
                return 0
            require idx < stor0.length
            stor290D[idx]++
            stor5++
            idx = idx + 1
            continue 
    else:
        idx = 0
        s = 0
        t = 1
        while idx < stor1.length:
            mem[0] = 1
            if address(stor[code.data[1938 len 32] + (2 * idx)].field_0) != msg.sender:
                idx = idx + 1
                s = s
                t = t
                continue 
            require idx < stor1.length
            mem[0] = 1
            if uint8(stor[code.data[1938 len 32] + (2 * idx)].field_160) != 0:
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
            mem[0] = 0
            if arg1 != uint256(stor0[idx].field_0):
                return 0
            require idx < stor0.length
            stor290D[idx] += t
            stor5++
            idx = idx + 1
            continue 
    emit 0xd11f40af: arg1
    return 1
}

function sub_22c4d251(?) payable {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[64] = (32 * arg3.length) + (32 * arg2.length) + 160
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    uint256(stor2) = msg.sender or Mask(96, 160, uint256(stor2))
    stor3 = arg1
    stor4 = arg4
    stor6 = 1
    stor5 = 0
    idx = 0
    while idx < arg2.length:
        stor0.length++
        if not stor0.length > stor0.length + 1:
            mem[0] = 0
            _36 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[96]
            mem[_36] = mem[(32 * idx) + 128]
            mem[_36 + 32] = 0
            uint256(stor0[stor0.length].field_0) = mem[_36]
        else:
            s = (2 * stor0.length + 1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
            while (2 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > s:
                uint256(stor[s].field_0) = 0
                uint256(stor1[s].field_0) = 0
                s = s + 1
                continue 
            mem[0] = 0
            _70 = mem[64]
            mem[64] = mem[64] + 64
            require idx < mem[96]
            mem[_70] = mem[(32 * idx) + 128]
            mem[_70 + 32] = 0
            uint256(stor0[stor0.length].field_0) = mem[_70]
        uint256(stor0[stor0.length].field_256) = 0
        idx = idx + 1
        continue 
    _63 = mem[(32 * arg2.length) + 128]
    idx = 0
    while idx < _63:
        stor1.length++
        if not stor1.length > stor1.length + 1:
            mem[0] = 1
            _65 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[(32 * arg2.length) + 128]
            mem[_65] = mem[(32 * arg2.length) + (32 * idx) + 160]
            mem[_65 + 32] = 0
            mem[_65 + 64] = 1
            address(stor1[stor1.length].field_0) = mem[_65 + 12 len 20]
            uint8(stor1[stor1.length].field_160) = 0
            Mask(88, 0, stor1[stor1.length].field_168) = mem[_65 len 11]
        else:
            s = (2 * stor1.length + 1) + code.data[1938 len 32]
            while code.data[1938 len 32] + (2 * stor1.length) > s:
                Mask(168, 0, stor[s].field_0) = 0
                uint256(stor1[s].field_0) = 0
                s = s + 1
                continue 
            mem[0] = 1
            _87 = mem[64]
            mem[64] = mem[64] + 96
            require idx < mem[(32 * arg2.length) + 128]
            mem[_87] = mem[(32 * arg2.length) + (32 * idx) + 160]
            mem[_87 + 32] = 0
            mem[_87 + 64] = 1
            address(stor1[stor1.length].field_0) = mem[_87 + 12 len 20]
            uint8(stor1[stor1.length].field_160) = 0
            Mask(88, 0, stor1[stor1.length].field_168) = mem[_87 len 11]
        stor1[stor1.length].field_256 % 1 = 0
        uint256(stor1[stor1.length].field_256) = 1
        idx = idx + 1
        continue 
}



}
