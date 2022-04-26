contract main {


// =======================  Init code  ======================


address stor0;
uint128 stor1; offset 176
uint128 stor1; offset 168
uint128 stor1; offset 160
address stor1;

function _fallback() {
    Mask(96, 0, stor1.field_160) = 0
    Mask(88, 0, stor1.field_168) = 0
    Mask(80, 0, stor1.field_176) = 0
    stor0 = msg.sender
    address(stor1.field_0) = 0x814f67fa286f7572b041d041b1d99b432c9155ee
    return code.data[260 len 2898]
}



// =====================  Runtime code  =====================


address owner;
uint8 stor1; offset 160
uint8 stor1; offset 168
uint8 stor1; offset 176
uint128 stor1; offset 176
uint128 stor1; offset 168
uint128 stor1; offset 160
address stor1;
uint256 deadline;
address coreAddress;
address stor4;

function deadline() {
    return deadline
}

function crowdSaleStarted() {
    return bool(uint8(stor1.field_160))
}

function crowdSaleClosed() {
    return bool(uint8(stor1.field_168))
}

function owner() {
    return owner
}

function crowdSalePause() {
    return bool(uint8(stor1.field_176))
}

function CoreAddress() {
    return coreAddress
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function endCrowdsale() {
    require msg.sender == owner
    Mask(88, 0, stor1.field_168) = 1
}

function pauseCrowdsale() {
    require msg.sender == owner
    Mask(80, 0, stor1.field_176) = 1
}

function unpauseCrowdsale() {
    require msg.sender == owner
    Mask(80, 0, stor1.field_176) = 0
}

function setCore(address arg1) {
    require msg.sender == owner
    coreAddress = arg1
    stor4 = arg1
}

function startCrowdsale() {
    require msg.sender == owner
    Mask(96, 0, stor1.field_160) = 1
    deadline = block.timestamp + (1440 * 24 * 3600)
}

function withdrawCrowdsaleDragons() {
    require msg.sender == owner
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(address(stor1.field_0))
    call address(stor1.field_0).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, ext_call.return_data[0]
    require ext_call.success
}

function _fallback() payable {
    require not uint8(stor1.field_168)
    require not uint8(stor1.field_176)
    if not uint8(stor1.field_160):
        require ext_code.size(stor4)
        call stor4.0x16328378 with:
           value msg.value wei
             gas gas_remaining - 9710 wei
            args msg.sender
    else:
        require block.timestamp < deadline
        require ext_code.size(stor4)
        call stor4.0x2f05cda3 with:
           value msg.value wei
             gas gas_remaining - 9710 wei
            args msg.sender
    require ext_call.success
}



}
