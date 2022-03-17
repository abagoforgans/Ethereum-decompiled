contract main {


// =======================  Init code  ======================


bool stor0; offset 255
uint256 stor0;
uint256 stor1;

function _fallback() payable {
    require not bool(msg.value)
    stor1 = msg.sender or Mask(96, 160, stor1)
    uint255(stor0.field_0) = msg.value / 2
    bool(stor0.field_255) = 0
    return code.data[94 len 1777]
}



// =====================  Runtime code  =====================


uint256 value;
address sellerAddress;
uint8 state; offset 160
address buyerAddress;
uint256 stor2;

function seller() payable {
    return sellerAddress
}

function value() payable {
    return value
}

function buyer() payable {
    return buyerAddress
}

function state() payable {
    return state
}

function _fallback() payable {
    revert 
}

function confirmPurchase() payable {
    require not state
    require msg.value == 2 * value
    stor2 = msg.sender or Mask(96, 160, stor2)
    state = 1
    emit PurchaseConfirmed()
}

function abort() payable {
    require msg.sender == sellerAddress
    require not state
    call sellerAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
    state = 2
    emit Aborted()
}

function refund() payable {
    require msg.sender == sellerAddress
    require state == 1
    call buyerAddress with:
       value 2 * value wei
         gas 0 wei
    call sellerAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
    state = 2
    emit Refunded()
}

function confirmReceived() payable {
    require msg.sender == buyerAddress
    require state == 1
    call buyerAddress with:
       value value wei
         gas 0 wei
    call sellerAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
    state = 2
    emit ItemReceived()
}



}
