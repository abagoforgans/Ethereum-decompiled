contract main {




// =====================  Runtime code  =====================


mapping of uint256 filled;
mapping of uint8 stor1;
mapping of uint256 cutoffs;
mapping of uint256 tradingPairCutoffs;
mapping of uint256 sub_f7a6301d;
mapping of uint256 sub_b30ecbf4;
address owner;
address pendingOwner;
array of address stor8;
mapping of uint256 stor9;
uint8 stor10;

function filled(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return filled[arg1]
}

function suspended() {
    return bool(stor10)
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
    return bool(stor1[arg1][arg2])
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
    revert with 0, 'UNSUPPORTED'
}

function isAddressAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    return (stor9[address(arg1)] > 0)
}

function suspend() {
    if owner != msg.sender:
        revert with 0, 'NOT_OWNER'
    if stor10:
        revert with 0, ''
    stor10 = 1
}

function resume() {
    if owner != msg.sender:
        revert with 0, 'NOT_OWNER'
    if not stor10:
        revert with 0, ''
    stor10 = 0
}

function sub_cfd854c2(?) {
    require calldata.size - 4 >= 64
    if 0 >= stor9[msg.sender]:
        revert with 0, ''
    if stor10:
        revert with 0, ''
    stor1[address(arg1)][arg2] = 1
}

function kill() {
    if owner != msg.sender:
        revert with 0, 'NOT_OWNER'
    if not stor10:
        revert with 0, ''
    owner = 0
    emit OwnershipTransferred(address arg1, address arg2)
    emit 0x0 
    emit 0x0 
}

function claimOwnership() {
    if pendingOwner != msg.sender:
        revert with 0, 32, 12, 0xfe554e415554484f52495a454400000000000000000000000000000000000000
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function sub_05e45560(?) {
    require calldata.size - 4 >= 64
    if 0 >= stor9[msg.sender]:
        revert with 0, ''
    if stor10:
        revert with 0, ''
    if arg2 <= cutoffs[address(arg1)]:
        revert with 0, ''
    cutoffs[address(arg1)] = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'NOT_OWNER'
    if not arg1:
        revert with 0, 'INVALID_ADDRESS'
    if owner == arg1:
        revert with 0, 'INVALID_ADDRESS'
    pendingOwner = arg1
}

function sub_9bdbf652(?) {
    require calldata.size - 4 >= 96
    if 0 >= stor9[msg.sender]:
        revert with 0, ''
    if stor10:
        revert with 0, ''
    if arg3 <= sub_f7a6301d[address(arg1)][address(arg2)]:
        revert with 0, ''
    sub_f7a6301d[address(arg1)][address(arg2)] = arg3
}

function sub_cb23e899(?) {
    require calldata.size - 4 >= 96
    if 0 >= stor9[msg.sender]:
        revert with 0, ''
    if stor10:
        revert with 0, ''
    if arg3 <= tradingPairCutoffs[address(arg1)][Mask(160, 96, arg2)]:
        revert with 0, ''
    tradingPairCutoffs[address(arg1)][Mask(160, 96, arg2)] = arg3
}

function sub_f732282b(?) {
    require calldata.size - 4 >= 128
    if 0 >= stor9[msg.sender]:
        revert with 0, ''
    if stor10:
        revert with 0, ''
    if arg4 <= sub_b30ecbf4[address(arg1)][address(arg2)][Mask(160, 96, arg3)]:
        revert with 0, ''
    sub_b30ecbf4[address(arg1)][address(arg2)][Mask(160, 96, arg3)] = arg4
}

function authorizeAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'NOT_OWNER'
    if not arg1:
        revert with 0, 'ZERO_ADDRESS'
    if stor9[address(arg1)]:
        revert with 0, 'ALREADY_EXIST'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'INVALID_ADDRESS'
    stor8.length++
    address(stor8[stor8.length]) = arg1
    stor9[address(arg1)] = stor8.length
    emit 0xaa4a1856: arg1
}

function sub_843ff0e5(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if 0 >= stor9[msg.sender]:
        revert with 0, ''
    if stor10:
        revert with 0, ''
    if bool(('cd', 4).length):
        revert with 0, 'INVALID_SIZE'
    idx = 68
    while idx < (32 * ('cd', 4).length) + 68:
        mem[0] = cd[idx]
        mem[32] = 0
        filled[cd[idx]] = cd[(idx + 32)]
        idx = idx + 64
        continue 
}

function deauthorizeAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'NOT_OWNER'
    if not arg1:
        revert with 0, 'ZERO_ADDRESS'
    if not stor9[address(arg1)]:
        revert with 0, 'NOT_FOUND'
    if stor8.length != stor9[address(arg1)]:
        require stor8.length - 1 < stor8.length
        require stor9[address(arg1)] - 1 < stor8.length
        address(stor8[stor9[address(arg1)]]) = address(stor8[stor8.length])
        stor9[address(stor8[stor8.length])] = stor9[address(arg1)]
    stor8.length--
    if stor8.length > stor8.length - 1:
        idx = stor8.length - 1
        while stor8.length > idx:
            uint256(stor8[idx]) = 0
            idx = idx + 1
            continue 
    stor9[address(arg1)] = 0
    emit 0xff697c8f: arg1
}

function sub_aec782d4(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    mem[96] = 12
    mem[128] = 'INVALID_SIZE'
    if ('cd', 4).length % 5:
        revert with 0, 'INVALID_SIZE'
    mem[160] = ('cd', 4).length / 5
    mem[64] = (32 * ('cd', 4).length / 5) + 192
    if ('cd', 4).length / 5:
        mem[192 len 32 * ('cd', 4).length / 5] = code.data[8120 len 32 * ('cd', 4).length / 5]
    idx = 68
    s = 0
    while idx < (32 * ('cd', 4).length) + 68:
        mem[0] = cd[(idx + 64)]
        mem[32] = sha3(address(cd[idx]), 1)
        if stor1[address(cd[idx])][cd[(idx + 64)]]:
            require s < ('cd', 4).length / 5
            mem[(32 * s) + 192] = -1
        else:
            mem[0] = Mask(160, 96, cd[(idx + 128)])
            mem[32] = sha3(address(cd[idx]), 3)
            if cd[(idx + 96)] <= tradingPairCutoffs[address(cd[idx])][Mask(160, 96, cd[(idx + 128)])]:
                require s < ('cd', 4).length / 5
                mem[(32 * s) + 192] = -1
            else:
                mem[0] = address(cd[idx])
                mem[32] = 2
                if cd[(idx + 96)] <= cutoffs[address(cd[idx])]:
                    require s < ('cd', 4).length / 5
                    mem[(32 * s) + 192] = -1
                else:
                    mem[0] = Mask(160, 96, cd[(idx + 128)])
                    mem[32] = sha3(address(cd[(idx + 32)]), sha3(address(cd[idx]), 5))
                    if cd[(idx + 96)] <= sub_b30ecbf4[address(cd[idx])][address(cd[(idx + 32)])][Mask(160, 96, cd[(idx + 128)])]:
                        require s < ('cd', 4).length / 5
                        mem[(32 * s) + 192] = -1
                    else:
                        mem[0] = address(cd[(idx + 32)])
                        mem[32] = sha3(address(cd[idx]), 4)
                        if cd[(idx + 96)] <= sub_f7a6301d[address(cd[idx])][address(cd[(idx + 32)])]:
                            require s < ('cd', 4).length / 5
                            mem[(32 * s) + 192] = -1
                        else:
                            mem[0] = cd[(idx + 64)]
                            mem[32] = 0
                            require s < ('cd', 4).length / 5
                            mem[(32 * s) + 192] = filled[cd[(idx + 64)]]
        idx = idx + 160
        s = s + 1
        continue 
    mem[(32 * ('cd', 4).length / 5) + 192] = 32
    mem[(32 * ('cd', 4).length / 5) + 224] = ('cd', 4).length / 5
    mem[(32 * ('cd', 4).length / 5) + 256 len floor32(('cd', 4).length / 5)] = mem[192 len floor32(('cd', 4).length / 5)]
    return memory
      from (32 * ('cd', 4).length / 5) + 192
       len (32 * ('cd', 4).length / 5) + 64
}



}
