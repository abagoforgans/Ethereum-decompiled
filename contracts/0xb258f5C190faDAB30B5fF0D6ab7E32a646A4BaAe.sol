contract main {




// =====================  Runtime code  =====================


address owner;
address pendingOwner;
array of address stor2;
mapping of uint256 stor3;
uint8 stor4;

function suspended() {
    return bool(stor4)
}

function owner() {
    return owner
}

function pendingOwner() {
    return pendingOwner
}

function _fallback() payable {
    revert with 0, 'UNSUPPORTED'
}

function isAddressAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    return (stor3[address(arg1)] > 0)
}

function suspend() {
    if owner != msg.sender:
        revert with 0, 'NOT_OWNER'
    if stor4:
        revert with 0, ''
    stor4 = 1
}

function resume() {
    if owner != msg.sender:
        revert with 0, 'NOT_OWNER'
    if not stor4:
        revert with 0, ''
    stor4 = 0
}

function claimOwnership() {
    if pendingOwner != msg.sender:
        revert with 0, 'UNAUTHORIZED'
    emit OwnershipTransferred(owner, pendingOwner);
    owner = pendingOwner
    pendingOwner = 0
}

function kill() {
    if owner != msg.sender:
        revert with 0, 'NOT_OWNER'
    if not stor4:
        revert with 0, ''
    owner = 0
    emit OwnershipTransferred(address arg1, address arg2)
    emit 0x0 
    emit 0x0 
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

function authorizeAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'NOT_OWNER'
    if not arg1:
        revert with 0, 'ZERO_ADDRESS'
    if stor3[address(arg1)]:
        revert with 0, 'ALREADY_EXIST'
    if ext_code.size(arg1) <= 0:
        revert with 0, 'INVALID_ADDRESS'
    stor2.length++
    address(stor2[stor2.length]) = arg1
    stor3[address(arg1)] = stor2.length
    emit 0xaa4a1856: arg1
}

function deauthorizeAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'NOT_OWNER'
    if not arg1:
        revert with 0, 'ZERO_ADDRESS'
    if not stor3[address(arg1)]:
        revert with 0, 'NOT_FOUND'
    if stor2.length != stor3[address(arg1)]:
        require stor2.length - 1 < stor2.length
        require stor3[address(arg1)] - 1 < stor2.length
        address(stor2[stor3[address(arg1)]]) = address(stor2[stor2.length])
        stor3[address(stor2[stor2.length])] = stor3[address(arg1)]
    stor2.length--
    if stor2.length > stor2.length - 1:
        idx = stor2.length - 1
        while stor2.length > idx:
            uint256(stor2[idx]) = 0
            idx = idx + 1
            continue 
    stor3[address(arg1)] = 0
    emit 0xff697c8f: arg1
}

function batchTransfer(bytes32[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[32] = 3
    mem[96] = 12
    mem[128] = 'UNAUTHORIZED'
    if 0 >= stor3[msg.sender]:
        revert with 0, 'UNAUTHORIZED'
    mem[160] = 13
    mem[0] = msg.sender
    mem[192] = 0xfe494e56414c49445f5354415445000000000000000000000000000000000000
    if stor4:
        revert with 0, ''
    mem[64] = 288
    mem[224] = 12
    mem[256] = 'INVALID_SIZE'
    if arg1.length % 4:
        revert with 0, 'INVALID_SIZE'
    idx = 68
    while idx < (32 * arg1.length) + 68:
        _129 = mem[64]
        mem[mem[64] + 36] = address(cd[(idx + 32)])
        mem[mem[64] + 68] = address(cd[(idx + 64)])
        mem[mem[64] + 100] = cd[(idx + 96)]
        _130 = mem[64]
        mem[mem[64]] = 100
        mem[64] = mem[64] + 132
        mem[_130 + 32] = 0x23b872dd00000000000000000000000000000000000000000000000000000000 or mem[_130 + 36 len 28]
        _133 = mem[_130]
        t = _130 + 32
        u = _129 + 132
        s = mem[_130]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[_129 + floor32(mem[_130]) + 132] = mem[_130 + -(mem[_130] % 32) + floor32(mem[_130]) + 64 len mem[_130] % 32] or Mask(8 * -(mem[_130] % 32) + 32, -(8 * -(mem[_130] % 32) + 32) + 256, mem[_129 + floor32(mem[_130]) + 132])
        call address(cd[idx]).mem[_129 + 132 len 4] with:
             gas gas_remaining wei
            args mem[_129 + 136 len _133 - 4]
        if not return_data.size:
            if ext_call.success:
                if not return_data.size:
                    mem[64] = _129 + 196
                    mem[_129 + 132] = 16
                    mem[_129 + 164] = 'TRANSFER_FAILURE'
                    idx = idx + 128
                    continue 
                if return_data.size == 32:
                    mem[0] = ext_call.return_data[0]
                    mem[64] = _129 + 196
                    mem[_129 + 132] = 16
                    mem[_129 + 164] = 'TRANSFER_FAILURE'
                    if ext_call.return_data[0]:
                        idx = idx + 128
                        continue 
            mem[_129 + 196] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_129 + 200] = 32
            idx = 32
            while idx < 16:
                mem[idx + _129 + 264] = mem[idx + _129 + 164]
                idx = idx + 32
                continue 
        else:
            mem[_129 + 132] = return_data.size
            mem[_129 + 164 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if ext_call.success:
                if not return_data.size:
                    mem[64] = _129 + ceil32(return_data.size) + 197
                    mem[_129 + ceil32(return_data.size) + 133] = 16
                    mem[_129 + ceil32(return_data.size) + 165] = 'TRANSFER_FAILURE'
                    idx = idx + 128
                    continue 
                if return_data.size == 32:
                    mem[0] = ext_call.return_data[0]
                    mem[64] = _129 + ceil32(return_data.size) + 197
                    mem[_129 + ceil32(return_data.size) + 133] = 16
                    mem[_129 + ceil32(return_data.size) + 165] = 'TRANSFER_FAILURE'
                    if ext_call.return_data[0]:
                        idx = idx + 128
                        continue 
            mem[_129 + ceil32(return_data.size) + 197] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[_129 + ceil32(return_data.size) + 201] = 32
            idx = 32
            while idx < 16:
                mem[idx + _129 + ceil32(return_data.size) + 265] = mem[idx + _129 + ceil32(return_data.size) + 165]
                idx = idx + 32
                continue 
        revert with 0, 'TRANSFER_FAILURE'
}



}
