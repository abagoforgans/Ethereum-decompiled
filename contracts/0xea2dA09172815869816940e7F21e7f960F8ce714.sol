contract main {


// =======================  Init code  ======================


uint8 stor3; offset 160
uint8 stor3; offset 168
uint8 stor3; offset 176
uint8 stor3; offset 184
uint8 stor3; offset 192
address stor3;

function _fallback() {
    address(stor3.field_0) = msg.sender
    uint8(stor3.field_160) = uint8(code.data[2682 len 32])
    uint8(stor3.field_168) = uint8(code.data[2714 len 32])
    uint8(stor3.field_176) = uint8(code.data[2746 len 32])
    uint8(stor3.field_184) = uint8(code.data[2778 len 32])
    uint8(stor3.field_192) = 0
    return code.data[332 len 2350]
}



// =====================  Runtime code  =====================


mapping of address listingService;
mapping of address sub_0c81d32c;
mapping of address sub_20732976;
uint8 stor3;
uint8 stor3; offset 168
uint8 stor3; offset 176
uint8 stor3; offset 184
uint8 stor3; offset 192
address stor3;

function sub_0c81d32c(?) {
    return sub_0c81d32c[arg1]
}

function sub_20732976(?) {
    return sub_20732976[arg1]
}

function getListingService(uint8 arg1) {
    require not uint8(stor3.field_192)
    return listingService[arg1 << 248]
}

function sub_7dd2ca45(?) {
    return listingService[arg1]
}

function getListingDB(uint8 arg1) {
    require not uint8(stor3.field_192)
    return sub_0c81d32c[arg1 << 248]
}

function _fallback() payable {
    revert
}

function abandon() {
    require address(stor3.field_0) == msg.sender
    uint8(stor3.field_192) = 1
}

function admin() {
    return address(stor3.field_0), 
           uint8(stor3.field_0),
           uint8(stor3.field_0),
           uint8(stor3.field_0),
           uint8(stor3.field_184),
           bool(uint8(stor3.field_192))
}

function abandonEscrowService(uint256 arg1) {
    require address(stor3.field_0) == msg.sender
    require ext_code.size(sub_20732976[arg1])
    call sub_20732976[arg1].0x88318834 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function assignListingDB(address arg1) {
    require address(stor3.field_0) == msg.sender
    require not uint8(stor3.field_192)
    uint8(stor3.field_168) = uint8(uint8(stor3.field_168) + 1)
    sub_0c81d32c[0 or uint8(uint8(stor3.field_168) + 1)] = arg1
}

function abandonListingService(uint256 arg1) {
    require address(stor3.field_0) == msg.sender
    require ext_code.size(listingService[arg1])
    call listingService[arg1].0x88318834 with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function authorizeEscrowService(address arg1) {
    require address(stor3.field_0) == msg.sender
    require not uint8(stor3.field_192)
    uint8(stor3.field_184) = uint8(uint8(stor3.field_184) + 1)
    sub_20732976[uint8(stor3.field_184) + 1 << 248] = arg1
    require ext_code.size(sub_0c81d32c[uint8(stor3.field_0)])
    call sub_0c81d32c[uint8(stor3.field_0)].updateService(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args listingService[uint8(stor3.field_0)], arg1
    require ext_call.success
}

function authorizeListingService(address arg1) {
    require address(stor3.field_0) == msg.sender
    require not uint8(stor3.field_192)
    uint8(stor3.field_176) = uint8(uint8(stor3.field_176) + 1)
    listingService[uint8(stor3.field_176) + 1 << 248] = arg1
    require ext_code.size(sub_0c81d32c[uint8(stor3.field_0)])
    call sub_0c81d32c[uint8(stor3.field_0)].updateService(address rg1, address rg2) with:
         gas gas_remaining - 710 wei
        args address(arg1), sub_20732976[uint8(stor3.field_0)]
    require ext_call.success
}



}
