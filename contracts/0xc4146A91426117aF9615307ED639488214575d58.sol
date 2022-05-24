contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
address minterAddress;

function name() {
    return name[0 len name.length]
}

function minter() {
    return minterAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function transfer(address arg1, uint256 arg2) {
    if minterAddress != msg.sender:
        revert with 0, 'Sender not authorized'
    if not arg1:
        revert with 0, '1 ERROR'
    if arg1 == msg.sender:
        revert with 0, '2 ERROR'
    if arg2 > balanceOf[msg.sender]:
        revert with 0, '3 ERROR'
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, '4 ERROR'
    balanceOf[msg.sender] -= arg2
    balanceOf[arg1] += arg2
    return 1
}



}
