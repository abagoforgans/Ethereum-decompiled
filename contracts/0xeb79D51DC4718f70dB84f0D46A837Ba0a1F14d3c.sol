contract main {




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
    require msg.sender == tierAddress
    oneTokenInWei = arg1
    emit RateChanged(arg1);
}

function setTier(address arg1) {
    require msg.sender == owner
    require arg1
    require not tierAddress
    tierAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function calculatePrice(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) {
    require ext_code.size(0xcb2c8b8dd49fa6e9e6e2954c87b9f76237c14d4c)
    delegate 0xcb2c8b8dd49fa6e9e6e2954c87b9f76237c14d4c.times(uint256 arg1, uint256 arg2) with:
         gas gas_remaining wei
        args arg1, 10^arg5
    if not delegate.return_code:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require oneTokenInWei
    return (delegate.return_data[0] / oneTokenInWei)
}



}
