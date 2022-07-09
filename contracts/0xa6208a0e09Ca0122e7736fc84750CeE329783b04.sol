contract main {




// =====================  Runtime code  =====================


const decimals = 18


array of uint256 name;
array of uint256 symbol;
mapping of uint256 balanceOf;
uint256 totalSupply;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    balanceOf[address(msg.sender)] += 100000000 * 10^18
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(msg.sender)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
