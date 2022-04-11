contract main {


// =======================  Init code  ======================


uint256 stor0;
uint8 stor1;
mapping of uint8 stor4;
address stor5;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    require not msg.value
    stor5 = msg.sender
    stor4[address(msg.sender)] = 1
    return code.data[217 len 5664]
}



// =====================  Runtime code  =====================


const name = 'Science Power and Research Coin'

const decimals = 18

const symbol = 'SPARC'


uint256 totalSupply;
uint8 stor1;
mapping of uint256 allowance;
mapping of uint256 balanceOf;
mapping of uint8 stor4;
address owner;

function frozen() {
    return bool(stor1)
}

function totalSupply() {
    return totalSupply
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

function freeze() {
    require stor4[address(msg.sender)]
    stor1 = 1
}

function unfreeze() {
    require stor4[address(msg.sender)]
    stor1 = 0
}

function addAdmin(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 1
}

function removeAdmin(address arg1) {
    require msg.sender == owner
    stor4[address(arg1)] = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function destroy(address arg1, uint256 arg2) {
    require stor4[address(msg.sender)]
    if not arg2:
        return 0
    if balanceOf[address(arg1)] < arg2:
        return 0
    balanceOf[address(arg1)] -= arg2
    totalSupply -= arg2
    emit Transfer(arg2, arg1, this.address);
    return 1
}

function create(address arg1, uint256 arg2) {
    require stor4[address(msg.sender)]
    if not arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 0
    totalSupply += arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, this.address, arg1);
    return 1
}

function recovery(address arg1, address arg2, uint256 arg3) {
    require stor4[address(msg.sender)]
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, this.address);
    emit Transfer(arg3, this.address, arg2);
}

function transfer(address arg1, uint256 arg2) {
    if stor1:
        return 0
    if not arg2:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if stor1:
        return 0
    if not arg3:
        return 0
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        return 0
    if arg3 > balanceOf[address(arg1)]:
        return 0
    if arg3 + balanceOf[address(arg2)] < balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
