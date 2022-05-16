contract main {




// =====================  Runtime code  =====================


const MAX_UINT256 = -1


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint128 stor4; offset 160
address owner;
uint256 dateCreateToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor8;
mapping of uint8 stor9;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function DateCreateToken() {
    return dateCreateToken
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

function SC_locked() {
    return bool(uint8(stor4.field_160))
}

function tokenCreated() {
    return bool(uint8(stor4.field_168))
}

function frozenAccount(address arg1) {
    return bool(stor8[arg1])
}

function SmartContract_Allowed(address arg1) {
    return bool(stor9[address(arg1)])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function OWN_kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    require msg.sender == owner
}

function OWN_ChangeState_locked(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
}

function OWN_transferOwnership(address arg1) {
    require msg.sender == owner
    if ext_code.size(arg1) <= 0:
        owner = arg1
}

function OWN_freezeAddress(address arg1, bool arg2) {
    require msg.sender == owner
    stor8[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function OWN_SmartContract_Allowed(address arg1, bool arg2) {
    require msg.sender == owner
    if ext_code.size(arg1) > 0:
        stor9[address(arg1)] = uint8(arg2)
}

function OWN_mintToken(uint256 arg1) {
    require msg.sender == owner
    balanceOf[address(stor4.field_0)] += arg1
    totalSupply += arg1
    emit Transfer(arg1, 0, this.address);
    emit Transfer(arg1, this.address, owner);
}

function OWN_burn(uint256 arg1) {
    require msg.sender == owner
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor4.field_160)
    require not stor8[address(msg.sender)]
    require not stor8[address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function OWN_burnAddress(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(stor4.field_0)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function approveAndCall(address arg1, uint256 arg2) {
    require not uint8(stor4.field_160)
    require not stor8[address(msg.sender)]
    require not stor8[address(arg1)]
    require not uint8(stor4.field_160)
    require not stor8[address(msg.sender)]
    require not stor8[address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor4.field_160)
    require not stor8[address(arg1)]
    require not stor8[address(arg2)]
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(stor4.field_0)] >= arg3
    require balanceOf[address(arg2)] <= -arg3 - 1
    balanceOf[address(arg2)] += arg3
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    if allowance[address(arg1)][address(stor4.field_0)] < -1:
        require allowance[address(arg1)][address(msg.sender)] >= arg3
        allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require not uint8(stor4.field_160)
    require not stor8[address(msg.sender)]
    require not stor8[address(arg1)]
    if ext_code.size(arg1) > 0:
        require stor9[address(arg1)]
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] <= -arg2 - 1
    balanceOf[address(arg1)] += arg2
    mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
    mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[-(arg3.length % 32) + floor32(arg3.length) + 160 len arg3.length % 32]
    emit Transfer(arg2, msg.sender, arg1, sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32]));
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor4.field_160)
    require not stor8[address(msg.sender)]
    require not stor8[address(arg1)]
    if ext_code.size(arg1) <= 0:
        require balanceOf[address(msg.sender)] >= arg2
        require balanceOf[address(msg.sender)] >= arg2
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] <= -arg2 - 1
        balanceOf[address(arg1)] += arg2
        _14 = mem[96]
        mem[96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[floor32(mem[96]) + -(mem[96] % 32) + 128 len mem[96] % 32] = mem[-(mem[96] % 32) + floor32(mem[96]) + 160 len mem[96] % 32]
        emit Transfer(arg2, msg.sender, arg1, sha3(mem[96 len _14]));
    else:
        require stor9[address(arg1)]
        require balanceOf[address(msg.sender)] >= arg2
        require balanceOf[address(msg.sender)] >= arg2
        balanceOf[address(msg.sender)] -= arg2
        require balanceOf[address(arg1)] <= -arg2 - 1
        balanceOf[address(arg1)] += arg2
        _17 = mem[96]
        mem[96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[floor32(mem[96]) + -(mem[96] % 32) + 128 len mem[96] % 32] = mem[-(mem[96] % 32) + floor32(mem[96]) + 160 len mem[96] % 32]
        emit Transfer(arg2, msg.sender, arg1, sha3(mem[96 len _17]));
    return 1
}

function OWN_DistributeTokenAdmin_Multi(address[] arg1, uint256 arg2, bool arg3) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        mem[0] = mem[(32 * idx) + 140 len 20]
        stor8[mem[(32 * idx) + 140 len 20]] = uint8(arg3)
        require idx < mem[96]
        mem[mem[64]] = mem[(32 * idx) + 140 len 20]
        mem[mem[64] + 32] = arg3
        emit FrozenFunds(mem[mem[64]], arg3);
        require idx < mem[96]
        require idx < mem[96]
        if ext_code.size(mem[(32 * idx) + 128]) <= 0:
            _57 = mem[(32 * idx) + 128]
            require balanceOf[address(msg.sender)] >= arg2
            require balanceOf[address(msg.sender)] >= arg2
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(mem[(32 * idx) + 128])] <= -arg2 - 1
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 6
            balanceOf[address(mem[(32 * idx) + 128])] += arg2
            _70 = mem[96]
            t = 128
            u = mem[64]
            s = mem[96]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[96])] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32] or Mask(8 * -(mem[96] % 32) + 32, -(8 * -(mem[96] % 32) + 32) + 256, mem[mem[64] + floor32(mem[96])])
            _91 = sha3(mem[mem[64] len _70])
            mem[mem[64]] = arg2
            emit Transfer(arg2, msg.sender, address(_57), _91);
        else:
            _58 = mem[(32 * idx) + 128]
            require stor9[mem[(32 * idx) + 140 len 20]]
            require balanceOf[address(msg.sender)] >= arg2
            require balanceOf[address(msg.sender)] >= arg2
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(mem[(32 * idx) + 128])] <= -arg2 - 1
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 6
            balanceOf[address(mem[(32 * idx) + 128])] += arg2
            _73 = mem[96]
            t = 128
            u = mem[64]
            s = mem[96]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[96])] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32] or Mask(8 * -(mem[96] % 32) + 32, -(8 * -(mem[96] % 32) + 32) + 256, mem[mem[64] + floor32(mem[96])])
            _98 = sha3(mem[mem[64] len _73])
            mem[mem[64]] = arg2
            emit Transfer(arg2, msg.sender, address(_58), _98);
        idx = idx + 1
        continue 
}



}
