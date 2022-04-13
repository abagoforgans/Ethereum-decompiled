contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
address stor4;
address stor5;
address stor6;
uint256 stor7;
uint256 stor9;
uint8 stor10; offset 160
address stor10;

function _fallback() payable {
    stor9 = 20000000 * 10^18
    uint8(stor10.field_160) = 0
    require not msg.value
    require code.data[10971 len 32] >= block.timestamp
    require code.data[11003 len 32] >= code.data[10971 len 32]
    require code.data[11035 len 32] > 0
    require code.data[11079 len 20]
    stor5 = code.data[11111 len 20]
    stor6 = code.data[11143 len 20]
    create contract with 0 wei
                    code: code.data[8290 len 2681], stor5, stor6
    require create.new_address
    stor0 = address(create.new_address)
    stor2 = code.data[10971 len 32]
    stor3 = code.data[11003 len 32]
    stor7 = code.data[11035 len 32]
    stor4 = code.data[11079 len 20]
    create contract with 0 wei
                    code: code.data[6106 len 2184], code.data[11163 len 32], code.data[11195 len 32], code.data[11035 len 32], code.data[11079 len 20], address(create.new_address)
    stor1 = address(create.new_address)
    require ext_code.size(stor0)
    call stor0.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor1, stor9
    require ext_call.success
    emit 0xc45bbc11: address(this.address), stor1, stor9
    address(stor10.field_0) = msg.sender
    return code.data[901 len 5205]
}



// =====================  Runtime code  =====================


address tokenAddress;
address presaleAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
address sub_a4115810Address;
address sub_27ebc9edAddress;
uint256 rate;
uint256 weiRaised;
uint256 presaleAllocation;
uint8 stor10; offset 160
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

function presaleAllocation() {
    return presaleAllocation
}

function isFinalized() {
    return bool(stor10)
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

function presale() {
    return presaleAddress
}

function hasEnded() {
    return (block.timestamp > endTime)
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function finalizePresale() {
    require owner == msg.sender
    require ext_code.size(presaleAddress)
    call presaleAddress.0x4bb278f3 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function finalize() {
    require owner == msg.sender
    require not stor10
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
    emit Finalized()
    stor10 = 1
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
    call tokenAddress.0xa9059cbb with:
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
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), rate * msg.value
    require ext_call.success
    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
