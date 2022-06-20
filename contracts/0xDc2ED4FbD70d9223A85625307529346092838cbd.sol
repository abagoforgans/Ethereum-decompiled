contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_7d4b6ed1(?) payable {
    mem[64] = 736
    mem[96 len 640] = code.data[353 len 640]
    idx = 0
    while uint8(idx) < 20:
        mem[mem[64] len 1614] = code.data[353 len 1614]
        create contract with 0 wei
                        code: code.data[353 len 1614]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        require uint8(idx) < 20
        mem[(32 * uint8(idx)) + 96] = address(create.new_address)
        idx = idx + 1
        continue 
    _5 = mem[64]
    s = 0
    while None < 640:
        mem[_5 + None] = mem[None + 96]
        s = None + 32
        continue 
    return memory
      from mem[64]
       len _5 + -mem[64] + 640
}



}
