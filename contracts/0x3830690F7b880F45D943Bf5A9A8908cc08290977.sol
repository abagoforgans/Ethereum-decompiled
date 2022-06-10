contract main {




// =====================  Runtime code  =====================


const ROLE_WHITELISTED = 'whitelist'


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
mapping of uint8 stor4;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
array of address sub_061f51df;
mapping of uint8 stor99;

function mintingFinished() {
    return bool(uint8(stor3.field_160))
}

function sub_061f51df(?) {
    require arg1 < sub_061f51df.length
    return sub_061f51df[arg1]
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
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

function whitelist(address arg1) {
    mem[160 len 0] = None
    mem[160] = bool(stor4[mem[160 len 9]][address(arg1)])
    return memory
      from 160
       len 32
}

function finishMinting() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit MintFinished()
    return 1
}

function approve(address arg1, uint256 arg2) {
    mem[160 len 0] = None
    require stor4[mem[160 len 9]][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 0
}

function addAddressToWhitelist(address arg1) {
    require msg.sender == owner
    mem[160 len 0] = None
    stor4[mem[160 len 9]][address(arg1)] = 1
    emit RoleAdded(address(arg1), 'whitelist');
    emit WhitelistedAddressAdded(arg1);
}

function removeAddressFromWhitelist(address arg1) {
    require msg.sender == owner
    mem[160 len 0] = None
    stor4[mem[160 len 9]][address(arg1)] = 0
    emit RoleRemoved(address(arg1), 'whitelist');
    emit WhitelistedAddressRemoved(arg1);
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[address(msg.sender)]
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
}

function increaseApproval(address arg1, uint256 arg2) {
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    mem[160 len 0] = None
    require stor4[mem[160 len 9]][address(arg1)]
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}

function mint(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    mem[160 len 0] = None
    require stor4[mem[160 len 9]][address(arg1)]
    require msg.sender == owner
    require not uint8(stor3.field_160)
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Mint(arg2, arg1);
    emit Transfer(arg2, 0, arg1);
    return 0
}

function checkRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 4
    require stor[mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len (arg2.length % 32) + 32]][call.data[arg2 + 36 len floor32(arg2.length)]][address(arg1)]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    mem[160 len 0] = None
    require stor4[mem[160 len 9]][address(arg2)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 0
}

function hasRole(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[-(arg2.length % 32) + floor32(arg2.length) + 160 len arg2.length % 32]
    mem[arg2.length + ceil32(arg2.length) + 128] = 4
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
        _51 = sha3(mem[mem[64] len 9], 4)
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
        _51 = sha3(mem[mem[64] len 9], 4)
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



}
