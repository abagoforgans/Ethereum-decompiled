contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 1155]




// =====================  Runtime code  =====================


const sub_790de429(?) = 1


address stor0;

function _fallback() payable {
    revert
}

function setStorage(address arg1) {
    emit 0x3a8ebf97: address(arg1), 64, 0, mem[192]
    stor0 = arg1
    return arg1
}

function sub_4c1f98c5(?) {
    require ext_code.size(stor0)
    call stor0.0xb322706b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0], ext_call.return_data[32], address(ext_call.return_data[64])
}

function sub_db748657(?) {
    require ext_code.size(stor0)
    call stor0.0x4b690ab2 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0], ext_call.return_data[32], address(ext_call.return_data[64])
}

function sub_034f86e7(?) {
    require ext_code.size(stor0)
    call stor0.0x33f3109e with:
         gas gas_remaining - 710 wei
        args arg1, arg2
    require ext_call.success
    require ext_code.size(arg2)
    call arg2.0x57a86f7d with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x4b690ab2 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0], ext_call.return_data[32], address(ext_call.return_data[64]), bool(ext_call.return_data[0])
}



}
