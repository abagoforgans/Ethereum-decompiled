contract main {


// =======================  Init code  ======================


address stor1;
uint256 stor2;

function _fallback() {
    stor1 = msg.sender
    require stor1 == msg.sender
    require code.data[1315 len 32] > 0
    stor2 = code.data[1315 len 32]
    return code.data[125 len 1190]
}



// =====================  Runtime code  =====================


const isPricingStrategy = 1

const isSane(address arg1) = 1

const isPresalePurchase(address arg1) = 0


address tierAddress;
address owner;
uint256 oneTokenInWei;

function tier() {
    return tierAddress
}

function oneTokenInWei() {
    return oneTokenInWei
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function updateRate(uint256 arg1) {
    require tierAddress == msg.sender
    oneTokenInWei = arg1
    emit RateChanged(arg1);
}

function setTier(address arg1) {
    require owner == msg.sender
    require arg1
    require not tierAddress
    tierAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function calculatePrice(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) {
    require ext_code.size(0x2689fef0f943281114aa81e4ce6934b7b1fd90b3)
    delegate 0x2689fef0f943281114aa81e4ce6934b7b1fd90b3.0x1d3b9edf with:
         gas gas_remaining - 710 wei
        args arg1, 10^arg5
    require delegate.return_code
    require oneTokenInWei
    return (delegate.return_data[0] / oneTokenInWei)
}



}
