contract main {




// =====================  Runtime code  =====================


address owner;
array of uint256 contactInformation;
mapping of uint8 stor2;
uint256 merchantIdHash;

function isMonethaAddress(address arg1) {
    return bool(stor2[arg1])
}

function contactInformation() {
    return contactInformation[0 len contactInformation.length]
}

function owner() {
    return owner
}

function merchantIdHash() {
    return merchantIdHash
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setContactInformation(string arg1) {
    require msg.sender == owner
    contactInformation[] = Array(len=arg1.length, data=arg1[all])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setMonethaAddress(address arg1, bool arg2) {
    require msg.sender == owner
    stor2[address(arg1)] = uint8(arg2)
    emit MonethaAddressSet(address(arg1), arg2);
}

function recordDeal(uint256 arg1, address arg2, uint32 arg3, uint32 arg4, bool arg5, uint256 arg6) {
    require stor2[msg.sender]
    emit DealCompleted(arg1, address(arg2), arg3 << 224, arg4 << 224, arg5, arg6);
}

function recordDealRefundReason(uint256 arg1, address arg2, uint32 arg3, uint32 arg4, uint256 arg5, string arg6) {
    require stor2[msg.sender]
    emit DealRefundReason(arg1, address(arg2), arg3 << 224, arg4 << 224, arg5, Array(len=arg6.length, data=arg6[all]));
}

function recordDealCancelReason(uint256 arg1, address arg2, uint32 arg3, uint32 arg4, uint256 arg5, string arg6) {
    require stor2[msg.sender]
    emit DealCancelationReason(arg1, address(arg2), arg3 << 224, arg4 << 224, arg5, Array(len=arg6.length, data=arg6[all]));
}



}
