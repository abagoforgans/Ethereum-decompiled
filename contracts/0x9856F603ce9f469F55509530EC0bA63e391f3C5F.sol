contract main {




// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint256 freezeOf;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;

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

function freezeOf(address arg1) {
    return freezeOf[arg1]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function transferOwnerShip(address arg1) {
    require msg.sender == owner
    require arg1
    emit TransferOwnerShip(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require arg2 > 0
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function freeze(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 > 0
    require balanceOf[address(arg1)] >= arg2
    require balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] -= arg2
    require freezeOf[address(arg1)] <= -arg2 - 1
    freezeOf[address(arg1)] += arg2
    emit Freeze(arg2, arg1);
    return 1
}

function unfreeze(address arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 > 0
    require freezeOf[address(arg1)] >= arg2
    require freezeOf[address(arg1)] >= arg2
    freezeOf[address(arg1)] -= arg2
    require balanceOf[address(arg1)] <= -arg2 - 1
    balanceOf[address(arg1)] += arg2
    emit Unfreeze(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] <= -balanceOf[address(arg1)] - 1
    require balanceOf[address(msg.sender)] >= arg2
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] <= -arg2 - 1
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    require balanceOf[address(msg.sender)] <= -balanceOf[address(arg1)] - 1
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] <= -balanceOf[address(arg2)] - 1
    require balanceOf[address(arg1)] >= arg3
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] <= -arg3 - 1
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require balanceOf[address(arg1)] <= -balanceOf[address(arg2)] - 1
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    return 1
}



}
