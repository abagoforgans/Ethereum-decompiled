contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    require ext_code.size(0x2bd2326c993dfaef84f696526064ff22eba5b362)
    call 0x2bd2326c993dfaef84f696526064ff22eba5b362.0x16c72721 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if uint8(stor0.field_160):
        if not ext_call.return_data[0]:
            address(stor0.field_0) = 0xc0d332838f14ef42fcde1cf2518c427ddb676729
        else:
            address(stor0.field_0) = 0x32be343b94f860124dc4fee278fdcbd38c102d88
    else:
        if block.number < 2463000:
            if not ext_call.return_data[0]:
                address(stor0.field_0) = 0xc0d332838f14ef42fcde1cf2518c427ddb676729
            else:
                address(stor0.field_0) = 0x32be343b94f860124dc4fee278fdcbd38c102d88
        else:
            uint8(stor0.field_160) = 1
            if not ext_call.return_data[0]:
                address(stor0.field_0) = 0x29a6b91931c768a3762ac9b2f0b25212d13d37a
            else:
                address(stor0.field_0) = 0x32be343b94f860124dc4fee278fdcbd38c102d88
    return code.data[592 len 881]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address stor0;

function update() {
    require ext_code.size(0x2bd2326c993dfaef84f696526064ff22eba5b362)
    call 0x2bd2326c993dfaef84f696526064ff22eba5b362.0x16c72721 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if uint8(stor0.field_160):
        if not ext_call.return_data[0]:
            address(stor0.field_0) = 0xc0d332838f14ef42fcde1cf2518c427ddb676729
        else:
            address(stor0.field_0) = 0x32be343b94f860124dc4fee278fdcbd38c102d88
    else:
        if block.number < 2463000:
            if not ext_call.return_data[0]:
                address(stor0.field_0) = 0xc0d332838f14ef42fcde1cf2518c427ddb676729
            else:
                address(stor0.field_0) = 0x32be343b94f860124dc4fee278fdcbd38c102d88
        else:
            uint8(stor0.field_160) = 1
            if not ext_call.return_data[0]:
                address(stor0.field_0) = 0x29a6b91931c768a3762ac9b2f0b25212d13d37a
            else:
                address(stor0.field_0) = 0x32be343b94f860124dc4fee278fdcbd38c102d88
}

function _fallback() {
    if not uint8(stor0.field_160):
        require ext_code.size(0x2bd2326c993dfaef84f696526064ff22eba5b362)
        call 0x2bd2326c993dfaef84f696526064ff22eba5b362.0x16c72721 with:
             gas gas_remaining - 50 wei
        require ext_call.success
        if uint8(stor0.field_160):
            if not ext_call.return_data[0]:
                address(stor0.field_0) = 0xc0d332838f14ef42fcde1cf2518c427ddb676729
            else:
                address(stor0.field_0) = 0x32be343b94f860124dc4fee278fdcbd38c102d88
        else:
            if block.number < 2463000:
                if not ext_call.return_data[0]:
                    address(stor0.field_0) = 0xc0d332838f14ef42fcde1cf2518c427ddb676729
                else:
                    address(stor0.field_0) = 0x32be343b94f860124dc4fee278fdcbd38c102d88
            else:
                uint8(stor0.field_160) = 1
                if not ext_call.return_data[0]:
                    address(stor0.field_0) = 0x29a6b91931c768a3762ac9b2f0b25212d13d37a
                else:
                    address(stor0.field_0) = 0x32be343b94f860124dc4fee278fdcbd38c102d88
    call address(stor0.field_0) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit e(address(stor0.field_0));
}



}
