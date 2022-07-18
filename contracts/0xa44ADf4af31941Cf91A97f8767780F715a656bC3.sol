contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
address owner;
mapping of uint256 balanceOf;

function supply() {
    return totalSupply
}

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

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    require arg2 * 10^decimals <= balanceOf[address(msg.sender)]
    require arg1
    balanceOf[address(msg.sender)] += -1 * arg2 * 10^decimals
    balanceOf[address(arg1)] += arg2 * 10^decimals
    return 1
}



}
