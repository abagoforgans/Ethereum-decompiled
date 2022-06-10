contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    s = 0
    idx = 0
    while idx < 20:
        mem[128 len 440] = code.data[243 len 440]
        mem[568] = msg.sender
        mem[600] = 0xb64ffdca47d6c3895608c4e05faba6e617b3a031
        mem[632] = 0xb64ffdca47d6c3895608c4e05faba6e617b3a031
        create contract with 0 wei
                        code: code.data[243 len 440], msg.sender, 0xb64ffdca47d6c3895608c4e05faba6e617b3a031, 0xb64ffdca47d6c3895608c4e05faba6e617b3a031
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        s = create.new_address
        idx = idx + 1
        continue 
    s = 0
    idx = 0
    while idx < 2:
        mem[128 len 417] = code.data[683 len 417]
        create contract with 0 wei
                        code: code.data[683 len 417]
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        s = create.new_address
        idx = idx + 1
        continue 
}



}
