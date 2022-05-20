contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function allowance(address arg1) {
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_abe56117(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = arg3.length
    mem[(32 * arg2.length) + 160 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg2.length > 0
    require arg2.length == arg3.length
    s = 0
    s = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _17 = mem[(32 * idx) + 128]
        require idx < arg3.length
        _19 = mem[(32 * idx) + (32 * arg2.length) + 160]
        mem[(32 * arg2.length) + (32 * arg3.length) + 164] = msg.sender
        mem[(32 * arg2.length) + (32 * arg3.length) + 196] = address(_17)
        mem[(32 * arg2.length) + (32 * arg3.length) + 228] = _19
        require ext_code.size(arg1)
        call arg1.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(_17), _19
        mem[(32 * arg2.length) + (32 * arg3.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        s = _19
        s = _17
        idx = idx + 1
        continue 
}

function sub_d2b372f8(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    require arg2 > 0
    require arg3.length > 0
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining wei
        args msg.sender, this.address
    mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2:
        require 0 <= ext_call.return_data[0]
        s = 0
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            _29 = mem[(32 * idx) + 128]
            mem[(32 * arg3.length) + 132] = msg.sender
            mem[(32 * arg3.length) + 164] = address(_29)
            mem[(32 * arg3.length) + 196] = arg2
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_29), arg2
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = _29
            idx = idx + 1
            continue 
    else:
        require arg2
        require arg2 * arg3.length / arg2 == arg3.length
        require arg2 * arg3.length <= ext_call.return_data[0]
        s = 0
        idx = 0
        while idx < arg3.length:
            require idx < arg3.length
            _26 = mem[(32 * idx) + 128]
            mem[(32 * arg3.length) + 132] = msg.sender
            mem[(32 * arg3.length) + 164] = address(_26)
            mem[(32 * arg3.length) + 196] = arg2
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_26), arg2
            mem[(32 * arg3.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            s = _26
            idx = idx + 1
            continue 
}



}
