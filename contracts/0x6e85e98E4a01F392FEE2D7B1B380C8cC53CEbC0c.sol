contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 airAmount;
uint256 airBegintime;
uint256 airEndtime;
uint32 airLimitCount; offset 160
address airSenderAddress;
mapping of uint32 airCountOf;
uint256 icoRatio;
uint256 icoBegintime;
uint256 icoEndtime;
address icoSenderAddress;
address icoHolderAddress;

function name() {
    return name[0 len name.length]
}

function airAmount() {
    return airAmount
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

function airSender() {
    return airSenderAddress
}

function symbol() {
    return symbol[0 len symbol.length]
}

function icoHolder() {
    return icoHolderAddress
}

function airCountOf(address arg1) {
    return airCountOf[arg1]
}

function airEndtime() {
    return airEndtime
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

function icoBegintime() {
    return icoBegintime
}

function airBegintime() {
    return airBegintime
}

function airLimitCount() {
    return airLimitCount
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
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

function transfer(address arg1, uint256 arg2) {
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[msg.sender] -= arg2
    balanceOf[address(arg1)] += arg2
    require balanceOf[address(arg1)] + balanceOf[msg.sender] == balanceOf[msg.sender] + arg2 + balanceOf[address(arg1)]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[arg1] -= arg3
    balanceOf[address(arg2)] += arg3
    require balanceOf[address(arg2)] + balanceOf[arg1] == balanceOf[arg1] + arg3 + balanceOf[address(arg2)]
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function airdrop() payable {
    require block.timestamp >= airBegintime
    require block.timestamp <= airEndtime
    require not msg.value
    if airLimitCount > 0:
        require airCountOf[msg.sender] < airLimitCount
    require msg.sender
    require airAmount <= balanceOf[stor9]
    require balanceOf[address(msg.sender)] + airAmount > balanceOf[address(msg.sender)]
    balanceOf[stor9] -= airAmount
    balanceOf[address(msg.sender)] += airAmount
    require balanceOf[address(msg.sender)] + balanceOf[stor9] == balanceOf[stor9] + airAmount + balanceOf[address(msg.sender)]
    emit Transfer(airAmount, airSenderAddress, msg.sender);
    airCountOf[msg.sender] = uint32(airCountOf[msg.sender] + 1)
    emit Airdrop(airAmount, msg.sender, uint32(airCountOf[msg.sender] + 1));
}

function ico() payable {
    require block.timestamp >= icoBegintime
    require block.timestamp <= icoEndtime
    require icoRatio * msg.value * 10^decimals / 10^18
    require icoRatio * msg.value * 10^decimals / 10^18 <= balanceOf[stor14]
    require msg.sender
    require icoRatio * msg.value * 10^decimals / 10^18 <= balanceOf[stor14]
    require balanceOf[address(msg.sender)] + (icoRatio * msg.value * 10^decimals / 10^18) > balanceOf[address(msg.sender)]
    balanceOf[stor14] -= icoRatio * msg.value * 10^decimals / 10^18
    balanceOf[address(msg.sender)] += icoRatio * msg.value * 10^decimals / 10^18
    require balanceOf[address(msg.sender)] + balanceOf[stor14] == balanceOf[stor14] + (icoRatio * msg.value * 10^decimals / 10^18) + balanceOf[address(msg.sender)]
    emit Transfer((icoRatio * msg.value * 10^decimals / 10^18), icoSenderAddress, msg.sender);
    emit ICO((icoRatio * msg.value * 10^decimals / 10^18), msg.sender, msg.value);
}

function _fallback() payable {
    if msg.value:
        require block.timestamp >= icoBegintime
        require block.timestamp <= icoEndtime
        require icoRatio * msg.value * 10^decimals / 10^18
        require icoRatio * msg.value * 10^decimals / 10^18 <= balanceOf[stor14]
        require msg.sender
        require icoRatio * msg.value * 10^decimals / 10^18 <= balanceOf[stor14]
        require balanceOf[address(msg.sender)] + (icoRatio * msg.value * 10^decimals / 10^18) > balanceOf[address(msg.sender)]
        balanceOf[stor14] -= icoRatio * msg.value * 10^decimals / 10^18
        balanceOf[address(msg.sender)] += icoRatio * msg.value * 10^decimals / 10^18
        require balanceOf[address(msg.sender)] + balanceOf[stor14] == balanceOf[stor14] + (icoRatio * msg.value * 10^decimals / 10^18) + balanceOf[address(msg.sender)]
        emit Transfer((icoRatio * msg.value * 10^decimals / 10^18), icoSenderAddress, msg.sender);
        emit ICO((icoRatio * msg.value * 10^decimals / 10^18), msg.sender, msg.value);
    else:
        require block.timestamp >= airBegintime
        require block.timestamp <= airEndtime
        require not msg.value
        if airLimitCount > 0:
            require airCountOf[msg.sender] < airLimitCount
        require msg.sender
        require airAmount <= balanceOf[stor9]
        require balanceOf[address(msg.sender)] + airAmount > balanceOf[address(msg.sender)]
        balanceOf[stor9] -= airAmount
        balanceOf[address(msg.sender)] += airAmount
        require balanceOf[address(msg.sender)] + balanceOf[stor9] == balanceOf[stor9] + airAmount + balanceOf[address(msg.sender)]
        emit Transfer(airAmount, airSenderAddress, msg.sender);
        airCountOf[msg.sender] = uint32(airCountOf[msg.sender] + 1)
        emit Airdrop(airAmount, msg.sender, uint32(airCountOf[msg.sender] + 1));
}



}
