contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function deployCode(bytes arg1) payable {
    idx = 0
    s = 0
    while idx < 100:
        create contract with 100000000000000000 wei
                        code: arg1[all]
        mem[ceil32(arg1.length) + 128] = idx
        mem[ceil32(arg1.length) + 160] = address(create.new_address)
        emit 0x1c57f93b: idx, address(create.new_address)
        if not address(create.new_address):
            idx = idx + 1
            s = create.new_address
            continue 
        return address(create.new_address)
    return address(100 * r)
}



}
