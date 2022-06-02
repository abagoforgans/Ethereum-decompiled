contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor1;
address stor1; offset 8

function _fallback() payable {
    stor0 = 0x8d451ae5ee8f557a9ce7a9d7be8a8cb40002d5cb
    uint8(stor1.field_0) = 0
    Mask(152, 0, stor1.field_8) = 0xdd974d5c2e2928dea5f71b9825b8b646686bd2
    return code.data[146 len 602]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;

function _fallback() {
    require msg.sender == stor0
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(stor1)
    call stor1.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args stor0, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function sweep(address arg1) {
    require msg.sender == stor0
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args stor0, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}



}
