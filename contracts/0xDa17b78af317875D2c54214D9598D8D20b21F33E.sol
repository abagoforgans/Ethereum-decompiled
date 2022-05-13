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
  stop
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
    emit RoleAdded(address(arg1), 'whitelist');
    emit WhitelistedAddressAdded(arg1);
}

function removeAddressFromWhitelist(address arg1) {
    require msg.sender == owner
    mem[160 len 0] = None
    stor1[mem[160 len 9]][address(arg1)] = 0
    emit RoleRemoved(address(arg1), 'whitelist');
    emit WhitelistedAddressRemoved(arg1);
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
        _27 = mem[(32 * idx) + 128]
        require msg.sender == owner
        _28 = mem[64]
        mem[64] = mem[64] + 64
        mem[_28] = 9
        mem[_28 + 32] = 'whitelist'
        t = _28 + 32
        u = mem[64]
        s = mem[_28]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_28])] = mem[_28 + floor32(mem[_28]) + -(mem[_28] % 32) + 64 len mem[_28] % 32] or Mask(8 * -(mem[_28] % 32) + 32, -(8 * -(mem[_28] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_28])])
        _51 = sha3(mem[mem[64] len 9], 1)
        mem[0] = address(_27)
        mem[32] = _51
        stor[_51][address(_27)] = 1
        _54 = mem[64]
        mem[mem[64]] = address(_27)
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = mem[_28]
        _56 = mem[_28]
        s = 0
        while s < _56:
            mem[mem[64] + s + 96] = mem[_28 + s + 32]
            s = s + 32
            continue 
        if not _56 % 32:
            emit RoleAdded(address arg1, string arg2):
                           mem[mem[64] len _56 + _54 + -mem[64] + 96],
        else:
            mem[floor32(_56) + _54 + 96] = mem[floor32(_56) + _54 + -(_56 % 32) + 128 len _56 % 32]
            emit RoleAdded(address arg1, string arg2):
                           mem[mem[64] len floor32(_56) + _54 + -mem[64] + 128],
        mem[mem[64]] = address(_27)
        emit WhitelistedAddressAdded(address(_27));
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
        _27 = mem[(32 * idx) + 128]
        require msg.sender == owner
        _28 = mem[64]
        mem[64] = mem[64] + 64
        mem[_28] = 9
        mem[_28 + 32] = 'whitelist'
        t = _28 + 32
        u = mem[64]
        s = mem[_28]
        while s >= 32:
            mem[u] = mem[t]
            t = t + 32
            u = u + 32
            s = s - 32
            continue 
        mem[mem[64] + floor32(mem[_28])] = mem[_28 + floor32(mem[_28]) + -(mem[_28] % 32) + 64 len mem[_28] % 32] or Mask(8 * -(mem[_28] % 32) + 32, -(8 * -(mem[_28] % 32) + 32) + 256, mem[mem[64] + floor32(mem[_28])])
        _51 = sha3(mem[mem[64] len 9], 1)
        mem[0] = address(_27)
        mem[32] = _51
        stor[_51][address(_27)] = 0
        _54 = mem[64]
        mem[mem[64]] = address(_27)
        mem[mem[64] + 32] = 64
        mem[mem[64] + 64] = mem[_28]
        _56 = mem[_28]
        s = 0
        while s < _56:
            mem[mem[64] + s + 96] = mem[_28 + s + 32]
            s = s + 32
            continue 
        if not _56 % 32:
            emit RoleRemoved(address arg1, string arg2):
                             mem[mem[64] len _56 + _54 + -mem[64] + 96],
        else:
            mem[floor32(_56) + _54 + 96] = mem[floor32(_56) + _54 + -(_56 % 32) + 128 len _56 % 32]
            emit RoleRemoved(address arg1, string arg2):
                             mem[mem[64] len floor32(_56) + _54 + -mem[64] + 128],
        mem[mem[64]] = address(_27)
        emit WhitelistedAddressRemoved(address(_27));
        idx = idx + 1
        continue 
}

function batchTransfer(address[] arg1, uint256 arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if msg.sender == owner:
        require arg2 > 0
        if not arg2:
            idx = 0
            s = 0
            while idx < arg1.length:
                if eth.balance(this.address) <= 0:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                call mem[(32 * idx) + 140 len 20] with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg1.length) + 128] = eth.balance(this.address) / 10^18
                mem[(32 * arg1.length) + 160] = arg2 / 10000
                emit Transfer(eth.balance(this.address) / 10^18, arg2 / 10000);
                idx = idx + 1
                s = 1
                continue 
        else:
            require arg2
            require 10^18 * arg2 / arg2 == 10^18
            idx = 0
            s = 0
            while idx < arg1.length:
                if eth.balance(this.address) <= 10^18 * arg2 / 10000:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                call mem[(32 * idx) + 140 len 20] with:
                   value 10^18 * arg2 / 10000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg1.length) + 128] = eth.balance(this.address) / 10^18
                mem[(32 * arg1.length) + 160] = arg2 / 10000
                emit Transfer(eth.balance(this.address) / 10^18, arg2 / 10000);
                idx = idx + 1
                s = 1
                continue 
    else:
        mem[(32 * arg1.length) + 128] = 9
        mem[(32 * arg1.length) + 160] = 'whitelist'
        mem[(32 * arg1.length) + 192 len 0] = None
        mem[(32 * arg1.length) + 201] = 1
        require stor1[mem[(32 * arg1.length) + 192 len 9]][address(msg.sender)]
        require arg2 > 0
        if not arg2:
            idx = 0
            s = 0
            while idx < arg1.length:
                if eth.balance(this.address) <= 0:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                call mem[(32 * idx) + 140 len 20] with:
                     gas 2300 wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg1.length) + 192] = eth.balance(this.address) / 10^18
                mem[(32 * arg1.length) + 224] = arg2 / 10000
                emit Transfer(eth.balance(this.address) / 10^18, arg2 / 10000);
                idx = idx + 1
                s = 1
                continue 
        else:
            require arg2
            require 10^18 * arg2 / arg2 == 10^18
            idx = 0
            s = 0
            while idx < arg1.length:
                if eth.balance(this.address) <= 10^18 * arg2 / 10000:
                    idx = idx + 1
                    s = s
                    continue 
                require idx < arg1.length
                call mem[(32 * idx) + 140 len 20] with:
                   value 10^18 * arg2 / 10000 wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(32 * arg1.length) + 192] = eth.balance(this.address) / 10^18
                mem[(32 * arg1.length) + 224] = arg2 / 10000
                emit Transfer(eth.balance(this.address) / 10^18, arg2 / 10000);
                idx = idx + 1
                s = 1
                continue 
    return bool(s)
}



}
