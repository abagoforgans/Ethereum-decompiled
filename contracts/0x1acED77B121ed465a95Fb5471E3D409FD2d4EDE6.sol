contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
mapping of uint256 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint8 stor9; offset 160
uint32 stor9; offset 168
address stor9;
uint256 stor11;
uint256 stor12;
uint256 stor13;
address stor14;
address stor15;

function _fallback() {
    stor3 = 5000000000 * 10^18
    bool(stor0.length) = 0
    stor0.length.field_1 = 13
    stor0.length.field_8 = 'SOCIALXBOUNTY' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'SXBT' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 18
    stor4[0xf3bf62e473d73eefb9e44f1489c68700dd9d3607] = stor3
    emit Transfer(address arg1, address arg2, uint256 arg3):
                  stor3,
    emit 0x0: stor3
    emit 0xf3bf62e4: stor3
    stor6 = 5000 * 10^18
    stor7 = 429628 * 3600
    stor8 = 432508 * 3600
    address(stor9.field_0) = 0xb043eb69c12f8402a17a7cb3906cd0fc46798a23
    uint8(stor9.field_160) = 1
    stor9.field_168 % 16777216 = 0
    stor11 = 200000
    stor12 = 429628 * 3600
    stor13 = 432508 * 3600
    stor14 = 0x74d114014fb06ec196f91020176c8f17af8f597
    stor15 = 0x74d114014fb06ec196f91020176c8f17af8f597
    return code.data[990 len 5021]
}



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
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdraw() {
    call icoHolderAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdraw(eth.balance(this.address), msg.sender, icoHolderAddress);
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    require balanceOf[address(msg.sender)] + balanceOf[address(arg1)] == balanceOf[address(msg.sender)] + balanceOf[address(arg1)]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
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

function airdrop() payable {
    require block.timestamp >= airBegintime
    require block.timestamp <= airEndtime
    require not msg.value
    if airLimitCount > 0:
        require airCountOf[address(msg.sender)] < airLimitCount
    require msg.sender
    require balanceOf[stor9] >= airAmount
    require balanceOf[address(msg.sender)] + airAmount > balanceOf[address(msg.sender)]
    balanceOf[stor9] -= airAmount
    balanceOf[address(msg.sender)] += airAmount
    require balanceOf[stor9] + balanceOf[address(msg.sender)] == balanceOf[stor9] + balanceOf[address(msg.sender)]
    emit Transfer(airAmount, airSenderAddress, msg.sender);
    airCountOf[address(msg.sender)] = uint32(airCountOf[address(msg.sender)] + 1)
    emit Airdrop(airAmount, msg.sender, airCountOf[address(msg.sender)]);
}

function ico() payable {
    require block.timestamp >= icoBegintime
    require block.timestamp <= icoEndtime
    require msg.value * icoRatio * 10^decimals / 10^18
    require balanceOf[stor14] >= msg.value * icoRatio * 10^decimals / 10^18
    require msg.sender
    require balanceOf[stor14] >= msg.value * icoRatio * 10^decimals / 10^18
    require balanceOf[address(msg.sender)] + (msg.value * icoRatio * 10^decimals / 10^18) > balanceOf[address(msg.sender)]
    balanceOf[stor14] -= msg.value * icoRatio * 10^decimals / 10^18
    balanceOf[address(msg.sender)] += msg.value * icoRatio * 10^decimals / 10^18
    require balanceOf[stor14] + balanceOf[address(msg.sender)] == balanceOf[stor14] + balanceOf[address(msg.sender)]
    emit Transfer((msg.value * icoRatio * 10^decimals / 10^18), icoSenderAddress, msg.sender);
    emit ICO((msg.value * icoRatio * 10^decimals / 10^18), msg.sender, msg.value);
}

function _fallback() payable {
    if msg.value:
        require block.timestamp >= icoBegintime
        require block.timestamp <= icoEndtime
        require msg.value * icoRatio * 10^decimals / 10^18
        require balanceOf[stor14] >= msg.value * icoRatio * 10^decimals / 10^18
        require msg.sender
        require balanceOf[stor14] >= msg.value * icoRatio * 10^decimals / 10^18
        require balanceOf[address(msg.sender)] + (msg.value * icoRatio * 10^decimals / 10^18) > balanceOf[address(msg.sender)]
        balanceOf[stor14] -= msg.value * icoRatio * 10^decimals / 10^18
        balanceOf[address(msg.sender)] += msg.value * icoRatio * 10^decimals / 10^18
        require balanceOf[stor14] + balanceOf[address(msg.sender)] == balanceOf[stor14] + balanceOf[address(msg.sender)]
        emit Transfer((msg.value * icoRatio * 10^decimals / 10^18), icoSenderAddress, msg.sender);
        emit ICO((msg.value * icoRatio * 10^decimals / 10^18), msg.sender, msg.value);
    else:
        require block.timestamp >= airBegintime
        require block.timestamp <= airEndtime
        require not msg.value
        if airLimitCount > 0:
            require airCountOf[address(msg.sender)] < airLimitCount
        require msg.sender
        require balanceOf[stor9] >= airAmount
        require balanceOf[address(msg.sender)] + airAmount > balanceOf[address(msg.sender)]
        balanceOf[stor9] -= airAmount
        balanceOf[address(msg.sender)] += airAmount
        require balanceOf[stor9] + balanceOf[address(msg.sender)] == balanceOf[stor9] + balanceOf[address(msg.sender)]
        emit Transfer(airAmount, airSenderAddress, msg.sender);
        airCountOf[address(msg.sender)] = uint32(airCountOf[address(msg.sender)] + 1)
        emit Airdrop(airAmount, msg.sender, airCountOf[address(msg.sender)]);
}



}
