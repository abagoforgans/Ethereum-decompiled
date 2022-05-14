contract main {




// =====================  Runtime code  =====================


const name = 'Health Data Chain Token'

const decimals = 18

const symbol = 'HDCT'


uint256 totalSupply;
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint8 stor4;

function totalSupply() {
    return totalSupply
}

function paused() {
    return bool(stor4)
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function unpause() {
    require owner != msg.sender
    require stor4
    stor4 = 0
}

function pause() {
    require owner != msg.sender
    require not stor4
    stor4 = 1
}

function approve(address arg1, uint256 arg2) {
    require not stor4
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not stor4
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not stor4
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require arg3 > 0
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
