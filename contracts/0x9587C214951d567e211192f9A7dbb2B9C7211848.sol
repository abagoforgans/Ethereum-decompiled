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

function sub_45135e51(?) {
    require calldata.size - 4 >= 320
    mem[96 len 320] = call.data[4 len 320]
    mem[416] = 0
    idx = 0
    while idx < 10:
        if mem[(32 * idx) + 108 len 20]:
            require idx < 10
            _21 = mem[(32 * idx) + 96]
            mem[420] = mem[(32 * idx) + 108 len 20]
            require ext_code.size(stor1)
            staticcall stor1.0x70a08231 with:
                    gas gas_remaining wei
                   args address(_21)
            mem[416] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < 10
            if ext_call.return_data[0] <= 0:
                _26 = mem[(32 * idx) + 96]
                mem[420] = msg.sender
                mem[452] = address(_26)
                mem[484] = 100
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args msg.sender, address(_26), 100
                mem[416] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
            else:
                _29 = mem[(32 * idx) + 96]
                _30 = mem[(32 * idx) + 96]
                mem[420] = mem[(32 * idx) + 108 len 20]
                require ext_code.size(stor1)
                staticcall stor1.0x70a08231 with:
                        gas gas_remaining wei
                       args address(_30)
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[416] = ext_call.return_data[0]
                emit 0xbcba667f: ext_call.return_data[0], address(_29)
        idx = idx + 1
        continue 
}



}
