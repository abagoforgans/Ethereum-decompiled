contract main {




// =====================  Runtime code  =====================


array of address stor0;
mapping of uint256 filled;
mapping of uint8 stor2;
mapping of uint256 cutoffs;
mapping of uint256 tradingPairCutoffs;
mapping of uint256 sub_f7a6301d;
mapping of uint256 sub_b30ecbf4;
address owner;
uint8 stor8; offset 160
address pendingOwner;
mapping of uint256 stor9;

function filled(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return filled[arg1]
}

function suspended() {
    return bool(stor8)
}

function owner() {
    return owner
}

function sub_b30ecbf4(?) {
    require calldata.size - 4 >= 96
    return sub_b30ecbf4[arg1][arg2][Mask(160, 96, arg3)]
}

function tradingPairCutoffs(address arg1, bytes20 arg2) {
    require calldata.size - 4 >= 64
    return tradingPairCutoffs[arg1][Mask(160, 96, arg2)]
}

function cancelled(address arg1, bytes32 arg2) {
    require calldata.size - 4 >= 64
    return bool(stor2[arg1][arg2])
}

function cutoffs(address arg1) {
    require calldata.size - 4 >= 32
    return cutoffs[arg1]
}

function pendingOwner() {
    return pendingOwner
}

function sub_f7a6301d(?) {
    require calldata.size - 4 >= 64
    return sub_f7a6301d[arg1][arg2]
}

function _fallback() payable {
    revert
}

function suspend() {
    require msg.sender == owner
    if stor8:
        revert with 0, '', 0
    stor8 = 1
}

function resume() {
    require msg.sender == owner
    if not stor8:
        revert with 0, '', 0
    stor8 = 0
}

function isAddressAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    return (stor9[address(arg1)] > 0)
}

function claimOwnership() {
    require msg.sender == pendingOwner
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    require owner != arg1
    pendingOwner = arg1
}

function sub_5d83d989(?) {
    require calldata.size - 4 >= 64
    if 0 >= stor9[msg.sender]:
        revert with 0, '', 0
    if stor8:
        revert with 0, '', 0
    filled[arg1] = arg2
}

function kill() {
    require msg.sender == owner
    if not stor8:
        revert with 0, '', 0
    owner = 0
    emit OwnershipTransferred(address arg1, address arg2)
    emit 0x0 
    emit 0x0 
}

function sub_cfd854c2(?) {
    require calldata.size - 4 >= 64
    if 0 >= stor9[msg.sender]:
        revert with 0, '', 0
    if stor8:
        revert with 0, '', 0
    stor2[address(arg1)][arg2] = 1
}

function sub_6263c0f8(?) {
    require calldata.size - 4 >= 64
    if 0 >= stor9[msg.sender]:
        revert with 0, '', 0
    if stor8:
        revert with 0, '', 0
    require arg2 + filled[arg1] >= filled[arg1]
    filled[arg1] += arg2
}

function sub_05e45560(?) {
    require calldata.size - 4 >= 64
    if 0 >= stor9[msg.sender]:
        revert with 0, '', 0
    if stor8:
        revert with 0, '', 0
    if arg2 <= cutoffs[address(arg1)]:
        revert with 0, '', 0
    cutoffs[address(arg1)] = arg2
}

function sub_9bdbf652(?) {
    require calldata.size - 4 >= 96
    if 0 >= stor9[msg.sender]:
        revert with 0, '', 0
    if stor8:
        revert with 0, '', 0
    if arg3 <= sub_f7a6301d[address(arg1)][address(arg2)]:
        revert with 0, '', 0
    sub_f7a6301d[address(arg1)][address(arg2)] = arg3
}

function sub_cb23e899(?) {
    require calldata.size - 4 >= 96
    if 0 >= stor9[msg.sender]:
        revert with 0, '', 0
    if stor8:
        revert with 0, '', 0
    if arg3 <= tradingPairCutoffs[address(arg1)][Mask(160, 96, arg2)]:
        revert with 0, '', 0
    tradingPairCutoffs[address(arg1)][Mask(160, 96, arg2)] = arg3
}

function sub_f732282b(?) {
    require calldata.size - 4 >= 128
    if 0 >= stor9[msg.sender]:
        revert with 0, '', 0
    if stor8:
        revert with 0, '', 0
    if arg4 <= sub_b30ecbf4[address(arg1)][address(arg2)][Mask(160, 96, arg3)]:
        revert with 0, '', 0
    sub_b30ecbf4[address(arg1)][address(arg2)][Mask(160, 96, arg3)] = arg4
}

function authorizeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        revert with 0, 'ZERO_ADDRESS', 0
    if stor9[address(arg1)]:
        revert with 0, 'ALREADY_EXIST', 0
    if ext_code.size(arg1) <= 0:
        revert with 0, 'INVALID_ADDRESS', 0
    stor0.length++
    address(stor0[stor0.length]) = arg1
    stor9[address(arg1)] = stor0.length
    emit 0xaa4a1856: arg1
}

function sub_843ff0e5(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if 0 >= stor9[msg.sender]:
        revert with 0, '', 0
    if stor8:
        revert with 0, '', 0
    if bool(('cd', 4).length):
        revert with 0, 'INVALID_SIZE', 0
    s = 0
    s = 0
    idx = 68
    while idx < (32 * ('cd', 4).length) + 68:
        mem[0] = cd[idx]
        mem[32] = 1
        filled[cd[idx]] = cd[(idx + 32)]
        s = cd[(idx + 32)]
        s = cd[idx]
        idx = idx + 64
        continue 
}

function deauthorizeAddress(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        revert with 0, 'ZERO_ADDRESS', 0
    if not stor9[address(arg1)]:
        revert with 0, 'NOT_FOUND', 0
    if stor0.length != stor9[address(arg1)]:
        require stor0.length - 1 < stor0.length
        require stor9[address(arg1)] - 1 < stor0.length
        address(stor0[stor9[address(arg1)]]) = address(stor0[stor0.length])
        stor9[address(stor0[stor0.length])] = stor9[address(arg1)]
    stor0.length--
    if stor0.length > stor0.length - 1:
        idx = stor0.length - 1
        while stor0.length > idx:
            uint256(stor0[idx]) = 0
            idx = idx + 1
            continue 
    stor9[address(arg1)] = 0
    emit 0xff697c8f: arg1
}

function batchTransfer(bytes32[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[32] = 9
    mem[96] = 12
    mem[128] = 0x554e415554484f52495a454400000000000000000000000000000000000000
    if stor9[address(msg.sender)] <= 0:
        revert with 0, '', 0
    mem[160] = 13
    mem[0] = msg.sender
    mem[192] = 0x494e56414c49445f5354415445000000000000000000000000000000000000
    if stor8:
        revert with 0, '', 0
    mem[64] = 288
    mem[224] = 12
    mem[256] = 'INVALID_SIZE'
    if arg1.length % 4:
        revert with 0, 'INVALID_SIZE', 0
    s = 0
    s = 0
    s = 0
    s = 0
    idx = 68
    while idx < (32 * arg1.length) + 68:
        mem[mem[64]] = 0x23b872dd00000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = address(cd[(idx + 32)])
        mem[mem[64] + 36] = address(cd[(idx + 64)])
        mem[mem[64] + 68] = cd[(idx + 96)]
        call address(cd[idx]).0x23b872dd with:
             gas gas_remaining wei
            args address(cd[(idx + 32)]), address(cd[(idx + 64)]), cd[(idx + 96)]
        if not ext_call.success:
            _51 = mem[64]
            mem[64] = mem[64] + 64
            mem[_51] = 16
            mem[_51 + 32] = 'TRANSFER_FAILURE'
            _52 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 16
            idx = 0
            while idx < 16:
                mem[idx + _52 + 68] = mem[idx + _51 + 32]
                idx = idx + 32
                continue 
            mem[_52 + 84] = 0
            revert with memory
              from mem[64]
               len _52 + -mem[64] + 100
        if not return_data.size:
            _54 = mem[64]
            mem[64] = mem[64] + 64
            mem[_54] = 16
            mem[_54 + 32] = 'TRANSFER_FAILURE'
            s = cd[(idx + 96)]
            s = cd[(idx + 64)]
            s = cd[(idx + 32)]
            s = cd[idx]
            idx = idx + 128
            continue 
        if 32 != return_data.size:
            _60 = mem[64]
            mem[64] = mem[64] + 64
            mem[_60] = 16
            mem[_60 + 32] = 'TRANSFER_FAILURE'
            _65 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 16
            idx = 0
            while idx < 16:
                mem[idx + _65 + 68] = mem[idx + _60 + 32]
                idx = idx + 32
                continue 
            mem[_65 + 84] = 0
            revert with memory
              from mem[64]
               len _65 + -mem[64] + 100
        mem[0] = ext_call.return_data[0]
        _59 = mem[64]
        mem[64] = mem[64] + 64
        mem[_59] = 16
        mem[_59 + 32] = 'TRANSFER_FAILURE'
        if ext_call.return_data[0]:
            s = cd[(idx + 96)]
            s = cd[(idx + 64)]
            s = cd[(idx + 32)]
            s = cd[idx]
            idx = idx + 128
            continue 
        _64 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 16
        idx = 0
        while idx < 16:
            mem[idx + _64 + 68] = mem[idx + _59 + 32]
            idx = idx + 32
            continue 
        mem[_64 + 84] = 0
        revert with memory
          from mem[64]
           len _64 + -mem[64] + 100
}

function sub_aec782d4(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= test266151307()
    require calldata.size > cd[4] + 35
    require ('cd', 4).length <= test266151307()
    require cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[96] = 12
    mem[128] = 'INVALID_SIZE'
    if ('cd', 4).length % 5:
        revert with 0, 'INVALID_SIZE', 0
    mem[160] = ('cd', 4).length / 5
    mem[64] = (32 * ('cd', 4).length / 5) + 192
    if ('cd', 4).length / 5:
        mem[192 len 32 * ('cd', 4).length / 5] = code.data[7982 len 32 * ('cd', 4).length / 5]
    s = 0
    s = 0
    s = 0
    s = 0
    s = 0
    s = 0
    idx = 68
    s = 0
    while idx < (32 * ('cd', 4).length) + 68:
        mem[0] = cd[(idx + 64)]
        mem[32] = sha3(address(cd[idx]), 2)
        if stor2[address(cd[idx])][cd[(idx + 64)]]:
            require s < ('cd', 4).length / 5
            mem[(32 * s) + 192] = -1
            s = not stor2[address(cd[idx])][cd[(idx + 64)]]
            s = cd[(idx + 128)]
            s = cd[(idx + 96)]
            s = cd[(idx + 64)]
            s = cd[(idx + 32)]
            s = cd[idx]
            idx = idx + 160
            s = s + 1
            continue 
        mem[0] = Mask(160, 96, cd[(idx + 128)])
        mem[32] = sha3(address(cd[idx]), 4)
        if cd[(idx + 96)] <= tradingPairCutoffs[address(cd[idx])][Mask(160, 96, cd[(idx + 128)])]:
            require s < ('cd', 4).length / 5
            mem[(32 * s) + 192] = -1
            s = cd[(idx + 96)] > tradingPairCutoffs[address(cd[idx])][Mask(160, 96, cd[(idx + 128)])]
            s = cd[(idx + 128)]
            s = cd[(idx + 96)]
            s = cd[(idx + 64)]
            s = cd[(idx + 32)]
            s = cd[idx]
            idx = idx + 160
            s = s + 1
            continue 
        mem[0] = address(cd[idx])
        mem[32] = 3
        if cd[(idx + 96)] <= cutoffs[address(cd[idx])]:
            require s < ('cd', 4).length / 5
            mem[(32 * s) + 192] = -1
            s = cd[(idx + 96)] > cutoffs[address(cd[idx])]
            s = cd[(idx + 128)]
            s = cd[(idx + 96)]
            s = cd[(idx + 64)]
            s = cd[(idx + 32)]
            s = cd[idx]
            idx = idx + 160
            s = s + 1
            continue 
        mem[0] = Mask(160, 96, cd[(idx + 128)])
        mem[32] = sha3(address(cd[(idx + 32)]), sha3(address(cd[idx]), 6))
        if cd[(idx + 96)] <= sub_b30ecbf4[address(cd[idx])][address(cd[(idx + 32)])][Mask(160, 96, cd[(idx + 128)])]:
            require s < ('cd', 4).length / 5
            mem[(32 * s) + 192] = -1
            s = cd[(idx + 96)] > sub_b30ecbf4[address(cd[idx])][address(cd[(idx + 32)])][Mask(160, 96, cd[(idx + 128)])]
            s = cd[(idx + 128)]
            s = cd[(idx + 96)]
            s = cd[(idx + 64)]
            s = cd[(idx + 32)]
            s = cd[idx]
            idx = idx + 160
            s = s + 1
            continue 
        mem[0] = address(cd[(idx + 32)])
        mem[32] = sha3(address(cd[idx]), 5)
        if cd[(idx + 96)] <= sub_f7a6301d[address(cd[idx])][address(cd[(idx + 32)])]:
            require s < ('cd', 4).length / 5
            mem[(32 * s) + 192] = -1
        else:
            mem[0] = cd[(idx + 64)]
            mem[32] = 1
            require s < ('cd', 4).length / 5
            mem[(32 * s) + 192] = filled[cd[(idx + 64)]]
        s = cd[(idx + 96)] > sub_f7a6301d[address(cd[idx])][address(cd[(idx + 32)])]
        s = cd[(idx + 128)]
        s = cd[(idx + 96)]
        s = cd[(idx + 64)]
        s = cd[(idx + 32)]
        s = cd[idx]
        idx = idx + 160
        s = s + 1
        continue 
    mem[(32 * ('cd', 4).length / 5) + 192] = 32
    mem[(32 * ('cd', 4).length / 5) + 224] = ('cd', 4).length / 5
    mem[(32 * ('cd', 4).length / 5) + 256 len 32 * ('cd', 4).length / 5] = mem[192 len 32 * ('cd', 4).length / 5]
    return memory
      from (32 * ('cd', 4).length / 5) + 192
       len (32 * ('cd', 4).length / 5) + 64
}



}
