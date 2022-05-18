contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sub_a602a222;
uint256 price;
address creatorAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function creator() {
    return creatorAddress
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
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function price() {
    return price
}

function sub_a602a222(?) {
    return sub_a602a222
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function _fallback() payable {
    if price >= 0:
        require balanceOf[stor6] >= 985000000 * 10^18
        require msg.value < 25 * 10^13 * 3600
        balanceOf[address(msg.sender)] += 10000 * 10^18
        balanceOf[stor6] -= 10000 * 10^18
        emit Transfer(10000 * 10^18, creatorAddress, msg.sender);
        call creatorAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
