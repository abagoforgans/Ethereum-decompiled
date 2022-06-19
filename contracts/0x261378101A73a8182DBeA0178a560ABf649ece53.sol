contract main {




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
    if state:
        revert with 0, 'Invalid state.'
    require msg.value == 2 * value
    emit PurchaseConfirmed()
    buyerAddress = msg.sender
    state = 1
}

function abort() {
    if sellerAddress != msg.sender:
        revert with 0, 'Only seller can call this.'
    require state <= 2
    if state:
        revert with 0, 'Invalid state.'
    emit Aborted()
    state = 2
    call sellerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function confirmReceived() {
    if buyerAddress != msg.sender:
        revert with 0, 'Only buyer can call this.'
    require state <= 2
    if state != 1:
        revert with 0, 'Invalid state.'
    emit ItemReceived()
    state = 2
    call buyerAddress with:
       value value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    call sellerAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
}



}
