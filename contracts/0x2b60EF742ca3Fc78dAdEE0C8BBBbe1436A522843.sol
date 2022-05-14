contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor4;
uint256 stor5;

function _fallback() payable {
    stor4 = 18
    stor5 = test266151307()
    stor0 = msg.sender
    return code.data[69 len 2286]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
mapping of uint256 totalSupply;
uint8 decimals;
uint256 mask;

function allowance(uint256 arg1, address arg2, address arg3) {
    require totalSupply[arg1] > 0
    require arg1 and mask == arg1
    return allowance[arg1][address(arg2)][address(arg3)]
}

function mask() {
    return mask
}

function decimals() {
    return decimals
}

function balanceOf(uint256 arg1, address arg2) {
    require totalSupply[arg1] > 0
    require arg1 and mask == arg1
    return balanceOf[arg1][address(arg2)]
}

function owner() {
    return owner
}

function totalSupply(uint256 arg1) {
    require totalSupply[arg1] > 0
    require arg1 and mask == arg1
    return totalSupply[arg1]
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(uint256 arg1, address arg2, uint256 arg3) {
    allowance[arg1][address(msg.sender)][address(arg2)] = arg3
    emit Approval(arg3, arg1, msg.sender, arg2);
    return 1
}

function createNewSubtoken(uint256 arg1, address arg2, uint256 arg3) {
    require not totalSupply[arg1]
    require arg1 and mask == arg1
    require owner == msg.sender
    require arg3 > 0
    balanceOf[arg1][address(arg2)] = arg3
    totalSupply[arg1] = arg3
    emit Transfer(arg3, arg1, 0, arg2);
    return 1
}

function transfer(uint256 arg1, address arg2, uint256 arg3) {
    require totalSupply[arg1] > 0
    require arg1 and mask == arg1
    require arg2
    require arg3 <= balanceOf[arg1][address(msg.sender)]
    require arg3 <= balanceOf[arg1][address(msg.sender)]
    balanceOf[arg1][address(msg.sender)] -= arg3
    require arg3 + balanceOf[arg1][arg2] >= balanceOf[arg1][arg2]
    balanceOf[arg1][address(arg2)] = arg3 + balanceOf[arg1][arg2]
    emit Transfer(arg3, arg1, msg.sender, arg2);
    return 1
}

function transferFrom(uint256 arg1, address arg2, address arg3, uint256 arg4) {
    require totalSupply[arg1] > 0
    require arg1 and mask == arg1
    require arg3
    require arg4 <= balanceOf[arg1][address(arg2)]
    require arg4 <= allowance[arg1][address(arg2)][address(msg.sender)]
    require arg4 <= balanceOf[arg1][address(arg2)]
    balanceOf[arg1][address(arg2)] -= arg4
    require arg4 + balanceOf[arg1][arg3] >= balanceOf[arg1][arg3]
    balanceOf[arg1][address(arg3)] = arg4 + balanceOf[arg1][arg3]
    require arg4 <= allowance[arg1][address(arg2)][address(msg.sender)]
    allowance[arg1][address(arg2)][address(msg.sender)] -= arg4
    emit Transfer(arg4, arg1, arg2, arg3);
    return 1
}



}
