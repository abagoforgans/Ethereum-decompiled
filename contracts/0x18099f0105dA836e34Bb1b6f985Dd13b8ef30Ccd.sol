contract main {




// =====================  Runtime code  =====================


function cleanup() payable {
    require tx.origin == 0x15202d3d183708649451878f50982d5c1bb4d01b
    selfdestruct(0x15202d3d183708649451878f50982d5c1bb4d01b)
}

function _fallback() payable {
  stop
}

function sub_58f69e07(?) payable {
    mem[64] = 96
    require tx.origin == 0x15202d3d183708649451878f50982d5c1bb4d01b
    mem[128] = block.difficulty
    require uint8(sha3(block.timestamp, block.difficulty) % 100) >= 70
    if var18001 < arg1:
        mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[100] = 0x448e0209610a9064c776ae0255ad71ef49d58d0a
        require ext_code.size(0x7ca121b093e2fbd4bb9a894bd5ff487d16f1f83b)
        call 0x7ca121b093e2fbd4bb9a894bd5ff487d16f1f83b.mem[var22004 len 4] with:
             gas gas_remaining wei
            args mem[var22004 + 4 len var22005 - 4]
        mem[var22006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if var28001:
            if eth.balance(0x448e0209610a9064c776ae0255ad71ef49d58d0a) < 61 * 10^16:
                call 0x448e0209610a9064c776ae0255ad71ef49d58d0a with:
                   value -eth.balance(0x448e0209610a9064c776ae0255ad71ef49d58d0a) + 61 * 10^16 wei
                     gas gas_remaining wei
                require ext_call.success
            require ext_code.size(0x448e0209610a9064c776ae0255ad71ef49d58d0a)
            call 0x448e0209610a9064c776ae0255ad71ef49d58d0a.play(bytes32 arg1) with:
               value 39 * 10^16 wei
                 gas gas_remaining wei
                args 0xc42adf3cec7a28f6ce35ef1ff1de325a5121d615217962279c2165386723a77f
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if var30001 + 1 < arg1:
                mem[100] = 0x448e0209610a9064c776ae0255ad71ef49d58d0a
                require ext_code.size(0x7ca121b093e2fbd4bb9a894bd5ff487d16f1f83b)
                call 0x7ca121b093e2fbd4bb9a894bd5ff487d16f1f83b.0x70a08231 with:
                     gas gas_remaining wei
                    args 0x448e0209610a9064c776ae0255ad71ef49d58d0a
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0] >= 10000 * 10^18:
                    var30001 = var30001 + 1
                    continue 
    call 0x15202d3d183708649451878f50982d5c1bb4d01b with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(0x7ca121b093e2fbd4bb9a894bd5ff487d16f1f83b)
    call 0x7ca121b093e2fbd4bb9a894bd5ff487d16f1f83b.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(0x7ca121b093e2fbd4bb9a894bd5ff487d16f1f83b)
    call 0x7ca121b093e2fbd4bb9a894bd5ff487d16f1f83b.0xa9059cbb with:
         gas gas_remaining wei
        args 0x15202d3d183708649451878f50982d5c1bb4d01b, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}



}
