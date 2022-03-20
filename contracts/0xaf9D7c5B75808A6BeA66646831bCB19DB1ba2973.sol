contract main {


// =======================  Init code  ======================


bool stor0; offset 255
uint256 stor0;
uint256 stor1;
array of uint256 stor3;

function _fallback() payable {
    mem[96 len -1414] = code.data[1664 len -1414]
    mem[64] = -1318
    require not bool(msg.value)
    stor1 = msg.sender or Mask(96, 160, stor1)
    uint255(stor0.field_0) = msg.value / 2
    bool(stor0.field_255) = 0
    stor3[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[250 len 1414]
}



// =====================  Runtime code  =====================


uint256 value;
address sellerAddress;
uint8 state; offset 160
uint128 stor2; offset 168
address buyerAddress;
array of uint256 sub_ce90e9a3;

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

function sub_ce90e9a3(?) payable {
    return sub_ce90e9a3[0 len sub_ce90e9a3.length]
}

function _fallback() payable {
    revert 
}

function sub_4a3b2899(?) payable {
    require msg.sender == sellerAddress
    sub_ce90e9a3[] = Array(len=arg1.length, data=arg1[all])
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
