contract main {




// =====================  Runtime code  =====================


const ROLE_WHITELISTED = 'whitelist'


address owner;
mapping of uint8 stor1;
mapping of uint8 stor99;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function whitelist(address arg1) {
    mem[160 len 0] = None
    mem[160] = bool(stor1[mem[160 len 9]][address(arg1)])
    return memory
      from 160
       len 32
}

function addAddressToWhitelist(address arg1) {
    require msg.sender == owner
    mem[160 len 0] = None
    stor1[mem[160 len 9]][address(arg1)] = 1
    emit RoleAdded('whitelist', arg1);
}

function removeAddressFromWhitelist(address arg1) {
    require msg.sender == owner
    mem[160 len 0] = None
    stor1[mem[160 len 9]][address(arg1)] = 0
    emit RoleRemoved('whitelist', arg1);
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 1
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 1
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function addAddressesToWhitelist(address[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _23 = mem[(32 * idx) + 128]
        require msg.sender == owner
        _24 = mem[64]
        mem[64] = mem[64] + 64
        mem[_24] = 9
        mem[_24 + 32] = 'whitelist'
        t = _24 + 32
        u = mem[64]
        s = mem[_24]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_24])] = mem[_24 + floor32(mem[_24]) + -(mem[_24] % 32) + 64 len mem[_24] % 32] or Mask(8 * -(mem[_24] % 32) + 32, -(8 * -(mem[_24] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_24])])
        mem[mem[64] + 9] = 1
        _43 = sha3(mem[mem[64] len 9], 1)
        mem[0] = address(_23)
        mem[32] = _43
        stor[_43][address(_23)] = 1
        _46 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_24]
        _48 = mem[_24]
        s = 0
        while s < _48:
            mem[_46 + s + 64] = mem[_24 + s + 32]
            s = s + 32
            continue 
        if not _48 % 32:
            emit RoleAdded(mem[mem[64] len _48 + _46 + -mem[64] + 64], address(_23));
        else:
            mem[floor32(_48) + _46 + 64] = mem[floor32(_48) + _46 + -(_48 % 32) + 96 len _48 % 32]
            emit RoleAdded(mem[mem[64] len floor32(_48) + _46 + -mem[64] + 96], address(_23));
        idx = idx + 1
        continue 
}

function removeAddressesFromWhitelist(address[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _23 = mem[(32 * idx) + 128]
        require msg.sender == owner
        _24 = mem[64]
        mem[64] = mem[64] + 64
        mem[_24] = 9
        mem[_24 + 32] = 'whitelist'
        t = _24 + 32
        u = mem[64]
        s = mem[_24]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_24])] = mem[_24 + floor32(mem[_24]) + -(mem[_24] % 32) + 64 len mem[_24] % 32] or Mask(8 * -(mem[_24] % 32) + 32, -(8 * -(mem[_24] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_24])])
        mem[mem[64] + 9] = 1
        _43 = sha3(mem[mem[64] len 9], 1)
        mem[0] = address(_23)
        mem[32] = _43
        stor[_43][address(_23)] = 0
        _46 = mem[64]
        mem[mem[64]] = 32
        mem[mem[64] + 32] = mem[_24]
        _48 = mem[_24]
        s = 0
        while s < _48:
            mem[_46 + s + 64] = mem[_24 + s + 32]
            s = s + 32
            continue 
        if not _48 % 32:
            emit RoleRemoved(mem[mem[64] len _48 + _46 + -mem[64] + 64], address(_23));
        else:
            mem[floor32(_48) + _46 + 64] = mem[floor32(_48) + _46 + -(_48 % 32) + 96 len _48 % 32]
            emit RoleRemoved(mem[mem[64] len floor32(_48) + _46 + -mem[64] + 96], address(_23));
        idx = idx + 1
        continue 
}



}
