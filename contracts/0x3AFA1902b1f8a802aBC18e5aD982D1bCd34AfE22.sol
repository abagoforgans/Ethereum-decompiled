contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
uint8 stor3; offset 160
uint128 stor3; offset 160
address owner;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
mapping of uint8 stor7;
mapping of uint256 frozenAccountTokens;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function frozenAccountTokens(address arg1) {
    return frozenAccountTokens[arg1]
}

function decimals() {
    return decimals
}

function paused() {
    return bool(uint8(stor3.field_160))
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

function frozenAccount(address arg1) {
    return bool(stor7[arg1])
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 0
    emit Unpause()
    return 1
}

function pause() {
    require msg.sender == owner
    require not uint8(stor3.field_160)
    Mask(96, 0, stor3.field_160) = 1
    emit Pause()
    return 1
}

function freezeAccount(address arg1, bool arg2) {
    require msg.sender == owner
    stor7[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function unfreezeAccountWithToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balanceOf[address(arg1)] >= arg2
    require arg2 > 0
    require arg2 <= frozenAccountTokens[address(arg1)]
    frozenAccountTokens[address(arg1)] -= arg2
    emit Unfreeze(arg2, arg1);
    return 1
}

function burn(uint256 arg1) {
    require msg.sender == owner
    require balanceOf[address(msg.sender)] >= arg1
    require arg1 > 0
    require arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function freezeAccountWithToken(address arg1, uint256 arg2) {
    require msg.sender == owner
    require balanceOf[address(arg1)] >= arg2
    require arg2 > 0
    require frozenAccountTokens[address(arg1)] + arg2 >= frozenAccountTokens[address(arg1)]
    frozenAccountTokens[address(arg1)] += arg2
    emit Freeze(arg2, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require not uint8(stor3.field_160)
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor7[address(msg.sender)]
    require frozenAccountTokens[address(msg.sender)] + arg2 >= frozenAccountTokens[address(msg.sender)]
    require frozenAccountTokens[address(msg.sender)] + arg2 <= balanceOf[address(msg.sender)]
    require not uint8(stor3.field_160)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor7[address(arg1)]
    require frozenAccountTokens[address(arg1)] + arg3 >= frozenAccountTokens[address(arg1)]
    require frozenAccountTokens[address(arg1)] + arg3 <= balanceOf[address(arg1)]
    require not uint8(stor3.field_160)
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
    return 1
}

function transferAndFreezeTokens(address arg1, uint256 arg2) {
    require msg.sender == owner
    require not stor7[address(msg.sender)]
    require frozenAccountTokens[address(msg.sender)] + arg2 >= frozenAccountTokens[address(msg.sender)]
    require frozenAccountTokens[address(msg.sender)] + arg2 <= balanceOf[address(msg.sender)]
    require not uint8(stor3.field_160)
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require msg.sender == owner
    require balanceOf[address(arg1)] >= arg2
    require arg2 > 0
    require frozenAccountTokens[address(arg1)] + arg2 >= frozenAccountTokens[address(arg1)]
    frozenAccountTokens[address(arg1)] += arg2
    emit Freeze(arg2, arg1);
    return 1
}

function multisend(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _29 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _31 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require msg.sender == owner
        require not stor7[address(msg.sender)]
        require frozenAccountTokens[address(msg.sender)] + (10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]) >= frozenAccountTokens[address(msg.sender)]
        require frozenAccountTokens[address(msg.sender)] + (10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]) <= balanceOf[address(msg.sender)]
        require not uint8(stor3.field_160)
        require mem[(32 * idx) + 140 len 20]
        require 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        require 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += -1 * 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]
        require balanceOf[address(mem[(32 * idx) + 128])] + (10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]) >= balanceOf[address(mem[(32 * idx) + 128])]
        balanceOf[address(mem[(32 * idx) + 128])] += 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 10^18 * mem[(32 * idx) + (32 * arg1.length) + 160]
        emit Transfer(mem[(32 * arg1.length) + (32 * arg2.length) + 160], msg.sender, address(_29));
        require msg.sender == owner
        require balanceOf[address(_29)] >= 10^18 * _31
        require 10^18 * _31 > 0
        require frozenAccountTokens[address(_29)] + (10^18 * _31) >= frozenAccountTokens[address(_29)]
        mem[0] = address(_29)
        mem[32] = 8
        frozenAccountTokens[address(_29)] += 10^18 * _31
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 10^18 * _31
        emit Freeze((10^18 * _31), address(_29));
        idx = idx + 1
        continue 
    return arg1.length
}



}
