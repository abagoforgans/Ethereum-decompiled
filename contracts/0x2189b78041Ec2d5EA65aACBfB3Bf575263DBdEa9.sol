contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
address stor1;
address stor2;
uint256 stor3;

function _fallback() payable {
    Mask(96, 0, stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    require code.data[6434 len 32] > 0
    require code.data[6402 len 32] > 0
    require code.data[6478 len 20]
    create contract with 0 wei
                    code: code.data[2699 len 3703], code.data[6402 len 32]
    require create.new_address
    stor1 = address(create.new_address)
    stor3 = code.data[6434 len 32]
    stor2 = code.data[6478 len 20]
    return code.data[435 len 2264]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address tokenAddress;
address walletAddress;
uint256 rate;

function rate() {
    return rate
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function setRate(uint256 arg1) {
    require msg.sender == owner
    rate = arg1
    emit RateChanged(arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function _fallback() payable {
    require not uint8(stor0.field_160)
    require msg.sender
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value * rate
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function buyTokens(address arg1) payable {
    require not uint8(stor0.field_160)
    require arg1
    require msg.value
    require msg.value
    require msg.value * rate / msg.value == rate
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), msg.value * rate
    require ext_call.success
    emit TokenPurchase(msg.value, msg.value * rate, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
