contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sub_9aed757b;
uint256 buyPrice;
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

function buyPrice() {
    return buyPrice
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_9aed757b(?) {
    return sub_9aed757b
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
    require balanceOf[stor6] >= msg.value * buyPrice
    require msg.value < 10^17
    balanceOf[address(msg.sender)] += msg.value * buyPrice
    balanceOf[stor6] += -1 * msg.value * buyPrice
    emit Transfer((msg.value * buyPrice), creatorAddress, msg.sender);
    call creatorAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
