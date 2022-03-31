contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint8 stor3; offset 160
uint8 stor3; offset 168
uint32 stor3; offset 160
uint128 stor3; offset 176

function _fallback() payable {
    stor3.field_160 % 16777216 = 0
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[846 len 20]
    uint8(stor3.field_160) = code.data[801 len 1]
    uint8(stor3.field_168) = code.data[833 len 1]
    Mask(80, 0, stor3.field_176) = 0
    return code.data[217 len 553]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
uint8 stor3; offset 160
uint8 stor3; offset 168
address stor3;

function buy() payable {
    require msg.value == uint8(stor3.field_160)
    require stor1 == msg.sender
    require stor2
    address(stor3.field_0) = stor2
    require ext_code.size(stor2)
    call stor2.0x20e6e921 with:
         gas gas_remaining - 710 wei
        args stor1, 0, uint8(stor3.field_168)
    require ext_call.success
    selfdestruct(stor0)
}

function _fallback() payable {
    require msg.value == uint8(stor3.field_160)
    require stor1 == msg.sender
    require stor2
    address(stor3.field_0) = stor2
    require ext_code.size(stor2)
    call stor2.0x20e6e921 with:
         gas gas_remaining - 710 wei
        args stor1, 0, uint8(stor3.field_168)
    require ext_call.success
    selfdestruct(stor0)
}

function depositToken(address arg1) {
    require stor0 == msg.sender
    stor2 = arg1
}



}
