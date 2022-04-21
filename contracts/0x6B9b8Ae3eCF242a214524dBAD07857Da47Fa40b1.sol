contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;

function _fallback() payable {
    stor1 = msg.sender
    stor0 = msg.value
    return code.data[91 len 1615]
}



// =====================  Runtime code  =====================


uint256 value;
address sellerAddress;
uint8 state; offset 160
address buyerAddress;

function seller() {
    return sellerAddress
}

function value() {
    return value
}

function buyer() {
    return buyerAddress
}

function state() {
    require state <= 2
    return state
}

function _fallback() payable {
    revert
}

function confirmPurchase() payable {
    require state <= 2
    require not state
    require msg.value == 2 * value
    emit PurchaseConfirmed()
    buyerAddress = msg.sender
    state = 1
}

function abort() {
    require msg.sender == sellerAddress
    require state <= 2
    require not state
    emit Aborted()
    state = 2
    call sellerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function confirmReceived() {
    require msg.sender == buyerAddress
    require state <= 2
    require state == 1
    emit ItemReceived()
    state = 2
    call buyerAddress with:
       value value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    call sellerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
