contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint8 stor1;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_3a502cc6(?) {
    return bool(stor1[address(arg1)])
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

function sub_f261db7b(?) {
    return bool(uint8(stor0.field_160))
}

function close() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_f28e91d7(?) {
    require owner == msg.sender
    require arg1
    stor1[address(arg1)] = 1
    return 1
}

function sub_16537786(?) {
    require owner == msg.sender
    require arg1
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    return 1
}

function toggleRedeemActive() {
    require stor1[address(msg.sender)]
    Mask(96, 0, stor0.field_160) = Mask(96, 0, not bool(uint8(stor0.field_160)))
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    require arg1 != owner
    owner = arg1
    emit OwnershipTransferred(msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require arg1
    require arg1 != msg.sender
    require arg2 <= balanceOf[address(msg.sender)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1) {
    require owner == msg.sender
    require arg1
    require balanceOf[address(arg1)]
    require balanceOf[address(arg1)] <= totalSupply
    totalSupply -= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    emit Burn(balanceOf[address(arg1)], arg1);
    return 1
}

function refund(address arg1) {
    require owner == msg.sender
    require arg1
    require balanceOf[address(arg1)]
    require balanceOf[address(arg1)] <= totalSupply
    totalSupply -= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    emit Refund(balanceOf[address(arg1)], arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1 != msg.sender
    require msg.sender
    require arg1
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function redeem(address arg1, uint256 arg2) {
    require stor1[address(msg.sender)]
    require uint8(stor0.field_160)
    require this.address
    require arg1
    require arg2 > 0
    require arg2 <= balanceOf[address(this.address)]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require arg2 <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
    return 1
}

function revoke(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    require this.address
    require arg2 > 0
    require arg2 <= balanceOf[address(arg1)]
    require balanceOf[address(this.address)] + arg2 >= balanceOf[address(this.address)]
    require balanceOf[address(this.address)] + arg2 >= balanceOf[address(this.address)]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require balanceOf[address(this.address)] + arg2 >= balanceOf[address(this.address)]
    balanceOf[address(this.address)] += arg2
    emit Transfer(arg2, arg1, this.address);
    emit Revoke(arg2, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowance[address(arg1)][address(msg.sender)] > 0
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require allowance[address(arg1)][address(msg.sender)] - arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg1
    require arg2
    require arg3 > 0
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
