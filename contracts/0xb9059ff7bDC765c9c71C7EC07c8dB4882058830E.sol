contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 3167]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_b6e7b7d9(?) {
    require block.number >= arg1
    return 1
}

function sub_2b92e245(?) {
    hash = sha256hash(address(arg1), arg2, arg3, arg4, arg5, arg6, arg7) 
    require sha256hash.result
    return hash
}

function sub_a359b67c(?) {
    require ext_code.size(0x12459c951127e0c374ff9105dda097662a027093)
    call 0x12459c951127e0c374ff9105dda097662a027093.getUnavailableTakerTokenAmount(bytes32 arg1) with:
         gas gas_remaining wei
        args arg1
    require ext_call.success
    require ext_call.return_data[0] <= arg2
    return 1
}

function sub_6897e7cf(?) {
    require ext_code.size(0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8)
    call 0x1ce7ae555139c5ef5a57cc8d814a867ee6ee33d8.orderFills(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0] <= arg3
    return 1
}

function sub_f0a95cc9(?) {
    require ext_code.size(0x8d12a197cb00d4747a1fe03395095ce2a5cc6819)
    call 0x8d12a197cb00d4747a1fe03395095ce2a5cc6819.orderFills(address arg1, bytes32 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0] <= arg3
    return 1
}

function sub_b6f9385d(?) {
    require ext_code.size(arg1)
    call arg1.0x1e1401f8 with:
         gas gas_remaining wei
        args address(arg2), 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, arg3
    require ext_call.success
    require ext_code.size(0x62c37c90733b36dfe36533326378b066aecaa769)
    call 0x62c37c90733b36dfe36533326378b066aecaa769.0x1e1401f8 with:
         gas gas_remaining wei
        args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0] >= arg4
    return 1
}

function sub_cf8ce8df(?) {
    require ext_code.size(0x62c37c90733b36dfe36533326378b066aecaa769)
    call 0x62c37c90733b36dfe36533326378b066aecaa769.0x1e1401f8 with:
         gas gas_remaining wei
        args 0xc0829421c1d260bd3cb3e0f06cfe2d52db2ce315, 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, arg3
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0x1e1401f8 with:
         gas gas_remaining wei
        args 0x1f573d6fb3f13d689ff844b4ce37794d79a7ff1c, address(arg2), ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0] >= arg4
    return 1
}



}
