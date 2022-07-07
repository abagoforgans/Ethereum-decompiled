contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
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

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    if not arg1:
        revert with 0, 'invalid addr'
    if arg2 <= 0:
        revert with 0, 'invalid value'
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not arg1:
        revert with 0, 'invalid addr'
    if arg2 <= 0:
        revert with 0, 'invalid value'
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'balance not enough'
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        revert with 0, 'invalid value'
    if arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'sub failed'
    if balanceOf[address(msg.sender)] - arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'sub failed'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'add failed'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not arg1:
        revert with 0, 'invalid addr'
    if not arg2:
        revert with 0, 'invalid addr'
    if arg3 <= 0:
        revert with 0, 'invalid value'
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'balance not enough'
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        revert with 0, 'invalid value'
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        revert with 0, 'allowance not enough'
    if arg3 > balanceOf[address(arg1)]:
        revert with 0, 'sub failed'
    if balanceOf[address(arg1)] - arg3 > balanceOf[address(arg1)]:
        revert with 0, 'sub failed'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'add failed'
    balanceOf[address(arg2)] += arg3
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'sub failed'
    if allowance[address(arg1)][address(msg.sender)] - arg3 > allowance[address(arg1)][address(msg.sender)]:
        revert with 0, 'sub failed'
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
