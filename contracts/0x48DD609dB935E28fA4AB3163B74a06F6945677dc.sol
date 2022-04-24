contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint8 stor2;

function _fallback() {
    stor0 = msg.sender
    require stor0 == msg.sender
    require code.data[1462 len 32] > 0
    stor1 = code.data[1462 len 32]
    stor2 = uint8(bool(code.data[1494 len 32]))
    return code.data[147 len 1315]
}



// =====================  Runtime code  =====================


const isPricingStrategy = 1

const isSane(address arg1) = 1

const isPresalePurchase(address arg1) = 0


address owner;
uint256 oneTokenInWei;
uint8 stor2;
address lastCrowdsaleAddress; offset 8

function isUpdatable() {
    return bool(stor2)
}

function lastCrowdsale() {
    return lastCrowdsaleAddress
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

function setLastCrowdsale(address arg1) {
    require owner == msg.sender
    lastCrowdsaleAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateRate(uint256 arg1) {
    require owner == msg.sender
    require stor2
    require ext_code.size(lastCrowdsaleAddress)
    call lastCrowdsaleAddress.0xb3f05b97 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    oneTokenInWei = arg1
    emit RateChanged(arg1);
}

function calculatePrice(uint256 arg1, uint256 arg2, uint256 arg3, address arg4, uint256 arg5) {
    require ext_code.size(0xdc1581a93a066a1f2e754f5c2d6f8f7aabc2e4c2)
    delegate 0xdc1581a93a066a1f2e754f5c2d6f8f7aabc2e4c2.0x1d3b9edf with:
         gas gas_remaining - 710 wei
        args arg1, 10^arg5
    require delegate.return_code
    require oneTokenInWei
    return (delegate.return_data[0] / oneTokenInWei)
}



}
