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
    return code.data[59 len 887]
}



// =====================  Runtime code  =====================


uint256 value;
address sellerAddress;
uint8 state; offset 160
uint128 stor2; offset 168
address buyerAddress;

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
    require 0 == state
    require msg.value == 2 * value
    buyerAddress = msg.sender
    state = 1
    stor2 = Mask(88, 168, msg.sender) >> 168
    emit PurchaseConfirmed()
}

function abort() payable {
    require msg.sender == sellerAddress
    require 0 == state
    call sellerAddress with:
       value eth.balance(this.address) wei
         gas 0 wei
    state = 2
    emit Aborted()
}

function refund() payable {
    require msg.sender == sellerAddress
    require 1 == state
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
    require buyerAddress == msg.sender
    require 1 == state
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
