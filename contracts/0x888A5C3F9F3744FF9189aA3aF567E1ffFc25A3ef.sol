contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 icoRatio;
uint256 icoEndtime;
address icoSenderAddress;
address icoHolderAddress;

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

function icoHolder() {
    return icoHolderAddress
}

function icoRatio() {
    return icoRatio
}

function icoEndtime() {
    return icoEndtime
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function icoSender() {
    return icoSenderAddress
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function withdraw() {
    call icoHolderAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Withdraw(eth.balance(this.address), msg.sender, icoHolderAddress);
}

function burnFrom(address arg1, uint256 arg2) {
    require balanceOf[address(arg1)] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg2
    allowance[address(arg1)][address(msg.sender)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    require balanceOf[address(arg1)] + balanceOf[address(arg2)] == balanceOf[address(arg1)] + balanceOf[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require block.timestamp <= icoEndtime
    require msg.value * icoRatio * 10^decimals / 10^18
    require balanceOf[stor8] >= msg.value * icoRatio * 10^decimals / 10^18
    require msg.sender
    require balanceOf[stor8] >= msg.value * icoRatio * 10^decimals / 10^18
    require balanceOf[address(msg.sender)] + (msg.value * icoRatio * 10^decimals / 10^18) > balanceOf[address(msg.sender)]
    balanceOf[stor8] -= msg.value * icoRatio * 10^decimals / 10^18
    balanceOf[address(msg.sender)] += msg.value * icoRatio * 10^decimals / 10^18
    require balanceOf[stor8] + balanceOf[address(msg.sender)] == balanceOf[stor8] + balanceOf[address(msg.sender)]
    emit Transfer((msg.value * icoRatio * 10^decimals / 10^18), icoSenderAddress, msg.sender);
    emit ICO((msg.value * icoRatio * 10^decimals / 10^18), msg.sender, msg.value);
}



}
