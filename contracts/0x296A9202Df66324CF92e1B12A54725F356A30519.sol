contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 7643]
}



// =====================  Runtime code  =====================


address owner;
address sub_dfc6c7bdAddress;

function getOwner() {
    return owner
}

function sub_dfc6c7bd(?) {
    return sub_dfc6c7bdAddress
}

function destroy() {
    require owner == msg.sender
    require ext_code.size(sub_dfc6c7bdAddress)
    call sub_dfc6c7bdAddress.0x83197ef0 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert 
}

function getCurrentDay() {
    require ext_code.size(sub_dfc6c7bdAddress)
    call sub_dfc6c7bdAddress.0x3e6968b6 with:
         gas gas_remaining - 50 wei
    require ext_call.success
    return ext_call.return_data[28 len 4]
}

function sub_a7fff47c(?) {
    require ext_code.size(sub_dfc6c7bdAddress)
    call sub_dfc6c7bdAddress.0xa7fff47c with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_a41448a6(?) {
    require ext_code.size(sub_dfc6c7bdAddress)
    call sub_dfc6c7bdAddress.0xa41448a6 with:
         gas gas_remaining - 50 wei
        args arg1 << 224, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_ce0d6dac(?) {
    require ext_code.size(sub_dfc6c7bdAddress)
    call sub_dfc6c7bdAddress.0x7f38a9ec with:
         gas gas_remaining - 50 wei
        args arg1 << 224, msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_130af78a(?) {
    require ext_code.size(sub_dfc6c7bdAddress)
    call sub_dfc6c7bdAddress.0xe4a4cf4 with:
         gas gas_remaining - 50 wei
        args arg1 << 224, arg2 << 224, msg.sender
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function sub_d6566707(?) {
    require ext_code.size(sub_dfc6c7bdAddress)
    call sub_dfc6c7bdAddress.0xef4567fb with:
         gas gas_remaining - 50 wei
        args 0, 0, arg1, arg2 << 224, arg3 << 224, arg4, address(msg.sender)
    require ext_call.success
    emit 0x1fd7c9d0: ext_call.return_data[28 len 4]
    return uint32(ext_call.return_data[0])
}

function sub_27a5fec3(?) payable {
    require ext_code.size(sub_dfc6c7bdAddress)
    call sub_dfc6c7bdAddress.0xd44af47b with:
         gas gas_remaining - 50 wei
        args 0, 0, arg2 << 224, arg3, msg.sender
    require ext_call.success
    if ext_call.return_data[0]:
        emit 0x11f33406: arg2 << 224, arg1
    return bool(ext_call.return_data[0])
}

function sub_413310d1(?) {
    if sub_dfc6c7bdAddress:
        require ext_code.size(sub_dfc6c7bdAddress)
        call sub_dfc6c7bdAddress.0x83197ef0 with:
             gas gas_remaining - 50 wei
        require ext_call.success
    create contract with 0 wei
                    code: code.data[3292 len 4308]
    require create.new_address
    sub_dfc6c7bdAddress = address(create.new_address)
    return 1
}

function sub_9234c95d(?) {
    require ext_code.size(sub_dfc6c7bdAddress)
    call sub_dfc6c7bdAddress.0x9234c95d with:
         gas gas_remaining - 50 wei
        args arg1 << 224, arg2
    require ext_call.success
    return bool(ext_call.return_data[0]), 
           ext_call.return_data[32],
           address(ext_call.return_data[64]),
           ext_call.return_data[96] << 224,
           uint32(ext_call.return_data[128])
}

function sub_db5bd856(?) {
    require ext_code.size(sub_dfc6c7bdAddress)
    call sub_dfc6c7bdAddress.0xdb5bd856 with:
         gas gas_remaining - 50 wei
        args address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0]), 
           ext_call.return_data[32],
           address(ext_call.return_data[64]),
           ext_call.return_data[96] << 224,
           uint32(ext_call.return_data[128])
}

function sub_1423ab81(?) {
    require ext_code.size(sub_dfc6c7bdAddress)
    call sub_dfc6c7bdAddress.0x1423ab81 with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0]), 
           ext_call.return_data[32] << 224,
           ext_call.return_data[64] << 224,
           ext_call.return_data[96],
           uint32(ext_call.return_data[128]),
           ext_call.return_data[160] << 224,
           ext_call.return_data[192]
}

function sub_d3ad005a(?) {
    require ext_code.size(sub_dfc6c7bdAddress)
    call sub_dfc6c7bdAddress.0xd3ad005a with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
    return bool(ext_call.return_data[0]), 
           ext_call.return_data[32] << 224,
           ext_call.return_data[64] << 224,
           ext_call.return_data[96],
           uint32(ext_call.return_data[128]),
           ext_call.return_data[160] << 224,
           ext_call.return_data[192]
}



}
