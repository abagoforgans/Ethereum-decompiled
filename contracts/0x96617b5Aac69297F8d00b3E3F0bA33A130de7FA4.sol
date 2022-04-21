contract main {


// =======================  Init code  ======================


mapping of uint256 stor1;
uint256 stor2;
uint256 stor3;
address stor4;
uint256 stor5;

function _fallback() {
    stor2 = 100 * 10^6
    stor5 = 'NEOB'
    stor4 = 0x61ddb6704a84cd906ec8318576465b25ad2100fd
    stor1[stor4] = 50 * 10^6
    stor3 = 0
    return code.data[283 len 3227]
}



// =====================  Runtime code  =====================


mapping of uint256 allowance;
mapping of uint256 balanceOf;
uint256 totalSupply;
uint256 decimals;
address owner;
uint256 symbol;
uint8 stor6;

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function fullSupplyUnlocked() {
    return bool(stor6)
}

function owner() {
    return owner
}

function symbol() {
    return symbol
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() {
    revert
}

function unlockSupply() {
    require msg.sender == owner
    require not stor6
    require balanceOf[stor4] + 50 * 10^6 >= balanceOf[stor4]
    balanceOf[stor4] += 50 * 10^6
    stor6 = 1
    return 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
