contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    s = 0
    idx = 0
    while idx < 60:
        require ext_code.size(stor0)
        call stor0.getAddress(address arg1) with:
             gas gas_remaining wei
            args 0xb64ffdca47d6c3895608c4e05faba6e617b3a031
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[128] = Mask(32, 224, sha3('doAirdrop(address,address,addres', 's)'))
        mem[132] = 0xeff8670ff8b9a6b31586f0b6d491a3800edb2d88
        mem[164] = 0xb64ffdca47d6c3895608c4e05faba6e617b3a031
        mem[196] = 0xb64ffdca47d6c3895608c4e05faba6e617b3a031
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, sha3('doAirdrop(address,address,addres', 's)')) >> 224
             gas gas_remaining wei
            args 0xeff8670ff8b9a6b31586f0b6d491a3800edb2d88, 0xb64ffdca47d6c3895608c4e05faba6e617b3a031, 0xb64ffdca47d6c3895608c4e05faba6e617b3a031
        s = ext_call.return_data[0]
        idx = idx + 1
        continue 
}



}
