contract main {




// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    s = 0
    idx = 0
    while idx < 20:
        require ext_code.size(stor0)
        call stor0.getAddress(address arg1) with:
             gas gas_remaining wei
            args 0x64704e92440ee2f94d2cc2f4b8b662a292cb7b3b
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[128] = Mask(32, 224, sha3('doAirdrop(address,address,addres', 's)'))
        mem[132] = 0xeff8670ff8b9a6b31586f0b6d491a3800edb2d88
        mem[164] = 0x64704e92440ee2f94d2cc2f4b8b662a292cb7b3b
        mem[196] = 0x64704e92440ee2f94d2cc2f4b8b662a292cb7b3b
        call address(ext_call.return_data[0]) with:
           funct Mask(32, 224, sha3('doAirdrop(address,address,addres', 's)')) >> 224
             gas gas_remaining wei
            args 0xeff8670ff8b9a6b31586f0b6d491a3800edb2d88, 0x64704e92440ee2f94d2cc2f4b8b662a292cb7b3b, 0x64704e92440ee2f94d2cc2f4b8b662a292cb7b3b
        s = ext_call.return_data[0]
        idx = idx + 1
        continue 
}



}
