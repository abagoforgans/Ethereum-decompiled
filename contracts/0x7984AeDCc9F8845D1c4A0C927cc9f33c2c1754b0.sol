contract main {




// =====================  Runtime code  =====================


address baseAddr;
address stor1;

function baseAddr() {
    return baseAddr
}

function _fallback() payable {
    revert
}

function sub_ee9d0e82(?) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[(32 * idx) + 140 len 20]:
            require idx < arg1.length
            _30 = mem[(32 * idx) + 128]
            mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_30)
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < arg1.length
            if ext_call.return_data[0] <= 0:
                _37 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 132] = msg.sender
                mem[(32 * arg1.length) + 164] = address(_37)
                mem[(32 * arg1.length) + 196] = 100 * 10^18
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_37), 100 * 10^18
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                _40 = mem[(32 * idx) + 128]
                require idx < arg1.length
                _42 = mem[(32 * idx) + 128]
                mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_42)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
                emit 0xbcba667f: ext_call.return_data[0], address(_40)
        idx = idx + 1
        continue 
}



}
