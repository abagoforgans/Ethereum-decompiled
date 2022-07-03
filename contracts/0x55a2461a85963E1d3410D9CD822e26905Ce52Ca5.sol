contract main {




// =====================  Runtime code  =====================


const ROLE_WHITELISTED = ''


address owner;
array of uint256 reports;
mapping of uint8 stor99;

function getReport(uint256 arg1) {
    return reports[arg1][0 len reports[arg1].length]
}

function owner() {
    return owner
}

function whitelist(address arg1) {
    return bool(stor[sha3(0, 0, 1)][address(arg1)])
}

function reports(uint256 arg1) {
    return reports[arg1][0 len reports[arg1].length]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addAddressToWhitelist(address arg1) {
    require msg.sender == owner
    stor[sha3(0, 0, 1)][address(arg1)] = 1
    emit RoleAdded(address arg1, string arg2):
                   address(arg1),
                   64,
                   9,
                   0,
    emit WhitelistedAddressAdded(arg1);
}

function removeAddressFromWhitelist(address arg1) {
    require msg.sender == owner
    stor[sha3(0, 0, 1)][address(arg1)] = 0
    emit RoleRemoved(address arg1, string arg2):
                     address(arg1),
                     64,
                     9,
                     0,
    emit WhitelistedAddressRemoved(arg1);
}

function setReport(uint256 arg1, bytes arg2) {
    require stor[sha3(0, 0, 1)][address(msg.sender)]
    reports[arg1] = (2 * arg2.length) + 1
    s = 0
    idx = arg2 + 36
    while arg2 + arg2.length + 36 > idx:
        reports[arg1][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg2.length + 31) >> 5
    while reports[arg1].length + 31 / 32 > idx:
        reports[arg1][idx] = 0
        idx = idx + 1
        continue 
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + 128] = 256^(-(arg2.length % 32) + 32) - 1 and mem[ceil32(arg2.length) + floor32(arg2.length) + 128] or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[arg2.length + 128 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    mem[ceil32(arg2.length) + arg2.length + 128] = 1
    mem[ceil32(arg2.length) + 128] = bool(stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)])
    return memory
      from ceil32(arg2.length) + 128
       len 32
}

function removeAddressesFromWhitelist(address[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _29 = mem[(32 * idx) + 128]
        require msg.sender == owner
        _30 = mem[64]
        mem[64] = mem[64] + 64
        mem[_30] = 9
        mem[_30 + 32] = 0x77686974656c69737400000000000000000000000000000000000000000000
        _33 = mem[64]
        t = _30 + 32
        u = mem[64]
        s = mem[_30]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_30])] = 256^(-(mem[_30] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_30])] or mem[_30 + floor32(mem[_30]) + 32] and !(256^(-(mem[_30] % 32) + 32) - 1)
        mem[_33 + 9] = 1
        _55 = sha3(mem[mem[64] len _33 + -mem[64] + 41])
        mem[0] = address(_29)
        mem[32] = _55
        stor[_55][address(_29)] = 0
        _58 = mem[64]
        mem[mem[64]] = address(_29)
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = mem[_30]
        _60 = mem[_30]
        s = 0
        while s < _60:
            mem[s + mem[64] + 96] = mem[s + _30 + 32]
            s = s + 32
            continue 
        if not _60 % 32:
            emit RoleRemoved(address arg1, string arg2):
                             mem[mem[64] len _60 + _58 + -mem[64] + 96],
        else:
            mem[floor32(_60) + _58 + 96] = mem[floor32(_60) + _58 + -(_60 % 32) + 128 len _60 % 32]
            emit RoleRemoved(address arg1, string arg2):
                             mem[mem[64] len floor32(_60) + _58 + -mem[64] + 128],
        mem[mem[64]] = address(_29)
        emit WhitelistedAddressRemoved(address(_29));
        idx = idx + 1
        continue 
}

function addAddressesToWhitelist(address[] arg1) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _37 = mem[(32 * idx) + 128]
        require msg.sender == owner
        _38 = mem[64]
        mem[64] = mem[64] + 64
        mem[_38] = 9
        mem[_38 + 32] = 0x77686974656c69737400000000000000000000000000000000000000000000
        _41 = mem[64]
        t = _38 + 32
        u = mem[64]
        s = mem[_38]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_38])] = 256^(-(mem[_38] % 32) + 32) - 1 and mem[mem[64] + floor32(mem[_38])] or mem[_38 + floor32(mem[_38]) + 32] and !(256^(-(mem[_38] % 32) + 32) - 1)
        mem[_41 + 9] = 1
        _71 = sha3(mem[mem[64] len _41 + -mem[64] + 41])
        mem[0] = address(_37)
        mem[32] = _71
        stor[_71][address(_37)] = 1
        _74 = mem[64]
        mem[mem[64]] = address(_37)
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = mem[_38]
        _76 = mem[_38]
        if 0 >= mem[_38]:
            if not mem[_38] % 32:
                emit RoleAdded(address arg1, string arg2):
                               address(_37),
                               64,
                               mem[mem[64] + 64 len mem[_38] + 32],
            else:
                mem[floor32(mem[_38]) + mem[64] + 96] = mem[floor32(mem[_38]) + mem[64] + -(mem[_38] % 32) + 128 len mem[_38] % 32]
                emit RoleAdded(address arg1, string arg2):
                               address(_37),
                               64,
                               mem[mem[64] + 64 len floor32(_76) + 64],
        else:
            mem[mem[64] + 96] = mem[_38 + 32]
            s = 32
            while s < _76:
                mem[s + mem[64] + 96] = mem[s + _38 + 32]
                s = s + 32
                continue 
            if not _76 % 32:
                emit RoleAdded(address arg1, string arg2):
                               mem[mem[64] len _76 + _74 + -mem[64] + 96],
            else:
                mem[floor32(_76) + _74 + 96] = mem[floor32(_76) + _74 + -(_76 % 32) + 128 len _76 % 32]
                emit RoleAdded(address arg1, string arg2):
                               mem[mem[64] len floor32(_76) + _74 + -mem[64] + 128],
        mem[mem[64]] = address(_37)
        emit WhitelistedAddressAdded(address(_37));
        idx = idx + 1
        continue 
}



}
