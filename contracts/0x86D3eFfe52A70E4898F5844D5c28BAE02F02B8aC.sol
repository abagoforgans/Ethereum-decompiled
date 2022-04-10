contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor4;
uint256 stor5;
uint8 stor6;

function _fallback() {
    stor0 = code.data[1478 len 20]
    stor1 = code.data[1510 len 20]
    stor4 = block.timestamp + (8760 * 24 * 3600)
    stor5 = block.timestamp + (17520 * 24 * 3600)
    stor6 = 0
    return code.data[135 len 1331]
}



// =====================  Runtime code  =====================


address cATContractAddress;
address postFreezeDevCATDestinationAddress;
bool stor2; offset 255
uint256 stor2;
uint256 firstAllocation;
uint256 secondAllocation;
uint256 firstThawDate;
uint256 secondThawDate;
uint8 stor6;

function secondThawDate() {
    return secondThawDate
}

function secondAllocation() {
    return secondAllocation
}

function firstThawDate() {
    return firstThawDate
}

function firstUnlocked() {
    return bool(stor6)
}

function firstAllocation() {
    return firstAllocation
}

function CATContract() {
    return cATContractAddress
}

function postFreezeDevCATDestination() {
    return postFreezeDevCATDestinationAddress
}

function _fallback() payable {
    revert
}

function changeCATDestinationAddress(address arg1) {
    require postFreezeDevCATDestinationAddress == msg.sender
    postFreezeDevCATDestinationAddress = arg1
}

function unlockSecond() {
    require stor6
    require postFreezeDevCATDestinationAddress == msg.sender
    require block.timestamp >= secondThawDate
    secondAllocation = 0
    require ext_code.size(cATContractAddress)
    call cATContractAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, secondAllocation
    require ext_call.success
}

function unlockFirst() {
    require not stor6
    require postFreezeDevCATDestinationAddress == msg.sender
    require block.timestamp >= firstThawDate
    stor6 = 1
    require ext_code.size(cATContractAddress)
    call cATContractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    uint255(stor2.field_0) = ext_call.return_data[0] / 2
    bool(stor2.field_255) = 0
    require ext_call.return_data[0] / 2 <= ext_call.return_data[0]
    secondAllocation = ext_call.return_data[0] - (ext_call.return_data[0] / 2)
    firstAllocation = 0
    require ext_code.size(cATContractAddress)
    call cATContractAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, firstAllocation
    require ext_call.success
}



}
