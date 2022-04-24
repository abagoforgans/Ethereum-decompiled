contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
address stor6;

function _fallback() payable {
    stor1 = 5 * 10^10
    require not msg.value
    stor0 = msg.sender
    require code.data[9958 len 32] < code.data[9990 len 32]
    require code.data[10022 len 32] > 0
    stor2 = code.data[9958 len 32]
    stor3 = code.data[9990 len 32]
    stor4 = code.data[10022 len 32]
    stor5 = code.data[10054 len 32]
    create contract with 0 wei
                    code: code.data[2329 len 7629]
    require create.new_address
    stor6 = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).init(address rg1, uint32 rg2, uint32 rg3, uint256 rg4, uint256 rg5) with:
         gas gas_remaining - 710 wei
        args msg.sender, code.data[10118 len 32] << 224, code.data[10150 len 32] << 224, code.data[10182 len 32], code.data[10214 len 32]
    require ext_call.success
    require ext_code.size(stor6)
    call stor6.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args msg.sender, code.data[10086 len 32]
    require ext_call.success
    return code.data[582 len 1747]
}



// =====================  Runtime code  =====================


address owner;
uint256 maxGasPrice;
uint256 startTimestamp;
uint256 endTimestamp;
uint256 rate;
uint256 hardCap;
address tokenAddress;
uint256 collectedEther;

function collectedEther() {
    return collectedEther
}

function rate() {
    return rate
}

function maxGasPrice() {
    return maxGasPrice
}

function owner() {
    return owner
}

function endTimestamp() {
    return endTimestamp
}

function startTimestamp() {
    return startTimestamp
}

function hardCap() {
    return hardCap
}

function token() {
    return tokenAddress
}

function destroy() {
    require owner == msg.sender
    selfdestruct(owner)
}

function destroyAndSend(address arg1) {
    require owner == msg.sender
    selfdestruct(arg1)
}

function setMaxGasPrice(uint256 arg1) {
    require owner == msg.sender
    maxGasPrice = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claimEther() {
    require owner == msg.sender
    if eth.balance(this.address) > 0:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function crowdsaleOpen() {
    if rate <= 0:
        return (rate > 0)
    if collectedEther >= hardCap:
        return (collectedEther < hardCap)
    if startTimestamp > block.timestamp:
        return startTimestamp <= block.timestamp
    return block.timestamp <= endTimestamp
}

function finalizeCrowdsale() {
    require owner == msg.sender
    rate = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
    if eth.balance(this.address) > 0:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function _fallback() payable {
    require block.gasprice <= maxGasPrice
    require rate > 0
    require collectedEther < hardCap
    require startTimestamp <= block.timestamp
    require block.timestamp <= endTimestamp
    require msg.value > 0
    require msg.value + collectedEther >= collectedEther
    require msg.value + collectedEther <= hardCap
    require msg.value + collectedEther >= collectedEther
    collectedEther += msg.value
    if not rate:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 0
    else:
        require msg.value * rate / rate == msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, msg.value * rate
    require ext_call.success
}



}
