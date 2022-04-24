contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 1188]




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function isQualitifiedAddress(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg2
    require ext_call.success
    if not arg2:
        if not arg2:
            return bool(arg2)
    else:
        if arg2 == msg.sender:
            if arg2 == msg.sender:
                return arg2 != msg.sender
        else:
            if ext_code.size(arg2) > 0:
                return ext_code.size(arg2) <= 0
    if eth.balance(arg2) < arg5:
        return eth.balance(arg2) >= arg5
    if eth.balance(arg2) > arg6:
        return eth.balance(arg2) <= arg6
    if ext_call.return_data[0] < arg3:
        return ext_call.return_data[0] >= arg3
    return ext_call.return_data[0] <= arg4
}

function drop(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, address[] arg7) {
    mem[128 len 32 * arg7.length] = call.data[arg7 + 36 len 32 * arg7.length]
    require arg1
    require arg2 > 0
    require arg4 >= arg3
    require arg6 >= arg5
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    mem[(32 * arg7.length) + 132] = msg.sender
    mem[(32 * arg7.length) + 164] = this.address
    require ext_code.size(arg1)
    call arg1.0xdd62ed3e with:
         gas gas_remaining - 710 wei
        args msg.sender, this.address
    mem[(32 * arg7.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    if ext_call.return_data[0] > ext_call.return_data[0]:
        s = 0
        idx = 0
        s = mem[(32 * arg7.length) + 128]
        while idx < arg7.length:
            require s >= arg2
            require idx < arg7.length
            _94 = mem[(32 * idx) + 128]
            mem[(32 * arg7.length) + 160] = 0
            mem[(32 * arg7.length) + 132] = address(_94)
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args address(_94)
            mem[(32 * arg7.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            if not mem[(32 * idx) + 140 len 20]:
                if not address(_94):
                    s = _94
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if mem[(32 * idx) + 140 len 20] == msg.sender:
                    if address(_94) == msg.sender:
                        s = _94
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if ext_code.size(_94) > 0:
                        s = _94
                        idx = idx + 1
                        s = s
                        continue 
            if eth.balance(_94) < arg5:
                s = _94
                idx = idx + 1
                s = s
                continue 
            if eth.balance(_94) > arg6:
                s = _94
                idx = idx + 1
                s = s
                continue 
            if ext_call.return_data[0] < arg3:
                s = _94
                idx = idx + 1
                s = s
                continue 
            if ext_call.return_data[0] > arg4:
                s = _94
                idx = idx + 1
                s = s
                continue 
            mem[(32 * arg7.length) + 164] = address(_94)
            mem[(32 * arg7.length) + 196] = arg2
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(_94), arg2
            require ext_call.success
            require ext_call.return_data[0]
            mem[(32 * arg7.length) + 128] = address(_94)
            mem[(32 * arg7.length) + 160] = arg2
            emit AirDropped(address(_94), arg2);
            s = _94
            idx = idx + 1
            s = s - arg2
            continue 
    else:
        s = 0
        idx = 0
        s = ext_call.return_data[0]
        while idx < arg7.length:
            require s >= arg2
            require idx < arg7.length
            _95 = mem[(32 * idx) + 128]
            mem[(32 * arg7.length) + 160] = 0
            mem[(32 * arg7.length) + 132] = address(_95)
            require ext_code.size(arg1)
            call arg1.0x70a08231 with:
                 gas gas_remaining - 710 wei
                args address(_95)
            mem[(32 * arg7.length) + 128] = ext_call.return_data[0]
            require ext_call.success
            if not mem[(32 * idx) + 140 len 20]:
                if not address(_95):
                    s = _95
                    idx = idx + 1
                    s = s
                    continue 
            else:
                if mem[(32 * idx) + 140 len 20] == msg.sender:
                    if address(_95) == msg.sender:
                        s = _95
                        idx = idx + 1
                        s = s
                        continue 
                else:
                    if ext_code.size(_95) > 0:
                        s = _95
                        idx = idx + 1
                        s = s
                        continue 
            if eth.balance(_95) < arg5:
                s = _95
                idx = idx + 1
                s = s
                continue 
            if eth.balance(_95) > arg6:
                s = _95
                idx = idx + 1
                s = s
                continue 
            if ext_call.return_data[0] < arg3:
                s = _95
                idx = idx + 1
                s = s
                continue 
            if ext_call.return_data[0] > arg4:
                s = _95
                idx = idx + 1
                s = s
                continue 
            mem[(32 * arg7.length) + 164] = address(_95)
            mem[(32 * arg7.length) + 196] = arg2
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args msg.sender, address(_95), arg2
            require ext_call.success
            require ext_call.return_data[0]
            mem[(32 * arg7.length) + 128] = address(_95)
            mem[(32 * arg7.length) + 160] = arg2
            emit AirDropped(address(_95), arg2);
            s = _95
            idx = idx + 1
            s = s - arg2
            continue 
}



}
