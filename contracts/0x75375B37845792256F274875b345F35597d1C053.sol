contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint8 stor99;

function owner() payable {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function checkRole(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 1
    require arg1
    if not stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)][address(arg1)]:
        revert with 0, '_operator does not have _role'
}

function hasRole(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 1
    require arg1
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)][address(arg1)])
    return Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[arg2.length + 160 len -arg2.length + ceil32(arg2.length)]
}

function grantPermission(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == owner
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 1
    require arg1
    require not stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)][address(arg1)]
    stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)][address(arg1)] = 1
    mem[ceil32(arg2.length) + 128] = 32
    mem[ceil32(arg2.length) + 160] = arg2.length
    mem[ceil32(arg2.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit RoleAdded(address arg1, string arg2):
                       Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                       mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                       Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256,
                       arg1,
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
        emit RoleAdded(address arg1, string arg2):
                       Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                       mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                       Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                       mem[(2 * ceil32(arg2.length)) + 192 len floor32(arg2.length) + -ceil32(arg2.length) + 32],
                       arg1,
}

function revokePermission(address arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[128 len arg2.length] = arg2[all]
    mem[arg2.length + 128] = 0
    require msg.sender == owner
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 1
    require arg1
    require stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)][address(arg1)]
    stor[mem[arg2.length + 160 len ceil32(arg2.length)]][Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0)][address(arg1)] = 0
    mem[ceil32(arg2.length) + 128] = 32
    mem[ceil32(arg2.length) + 160] = arg2.length
    mem[ceil32(arg2.length) + 192 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit RoleRemoved(address arg1, string arg2):
                         Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                         mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                         Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256,
                         arg1,
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 192] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 224 len arg2.length % 32]
        emit RoleRemoved(address arg1, string arg2):
                         Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0),
                         mem[arg2.length + 160 len ceil32(arg2.length) + -arg2.length + 32],
                         Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256,
                         mem[(2 * ceil32(arg2.length)) + 192 len floor32(arg2.length) + -ceil32(arg2.length) + 32],
                         arg1,
}

function grantPermissionBatch(address[] arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + ceil32(arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len arg2.length] = arg2[all]
    mem[(32 * arg1.length) + arg2.length + 160] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _24 = mem[(32 * idx) + 128]
        _25 = mem[64]
        _26 = mem[(32 * arg1.length) + 128]
        t = (32 * arg1.length) + 160
        u = mem[64]
        s = mem[(32 * arg1.length) + 128]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + floor32(mem[(32 * arg1.length) + 128]) + -(mem[(32 * arg1.length) + 128] % 32) + 192 len mem[(32 * arg1.length) + 128] % 32] or Mask(8 * -(mem[(32 * arg1.length) + 128] % 32) + 32, -(8 * -(mem[(32 * arg1.length) + 128] % 32) + 32) + 256, mem[mem[64] + floor32(mem[(32 * arg1.length) + 128])])
        mem[_26 + _25] = 1
        _44 = sha3(mem[mem[64] len _26 + _25 + -mem[64] + 32])
        require address(_24)
        require not stor[sha3(mem[mem[64] len _26 + _25 + -mem[64] + 32])][address(_24)]
        mem[0] = address(_24)
        mem[32] = _44
        stor[_44][address(_24)] = 1
        _48 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        _50 = mem[(32 * arg1.length) + 128]
        s = 0
        while s < _50:
            mem[_48 + s + 64] = mem[(32 * arg1.length) + s + 160]
            s = s + 32
            continue 
        if not _50 % 32:
            emit RoleAdded(mem[mem[64] len _50 + _48 + -mem[64] + 64], address(_24));
        else:
            mem[floor32(_50) + _48 + 64] = mem[floor32(_50) + _48 + -(_50 % 32) + 96 len _50 % 32]
            emit RoleAdded(mem[mem[64] len floor32(_50) + _48 + -mem[64] + 96], address(_24));
        idx = idx + 1
        continue 
}

function revokePermissionBatch(address[] arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[64] = (32 * arg1.length) + ceil32(arg2.length) + 160
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len arg2.length] = arg2[all]
    mem[(32 * arg1.length) + arg2.length + 160] = 0
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _24 = mem[(32 * idx) + 128]
        _25 = mem[64]
        _26 = mem[(32 * arg1.length) + 128]
        t = (32 * arg1.length) + 160
        u = mem[64]
        s = mem[(32 * arg1.length) + 128]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[(32 * arg1.length) + 128])] = mem[(32 * arg1.length) + floor32(mem[(32 * arg1.length) + 128]) + -(mem[(32 * arg1.length) + 128] % 32) + 192 len mem[(32 * arg1.length) + 128] % 32] or Mask(8 * -(mem[(32 * arg1.length) + 128] % 32) + 32, -(8 * -(mem[(32 * arg1.length) + 128] % 32) + 32) + 256, mem[mem[64] + floor32(mem[(32 * arg1.length) + 128])])
        mem[_26 + _25] = 1
        _44 = sha3(mem[mem[64] len _26 + _25 + -mem[64] + 32])
        require address(_24)
        require stor[sha3(mem[mem[64] len _26 + _25 + -mem[64] + 32])][address(_24)]
        mem[0] = address(_24)
        mem[32] = _44
        stor[_44][address(_24)] = 0
        _48 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[(32 * arg1.length) + 128]
        _50 = mem[(32 * arg1.length) + 128]
        s = 0
        while s < _50:
            mem[_48 + s + 64] = mem[(32 * arg1.length) + s + 160]
            s = s + 32
            continue 
        if not _50 % 32:
            emit RoleRemoved(mem[mem[64] len _50 + _48 + -mem[64] + 64], address(_24));
        else:
            mem[floor32(_50) + _48 + 64] = mem[floor32(_50) + _48 + -(_50 % 32) + 96 len _50 % 32]
            emit RoleRemoved(mem[mem[64] len floor32(_50) + _48 + -mem[64] + 96], address(_24));
        idx = idx + 1
        continue 
}



}
