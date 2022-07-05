contract main {




// =====================  Runtime code  =====================


const getTime = block.timestamp


address owner;
address newOwner;
address adminAddress;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 stor6;
uint256 totallockedtime;
mapping of uint256 balanceOf;
mapping of uint256 stor9;

function name() {
    return name[0 len name.length]
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

function totallockedtime() {
    return totallockedtime
}

function newOwner() {
    return newOwner
}

function admin() {
    return adminAddress
}

function _fallback() payable {
    revert
}

function totalSupply() {
    require balanceOf[0] <= stor6
    return (stor6 - balanceOf[0])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function setTotalLockedTime(uint256 arg1) {
    require msg.sender == owner
    totallockedtime = arg1
}

function acceptOwnership() {
    require msg.sender == owner
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function burn(uint256 arg1) {
    require arg1 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg1
    require arg1 <= stor6
    stor6 -= arg1
    emit Burn(arg1, msg.sender);
    emit Transfer(arg1, msg.sender, 0);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(arg1)]
    require arg2 <= stor6
    stor6 -= arg2
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    emit Transfer(arg2, arg1, 0);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require block.timestamp >= totallockedtime
    require arg1
    require arg1 != this.address
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= stor9[address(arg1)][msg.sender]
    stor9[address(arg1)][msg.sender] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
