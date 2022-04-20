contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
address stor4;
address stor5;
uint256 stor6;
uint8 stor8; offset 160
address stor8;

function _fallback() payable {
    uint8(stor8.field_160) = 0
    require not msg.value
    require code.data[7827 len 32] >= block.timestamp
    require code.data[7859 len 32] >= code.data[7827 len 32]
    require code.data[7891 len 32] > 0
    require code.data[7935 len 20]
    stor4 = code.data[7967 len 20]
    stor5 = code.data[7999 len 20]
    create contract with 0 wei
                    code: code.data[5146 len 2681], stor4, stor5
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[7827 len 32]
    stor2 = code.data[7859 len 32]
    stor6 = code.data[7891 len 32]
    stor3 = code.data[7935 len 20]
    address(stor8.field_0) = msg.sender
    return code.data[448 len 4698]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
address sub_a4115810Address;
address sub_27ebc9edAddress;
uint256 rate;
uint256 weiRaised;
uint8 isFinalized; offset 160
address owner;

function sub_27ebc9ed(?) {
    return sub_27ebc9edAddress
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(isFinalized)
}

function owner() {
    return owner
}

function sub_a4115810(?) {
    return sub_a4115810Address
}

function token() {
    return tokenAddress
}

function hasEnded() {
    return (block.timestamp > endTime)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function finalize() {
    require owner == msg.sender
    require not isFinalized
    require ext_code.size(tokenAddress)
    call tokenAddress.balanceOf(address rg1) with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    emit Finalized()
    isFinalized = 1
}

function _fallback() payable {
    require msg.sender
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value
    require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args msg.sender, rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require arg1
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value
    require rate * msg.value / msg.value == rate
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    require ext_code.size(tokenAddress)
    call tokenAddress.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
