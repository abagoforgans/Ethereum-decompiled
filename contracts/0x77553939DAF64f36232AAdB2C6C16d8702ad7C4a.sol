contract main {


// =======================  Init code  ======================


const _fallback = code.data[31 len 1338]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_f579883d(?) {
    if arg3 != 1:
        return arg1
    return arg2
}

function sub_37854e3a(?) {
    if arg1 >= arg2:
        return arg2
    return arg1
}

function sub_a0dd356c(?) {
    if arg2 <= arg1:
        return arg2
    return arg1
}

function sub_22a5c985(?) {
    require arg2
    return ((arg1 * 10^(arg3 + 1) / arg2) + 5 / 10)
}

function sub_304128e6(?) {
    if not arg4:
        return (arg2 * arg1)
    if arg4 == 18:
        return (10^6 * (arg2 * 10^(arg3 + 1) / 10^18) + 5 / 10 * (arg1 * 10^(arg3 + 1) / 10^18) + 5 / 10)
    if 17 == arg4:
        return (10^6 * (arg2 * 10^(arg3 + 1) / 10^17) + 5 / 10 * (arg1 * 10^(arg3 + 1) / 10^18) + 5 / 10)
    if 16 == arg4:
        return (10^6 * (arg2 * 10^(arg3 + 1) / 10^16) + 5 / 10 * (arg1 * 10^(arg3 + 1) / 10^18) + 5 / 10)
    if 15 == arg4:
        return (10^6 * (arg2 * 10^(arg3 + 1) / 10^15) + 5 / 10 * (arg1 * 10^(arg3 + 1) / 10^18) + 5 / 10)
    if 14 == arg4:
        return (10^6 * (arg2 * 10^(arg3 + 1) / 10^14) + 5 / 10 * (arg1 * 10^(arg3 + 1) / 10^18) + 5 / 10)
    if 13 == arg4:
        return (10^6 * (arg2 * 10^(arg3 + 1) / 10^13) + 5 / 10 * (arg1 * 10^(arg3 + 1) / 10^18) + 5 / 10)
    require 12 == arg4
    return (10^6 * (arg2 * 10^(arg3 + 1) / 10^12) + 5 / 10 * (arg1 * 10^(arg3 + 1) / 10^18) + 5 / 10)
}

function sub_72581ff5(?) {
    require ext_code.size(arg2)
    call arg2.0xaa767289 with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    require ext_code.size(arg2)
    call arg2.0xaa767289 with:
         gas gas_remaining - 710 wei
        args arg4
    require ext_call.success
    require ext_code.size(arg2)
    call arg2.0x6971cc7f with:
         gas gas_remaining - 710 wei
        args arg3
    require ext_call.success
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if not ext_call.return_data[31 len 1]:
        return (ext_call.return_data[0] * arg1)
    if ext_call.return_data[31 len 1] == 18:
        return (10^6 * (10 * 10^6 * ext_call.return_data[0] / 10^18) + 5 / 10 * (10 * 10^6 * arg1 / 10^18) + 5 / 10)
    if 17 == ext_call.return_data[31 len 1]:
        return (10^6 * (10 * 10^6 * ext_call.return_data[0] / 10^17) + 5 / 10 * (10 * 10^6 * arg1 / 10^18) + 5 / 10)
    if 16 == ext_call.return_data[31 len 1]:
        return (10^6 * (10 * 10^6 * ext_call.return_data[0] / 10^16) + 5 / 10 * (10 * 10^6 * arg1 / 10^18) + 5 / 10)
    if 15 == ext_call.return_data[31 len 1]:
        return (10^6 * (10 * 10^6 * ext_call.return_data[0] / 10^15) + 5 / 10 * (10 * 10^6 * arg1 / 10^18) + 5 / 10)
    if 14 == ext_call.return_data[31 len 1]:
        return (10^6 * (10 * 10^6 * ext_call.return_data[0] / 10^14) + 5 / 10 * (10 * 10^6 * arg1 / 10^18) + 5 / 10)
    if 13 == ext_call.return_data[31 len 1]:
        return (10^6 * (10 * 10^6 * ext_call.return_data[0] / 10^13) + 5 / 10 * (10 * 10^6 * arg1 / 10^18) + 5 / 10)
    require 12 == ext_call.return_data[31 len 1]
    return (10^6 * (10 * 10^6 * ext_call.return_data[0] / 10^12) + 5 / 10 * (10 * 10^6 * arg1 / 10^18) + 5 / 10)
}



}
