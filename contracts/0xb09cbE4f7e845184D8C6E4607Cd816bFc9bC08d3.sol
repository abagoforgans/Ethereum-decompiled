contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    require ext_code.size(0x2bd2326c993dfaef84f696526064ff22eba5b362)
    call 0x2bd2326c993dfaef84f696526064ff22eba5b362.forked() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if ext_call.return_data[0]:
        uint8(stor0.field_160) = 1
        address(stor0.field_0) = 0x32be343b94f860124dc4fee278fdcbd38c102d88
    else:
        address(stor0.field_0) = 0xc0d332838f14ef42fcde1cf2518c427ddb676729
        if not uint8(stor0.field_160):
            if block.number >= 2500000:
                uint8(stor0.field_160) = 1
        address(stor0.field_0) = 0xc0d332838f14ef42fcde1cf2518c427ddb676729
    return code.data[610 len 894]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address stor0;

function update() {
    require ext_code.size(0x2bd2326c993dfaef84f696526064ff22eba5b362)
    call 0x2bd2326c993dfaef84f696526064ff22eba5b362.forked() with:
         gas gas_remaining - 50 wei
    require ext_call.success
    if ext_call.return_data[0]:
        uint8(stor0.field_160) = 1
        address(stor0.field_0) = 0x32be343b94f860124dc4fee278fdcbd38c102d88
    else:
        address(stor0.field_0) = 0xc0d332838f14ef42fcde1cf2518c427ddb676729
        if not uint8(stor0.field_160):
            if block.number >= 2500000:
                uint8(stor0.field_160) = 1
        address(stor0.field_0) = 0xc0d332838f14ef42fcde1cf2518c427ddb676729
}

function _fallback() payable {
    if not uint8(stor0.field_160):
        require ext_code.size(0x2bd2326c993dfaef84f696526064ff22eba5b362)
        call 0x2bd2326c993dfaef84f696526064ff22eba5b362.forked() with:
             gas gas_remaining - 50 wei
        require ext_call.success
        if ext_call.return_data[0]:
            uint8(stor0.field_160) = 1
            address(stor0.field_0) = 0x32be343b94f860124dc4fee278fdcbd38c102d88
        else:
            address(stor0.field_0) = 0xc0d332838f14ef42fcde1cf2518c427ddb676729
            if not uint8(stor0.field_160):
                if block.number >= 2500000:
                    uint8(stor0.field_160) = 1
            address(stor0.field_0) = 0xc0d332838f14ef42fcde1cf2518c427ddb676729
    call address(stor0.field_0) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit e(address(stor0.field_0));
}



}
