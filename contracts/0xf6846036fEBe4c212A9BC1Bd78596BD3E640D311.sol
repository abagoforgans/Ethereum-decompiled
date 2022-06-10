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
    mem[128] = 0x167fd4dd1040000000000000000000000000000000000000000000000000000
    mem[134] = block.timestamp
    require uint8(sha3(block.difficulty, 0, block.timestamp) % 100) >= 70
    if var18001 < arg1:
        mem[96] = 0x70a0823100000000000000000000000000000000000000000000000000000000
        mem[100] = 0x8a6ca6633d31135d9340e04698854225e3b898f7
        require ext_code.size(0x7ca121b093e2fbd4bb9a894bd5ff487d16f1f83b)
        call 0x7ca121b093e2fbd4bb9a894bd5ff487d16f1f83b.mem[var22004 len 4] with:
             gas gas_remaining wei
            args mem[var22004 + 4 len var22005 - 4]
        mem[var22006] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if var28001:
            if eth.balance(0x8a6ca6633d31135d9340e04698854225e3b898f7) < 61 * 10^16:
                call 0x8a6ca6633d31135d9340e04698854225e3b898f7 with:
                   value -eth.balance(0x8a6ca6633d31135d9340e04698854225e3b898f7) + 61 * 10^16 wei
                     gas gas_remaining wei
                require ext_call.success
            require ext_code.size(0x8a6ca6633d31135d9340e04698854225e3b898f7)
            call 0x8a6ca6633d31135d9340e04698854225e3b898f7.play(bytes32 arg1) with:
               value 39 * 10^16 wei
                 gas gas_remaining wei
                args 0x581ee3e3ab27a226739d32c5f3e5a496e8a931665f9a319e41121908c80068e8
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if var30001 + 1 < arg1:
                mem[100] = 0x8a6ca6633d31135d9340e04698854225e3b898f7
                require ext_code.size(0x7ca121b093e2fbd4bb9a894bd5ff487d16f1f83b)
                call 0x7ca121b093e2fbd4bb9a894bd5ff487d16f1f83b.0x70a08231 with:
                     gas gas_remaining wei
                    args 0x8a6ca6633d31135d9340e04698854225e3b898f7
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
