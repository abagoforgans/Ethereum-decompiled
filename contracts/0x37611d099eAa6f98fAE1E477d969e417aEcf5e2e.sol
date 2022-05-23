contract main {




// =====================  Runtime code  =====================


address supervisorAddress;

function supervisor() {
    return supervisorAddress
}

function _fallback() payable {
    revert
}

function sub_07af2aff(?) {
    require msg.sender == supervisorAddress
    supervisorAddress = arg1
}

function sub_bf3f949a(?) {
    require msg.sender == supervisorAddress
    mem[(32 * arg2.length) + 228 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(arg1)
    call arg1.0xf7a71695 with:
         gas gas_remaining wei
        args 64, 0, arg2.length, call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 228 len (32 * arg2.length) - floor32(arg2.length)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0a0f446b(?) {
    require msg.sender == supervisorAddress
    mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 420 len floor32(arg5.length)] = call.data[arg5 + 36 len floor32(arg5.length)]
    mem[(64 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 420] = arg6.length
    mem[(64 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + 452 len floor32(arg6.length)] = call.data[arg6 + 36 len floor32(arg6.length)]
    mem[(64 * arg6.length) + (64 * arg5.length) + (32 * arg7.length) + 452] = arg7.length
    mem[(64 * arg6.length) + (64 * arg5.length) + (32 * arg7.length) + 484 len floor32(arg7.length)] = call.data[arg7 + 36 len floor32(arg7.length)]
    require ext_code.size(arg1)
    call arg1.0x5a70b49e with:
         gas gas_remaining wei
        args address(arg2), arg3, arg4, Array(len=arg5.length, data=call.data[arg5 + 36 len floor32(arg5.length)], mem[(32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + floor32(arg5.length) + 420 len (32 * arg5.length) + (32 * arg6.length) + (32 * arg7.length) + -floor32(arg5.length) + 64]), (32 * arg5.length) + 224, (32 * arg6.length) + (32 * arg5.length) + 256
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_1823c560(?) payable {
    require ext_code.size(arg1)
    call arg1.0xd8319ef3 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x40010a7e with:
         gas gas_remaining wei
    mem[96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require msg.value == ext_call.return_data[0]
    if ext_call.return_data[0]:
        mem[128 len 32 * ext_call.return_data[0]] = code.data[3021 len 32 * ext_call.return_data[0]]
    s = 0
    idx = 0
    while idx < ext_call.return_data[0]:
        require ext_code.size(arg1)
        call arg1.0x1e2f0b74 with:
             gas gas_remaining wei
            args idx
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0x593248e7 with:
             gas gas_remaining wei
            args ext_call.return_data[0]
        mem[(32 * ext_call.return_data[0]) + 128 len 96] = ext_call.return_data[0 len 96]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 96
        require idx < ext_call.return_data[0]
        mem[(32 * idx) + 128] = msg.value * ext_call.return_data[0] / 100000
        s = ext_call.return_data[0]
        idx = idx + 1
        continue 
    call arg1 with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[(32 * ext_call.return_data[0]) + 228 len floor32(ext_call.return_data[0])] = mem[128 len floor32(ext_call.return_data[0])]
    require ext_code.size(arg1)
    call arg1.0xf7a71695 with:
         gas gas_remaining wei
        args Array(len=ext_call.return_data[0], data=mem[128 len floor32(ext_call.return_data[0])], mem[(32 * ext_call.return_data[0]) + floor32(ext_call.return_data[0]) + 228 len (32 * ext_call.return_data[0]) - floor32(ext_call.return_data[0])]), msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
