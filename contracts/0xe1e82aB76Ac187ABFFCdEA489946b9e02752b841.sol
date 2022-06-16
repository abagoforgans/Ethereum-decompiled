contract main {




// =====================  Runtime code  =====================


const name = 'TokenConnect'

const getContractName = 'TokenConnect'


function _fallback() payable {
    revert
}

function sub_88dad083(?) payable {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args msg.sender
    mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg2.length:
        require ext_call.return_data[0] >= 0
        require arg2.length <= 230
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _40 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + 132] = msg.sender
            mem[(32 * arg2.length) + 164] = address(_40)
            mem[(32 * arg2.length) + 196] = arg3
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_40), arg3
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < arg2.length
            _52 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + 128] = arg3
            emit TokensTransferred(arg3, msg.sender, address(_52));
            idx = idx + 1
            continue 
    else:
        require arg2.length
        require arg2.length * arg3 / arg2.length == arg3
        require ext_call.return_data[0] >= arg2.length * arg3
        require arg2.length <= 230
        idx = 0
        while idx < arg2.length:
            require idx < arg2.length
            _35 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + 132] = msg.sender
            mem[(32 * arg2.length) + 164] = address(_35)
            mem[(32 * arg2.length) + 196] = arg3
            require ext_code.size(arg1)
            call arg1.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(_35), arg3
            mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < arg2.length
            _49 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + 128] = arg3
            emit TokensTransferred(arg3, msg.sender, address(_49));
            idx = idx + 1
            continue 
    return 1
}



}
