contract main {


// =======================  Init code  ======================


uint8 stor2; offset 160
uint8 stor2; offset 168
uint8 stor2; offset 176
uint128 stor2; offset 184
address stor2;

function _fallback() {
    address(stor2.field_0) = msg.sender
    uint8(stor2.field_160) = uint8(code.data[2536 len 32])
    uint8(stor2.field_168) = uint8(code.data[2568 len 32])
    uint8(stor2.field_176) = uint8(code.data[2600 len 32])
    Mask(72, 0, stor2.field_184) = 0
    return code.data[360 len 2176]
}



// =====================  Runtime code  =====================


mapping of address listingService;
mapping of address sub_0c81d32c;
uint8 stor2;
uint8 stor2; offset 168
uint8 stor2; offset 176
uint8 stor2; offset 184
uint128 stor2; offset 184
address stor2;

function sub_0c81d32c(?) {
    return sub_0c81d32c[arg1]
}

function getListingService(uint8 arg1) {
    require not uint8(stor2.field_184)
    return listingService[arg1 << 248]
}

function sub_7dd2ca45(?) {
    return listingService[arg1]
}

function getListingDB(uint8 arg1) {
    require not uint8(stor2.field_184)
    return sub_0c81d32c[arg1 << 248]
}

function _fallback() payable {
    revert
}

function abandon() {
    require msg.sender == address(stor2.field_0)
    Mask(72, 0, stor2.field_184) = 1
}

function admin() {
    return address(stor2.field_0), uint8(stor2.field_0), uint8(stor2.field_0), uint8(stor2.field_0), bool(uint8(stor2.field_184))
}

function assignListingDB(address arg1) {
    require msg.sender == address(stor2.field_0)
    require not uint8(stor2.field_184)
    uint8(stor2.field_168) = uint8(uint8(stor2.field_168) + 1)
    sub_0c81d32c[uint8(stor2.field_0)] = arg1
}

function sub_0a2495af(?) {
    require msg.sender == address(stor2.field_0)
    require not uint8(stor2.field_184)
    uint8(stor2.field_176) = uint8(uint8(stor2.field_176) + 1)
    listingService[uint8(stor2.field_0)] = arg1
    require ext_code.size(sub_0c81d32c[uint8(stor2.field_0)])
    call sub_0c81d32c[uint8(stor2.field_0)].0xdcfd83e0 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}



}
