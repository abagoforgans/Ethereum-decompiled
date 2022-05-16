contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
bool stor4; offset 256
uint8 stor4; offset 160
uint8 stor4; offset 168
uint128 stor4; offset 176
address stor4;
uint256 stor5;
mapping of uint256 stor6;

function _fallback() payable {
    uint8(stor4.field_160) = 1
    uint8(stor4.field_168) = 0
    Mask(80, 0, stor4.field_176) = 0
    stor4.field_256 % 1 = 0
    require not msg.value
    require not uint8(stor4.field_168)
    address(stor4.field_0) = msg.sender
    bool(stor0.length) = 0
    stor0.length.field_1 = 5
    stor0.length.field_8 = 'RK35Z' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 5
    stor1.length.field_8 = 'RK35Z' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 5
    stor3 = 500 * 10^6 * 10^5
    stor6[address(stor4.field_0)] = 500 * 10^6 * 10^5
    emit Transfer(5 * 10^13, address(stor4.field_0), address(stor4.field_0));
    uint8(stor4.field_168) = 1
    require stor6[0 or address(stor4.field_0)] > 0
    stor5 = block.timestamp
    return code.data[676 len 4977]
}



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
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    require owner == msg.sender
}

function OWN_ChangeState_locked(bool arg1) {
    require owner == msg.sender
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
}

function OWN_transferOwnership(address arg1) {
    require owner == msg.sender
    if ext_code.size(arg1) <= 0:
        owner = arg1
}

function OWN_freezeAddress(address arg1, bool arg2) {
    require owner == msg.sender
    stor8[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function OWN_SmartContract_Allowed(address arg1, bool arg2) {
    require owner == msg.sender
    if ext_code.size(arg1) > 0:
        stor9[address(arg1)] = uint8(arg2)
}

function OWN_mintToken(uint256 arg1) {
    require owner == msg.sender
    balanceOf[address(stor4.field_0)] += arg1
    totalSupply += arg1
    emit Transfer(arg1, 0, this.address);
    emit Transfer(arg1, this.address, owner);
}

function OWN_burn(uint256 arg1) {
    require owner == msg.sender
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
    require owner == msg.sender
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

function transfer(address arg1, uint256 arg2) {
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
    emit Transfer(arg2, msg.sender, arg1, sha3(None));
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

function OWN_DistributeTokenAdmin_Multi(address[] arg1, uint256 arg2, bool arg3) {
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[64] = (32 * arg1.length) + 160
    mem[(32 * arg1.length) + 128] = 0
    require owner == msg.sender
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
            _58 = mem[(32 * idx) + 128]
            require balanceOf[address(msg.sender)] >= arg2
            require balanceOf[address(msg.sender)] >= arg2
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(mem[(32 * idx) + 128])] <= -arg2 - 1
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 6
            balanceOf[address(mem[(32 * idx) + 128])] += arg2
            _71 = mem[(32 * arg1.length) + 128]
            t = (32 * arg1.length) + 160
            u = mem[64]
            s = mem[(32 * arg1.length) + 128]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[(32 * arg1.length) + 128])] = Mask(8 * -(mem[(32 * arg1.length) + 128] % 32) + 32, -(8 * -(mem[(32 * arg1.length) + 128] % 32) + 32) + 256, mem[mem[64] + floor32(mem[(32 * arg1.length) + 128])]) or mem[(32 * arg1.length) + floor32(mem[(32 * arg1.length) + 128]) + -(mem[(32 * arg1.length) + 128] % 32) + 192 len mem[(32 * arg1.length) + 128] % 32]
            _92 = sha3(mem[mem[64] len _71])
            mem[mem[64]] = arg2
            emit Transfer(arg2, msg.sender, address(_58), _92);
        else:
            _59 = mem[(32 * idx) + 128]
            require stor9[mem[(32 * idx) + 140 len 20]]
            require balanceOf[address(msg.sender)] >= arg2
            require balanceOf[address(msg.sender)] >= arg2
            balanceOf[address(msg.sender)] -= arg2
            require balanceOf[address(mem[(32 * idx) + 128])] <= -arg2 - 1
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 6
            balanceOf[address(mem[(32 * idx) + 128])] += arg2
            _74 = mem[(32 * arg1.length) + 128]
            t = (32 * arg1.length) + 160
            u = mem[64]
            s = mem[(32 * arg1.length) + 128]
            while s >= 32:
                mem[u] = mem[t]
                t = t + 32
                u = u + 32
                s = s - 32
                continue 
            mem[mem[64] + floor32(mem[(32 * arg1.length) + 128])] = Mask(8 * -(mem[(32 * arg1.length) + 128] % 32) + 32, -(8 * -(mem[(32 * arg1.length) + 128] % 32) + 32) + 256, mem[mem[64] + floor32(mem[(32 * arg1.length) + 128])]) or mem[(32 * arg1.length) + floor32(mem[(32 * arg1.length) + 128]) + -(mem[(32 * arg1.length) + 128] % 32) + 192 len mem[(32 * arg1.length) + 128] % 32]
            _99 = sha3(mem[mem[64] len _74])
            mem[mem[64]] = arg2
            emit Transfer(arg2, msg.sender, address(_59), _99);
        idx = idx + 1
        continue 
}



}
