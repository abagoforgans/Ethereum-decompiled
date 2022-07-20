contract main {




// =====================  Runtime code  =====================


#
#  - sub_9b91dfc6(?)
#
address stor0;
address stor1;
address stor2;
uint32 stor3;
address stor3;
uint256 stor3;
address stor4;

function _fallback() payable {
    if not msg.value:
        if msg.sender == stor0:
            call stor0 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}

function withdraw(uint256 arg1) {
    require calldata.size - 4 >= 32
    if msg.sender == stor0:
        if arg1 > eth.balance(this.address):
            call stor0 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
        else:
            call stor0 with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function sub_7dc99fc1(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor2)
    staticcall stor2.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getTokenToEthInputPrice(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_b189e479(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor2)
    staticcall stor2.getExchange(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        return 0
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
            gas gas_remaining wei
           args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_0922f6cf(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args address(arg1), 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[32]:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] * arg2 * 10^ext_call.return_data[31 len 1] / 10^18 / 10^18)
}

function sub_304b2d4e(?) {
    require calldata.size - 4 >= 64
    require ext_code.size(stor1)
    staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[32]:
        return 0
    require ext_code.size(arg1)
    staticcall arg1.0x313ce567 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return (ext_call.return_data[0] * arg2 * 10^ext_call.return_data[31 len 1] / 10^18 / 10^18)
}

function sub_9c66b5e7(?) {
    require calldata.size - 4 >= 96
    if not arg2:
        return 0
    require ext_code.size(address(stor3))
    staticcall address(stor3).token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor3))
    staticcall address(stor3).token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor3))
    staticcall address(stor3).token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor3))
    staticcall address(stor3).0x7b103999 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
            gas gas_remaining wei
           args 'BancorNetwork'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg1:
        mem[388 len 0] = None
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                gas gas_remaining wei
               args Array(len=5, data=mem[388 len 160]), arg3
    else:
        mem[324 len 0] = None
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                gas gas_remaining wei
               args Array(len=3, data=mem[324 len 96]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function sub_cae0dd7a(?) {
    require calldata.size - 4 >= 96
    if not arg2:
        return 0
    require ext_code.size(address(stor3))
    staticcall address(stor3).token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor3))
    staticcall address(stor3).token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor3))
    staticcall address(stor3).token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(stor3))
    staticcall address(stor3).0x7b103999 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
            gas gas_remaining wei
           args 'BancorNetwork'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != arg1:
        mem[388 len 0] = None
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                gas gas_remaining wei
               args Array(len=5, data=mem[388 len 160]), arg3
    else:
        mem[324 len 0] = None
        require ext_code.size(address(ext_call.return_data[0]))
        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                gas gas_remaining wei
               args Array(len=3, data=mem[324 len 96]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    return ext_call.return_data[0]
}

function sub_424d117d(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(address(stor3))
    staticcall address(stor3).token() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == arg1:
        mem[96] = 3
        mem[128] = stor4
        require ext_code.size(address(stor3))
        staticcall address(stor3).token() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[160] = ext_call.return_data[12 len 20]
        require ext_code.size(address(stor3))
        staticcall address(stor3).token() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[192] = ext_call.return_data[12 len 20]
        mem[256] = block.number
        mem[288] = block.gasprice
        mem[320] = address(this.address)
        mem[340] = address(stor3)
        mem[360] = arg3
        mem[392 len 0] = None
        mem[224] = 232
        mem[520] = '\x19Ethereum Signed Message:\n32'
        mem[548] = sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[392 len 96])
        mem[488] = 60
        mem[64] = 580
        _94 = mem[sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[392 len 96])) + 32]
        _95 = mem[sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[392 len 96])) + 64]
        mem[840 len 0] = None
        require ext_code.size(address(stor3))
        call address(stor3).quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
           value arg3 wei
             gas gas_remaining wei
            args 224, arg3, 1, block.number, 0, _94, _95, 3, mem[840 len 96]
    else:
        mem[96] = 5
        mem[128] = stor4
        require ext_code.size(address(stor3))
        staticcall address(stor3).token() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[160] = ext_call.return_data[12 len 20]
        require ext_code.size(address(stor3))
        staticcall address(stor3).token() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[192] = ext_call.return_data[12 len 20]
        mem[224] = arg2
        mem[256] = arg1
        mem[320] = block.number
        mem[352] = block.gasprice
        mem[384] = address(this.address)
        mem[404] = address(stor3)
        mem[424] = arg3
        mem[456 len 0] = None
        mem[288] = 296
        mem[648] = '\x19Ethereum Signed Message:\n32'
        mem[676] = sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[456 len 160])
        mem[616] = 60
        mem[64] = 708
        _91 = mem[sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[456 len 160])) + 32]
        _92 = mem[sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[456 len 160])) + 64]
        mem[968 len 0] = None
        require ext_code.size(address(stor3))
        call address(stor3).quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
           value arg3 wei
             gas gas_remaining wei
            args 224, arg3, 1, block.number, 0, _91, _92, 5, mem[968 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_1eff1df1(?) {
    require calldata.size - 4 >= 96
    require ext_code.size(arg1)
    staticcall arg1.0xdd62ed3e with:
            gas gas_remaining wei
           args this.address, address(stor3)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        require ext_code.size(address(stor3))
        staticcall address(stor3).token() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[12 len 20] == arg1:
            mem[96] = 3
            require ext_code.size(address(stor3))
            staticcall address(stor3).token() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[128] = ext_call.return_data[12 len 20]
            require ext_code.size(address(stor3))
            staticcall address(stor3).token() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[160] = ext_call.return_data[12 len 20]
            mem[192] = stor4
            mem[256] = block.number
            mem[288] = block.gasprice
            mem[320] = address(this.address)
            mem[340] = address(stor3)
            mem[360] = arg3
            mem[392 len 0] = None
            mem[224] = 232
            mem[520] = '\x19Ethereum Signed Message:\n32'
            mem[548] = sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[392 len 96])
            mem[488] = 60
            mem[64] = 580
            _419 = mem[sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[392 len 96])) + 32]
            _420 = mem[sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[392 len 96])) + 64]
            mem[840 len 0] = None
            require ext_code.size(address(stor3))
            call address(stor3).quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
                 gas gas_remaining wei
                args 224, arg3, 1, block.number, 0, _419, _420, 3, mem[840 len 96]
        else:
            mem[96] = 5
            mem[128] = arg1
            mem[160] = arg2
            require ext_code.size(address(stor3))
            staticcall address(stor3).token() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[192] = ext_call.return_data[12 len 20]
            require ext_code.size(address(stor3))
            staticcall address(stor3).token() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[224] = ext_call.return_data[12 len 20]
            mem[256] = stor4
            mem[320] = block.number
            mem[352] = block.gasprice
            mem[384] = address(this.address)
            mem[404] = address(stor3)
            mem[424] = arg3
            mem[456 len 0] = None
            mem[288] = 296
            mem[648] = '\x19Ethereum Signed Message:\n32'
            mem[676] = sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[456 len 160])
            mem[616] = 60
            mem[64] = 708
            _416 = mem[sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[456 len 160])) + 32]
            _417 = mem[sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[456 len 160])) + 64]
            mem[968 len 0] = None
            require ext_code.size(address(stor3))
            call address(stor3).quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
                 gas gas_remaining wei
                args 224, arg3, 1, block.number, 0, _416, _417, 5, mem[968 len 160]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0xdd62ed3e with:
                gas gas_remaining wei
               args this.address, address(stor3)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require not ext_call.return_data[0]
        mem[132] = address(stor3)
        mem[164] = -1
        mem[96] = 68
        mem[132 len 28] = Mask(224, 0, stor3)
        mem[128 len 4] = approve(address arg1, uint256 arg2)
        require ext_code.size(arg1)
        mem[196 len 64] = approve(address arg1, uint256 arg2), Mask(224, 0, stor3), uint32(stor3), 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff
        mem[288 len 4] = test266151307()
        call arg1 with:
           funct uint32(stor3)
             gas gas_remaining wei
            args 0xffffffffffffffffffffffffffffffffffffffffffffffffffffffff0000000000000000000000000000000000000000000000000000000000000000, mem[260 len 4]
        if not return_data.size:
            require ext_call.success
            require approve(address arg1, uint256 arg2), Mask(224, 0, stor3)
            require ext_code.size(address(stor3))
            staticcall address(stor3).token() with:
                    gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[12 len 20] == arg1:
                mem[196] = 3
                require ext_code.size(address(stor3))
                staticcall address(stor3).token() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[228] = ext_call.return_data[12 len 20]
                require ext_code.size(address(stor3))
                staticcall address(stor3).token() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[260] = ext_call.return_data[12 len 20]
                mem[292] = stor4
                mem[356] = block.number
                mem[388] = block.gasprice
                mem[420] = address(this.address)
                mem[440] = address(stor3)
                mem[460] = arg3
                mem[492 len 0] = None
                mem[324] = 232
                mem[620] = '\x19Ethereum Signed Message:\n32'
                mem[648] = sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[492 len 96])
                mem[588] = 60
                mem[64] = 680
                _821 = mem[sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[492 len 96])) + 32]
                _822 = mem[sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[492 len 96])) + 64]
                mem[940 len 0] = None
                require ext_code.size(address(stor3))
                call address(stor3).quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
                     gas gas_remaining wei
                    args 224, arg3, 1, block.number, 0, _821, _822, 3, mem[940 len 96]
            else:
                mem[196] = 5
                mem[228] = arg1
                mem[260] = arg2
                require ext_code.size(address(stor3))
                staticcall address(stor3).token() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[292] = ext_call.return_data[12 len 20]
                require ext_code.size(address(stor3))
                staticcall address(stor3).token() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[324] = ext_call.return_data[12 len 20]
                mem[356] = stor4
                mem[420] = block.number
                mem[452] = block.gasprice
                mem[484] = address(this.address)
                mem[504] = address(stor3)
                mem[524] = arg3
                mem[556 len 0] = None
                mem[388] = 296
                mem[748] = '\x19Ethereum Signed Message:\n32'
                mem[776] = sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[556 len 160])
                mem[716] = 60
                mem[64] = 808
                _818 = mem[sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[556 len 160])) + 32]
                _819 = mem[sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[556 len 160])) + 64]
                mem[1068 len 0] = None
                require ext_code.size(address(stor3))
                call address(stor3).quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
                     gas gas_remaining wei
                    args 224, arg3, 1, block.number, 0, _818, _819, 5, mem[1068 len 160]
        else:
            mem[196] = return_data.size
            mem[228 len return_data.size] = ext_call.return_data[0 len return_data.size]
            require ext_call.success
            if not return_data.size:
                require ext_code.size(address(stor3))
                staticcall address(stor3).token() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == arg1:
                    mem[ceil32(return_data.size) + 197] = 3
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 229] = ext_call.return_data[12 len 20]
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 261] = ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 293] = stor4
                    mem[ceil32(return_data.size) + 357] = block.number
                    mem[ceil32(return_data.size) + 389] = block.gasprice
                    mem[ceil32(return_data.size) + 421] = address(this.address)
                    mem[ceil32(return_data.size) + 441] = address(stor3)
                    mem[ceil32(return_data.size) + 461] = arg3
                    mem[ceil32(return_data.size) + 493 len 0] = None
                    mem[ceil32(return_data.size) + 325] = 232
                    mem[ceil32(return_data.size) + 621] = '\x19Ethereum Signed Message:\n32'
                    mem[ceil32(return_data.size) + 649] = sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[ceil32(return_data.size) + 493 len 96])
                    mem[ceil32(return_data.size) + 589] = 60
                    mem[64] = ceil32(return_data.size) + 681
                    _827 = mem[sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[ceil32(return_data.size) + 493 len 96])) + 32]
                    _828 = mem[sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[ceil32(return_data.size) + 493 len 96])) + 64]
                    mem[ceil32(return_data.size) + 941 len 0] = None
                    require ext_code.size(address(stor3))
                    call address(stor3).quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
                         gas gas_remaining wei
                        args 224, arg3, 1, block.number, 0, _827, _828, 3, mem[ceil32(return_data.size) + 941 len 96]
                else:
                    mem[ceil32(return_data.size) + 197] = 5
                    mem[ceil32(return_data.size) + 229] = arg1
                    mem[ceil32(return_data.size) + 261] = arg2
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 293] = ext_call.return_data[12 len 20]
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 325] = ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 357] = stor4
                    mem[ceil32(return_data.size) + 421] = block.number
                    mem[ceil32(return_data.size) + 453] = block.gasprice
                    mem[ceil32(return_data.size) + 485] = address(this.address)
                    mem[ceil32(return_data.size) + 505] = address(stor3)
                    mem[ceil32(return_data.size) + 525] = arg3
                    mem[ceil32(return_data.size) + 557 len 0] = None
                    mem[ceil32(return_data.size) + 389] = 296
                    mem[ceil32(return_data.size) + 749] = '\x19Ethereum Signed Message:\n32'
                    mem[ceil32(return_data.size) + 777] = sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[ceil32(return_data.size) + 557 len 160])
                    mem[ceil32(return_data.size) + 717] = 60
                    mem[64] = ceil32(return_data.size) + 809
                    _824 = mem[sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[ceil32(return_data.size) + 557 len 160])) + 32]
                    _825 = mem[sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[ceil32(return_data.size) + 557 len 160])) + 64]
                    mem[ceil32(return_data.size) + 1069 len 0] = None
                    require ext_code.size(address(stor3))
                    call address(stor3).quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
                         gas gas_remaining wei
                        args 224, arg3, 1, block.number, 0, _824, _825, 5, mem[ceil32(return_data.size) + 1069 len 160]
            else:
                require return_data.size >= 32
                require mem[228]
                require ext_code.size(address(stor3))
                staticcall address(stor3).token() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[12 len 20] == arg1:
                    mem[ceil32(return_data.size) + 197] = 3
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 229] = ext_call.return_data[12 len 20]
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 261] = ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 293] = stor4
                    mem[ceil32(return_data.size) + 357] = block.number
                    mem[ceil32(return_data.size) + 389] = block.gasprice
                    mem[ceil32(return_data.size) + 421] = address(this.address)
                    mem[ceil32(return_data.size) + 441] = address(stor3)
                    mem[ceil32(return_data.size) + 461] = arg3
                    mem[ceil32(return_data.size) + 493 len 0] = None
                    mem[ceil32(return_data.size) + 325] = 232
                    mem[ceil32(return_data.size) + 621] = '\x19Ethereum Signed Message:\n32'
                    mem[ceil32(return_data.size) + 649] = sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[ceil32(return_data.size) + 493 len 96])
                    mem[ceil32(return_data.size) + 589] = 60
                    mem[64] = ceil32(return_data.size) + 681
                    _833 = mem[sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[ceil32(return_data.size) + 493 len 96])) + 32]
                    _834 = mem[sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[ceil32(return_data.size) + 493 len 96])) + 64]
                    mem[ceil32(return_data.size) + 941 len 0] = None
                    require ext_code.size(address(stor3))
                    call address(stor3).quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
                         gas gas_remaining wei
                        args 224, arg3, 1, block.number, 0, _833, _834, 3, mem[ceil32(return_data.size) + 941 len 96]
                else:
                    mem[ceil32(return_data.size) + 197] = 5
                    mem[ceil32(return_data.size) + 229] = arg1
                    mem[ceil32(return_data.size) + 261] = arg2
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 293] = ext_call.return_data[12 len 20]
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    mem[ceil32(return_data.size) + 325] = ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 357] = stor4
                    mem[ceil32(return_data.size) + 421] = block.number
                    mem[ceil32(return_data.size) + 453] = block.gasprice
                    mem[ceil32(return_data.size) + 485] = address(this.address)
                    mem[ceil32(return_data.size) + 505] = address(stor3)
                    mem[ceil32(return_data.size) + 525] = arg3
                    mem[ceil32(return_data.size) + 557 len 0] = None
                    mem[ceil32(return_data.size) + 389] = 296
                    mem[ceil32(return_data.size) + 749] = '\x19Ethereum Signed Message:\n32'
                    mem[ceil32(return_data.size) + 777] = sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[ceil32(return_data.size) + 557 len 160])
                    mem[ceil32(return_data.size) + 717] = 60
                    mem[64] = ceil32(return_data.size) + 809
                    _830 = mem[sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[ceil32(return_data.size) + 557 len 160])) + 32]
                    _831 = mem[sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, sha3(block.number, block.gasprice, this.address, address(stor3), arg3, mem[ceil32(return_data.size) + 557 len 160])) + 64]
                    mem[ceil32(return_data.size) + 1069 len 0] = None
                    require ext_code.size(address(stor3))
                    call address(stor3).quickConvertPrioritized(address[] arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint8 arg5, bytes32 arg6, bytes32 arg7) with:
                         gas gas_remaining wei
                        args 224, arg3, 1, block.number, 0, _830, _831, 5, mem[ceil32(return_data.size) + 1069 len 160]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_e729bf17(?) {
    require calldata.size - 4 >= 128
    require arg4 <= 4294967296
    require arg4 + 36 <= calldata.size
    require arg4.length <= 4294967296 and arg4 + (32 * arg4.length) + 36 <= calldata.size
    mem[96] = arg4.length
    mem[128 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    mem[(32 * arg4.length) + 128] = 3
    mem[64] = (32 * arg4.length) + 320
    mem[(32 * arg4.length) + 256] = 0
    mem[(32 * arg4.length) + 288] = 0
    mem[var13001] = (32 * arg4.length) + 256
    s = var13001
    idx = var13002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * arg4.length) + 256] = 0
        mem[(32 * arg4.length) + 288] = 0
        mem[s + 32] = (32 * arg4.length) + 256
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < mem[96]:
        require idx < mem[96]
        require mem[(32 * idx) + 128] <= 2
        if mem[(32 * idx) + 128]:
            idx = idx + 1
            continue 
        _3403 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3403] = 0
        mem[_3403 + 32] = 0
        require 0 < mem[(32 * arg4.length) + 128]
        mem[(32 * arg4.length) + 160] = _3403
        idx = 0
        while idx < mem[96]:
            require idx < mem[96]
            require mem[(32 * idx) + 128] <= 2
            if mem[(32 * idx) + 128] != 1:
                idx = idx + 1
                continue 
            _5113 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5113] = 1
            mem[_5113 + 32] = 0
            require 1 < mem[(32 * arg4.length) + 128]
            mem[(32 * arg4.length) + 192] = _5113
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                require mem[(32 * idx) + 128] <= 2
                if mem[(32 * idx) + 128] != 2:
                    idx = idx + 1
                    continue 
                _6853 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6853] = 2
                mem[_6853 + 32] = 0
                require 2 < mem[(32 * arg4.length) + 128]
                mem[(32 * arg4.length) + 224] = _6853
                require 0 < mem[(32 * arg4.length) + 128]
                require 0 < mem[(32 * arg4.length) + 128]
                idx = 1
                s = 0
                t = 0
                while idx < mem[(32 * arg4.length) + 128]:
                    require idx < mem[(32 * arg4.length) + 128]
                    if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    require idx < mem[(32 * arg4.length) + 128]
                    require idx < mem[(32 * arg4.length) + 128]
                    idx = idx + 1
                    s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                    t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                    continue 
                _8534 = mem[96]
                _8535 = mem[64]
                mem[mem[64]] = mem[96] + 1
                mem[64] = mem[64] + (32 * _8534 + 1) + 32
                if not _8534 + 1:
                    _9436 = mem[96]
                    idx = 0
                    while idx < _9436:
                        require idx < mem[96]
                        require idx < mem[_8535]
                        require mem[(32 * idx) + 128] <= 2
                        mem[(32 * idx) + _8535 + 32] = mem[(32 * idx) + 128]
                        idx = idx + 1
                        continue 
                else:
                    mem[_8535 + 32 len 32 * _8534 + 1] = code.data[12049 len 32 * _8534 + 1]
                    _9437 = mem[96]
                    idx = 0
                    while idx < _9437:
                        require idx < mem[96]
                        require idx < mem[_8535]
                        require mem[(32 * idx) + 128] <= 2
                        mem[(32 * idx) + _8535 + 32] = mem[(32 * idx) + 128]
                        idx = idx + 1
                        continue 
                revert
            _6800 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6800] = 2
            if not arg2:
                mem[_6800 + 32] = 0
                if 2 < mem[(32 * arg4.length) + 128]:
                    mem[(32 * arg4.length) + 224] = _6800
                    if 0 < mem[(32 * arg4.length) + 128]:
                        if 0 < mem[(32 * arg4.length) + 128]:
                            idx = 1
                            s = 0
                            t = 0
                            while idx < mem[(32 * arg4.length) + 128]:
                                require idx < mem[(32 * arg4.length) + 128]
                                if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < mem[(32 * arg4.length) + 128]
                                require idx < mem[(32 * arg4.length) + 128]
                                idx = idx + 1
                                s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                continue 
                            _8530 = mem[96]
                            _8531 = mem[64]
                            mem[mem[64]] = mem[96] + 1
                            mem[64] = mem[64] + (32 * _8530 + 1) + 32
                            if not _8530 + 1:
                                _9432 = mem[96]
                                idx = 0
                                while idx < _9432:
                                    require idx < mem[96]
                                    require idx < mem[_8531]
                                    require mem[(32 * idx) + 128] <= 2
                                    mem[(32 * idx) + _8531 + 32] = mem[(32 * idx) + 128]
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[_8531 + 32 len 32 * _8530 + 1] = code.data[12049 len 32 * _8530 + 1]
                                _9433 = mem[96]
                                idx = 0
                                while idx < _9433:
                                    require idx < mem[96]
                                    require idx < mem[_8531]
                                    require mem[(32 * idx) + 128] <= 2
                                    mem[(32 * idx) + _8531 + 32] = mem[(32 * idx) + 128]
                                    idx = idx + 1
                                    continue 
            else:
                require ext_code.size(address(stor3))
                staticcall address(stor3).token() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == arg1:
                    _6898 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if mem[_6898]:
                        mem[_6898 + 32] = stor4
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 1 < mem[_6898]:
                            mem[_6898 + 64] = ext_call.return_data[12 len 20]
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 < mem[_6898]:
                                mem[_6898 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).0x7b103999 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                        gas gas_remaining wei
                                       args 'BancorNetwork'
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_6898 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_6898 + 164] = arg3
                                mem[_6898 + 132] = 64
                                mem[_6898 + 196] = mem[_6898]
                                idx = 0
                                while idx < 32 * mem[_6898]:
                                    mem[idx + _6898 + 228] = mem[idx + _6898 + 32]
                                    idx = idx + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, arg3, mem[_6898 + 196 len (32 * mem[_6898]) + 32]
                                mem[_6898 + 128 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_6800 + 32] = ext_call.return_data[0]
                                if 2 < mem[(32 * arg4.length) + 128]:
                                    mem[(32 * arg4.length) + 224] = _6800
                                    if 0 < mem[(32 * arg4.length) + 128]:
                                        if 0 < mem[(32 * arg4.length) + 128]:
                                            idx = 1
                                            s = mem[mem[(32 * arg4.length) + 160] + 32]
                                            t = mem[mem[(32 * arg4.length) + 160]]
                                            while idx < mem[(32 * arg4.length) + 128]:
                                                require idx < mem[(32 * arg4.length) + 128]
                                                if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                                    idx = idx + 1
                                                    s = s
                                                    t = t
                                                    continue 
                                                require idx < mem[(32 * arg4.length) + 128]
                                                require idx < mem[(32 * arg4.length) + 128]
                                                idx = idx + 1
                                                s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                                t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                                continue 
                                            mem[_6898 + 128] = mem[96] + 1
                                            mem[64] = _6898 + (32 * mem[96] + 1) + 160
                                            if mem[96] + 1:
                                                mem[_6898 + 160 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                            idx = 0
                                            while idx < mem[96]:
                                                require idx < mem[96]
                                                require idx < mem[_6898 + 128]
                                                require mem[(32 * idx) + 128] <= 2
                                                mem[(32 * idx) + _6898 + 160] = mem[(32 * idx) + 128]
                                                idx = idx + 1
                                                continue 
                else:
                    _6896 = mem[64]
                    mem[mem[64]] = 5
                    mem[64] = mem[64] + 192
                    if mem[_6896]:
                        mem[_6896 + 32] = stor4
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 1 < mem[_6896]:
                            mem[_6896 + 64] = ext_call.return_data[12 len 20]
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 < mem[_6896]:
                                mem[_6896 + 96] = ext_call.return_data[12 len 20]
                                if 3 < mem[_6896]:
                                    mem[_6896 + 128] = arg2
                                    if 4 < mem[_6896]:
                                        mem[_6896 + 160] = arg1
                                        require ext_code.size(address(stor3))
                                        staticcall address(stor3).0x7b103999 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                gas gas_remaining wei
                                               args 'BancorNetwork'
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6896 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_6896 + 228] = arg3
                                        mem[_6896 + 196] = 64
                                        mem[_6896 + 260] = mem[_6896]
                                        idx = 0
                                        while idx < 32 * mem[_6896]:
                                            mem[idx + _6896 + 292] = mem[idx + _6896 + 32]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_6896 + 260 len (32 * mem[_6896]) + 32]
                                        mem[_6896 + 192 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_6800 + 32] = ext_call.return_data[0]
                                        if 2 < mem[(32 * arg4.length) + 128]:
                                            mem[(32 * arg4.length) + 224] = _6800
                                            if 0 < mem[(32 * arg4.length) + 128]:
                                                if 0 < mem[(32 * arg4.length) + 128]:
                                                    idx = 1
                                                    s = mem[mem[(32 * arg4.length) + 160] + 32]
                                                    t = mem[mem[(32 * arg4.length) + 160]]
                                                    while idx < mem[(32 * arg4.length) + 128]:
                                                        require idx < mem[(32 * arg4.length) + 128]
                                                        if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                                            idx = idx + 1
                                                            s = s
                                                            t = t
                                                            continue 
                                                        require idx < mem[(32 * arg4.length) + 128]
                                                        require idx < mem[(32 * arg4.length) + 128]
                                                        idx = idx + 1
                                                        s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                                        t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                                        continue 
                                                    mem[_6896 + 192] = mem[96] + 1
                                                    mem[64] = _6896 + (32 * mem[96] + 1) + 224
                                                    if mem[96] + 1:
                                                        mem[_6896 + 224 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                    idx = 0
                                                    while idx < mem[96]:
                                                        require idx < mem[96]
                                                        require idx < mem[_6896 + 192]
                                                        require mem[(32 * idx) + 128] <= 2
                                                        mem[(32 * idx) + _6896 + 224] = mem[(32 * idx) + 128]
                                                        idx = idx + 1
                                                        continue 
            revert
        _5099 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5099] = 1
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor2)
        staticcall stor2.getExchange(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            mem[_5099 + 32] = 0
            if 1 < mem[(32 * arg4.length) + 128]:
                mem[(32 * arg4.length) + 192] = _5099
                idx = 0
                while idx < mem[96]:
                    require idx < mem[96]
                    require mem[(32 * idx) + 128] <= 2
                    if mem[(32 * idx) + 128] != 2:
                        idx = idx + 1
                        continue 
                    _6845 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6845] = 2
                    mem[_6845 + 32] = 0
                    require 2 < mem[(32 * arg4.length) + 128]
                    mem[(32 * arg4.length) + 224] = _6845
                    require 0 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[(32 * arg4.length) + 128]
                    idx = 1
                    s = 0
                    t = 0
                    while idx < mem[(32 * arg4.length) + 128]:
                        require idx < mem[(32 * arg4.length) + 128]
                        if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        require idx < mem[(32 * arg4.length) + 128]
                        require idx < mem[(32 * arg4.length) + 128]
                        idx = idx + 1
                        s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                        t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                        continue 
                    _8518 = mem[96]
                    _8519 = mem[64]
                    mem[mem[64]] = mem[96] + 1
                    mem[64] = mem[64] + (32 * _8518 + 1) + 32
                    if not _8518 + 1:
                        _9424 = mem[96]
                        idx = 0
                        while idx < _9424:
                            require idx < mem[96]
                            require idx < mem[_8519]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8519 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    else:
                        mem[_8519 + 32 len 32 * _8518 + 1] = code.data[12049 len 32 * _8518 + 1]
                        _9425 = mem[96]
                        idx = 0
                        while idx < _9425:
                            require idx < mem[96]
                            require idx < mem[_8519]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8519 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    revert
                _6798 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6798] = 2
                if not arg2:
                    mem[_6798 + 32] = 0
                    if 2 < mem[(32 * arg4.length) + 128]:
                        mem[(32 * arg4.length) + 224] = _6798
                        if 0 < mem[(32 * arg4.length) + 128]:
                            if 0 < mem[(32 * arg4.length) + 128]:
                                idx = 1
                                s = 0
                                t = 0
                                while idx < mem[(32 * arg4.length) + 128]:
                                    require idx < mem[(32 * arg4.length) + 128]
                                    if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        continue 
                                    require idx < mem[(32 * arg4.length) + 128]
                                    require idx < mem[(32 * arg4.length) + 128]
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                    t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                    continue 
                                _8514 = mem[96]
                                _8515 = mem[64]
                                mem[mem[64]] = mem[96] + 1
                                mem[64] = mem[64] + (32 * _8514 + 1) + 32
                                if not _8514 + 1:
                                    _9420 = mem[96]
                                    idx = 0
                                    while idx < _9420:
                                        require idx < mem[96]
                                        require idx < mem[_8515]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8515 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[_8515 + 32 len 32 * _8514 + 1] = code.data[12049 len 32 * _8514 + 1]
                                    _9421 = mem[96]
                                    idx = 0
                                    while idx < _9421:
                                        require idx < mem[96]
                                        require idx < mem[_8515]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8515 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                else:
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == arg1:
                        _6890 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if mem[_6890]:
                            mem[_6890 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6890]:
                                mem[_6890 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6890]:
                                    mem[_6890 + 96] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).0x7b103999 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                            gas gas_remaining wei
                                           args 'BancorNetwork'
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_6890 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                    mem[_6890 + 164] = arg3
                                    mem[_6890 + 132] = 64
                                    mem[_6890 + 196] = mem[_6890]
                                    idx = 0
                                    while idx < 32 * mem[_6890]:
                                        mem[idx + _6890 + 228] = mem[idx + _6890 + 32]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                            gas gas_remaining wei
                                           args 64, arg3, mem[_6890 + 196 len (32 * mem[_6890]) + 32]
                                    mem[_6890 + 128 len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    mem[_6798 + 32] = ext_call.return_data[0]
                                    if 2 < mem[(32 * arg4.length) + 128]:
                                        mem[(32 * arg4.length) + 224] = _6798
                                        if 0 < mem[(32 * arg4.length) + 128]:
                                            if 0 < mem[(32 * arg4.length) + 128]:
                                                idx = 1
                                                s = mem[mem[(32 * arg4.length) + 160] + 32]
                                                t = mem[mem[(32 * arg4.length) + 160]]
                                                while idx < mem[(32 * arg4.length) + 128]:
                                                    require idx < mem[(32 * arg4.length) + 128]
                                                    if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                                        idx = idx + 1
                                                        s = s
                                                        t = t
                                                        continue 
                                                    require idx < mem[(32 * arg4.length) + 128]
                                                    require idx < mem[(32 * arg4.length) + 128]
                                                    idx = idx + 1
                                                    s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                                    t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                                    continue 
                                                mem[_6890 + 128] = mem[96] + 1
                                                mem[64] = _6890 + (32 * mem[96] + 1) + 160
                                                if mem[96] + 1:
                                                    mem[_6890 + 160 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                idx = 0
                                                while idx < mem[96]:
                                                    require idx < mem[96]
                                                    require idx < mem[_6890 + 128]
                                                    require mem[(32 * idx) + 128] <= 2
                                                    mem[(32 * idx) + _6890 + 160] = mem[(32 * idx) + 128]
                                                    idx = idx + 1
                                                    continue 
                    else:
                        _6888 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        if mem[_6888]:
                            mem[_6888 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6888]:
                                mem[_6888 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6888]:
                                    mem[_6888 + 96] = ext_call.return_data[12 len 20]
                                    if 3 < mem[_6888]:
                                        mem[_6888 + 128] = arg2
                                        if 4 < mem[_6888]:
                                            mem[_6888 + 160] = arg1
                                            require ext_code.size(address(stor3))
                                            staticcall address(stor3).0x7b103999 with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                    gas gas_remaining wei
                                                   args 'BancorNetwork'
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6888 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                            mem[_6888 + 228] = arg3
                                            mem[_6888 + 196] = 64
                                            mem[_6888 + 260] = mem[_6888]
                                            idx = 0
                                            while idx < 32 * mem[_6888]:
                                                mem[idx + _6888 + 292] = mem[idx + _6888 + 32]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 64, arg3, mem[_6888 + 260 len (32 * mem[_6888]) + 32]
                                            mem[_6888 + 192 len 64] = ext_call.return_data[0 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            mem[_6798 + 32] = ext_call.return_data[0]
                                            if 2 < mem[(32 * arg4.length) + 128]:
                                                mem[(32 * arg4.length) + 224] = _6798
                                                if 0 < mem[(32 * arg4.length) + 128]:
                                                    if 0 < mem[(32 * arg4.length) + 128]:
                                                        idx = 1
                                                        s = mem[mem[(32 * arg4.length) + 160] + 32]
                                                        t = mem[mem[(32 * arg4.length) + 160]]
                                                        while idx < mem[(32 * arg4.length) + 128]:
                                                            require idx < mem[(32 * arg4.length) + 128]
                                                            if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                                                idx = idx + 1
                                                                s = s
                                                                t = t
                                                                continue 
                                                            require idx < mem[(32 * arg4.length) + 128]
                                                            require idx < mem[(32 * arg4.length) + 128]
                                                            idx = idx + 1
                                                            s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                                            t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                                            continue 
                                                        mem[_6888 + 192] = mem[96] + 1
                                                        mem[64] = _6888 + (32 * mem[96] + 1) + 224
                                                        if mem[96] + 1:
                                                            mem[_6888 + 224 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                        idx = 0
                                                        while idx < mem[96]:
                                                            require idx < mem[96]
                                                            require idx < mem[_6888 + 192]
                                                            require mem[(32 * idx) + 128] <= 2
                                                            mem[(32 * idx) + _6888 + 224] = mem[(32 * idx) + 128]
                                                            idx = idx + 1
                                                            continue 
        else:
            mem[mem[64] + 4] = arg3
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg3
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_5099 + 32] = ext_call.return_data[0]
            if 1 < mem[(32 * arg4.length) + 128]:
                mem[(32 * arg4.length) + 192] = _5099
                idx = 0
                while idx < mem[96]:
                    require idx < mem[96]
                    require mem[(32 * idx) + 128] <= 2
                    if mem[(32 * idx) + 128] != 2:
                        idx = idx + 1
                        continue 
                    _6849 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6849] = 2
                    mem[_6849 + 32] = 0
                    require 2 < mem[(32 * arg4.length) + 128]
                    mem[(32 * arg4.length) + 224] = _6849
                    require 0 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[(32 * arg4.length) + 128]
                    idx = 1
                    s = 0
                    t = 0
                    while idx < mem[(32 * arg4.length) + 128]:
                        require idx < mem[(32 * arg4.length) + 128]
                        if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        require idx < mem[(32 * arg4.length) + 128]
                        require idx < mem[(32 * arg4.length) + 128]
                        idx = idx + 1
                        s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                        t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                        continue 
                    _8526 = mem[96]
                    _8527 = mem[64]
                    mem[mem[64]] = mem[96] + 1
                    mem[64] = mem[64] + (32 * _8526 + 1) + 32
                    if not _8526 + 1:
                        _9430 = mem[96]
                        idx = 0
                        while idx < _9430:
                            require idx < mem[96]
                            require idx < mem[_8527]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8527 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    else:
                        mem[_8527 + 32 len 32 * _8526 + 1] = code.data[12049 len 32 * _8526 + 1]
                        _9431 = mem[96]
                        idx = 0
                        while idx < _9431:
                            require idx < mem[96]
                            require idx < mem[_8527]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8527 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    revert
                _6799 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6799] = 2
                if not arg2:
                    mem[_6799 + 32] = 0
                    if 2 < mem[(32 * arg4.length) + 128]:
                        mem[(32 * arg4.length) + 224] = _6799
                        if 0 < mem[(32 * arg4.length) + 128]:
                            if 0 < mem[(32 * arg4.length) + 128]:
                                idx = 1
                                s = 0
                                t = 0
                                while idx < mem[(32 * arg4.length) + 128]:
                                    require idx < mem[(32 * arg4.length) + 128]
                                    if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        continue 
                                    require idx < mem[(32 * arg4.length) + 128]
                                    require idx < mem[(32 * arg4.length) + 128]
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                    t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                    continue 
                                _8522 = mem[96]
                                _8523 = mem[64]
                                mem[mem[64]] = mem[96] + 1
                                mem[64] = mem[64] + (32 * _8522 + 1) + 32
                                if not _8522 + 1:
                                    _9426 = mem[96]
                                    idx = 0
                                    while idx < _9426:
                                        require idx < mem[96]
                                        require idx < mem[_8523]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8523 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[_8523 + 32 len 32 * _8522 + 1] = code.data[12049 len 32 * _8522 + 1]
                                    _9427 = mem[96]
                                    idx = 0
                                    while idx < _9427:
                                        require idx < mem[96]
                                        require idx < mem[_8523]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8523 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                else:
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == arg1:
                        _6894 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if mem[_6894]:
                            mem[_6894 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6894]:
                                mem[_6894 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6894]:
                                    mem[_6894 + 96] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).0x7b103999 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                            gas gas_remaining wei
                                           args 'BancorNetwork'
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_6894 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                    mem[_6894 + 164] = arg3
                                    mem[_6894 + 132] = 64
                                    mem[_6894 + 196] = mem[_6894]
                                    idx = 0
                                    while idx < 32 * mem[_6894]:
                                        mem[idx + _6894 + 228] = mem[idx + _6894 + 32]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                            gas gas_remaining wei
                                           args 64, arg3, mem[_6894 + 196 len (32 * mem[_6894]) + 32]
                                    mem[_6894 + 128 len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    mem[_6799 + 32] = ext_call.return_data[0]
                                    if 2 < mem[(32 * arg4.length) + 128]:
                                        mem[(32 * arg4.length) + 224] = _6799
                                        if 0 < mem[(32 * arg4.length) + 128]:
                                            if 0 < mem[(32 * arg4.length) + 128]:
                                                idx = 1
                                                s = mem[mem[(32 * arg4.length) + 160] + 32]
                                                t = mem[mem[(32 * arg4.length) + 160]]
                                                while idx < mem[(32 * arg4.length) + 128]:
                                                    require idx < mem[(32 * arg4.length) + 128]
                                                    if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                                        idx = idx + 1
                                                        s = s
                                                        t = t
                                                        continue 
                                                    require idx < mem[(32 * arg4.length) + 128]
                                                    require idx < mem[(32 * arg4.length) + 128]
                                                    idx = idx + 1
                                                    s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                                    t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                                    continue 
                                                mem[_6894 + 128] = mem[96] + 1
                                                mem[64] = _6894 + (32 * mem[96] + 1) + 160
                                                if mem[96] + 1:
                                                    mem[_6894 + 160 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                idx = 0
                                                while idx < mem[96]:
                                                    require idx < mem[96]
                                                    require idx < mem[_6894 + 128]
                                                    require mem[(32 * idx) + 128] <= 2
                                                    mem[(32 * idx) + _6894 + 160] = mem[(32 * idx) + 128]
                                                    idx = idx + 1
                                                    continue 
                    else:
                        _6892 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        if mem[_6892]:
                            mem[_6892 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6892]:
                                mem[_6892 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6892]:
                                    mem[_6892 + 96] = ext_call.return_data[12 len 20]
                                    if 3 < mem[_6892]:
                                        mem[_6892 + 128] = arg2
                                        if 4 < mem[_6892]:
                                            mem[_6892 + 160] = arg1
                                            require ext_code.size(address(stor3))
                                            staticcall address(stor3).0x7b103999 with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                    gas gas_remaining wei
                                                   args 'BancorNetwork'
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6892 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                            mem[_6892 + 228] = arg3
                                            mem[_6892 + 196] = 64
                                            mem[_6892 + 260] = mem[_6892]
                                            idx = 0
                                            while idx < 32 * mem[_6892]:
                                                mem[idx + _6892 + 292] = mem[idx + _6892 + 32]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 64, arg3, mem[_6892 + 260 len (32 * mem[_6892]) + 32]
                                            mem[_6892 + 192 len 64] = ext_call.return_data[0 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            mem[_6799 + 32] = ext_call.return_data[0]
                                            if 2 < mem[(32 * arg4.length) + 128]:
                                                mem[(32 * arg4.length) + 224] = _6799
                                                if 0 < mem[(32 * arg4.length) + 128]:
                                                    if 0 < mem[(32 * arg4.length) + 128]:
                                                        idx = 1
                                                        s = mem[mem[(32 * arg4.length) + 160] + 32]
                                                        t = mem[mem[(32 * arg4.length) + 160]]
                                                        while idx < mem[(32 * arg4.length) + 128]:
                                                            require idx < mem[(32 * arg4.length) + 128]
                                                            if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                                                idx = idx + 1
                                                                s = s
                                                                t = t
                                                                continue 
                                                            require idx < mem[(32 * arg4.length) + 128]
                                                            require idx < mem[(32 * arg4.length) + 128]
                                                            idx = idx + 1
                                                            s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                                            t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                                            continue 
                                                        mem[_6892 + 192] = mem[96] + 1
                                                        mem[64] = _6892 + (32 * mem[96] + 1) + 224
                                                        if mem[96] + 1:
                                                            mem[_6892 + 224 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                        idx = 0
                                                        while idx < mem[96]:
                                                            require idx < mem[96]
                                                            require idx < mem[_6892 + 192]
                                                            require mem[(32 * idx) + 128] <= 2
                                                            mem[(32 * idx) + _6892 + 224] = mem[(32 * idx) + 128]
                                                            idx = idx + 1
                                                            continue 
        revert
    _3397 = mem[64]
    mem[64] = mem[64] + 64
    mem[_3397] = 0
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = arg3
    require ext_code.size(stor1)
    staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg1), arg3
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[32]:
        mem[_3397 + 32] = 0
        if 0 < mem[(32 * arg4.length) + 128]:
            mem[(32 * arg4.length) + 160] = _3397
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                require mem[(32 * idx) + 128] <= 2
                if mem[(32 * idx) + 128] != 1:
                    idx = idx + 1
                    continue 
                _5110 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5110] = 1
                mem[_5110 + 32] = 0
                require 1 < mem[(32 * arg4.length) + 128]
                mem[(32 * arg4.length) + 192] = _5110
                idx = 0
                while idx < mem[96]:
                    require idx < mem[96]
                    require mem[(32 * idx) + 128] <= 2
                    if mem[(32 * idx) + 128] != 2:
                        idx = idx + 1
                        continue 
                    _6841 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6841] = 2
                    mem[_6841 + 32] = 0
                    require 2 < mem[(32 * arg4.length) + 128]
                    mem[(32 * arg4.length) + 224] = _6841
                    require 0 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[(32 * arg4.length) + 128]
                    idx = 1
                    s = 0
                    t = 0
                    while idx < mem[(32 * arg4.length) + 128]:
                        require idx < mem[(32 * arg4.length) + 128]
                        if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        require idx < mem[(32 * arg4.length) + 128]
                        require idx < mem[(32 * arg4.length) + 128]
                        idx = idx + 1
                        s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                        t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                        continue 
                    _8510 = mem[96]
                    _8511 = mem[64]
                    mem[mem[64]] = mem[96] + 1
                    mem[64] = mem[64] + (32 * _8510 + 1) + 32
                    if not _8510 + 1:
                        _9418 = mem[96]
                        idx = 0
                        while idx < _9418:
                            require idx < mem[96]
                            require idx < mem[_8511]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8511 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    else:
                        mem[_8511 + 32 len 32 * _8510 + 1] = code.data[12049 len 32 * _8510 + 1]
                        _9419 = mem[96]
                        idx = 0
                        while idx < _9419:
                            require idx < mem[96]
                            require idx < mem[_8511]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8511 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    revert
                _6797 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6797] = 2
                if not arg2:
                    mem[_6797 + 32] = 0
                    if 2 < mem[(32 * arg4.length) + 128]:
                        mem[(32 * arg4.length) + 224] = _6797
                        if 0 < mem[(32 * arg4.length) + 128]:
                            if 0 < mem[(32 * arg4.length) + 128]:
                                idx = 1
                                s = 0
                                t = 0
                                while idx < mem[(32 * arg4.length) + 128]:
                                    require idx < mem[(32 * arg4.length) + 128]
                                    if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        continue 
                                    require idx < mem[(32 * arg4.length) + 128]
                                    require idx < mem[(32 * arg4.length) + 128]
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                    t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                    continue 
                                _8506 = mem[96]
                                _8507 = mem[64]
                                mem[mem[64]] = mem[96] + 1
                                mem[64] = mem[64] + (32 * _8506 + 1) + 32
                                if not _8506 + 1:
                                    _9414 = mem[96]
                                    idx = 0
                                    while idx < _9414:
                                        require idx < mem[96]
                                        require idx < mem[_8507]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8507 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[_8507 + 32 len 32 * _8506 + 1] = code.data[12049 len 32 * _8506 + 1]
                                    _9415 = mem[96]
                                    idx = 0
                                    while idx < _9415:
                                        require idx < mem[96]
                                        require idx < mem[_8507]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8507 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                else:
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == arg1:
                        _6886 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if mem[_6886]:
                            mem[_6886 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6886]:
                                mem[_6886 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6886]:
                                    mem[_6886 + 96] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).0x7b103999 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                            gas gas_remaining wei
                                           args 'BancorNetwork'
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_6886 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                    mem[_6886 + 164] = arg3
                                    mem[_6886 + 132] = 64
                                    mem[_6886 + 196] = mem[_6886]
                                    idx = 0
                                    while idx < 32 * mem[_6886]:
                                        mem[idx + _6886 + 228] = mem[idx + _6886 + 32]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                            gas gas_remaining wei
                                           args 64, arg3, mem[_6886 + 196 len (32 * mem[_6886]) + 32]
                                    mem[_6886 + 128 len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    mem[_6797 + 32] = ext_call.return_data[0]
                                    if 2 < mem[(32 * arg4.length) + 128]:
                                        mem[(32 * arg4.length) + 224] = _6797
                                        if 0 < mem[(32 * arg4.length) + 128]:
                                            if 0 < mem[(32 * arg4.length) + 128]:
                                                idx = 1
                                                s = mem[mem[(32 * arg4.length) + 160] + 32]
                                                t = mem[mem[(32 * arg4.length) + 160]]
                                                while idx < mem[(32 * arg4.length) + 128]:
                                                    require idx < mem[(32 * arg4.length) + 128]
                                                    if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                                        idx = idx + 1
                                                        s = s
                                                        t = t
                                                        continue 
                                                    require idx < mem[(32 * arg4.length) + 128]
                                                    require idx < mem[(32 * arg4.length) + 128]
                                                    idx = idx + 1
                                                    s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                                    t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                                    continue 
                                                mem[_6886 + 128] = mem[96] + 1
                                                mem[64] = _6886 + (32 * mem[96] + 1) + 160
                                                if mem[96] + 1:
                                                    mem[_6886 + 160 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                idx = 0
                                                while idx < mem[96]:
                                                    require idx < mem[96]
                                                    require idx < mem[_6886 + 128]
                                                    require mem[(32 * idx) + 128] <= 2
                                                    mem[(32 * idx) + _6886 + 160] = mem[(32 * idx) + 128]
                                                    idx = idx + 1
                                                    continue 
                    else:
                        _6884 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        if mem[_6884]:
                            mem[_6884 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6884]:
                                mem[_6884 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6884]:
                                    mem[_6884 + 96] = ext_call.return_data[12 len 20]
                                    if 3 < mem[_6884]:
                                        mem[_6884 + 128] = arg2
                                        if 4 < mem[_6884]:
                                            mem[_6884 + 160] = arg1
                                            require ext_code.size(address(stor3))
                                            staticcall address(stor3).0x7b103999 with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                    gas gas_remaining wei
                                                   args 'BancorNetwork'
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6884 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                            mem[_6884 + 228] = arg3
                                            mem[_6884 + 196] = 64
                                            mem[_6884 + 260] = mem[_6884]
                                            idx = 0
                                            while idx < 32 * mem[_6884]:
                                                mem[idx + _6884 + 292] = mem[idx + _6884 + 32]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 64, arg3, mem[_6884 + 260 len (32 * mem[_6884]) + 32]
                                            mem[_6884 + 192 len 64] = ext_call.return_data[0 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            mem[_6797 + 32] = ext_call.return_data[0]
                                            if 2 < mem[(32 * arg4.length) + 128]:
                                                mem[(32 * arg4.length) + 224] = _6797
                                                if 0 < mem[(32 * arg4.length) + 128]:
                                                    if 0 < mem[(32 * arg4.length) + 128]:
                                                        idx = 1
                                                        s = mem[mem[(32 * arg4.length) + 160] + 32]
                                                        t = mem[mem[(32 * arg4.length) + 160]]
                                                        while idx < mem[(32 * arg4.length) + 128]:
                                                            require idx < mem[(32 * arg4.length) + 128]
                                                            if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                                                idx = idx + 1
                                                                s = s
                                                                t = t
                                                                continue 
                                                            require idx < mem[(32 * arg4.length) + 128]
                                                            require idx < mem[(32 * arg4.length) + 128]
                                                            idx = idx + 1
                                                            s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                                            t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                                            continue 
                                                        mem[_6884 + 192] = mem[96] + 1
                                                        mem[64] = _6884 + (32 * mem[96] + 1) + 224
                                                        if mem[96] + 1:
                                                            mem[_6884 + 224 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                        idx = 0
                                                        while idx < mem[96]:
                                                            require idx < mem[96]
                                                            require idx < mem[_6884 + 192]
                                                            require mem[(32 * idx) + 128] <= 2
                                                            mem[(32 * idx) + _6884 + 224] = mem[(32 * idx) + 128]
                                                            idx = idx + 1
                                                            continue 
                revert
            _5098 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5098] = 1
            mem[mem[64] + 4] = arg1
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                mem[_5098 + 32] = 0
                if 1 < mem[(32 * arg4.length) + 128]:
                    mem[(32 * arg4.length) + 192] = _5098
                    idx = 0
                    while idx < mem[96]:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] <= 2
                        if mem[(32 * idx) + 128] != 2:
                            idx = idx + 1
                            continue 
                        _6833 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6833] = 2
                        mem[_6833 + 32] = 0
                        require 2 < mem[(32 * arg4.length) + 128]
                        mem[(32 * arg4.length) + 224] = _6833
                        require 0 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[(32 * arg4.length) + 128]
                        idx = 1
                        s = 0
                        t = 0
                        while idx < mem[(32 * arg4.length) + 128]:
                            require idx < mem[(32 * arg4.length) + 128]
                            if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            require idx < mem[(32 * arg4.length) + 128]
                            require idx < mem[(32 * arg4.length) + 128]
                            idx = idx + 1
                            s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                            t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                            continue 
                        _8494 = mem[96]
                        _8495 = mem[64]
                        mem[mem[64]] = mem[96] + 1
                        mem[64] = mem[64] + (32 * _8494 + 1) + 32
                        if not _8494 + 1:
                            _9406 = mem[96]
                            idx = 0
                            while idx < _9406:
                                require idx < mem[96]
                                require idx < mem[_8495]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8495 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        else:
                            mem[_8495 + 32 len 32 * _8494 + 1] = code.data[12049 len 32 * _8494 + 1]
                            _9407 = mem[96]
                            idx = 0
                            while idx < _9407:
                                require idx < mem[96]
                                require idx < mem[_8495]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8495 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        revert
                    _6795 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6795] = 2
                    if not arg2:
                        mem[_6795 + 32] = 0
                        if 2 < mem[(32 * arg4.length) + 128]:
                            mem[(32 * arg4.length) + 224] = _6795
                            if 0 < mem[(32 * arg4.length) + 128]:
                                if 0 < mem[(32 * arg4.length) + 128]:
                                    idx = 1
                                    s = 0
                                    t = 0
                                    while idx < mem[(32 * arg4.length) + 128]:
                                        require idx < mem[(32 * arg4.length) + 128]
                                        if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            continue 
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                        t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                        continue 
                                    _8490 = mem[96]
                                    _8491 = mem[64]
                                    mem[mem[64]] = mem[96] + 1
                                    mem[64] = mem[64] + (32 * _8490 + 1) + 32
                                    if not _8490 + 1:
                                        _9402 = mem[96]
                                        idx = 0
                                        while idx < _9402:
                                            require idx < mem[96]
                                            require idx < mem[_8491]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8491 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[_8491 + 32 len 32 * _8490 + 1] = code.data[12049 len 32 * _8490 + 1]
                                        _9403 = mem[96]
                                        idx = 0
                                        while idx < _9403:
                                            require idx < mem[96]
                                            require idx < mem[_8491]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8491 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                    else:
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == arg1:
                            _6878 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if mem[_6878]:
                                mem[_6878 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6878]:
                                    mem[_6878 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6878]:
                                        mem[_6878 + 96] = ext_call.return_data[12 len 20]
                                        require ext_code.size(address(stor3))
                                        staticcall address(stor3).0x7b103999 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                gas gas_remaining wei
                                               args 'BancorNetwork'
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6878 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_6878 + 164] = arg3
                                        mem[_6878 + 132] = 64
                                        mem[_6878 + 196] = mem[_6878]
                                        mem[_6878 + 228 len floor32(mem[_6878])] = mem[_6878 + 32 len floor32(mem[_6878])]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_6878 + 196 len (32 * mem[_6878]) + 32]
                                        mem[_6878 + 128 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_6795 + 32] = ext_call.return_data[0]
                                        if 2 < mem[(32 * arg4.length) + 128]:
                                            mem[(32 * arg4.length) + 224] = _6795
                                            if 0 < mem[(32 * arg4.length) + 128]:
                                                if 0 < mem[(32 * arg4.length) + 128]:
                                                    idx = 1
                                                    s = 0
                                                    t = 0
                                                    while idx < mem[(32 * arg4.length) + 128]:
                                                        require idx < mem[(32 * arg4.length) + 128]
                                                        if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                                            idx = idx + 1
                                                            s = s
                                                            t = t
                                                            continue 
                                                        require idx < mem[(32 * arg4.length) + 128]
                                                        require idx < mem[(32 * arg4.length) + 128]
                                                        idx = idx + 1
                                                        s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                                        t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                                        continue 
                                                    mem[_6878 + 128] = mem[96] + 1
                                                    mem[64] = _6878 + (32 * mem[96] + 1) + 160
                                                    if mem[96] + 1:
                                                        mem[_6878 + 160 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                    idx = 0
                                                    while idx < mem[96]:
                                                        require idx < mem[96]
                                                        require idx < mem[_6878 + 128]
                                                        require mem[(32 * idx) + 128] <= 2
                                                        mem[(32 * idx) + _6878 + 160] = mem[(32 * idx) + 128]
                                                        idx = idx + 1
                                                        continue 
                        else:
                            _6876 = mem[64]
                            mem[mem[64]] = 5
                            mem[64] = mem[64] + 192
                            if mem[_6876]:
                                mem[_6876 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6876]:
                                    mem[_6876 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6876]:
                                        mem[_6876 + 96] = ext_call.return_data[12 len 20]
                                        if 3 < mem[_6876]:
                                            mem[_6876 + 128] = arg2
                                            if 4 < mem[_6876]:
                                                mem[_6876 + 160] = arg1
                                                require ext_code.size(address(stor3))
                                                staticcall address(stor3).0x7b103999 with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                        gas gas_remaining wei
                                                       args 'BancorNetwork'
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_6876 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                mem[_6876 + 228] = arg3
                                                mem[_6876 + 196] = 64
                                                mem[_6876 + 260] = mem[_6876]
                                                mem[_6876 + 292 len floor32(mem[_6876])] = mem[_6876 + 32 len floor32(mem[_6876])]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 64, arg3, mem[_6876 + 260 len (32 * mem[_6876]) + 32]
                                                mem[_6876 + 192 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                mem[_6795 + 32] = ext_call.return_data[0]
                                                if 2 < mem[(32 * arg4.length) + 128]:
                                                    mem[(32 * arg4.length) + 224] = _6795
                                                    if 0 < mem[(32 * arg4.length) + 128]:
                                                        if 0 < mem[(32 * arg4.length) + 128]:
                                                            idx = 1
                                                            s = 0
                                                            t = 0
                                                            while idx < mem[(32 * arg4.length) + 128]:
                                                                require idx < mem[(32 * arg4.length) + 128]
                                                                if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    t = t
                                                                    continue 
                                                                require idx < mem[(32 * arg4.length) + 128]
                                                                require idx < mem[(32 * arg4.length) + 128]
                                                                idx = idx + 1
                                                                s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                                                t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                                                continue 
                                                            mem[_6876 + 192] = mem[96] + 1
                                                            mem[64] = _6876 + (32 * mem[96] + 1) + 224
                                                            if mem[96] + 1:
                                                                mem[_6876 + 224 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                            idx = 0
                                                            while idx < mem[96]:
                                                                require idx < mem[96]
                                                                require idx < mem[_6876 + 192]
                                                                require mem[(32 * idx) + 128] <= 2
                                                                mem[(32 * idx) + _6876 + 224] = mem[(32 * idx) + 128]
                                                                idx = idx + 1
                                                                continue 
            else:
                mem[mem[64] + 4] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_5098 + 32] = ext_call.return_data[0]
                if 1 < mem[(32 * arg4.length) + 128]:
                    mem[(32 * arg4.length) + 192] = _5098
                    idx = 0
                    while idx < mem[96]:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] <= 2
                        if mem[(32 * idx) + 128] != 2:
                            idx = idx + 1
                            continue 
                        _6837 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6837] = 2
                        mem[_6837 + 32] = 0
                        require 2 < mem[(32 * arg4.length) + 128]
                        mem[(32 * arg4.length) + 224] = _6837
                        require 0 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[(32 * arg4.length) + 128]
                        idx = 1
                        s = 0
                        t = 0
                        while idx < mem[(32 * arg4.length) + 128]:
                            require idx < mem[(32 * arg4.length) + 128]
                            if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            require idx < mem[(32 * arg4.length) + 128]
                            require idx < mem[(32 * arg4.length) + 128]
                            idx = idx + 1
                            s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                            t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                            continue 
                        _8502 = mem[96]
                        _8503 = mem[64]
                        mem[mem[64]] = mem[96] + 1
                        mem[64] = mem[64] + (32 * _8502 + 1) + 32
                        if not _8502 + 1:
                            _9412 = mem[96]
                            idx = 0
                            while idx < _9412:
                                require idx < mem[96]
                                require idx < mem[_8503]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8503 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        else:
                            mem[_8503 + 32 len 32 * _8502 + 1] = code.data[12049 len 32 * _8502 + 1]
                            _9413 = mem[96]
                            idx = 0
                            while idx < _9413:
                                require idx < mem[96]
                                require idx < mem[_8503]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8503 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        revert
                    _6796 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6796] = 2
                    if not arg2:
                        mem[_6796 + 32] = 0
                        if 2 < mem[(32 * arg4.length) + 128]:
                            mem[(32 * arg4.length) + 224] = _6796
                            if 0 < mem[(32 * arg4.length) + 128]:
                                if 0 < mem[(32 * arg4.length) + 128]:
                                    idx = 1
                                    s = 0
                                    t = 0
                                    while idx < mem[(32 * arg4.length) + 128]:
                                        require idx < mem[(32 * arg4.length) + 128]
                                        if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            continue 
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                        t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                        continue 
                                    _8498 = mem[96]
                                    _8499 = mem[64]
                                    mem[mem[64]] = mem[96] + 1
                                    mem[64] = mem[64] + (32 * _8498 + 1) + 32
                                    if not _8498 + 1:
                                        _9408 = mem[96]
                                        idx = 0
                                        while idx < _9408:
                                            require idx < mem[96]
                                            require idx < mem[_8499]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8499 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[_8499 + 32 len 32 * _8498 + 1] = code.data[12049 len 32 * _8498 + 1]
                                        _9409 = mem[96]
                                        idx = 0
                                        while idx < _9409:
                                            require idx < mem[96]
                                            require idx < mem[_8499]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8499 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                    else:
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == arg1:
                            _6882 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if mem[_6882]:
                                mem[_6882 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6882]:
                                    mem[_6882 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6882]:
                                        mem[_6882 + 96] = ext_call.return_data[12 len 20]
                                        require ext_code.size(address(stor3))
                                        staticcall address(stor3).0x7b103999 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                gas gas_remaining wei
                                               args 'BancorNetwork'
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6882 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_6882 + 164] = arg3
                                        mem[_6882 + 132] = 64
                                        mem[_6882 + 196] = mem[_6882]
                                        mem[_6882 + 228 len floor32(mem[_6882])] = mem[_6882 + 32 len floor32(mem[_6882])]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_6882 + 196 len (32 * mem[_6882]) + 32]
                                        mem[_6882 + 128 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_6796 + 32] = ext_call.return_data[0]
                                        if 2 < mem[(32 * arg4.length) + 128]:
                                            mem[(32 * arg4.length) + 224] = _6796
                                            if 0 < mem[(32 * arg4.length) + 128]:
                                                if 0 < mem[(32 * arg4.length) + 128]:
                                                    idx = 1
                                                    s = 0
                                                    t = 0
                                                    while idx < mem[(32 * arg4.length) + 128]:
                                                        require idx < mem[(32 * arg4.length) + 128]
                                                        if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                                            idx = idx + 1
                                                            s = s
                                                            t = t
                                                            continue 
                                                        require idx < mem[(32 * arg4.length) + 128]
                                                        require idx < mem[(32 * arg4.length) + 128]
                                                        idx = idx + 1
                                                        s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                                        t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                                        continue 
                                                    mem[_6882 + 128] = mem[96] + 1
                                                    mem[64] = _6882 + (32 * mem[96] + 1) + 160
                                                    if mem[96] + 1:
                                                        mem[_6882 + 160 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                    idx = 0
                                                    while idx < mem[96]:
                                                        require idx < mem[96]
                                                        require idx < mem[_6882 + 128]
                                                        require mem[(32 * idx) + 128] <= 2
                                                        mem[(32 * idx) + _6882 + 160] = mem[(32 * idx) + 128]
                                                        idx = idx + 1
                                                        continue 
                        else:
                            _6880 = mem[64]
                            mem[mem[64]] = 5
                            mem[64] = mem[64] + 192
                            if mem[_6880]:
                                mem[_6880 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6880]:
                                    mem[_6880 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6880]:
                                        mem[_6880 + 96] = ext_call.return_data[12 len 20]
                                        if 3 < mem[_6880]:
                                            mem[_6880 + 128] = arg2
                                            if 4 < mem[_6880]:
                                                mem[_6880 + 160] = arg1
                                                require ext_code.size(address(stor3))
                                                staticcall address(stor3).0x7b103999 with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                        gas gas_remaining wei
                                                       args 'BancorNetwork'
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_6880 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                mem[_6880 + 228] = arg3
                                                mem[_6880 + 196] = 64
                                                mem[_6880 + 260] = mem[_6880]
                                                mem[_6880 + 292 len floor32(mem[_6880])] = mem[_6880 + 32 len floor32(mem[_6880])]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 64, arg3, mem[_6880 + 260 len (32 * mem[_6880]) + 32]
                                                mem[_6880 + 192 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                mem[_6796 + 32] = ext_call.return_data[0]
                                                if 2 < mem[(32 * arg4.length) + 128]:
                                                    mem[(32 * arg4.length) + 224] = _6796
                                                    if 0 < mem[(32 * arg4.length) + 128]:
                                                        if 0 < mem[(32 * arg4.length) + 128]:
                                                            idx = 1
                                                            s = 0
                                                            t = 0
                                                            while idx < mem[(32 * arg4.length) + 128]:
                                                                require idx < mem[(32 * arg4.length) + 128]
                                                                if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    t = t
                                                                    continue 
                                                                require idx < mem[(32 * arg4.length) + 128]
                                                                require idx < mem[(32 * arg4.length) + 128]
                                                                idx = idx + 1
                                                                s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                                                t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                                                continue 
                                                            mem[_6880 + 192] = mem[96] + 1
                                                            mem[64] = _6880 + (32 * mem[96] + 1) + 224
                                                            if mem[96] + 1:
                                                                mem[_6880 + 224 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                            idx = 0
                                                            while idx < mem[96]:
                                                                require idx < mem[96]
                                                                require idx < mem[_6880 + 192]
                                                                require mem[(32 * idx) + 128] <= 2
                                                                mem[(32 * idx) + _6880 + 224] = mem[(32 * idx) + 128]
                                                                idx = idx + 1
                                                                continue 
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_3397 + 32] = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
        if 0 < mem[(32 * arg4.length) + 128]:
            mem[(32 * arg4.length) + 160] = _3397
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                require mem[(32 * idx) + 128] <= 2
                if mem[(32 * idx) + 128] != 1:
                    idx = idx + 1
                    continue 
                _5107 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5107] = 1
                mem[_5107 + 32] = 0
                require 1 < mem[(32 * arg4.length) + 128]
                mem[(32 * arg4.length) + 192] = _5107
                idx = 0
                while idx < mem[96]:
                    require idx < mem[96]
                    require mem[(32 * idx) + 128] <= 2
                    if mem[(32 * idx) + 128] != 2:
                        idx = idx + 1
                        continue 
                    _6829 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6829] = 2
                    mem[_6829 + 32] = 0
                    require 2 < mem[(32 * arg4.length) + 128]
                    mem[(32 * arg4.length) + 224] = _6829
                    require 0 < mem[(32 * arg4.length) + 128]
                    require 0 < mem[(32 * arg4.length) + 128]
                    idx = 1
                    s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                    t = 0
                    while idx < mem[(32 * arg4.length) + 128]:
                        require idx < mem[(32 * arg4.length) + 128]
                        if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        require idx < mem[(32 * arg4.length) + 128]
                        require idx < mem[(32 * arg4.length) + 128]
                        idx = idx + 1
                        s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                        t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                        continue 
                    _8486 = mem[96]
                    _8487 = mem[64]
                    mem[mem[64]] = mem[96] + 1
                    mem[64] = mem[64] + (32 * _8486 + 1) + 32
                    if not _8486 + 1:
                        _9400 = mem[96]
                        idx = 0
                        while idx < _9400:
                            require idx < mem[96]
                            require idx < mem[_8487]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8487 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    else:
                        mem[_8487 + 32 len 32 * _8486 + 1] = code.data[12049 len 32 * _8486 + 1]
                        _9401 = mem[96]
                        idx = 0
                        while idx < _9401:
                            require idx < mem[96]
                            require idx < mem[_8487]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8487 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    revert
                _6794 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6794] = 2
                if not arg2:
                    mem[_6794 + 32] = 0
                    if 2 < mem[(32 * arg4.length) + 128]:
                        mem[(32 * arg4.length) + 224] = _6794
                        if 0 < mem[(32 * arg4.length) + 128]:
                            if 0 < mem[(32 * arg4.length) + 128]:
                                idx = 1
                                s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                t = 0
                                while idx < mem[(32 * arg4.length) + 128]:
                                    require idx < mem[(32 * arg4.length) + 128]
                                    if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        continue 
                                    require idx < mem[(32 * arg4.length) + 128]
                                    require idx < mem[(32 * arg4.length) + 128]
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                    t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                    continue 
                                _8482 = mem[96]
                                _8483 = mem[64]
                                mem[mem[64]] = mem[96] + 1
                                mem[64] = mem[64] + (32 * _8482 + 1) + 32
                                if not _8482 + 1:
                                    _9396 = mem[96]
                                    idx = 0
                                    while idx < _9396:
                                        require idx < mem[96]
                                        require idx < mem[_8483]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8483 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[_8483 + 32 len 32 * _8482 + 1] = code.data[12049 len 32 * _8482 + 1]
                                    _9397 = mem[96]
                                    idx = 0
                                    while idx < _9397:
                                        require idx < mem[96]
                                        require idx < mem[_8483]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8483 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                else:
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == arg1:
                        _6874 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if mem[_6874]:
                            mem[_6874 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6874]:
                                mem[_6874 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6874]:
                                    mem[_6874 + 96] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).0x7b103999 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                            gas gas_remaining wei
                                           args 'BancorNetwork'
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_6874 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                    mem[_6874 + 164] = arg3
                                    mem[_6874 + 132] = 64
                                    mem[_6874 + 196] = mem[_6874]
                                    idx = 0
                                    while idx < 32 * mem[_6874]:
                                        mem[idx + _6874 + 228] = mem[idx + _6874 + 32]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                            gas gas_remaining wei
                                           args 64, arg3, mem[_6874 + 196 len (32 * mem[_6874]) + 32]
                                    mem[_6874 + 128 len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    mem[_6794 + 32] = ext_call.return_data[0]
                                    if 2 < mem[(32 * arg4.length) + 128]:
                                        mem[(32 * arg4.length) + 224] = _6794
                                        if 0 < mem[(32 * arg4.length) + 128]:
                                            if 0 < mem[(32 * arg4.length) + 128]:
                                                idx = 1
                                                s = mem[mem[(32 * arg4.length) + 160] + 32]
                                                t = mem[mem[(32 * arg4.length) + 160]]
                                                while idx < mem[(32 * arg4.length) + 128]:
                                                    require idx < mem[(32 * arg4.length) + 128]
                                                    if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                                        idx = idx + 1
                                                        s = s
                                                        t = t
                                                        continue 
                                                    require idx < mem[(32 * arg4.length) + 128]
                                                    require idx < mem[(32 * arg4.length) + 128]
                                                    idx = idx + 1
                                                    s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                                    t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                                    continue 
                                                mem[_6874 + 128] = mem[96] + 1
                                                mem[64] = _6874 + (32 * mem[96] + 1) + 160
                                                if mem[96] + 1:
                                                    mem[_6874 + 160 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                idx = 0
                                                while idx < mem[96]:
                                                    require idx < mem[96]
                                                    require idx < mem[_6874 + 128]
                                                    require mem[(32 * idx) + 128] <= 2
                                                    mem[(32 * idx) + _6874 + 160] = mem[(32 * idx) + 128]
                                                    idx = idx + 1
                                                    continue 
                    else:
                        _6872 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        if mem[_6872]:
                            mem[_6872 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6872]:
                                mem[_6872 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6872]:
                                    mem[_6872 + 96] = ext_call.return_data[12 len 20]
                                    if 3 < mem[_6872]:
                                        mem[_6872 + 128] = arg2
                                        if 4 < mem[_6872]:
                                            mem[_6872 + 160] = arg1
                                            require ext_code.size(address(stor3))
                                            staticcall address(stor3).0x7b103999 with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                    gas gas_remaining wei
                                                   args 'BancorNetwork'
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6872 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                            mem[_6872 + 228] = arg3
                                            mem[_6872 + 196] = 64
                                            mem[_6872 + 260] = mem[_6872]
                                            idx = 0
                                            while idx < 32 * mem[_6872]:
                                                mem[idx + _6872 + 292] = mem[idx + _6872 + 32]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 64, arg3, mem[_6872 + 260 len (32 * mem[_6872]) + 32]
                                            mem[_6872 + 192 len 64] = ext_call.return_data[0 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            mem[_6794 + 32] = ext_call.return_data[0]
                                            if 2 < mem[(32 * arg4.length) + 128]:
                                                mem[(32 * arg4.length) + 224] = _6794
                                                if 0 < mem[(32 * arg4.length) + 128]:
                                                    if 0 < mem[(32 * arg4.length) + 128]:
                                                        idx = 1
                                                        s = mem[mem[(32 * arg4.length) + 160] + 32]
                                                        t = mem[mem[(32 * arg4.length) + 160]]
                                                        while idx < mem[(32 * arg4.length) + 128]:
                                                            require idx < mem[(32 * arg4.length) + 128]
                                                            if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                                                idx = idx + 1
                                                                s = s
                                                                t = t
                                                                continue 
                                                            require idx < mem[(32 * arg4.length) + 128]
                                                            require idx < mem[(32 * arg4.length) + 128]
                                                            idx = idx + 1
                                                            s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                                            t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                                            continue 
                                                        mem[_6872 + 192] = mem[96] + 1
                                                        mem[64] = _6872 + (32 * mem[96] + 1) + 224
                                                        if mem[96] + 1:
                                                            mem[_6872 + 224 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                        idx = 0
                                                        while idx < mem[96]:
                                                            require idx < mem[96]
                                                            require idx < mem[_6872 + 192]
                                                            require mem[(32 * idx) + 128] <= 2
                                                            mem[(32 * idx) + _6872 + 224] = mem[(32 * idx) + 128]
                                                            idx = idx + 1
                                                            continue 
                revert
            _5097 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5097] = 1
            mem[mem[64] + 4] = arg1
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                mem[_5097 + 32] = 0
                if 1 < mem[(32 * arg4.length) + 128]:
                    mem[(32 * arg4.length) + 192] = _5097
                    idx = 0
                    while idx < mem[96]:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] <= 2
                        if mem[(32 * idx) + 128] != 2:
                            idx = idx + 1
                            continue 
                        _6821 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6821] = 2
                        mem[_6821 + 32] = 0
                        require 2 < mem[(32 * arg4.length) + 128]
                        mem[(32 * arg4.length) + 224] = _6821
                        require 0 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[(32 * arg4.length) + 128]
                        idx = 1
                        s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                        t = 0
                        while idx < mem[(32 * arg4.length) + 128]:
                            require idx < mem[(32 * arg4.length) + 128]
                            if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            require idx < mem[(32 * arg4.length) + 128]
                            require idx < mem[(32 * arg4.length) + 128]
                            idx = idx + 1
                            s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                            t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                            continue 
                        _8470 = mem[96]
                        _8471 = mem[64]
                        mem[mem[64]] = mem[96] + 1
                        mem[64] = mem[64] + (32 * _8470 + 1) + 32
                        if not _8470 + 1:
                            _9388 = mem[96]
                            idx = 0
                            while idx < _9388:
                                require idx < mem[96]
                                require idx < mem[_8471]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8471 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        else:
                            mem[_8471 + 32 len 32 * _8470 + 1] = code.data[12049 len 32 * _8470 + 1]
                            _9389 = mem[96]
                            idx = 0
                            while idx < _9389:
                                require idx < mem[96]
                                require idx < mem[_8471]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8471 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        revert
                    _6792 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6792] = 2
                    if not arg2:
                        mem[_6792 + 32] = 0
                        if 2 < mem[(32 * arg4.length) + 128]:
                            mem[(32 * arg4.length) + 224] = _6792
                            if 0 < mem[(32 * arg4.length) + 128]:
                                if 0 < mem[(32 * arg4.length) + 128]:
                                    idx = 1
                                    s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                    t = 0
                                    while idx < mem[(32 * arg4.length) + 128]:
                                        require idx < mem[(32 * arg4.length) + 128]
                                        if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            continue 
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                        t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                        continue 
                                    _8466 = mem[96]
                                    _8467 = mem[64]
                                    mem[mem[64]] = mem[96] + 1
                                    mem[64] = mem[64] + (32 * _8466 + 1) + 32
                                    if not _8466 + 1:
                                        _9384 = mem[96]
                                        idx = 0
                                        while idx < _9384:
                                            require idx < mem[96]
                                            require idx < mem[_8467]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8467 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[_8467 + 32 len 32 * _8466 + 1] = code.data[12049 len 32 * _8466 + 1]
                                        _9385 = mem[96]
                                        idx = 0
                                        while idx < _9385:
                                            require idx < mem[96]
                                            require idx < mem[_8467]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8467 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                    else:
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == arg1:
                            _6866 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if mem[_6866]:
                                mem[_6866 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6866]:
                                    mem[_6866 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6866]:
                                        mem[_6866 + 96] = ext_call.return_data[12 len 20]
                                        require ext_code.size(address(stor3))
                                        staticcall address(stor3).0x7b103999 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                gas gas_remaining wei
                                               args 'BancorNetwork'
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6866 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_6866 + 164] = arg3
                                        mem[_6866 + 132] = 64
                                        mem[_6866 + 196] = mem[_6866]
                                        mem[_6866 + 228 len floor32(mem[_6866])] = mem[_6866 + 32 len floor32(mem[_6866])]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_6866 + 196 len (32 * mem[_6866]) + 32]
                                        mem[_6866 + 128 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_6792 + 32] = ext_call.return_data[0]
                                        if 2 < mem[(32 * arg4.length) + 128]:
                                            mem[(32 * arg4.length) + 224] = _6792
                                            if 0 < mem[(32 * arg4.length) + 128]:
                                                if 0 < mem[(32 * arg4.length) + 128]:
                                                    idx = 1
                                                    s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                    t = 0
                                                    while idx < mem[(32 * arg4.length) + 128]:
                                                        require idx < mem[(32 * arg4.length) + 128]
                                                        if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                                            idx = idx + 1
                                                            s = s
                                                            t = t
                                                            continue 
                                                        require idx < mem[(32 * arg4.length) + 128]
                                                        require idx < mem[(32 * arg4.length) + 128]
                                                        idx = idx + 1
                                                        s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                                        t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                                        continue 
                                                    mem[_6866 + 128] = mem[96] + 1
                                                    mem[64] = _6866 + (32 * mem[96] + 1) + 160
                                                    if mem[96] + 1:
                                                        mem[_6866 + 160 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                    idx = 0
                                                    while idx < mem[96]:
                                                        require idx < mem[96]
                                                        require idx < mem[_6866 + 128]
                                                        require mem[(32 * idx) + 128] <= 2
                                                        mem[(32 * idx) + _6866 + 160] = mem[(32 * idx) + 128]
                                                        idx = idx + 1
                                                        continue 
                        else:
                            _6864 = mem[64]
                            mem[mem[64]] = 5
                            mem[64] = mem[64] + 192
                            if mem[_6864]:
                                mem[_6864 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6864]:
                                    mem[_6864 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6864]:
                                        mem[_6864 + 96] = ext_call.return_data[12 len 20]
                                        if 3 < mem[_6864]:
                                            mem[_6864 + 128] = arg2
                                            if 4 < mem[_6864]:
                                                mem[_6864 + 160] = arg1
                                                require ext_code.size(address(stor3))
                                                staticcall address(stor3).0x7b103999 with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                        gas gas_remaining wei
                                                       args 'BancorNetwork'
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_6864 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                mem[_6864 + 228] = arg3
                                                mem[_6864 + 196] = 64
                                                mem[_6864 + 260] = mem[_6864]
                                                mem[_6864 + 292 len floor32(mem[_6864])] = mem[_6864 + 32 len floor32(mem[_6864])]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 64, arg3, mem[_6864 + 260 len (32 * mem[_6864]) + 32]
                                                mem[_6864 + 192 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                mem[_6792 + 32] = ext_call.return_data[0]
                                                if 2 < mem[(32 * arg4.length) + 128]:
                                                    mem[(32 * arg4.length) + 224] = _6792
                                                    if 0 < mem[(32 * arg4.length) + 128]:
                                                        if 0 < mem[(32 * arg4.length) + 128]:
                                                            idx = 1
                                                            s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                            t = 0
                                                            while idx < mem[(32 * arg4.length) + 128]:
                                                                require idx < mem[(32 * arg4.length) + 128]
                                                                if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    t = t
                                                                    continue 
                                                                require idx < mem[(32 * arg4.length) + 128]
                                                                require idx < mem[(32 * arg4.length) + 128]
                                                                idx = idx + 1
                                                                s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                                                t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                                                continue 
                                                            mem[_6864 + 192] = mem[96] + 1
                                                            mem[64] = _6864 + (32 * mem[96] + 1) + 224
                                                            if mem[96] + 1:
                                                                mem[_6864 + 224 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                            idx = 0
                                                            while idx < mem[96]:
                                                                require idx < mem[96]
                                                                require idx < mem[_6864 + 192]
                                                                require mem[(32 * idx) + 128] <= 2
                                                                mem[(32 * idx) + _6864 + 224] = mem[(32 * idx) + 128]
                                                                idx = idx + 1
                                                                continue 
            else:
                mem[mem[64] + 4] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_5097 + 32] = ext_call.return_data[0]
                if 1 < mem[(32 * arg4.length) + 128]:
                    mem[(32 * arg4.length) + 192] = _5097
                    idx = 0
                    while idx < mem[96]:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] <= 2
                        if mem[(32 * idx) + 128] != 2:
                            idx = idx + 1
                            continue 
                        _6825 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6825] = 2
                        mem[_6825 + 32] = 0
                        require 2 < mem[(32 * arg4.length) + 128]
                        mem[(32 * arg4.length) + 224] = _6825
                        require 0 < mem[(32 * arg4.length) + 128]
                        require 0 < mem[(32 * arg4.length) + 128]
                        idx = 1
                        s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                        t = 0
                        while idx < mem[(32 * arg4.length) + 128]:
                            require idx < mem[(32 * arg4.length) + 128]
                            if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            require idx < mem[(32 * arg4.length) + 128]
                            require idx < mem[(32 * arg4.length) + 128]
                            idx = idx + 1
                            s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                            t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                            continue 
                        _8478 = mem[96]
                        _8479 = mem[64]
                        mem[mem[64]] = mem[96] + 1
                        mem[64] = mem[64] + (32 * _8478 + 1) + 32
                        if not _8478 + 1:
                            _9394 = mem[96]
                            idx = 0
                            while idx < _9394:
                                require idx < mem[96]
                                require idx < mem[_8479]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8479 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        else:
                            mem[_8479 + 32 len 32 * _8478 + 1] = code.data[12049 len 32 * _8478 + 1]
                            _9395 = mem[96]
                            idx = 0
                            while idx < _9395:
                                require idx < mem[96]
                                require idx < mem[_8479]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8479 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        revert
                    _6793 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6793] = 2
                    if not arg2:
                        mem[_6793 + 32] = 0
                        if 2 < mem[(32 * arg4.length) + 128]:
                            mem[(32 * arg4.length) + 224] = _6793
                            if 0 < mem[(32 * arg4.length) + 128]:
                                if 0 < mem[(32 * arg4.length) + 128]:
                                    idx = 1
                                    s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                    t = 0
                                    while idx < mem[(32 * arg4.length) + 128]:
                                        require idx < mem[(32 * arg4.length) + 128]
                                        if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            continue 
                                        require idx < mem[(32 * arg4.length) + 128]
                                        require idx < mem[(32 * arg4.length) + 128]
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                        t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                        continue 
                                    _8474 = mem[96]
                                    _8475 = mem[64]
                                    mem[mem[64]] = mem[96] + 1
                                    mem[64] = mem[64] + (32 * _8474 + 1) + 32
                                    if not _8474 + 1:
                                        _9390 = mem[96]
                                        idx = 0
                                        while idx < _9390:
                                            require idx < mem[96]
                                            require idx < mem[_8475]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8475 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[_8475 + 32 len 32 * _8474 + 1] = code.data[12049 len 32 * _8474 + 1]
                                        _9391 = mem[96]
                                        idx = 0
                                        while idx < _9391:
                                            require idx < mem[96]
                                            require idx < mem[_8475]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8475 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                    else:
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == arg1:
                            _6870 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if mem[_6870]:
                                mem[_6870 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6870]:
                                    mem[_6870 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6870]:
                                        mem[_6870 + 96] = ext_call.return_data[12 len 20]
                                        require ext_code.size(address(stor3))
                                        staticcall address(stor3).0x7b103999 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                gas gas_remaining wei
                                               args 'BancorNetwork'
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6870 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_6870 + 164] = arg3
                                        mem[_6870 + 132] = 64
                                        mem[_6870 + 196] = mem[_6870]
                                        mem[_6870 + 228 len floor32(mem[_6870])] = mem[_6870 + 32 len floor32(mem[_6870])]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_6870 + 196 len (32 * mem[_6870]) + 32]
                                        mem[_6870 + 128 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_6793 + 32] = ext_call.return_data[0]
                                        if 2 < mem[(32 * arg4.length) + 128]:
                                            mem[(32 * arg4.length) + 224] = _6793
                                            if 0 < mem[(32 * arg4.length) + 128]:
                                                if 0 < mem[(32 * arg4.length) + 128]:
                                                    idx = 1
                                                    s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                    t = 0
                                                    while idx < mem[(32 * arg4.length) + 128]:
                                                        require idx < mem[(32 * arg4.length) + 128]
                                                        if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                                            idx = idx + 1
                                                            s = s
                                                            t = t
                                                            continue 
                                                        require idx < mem[(32 * arg4.length) + 128]
                                                        require idx < mem[(32 * arg4.length) + 128]
                                                        idx = idx + 1
                                                        s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                                        t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                                        continue 
                                                    mem[_6870 + 128] = mem[96] + 1
                                                    mem[64] = _6870 + (32 * mem[96] + 1) + 160
                                                    if mem[96] + 1:
                                                        mem[_6870 + 160 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                    idx = 0
                                                    while idx < mem[96]:
                                                        require idx < mem[96]
                                                        require idx < mem[_6870 + 128]
                                                        require mem[(32 * idx) + 128] <= 2
                                                        mem[(32 * idx) + _6870 + 160] = mem[(32 * idx) + 128]
                                                        idx = idx + 1
                                                        continue 
                        else:
                            _6868 = mem[64]
                            mem[mem[64]] = 5
                            mem[64] = mem[64] + 192
                            if mem[_6868]:
                                mem[_6868 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6868]:
                                    mem[_6868 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6868]:
                                        mem[_6868 + 96] = ext_call.return_data[12 len 20]
                                        if 3 < mem[_6868]:
                                            mem[_6868 + 128] = arg2
                                            if 4 < mem[_6868]:
                                                mem[_6868 + 160] = arg1
                                                require ext_code.size(address(stor3))
                                                staticcall address(stor3).0x7b103999 with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                        gas gas_remaining wei
                                                       args 'BancorNetwork'
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_6868 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                mem[_6868 + 228] = arg3
                                                mem[_6868 + 196] = 64
                                                mem[_6868 + 260] = mem[_6868]
                                                mem[_6868 + 292 len floor32(mem[_6868])] = mem[_6868 + 32 len floor32(mem[_6868])]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 64, arg3, mem[_6868 + 260 len (32 * mem[_6868]) + 32]
                                                mem[_6868 + 192 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                mem[_6793 + 32] = ext_call.return_data[0]
                                                if 2 < mem[(32 * arg4.length) + 128]:
                                                    mem[(32 * arg4.length) + 224] = _6793
                                                    if 0 < mem[(32 * arg4.length) + 128]:
                                                        if 0 < mem[(32 * arg4.length) + 128]:
                                                            idx = 1
                                                            s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                            t = 0
                                                            while idx < mem[(32 * arg4.length) + 128]:
                                                                require idx < mem[(32 * arg4.length) + 128]
                                                                if mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32] <= s:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    t = t
                                                                    continue 
                                                                require idx < mem[(32 * arg4.length) + 128]
                                                                require idx < mem[(32 * arg4.length) + 128]
                                                                idx = idx + 1
                                                                s = mem[mem[(32 * idx) + (32 * arg4.length) + 160] + 32]
                                                                t = mem[mem[(32 * idx) + (32 * arg4.length) + 160]]
                                                                continue 
                                                            mem[_6868 + 192] = mem[96] + 1
                                                            mem[64] = _6868 + (32 * mem[96] + 1) + 224
                                                            if mem[96] + 1:
                                                                mem[_6868 + 224 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                            idx = 0
                                                            while idx < mem[96]:
                                                                require idx < mem[96]
                                                                require idx < mem[_6868 + 192]
                                                                require mem[(32 * idx) + 128] <= 2
                                                                mem[(32 * idx) + _6868 + 224] = mem[(32 * idx) + 128]
                                                                idx = idx + 1
                                                                continue 
    revert
}

function sub_256d047c(?) {
    require calldata.size - 4 >= 160
    require arg5 <= 4294967296
    require arg5 + 36 <= calldata.size
    require arg5.length <= 4294967296 and arg5 + (32 * arg5.length) + 36 <= calldata.size
    mem[96] = arg5.length
    mem[128 len 32 * arg5.length] = call.data[arg5 + 36 len 32 * arg5.length]
    if arg3 <= arg4:
        return 0
    mem[(32 * arg5.length) + 128] = 3
    mem[64] = (32 * arg5.length) + 320
    mem[(32 * arg5.length) + 256] = 0
    mem[(32 * arg5.length) + 288] = 0
    mem[var14001] = (32 * arg5.length) + 256
    s = var14001
    idx = var14002
    while idx - 1:
        mem[64] = mem[64] + 64
        mem[(32 * arg5.length) + 256] = 0
        mem[(32 * arg5.length) + 288] = 0
        mem[s + 32] = (32 * arg5.length) + 256
        s = s + 32
        idx = idx - 1
        continue 
    idx = 0
    while idx < mem[96]:
        require idx < mem[96]
        require mem[(32 * idx) + 128] <= 2
        if mem[(32 * idx) + 128]:
            idx = idx + 1
            continue 
        _3405 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3405] = 0
        mem[_3405 + 32] = 0
        require 0 < mem[(32 * arg5.length) + 128]
        mem[(32 * arg5.length) + 160] = _3405
        idx = 0
        while idx < mem[96]:
            require idx < mem[96]
            require mem[(32 * idx) + 128] <= 2
            if mem[(32 * idx) + 128] != 1:
                idx = idx + 1
                continue 
            _5115 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5115] = 1
            mem[_5115 + 32] = 0
            require 1 < mem[(32 * arg5.length) + 128]
            mem[(32 * arg5.length) + 192] = _5115
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                require mem[(32 * idx) + 128] <= 2
                if mem[(32 * idx) + 128] != 2:
                    idx = idx + 1
                    continue 
                _6855 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6855] = 2
                mem[_6855 + 32] = 0
                require 2 < mem[(32 * arg5.length) + 128]
                mem[(32 * arg5.length) + 224] = _6855
                require 0 < mem[(32 * arg5.length) + 128]
                require 0 < mem[(32 * arg5.length) + 128]
                idx = 1
                s = 0
                t = 0
                while idx < mem[(32 * arg5.length) + 128]:
                    require idx < mem[(32 * arg5.length) + 128]
                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                        idx = idx + 1
                        s = s
                        t = t
                        continue 
                    require idx < mem[(32 * arg5.length) + 128]
                    require idx < mem[(32 * arg5.length) + 128]
                    idx = idx + 1
                    s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                    t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                    continue 
                _8536 = mem[96]
                _8537 = mem[64]
                mem[mem[64]] = mem[96] + 1
                mem[64] = mem[64] + (32 * _8536 + 1) + 32
                if not _8536 + 1:
                    _9438 = mem[96]
                    idx = 0
                    while idx < _9438:
                        require idx < mem[96]
                        require idx < mem[_8537]
                        require mem[(32 * idx) + 128] <= 2
                        mem[(32 * idx) + _8537 + 32] = mem[(32 * idx) + 128]
                        idx = idx + 1
                        continue 
                else:
                    mem[_8537 + 32 len 32 * _8536 + 1] = code.data[12049 len 32 * _8536 + 1]
                    _9439 = mem[96]
                    idx = 0
                    while idx < _9439:
                        require idx < mem[96]
                        require idx < mem[_8537]
                        require mem[(32 * idx) + 128] <= 2
                        mem[(32 * idx) + _8537 + 32] = mem[(32 * idx) + 128]
                        idx = idx + 1
                        continue 
                revert
            _6802 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6802] = 2
            if not arg2:
                mem[_6802 + 32] = 0
                if 2 < mem[(32 * arg5.length) + 128]:
                    mem[(32 * arg5.length) + 224] = _6802
                    if 0 < mem[(32 * arg5.length) + 128]:
                        if 0 < mem[(32 * arg5.length) + 128]:
                            idx = 1
                            s = 0
                            t = 0
                            while idx < mem[(32 * arg5.length) + 128]:
                                require idx < mem[(32 * arg5.length) + 128]
                                if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                    idx = idx + 1
                                    s = s
                                    t = t
                                    continue 
                                require idx < mem[(32 * arg5.length) + 128]
                                require idx < mem[(32 * arg5.length) + 128]
                                idx = idx + 1
                                s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                continue 
                            _8532 = mem[96]
                            _8533 = mem[64]
                            mem[mem[64]] = mem[96] + 1
                            mem[64] = mem[64] + (32 * _8532 + 1) + 32
                            if not _8532 + 1:
                                _9434 = mem[96]
                                idx = 0
                                while idx < _9434:
                                    require idx < mem[96]
                                    require idx < mem[_8533]
                                    require mem[(32 * idx) + 128] <= 2
                                    mem[(32 * idx) + _8533 + 32] = mem[(32 * idx) + 128]
                                    idx = idx + 1
                                    continue 
                            else:
                                mem[_8533 + 32 len 32 * _8532 + 1] = code.data[12049 len 32 * _8532 + 1]
                                _9435 = mem[96]
                                idx = 0
                                while idx < _9435:
                                    require idx < mem[96]
                                    require idx < mem[_8533]
                                    require mem[(32 * idx) + 128] <= 2
                                    mem[(32 * idx) + _8533 + 32] = mem[(32 * idx) + 128]
                                    idx = idx + 1
                                    continue 
            else:
                require ext_code.size(address(stor3))
                staticcall address(stor3).token() with:
                        gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if address(ext_call.return_data[0]) == arg1:
                    _6900 = mem[64]
                    mem[mem[64]] = 3
                    mem[64] = mem[64] + 128
                    if mem[_6900]:
                        mem[_6900 + 32] = stor4
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 1 < mem[_6900]:
                            mem[_6900 + 64] = ext_call.return_data[12 len 20]
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 < mem[_6900]:
                                mem[_6900 + 96] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).0x7b103999 with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                        gas gas_remaining wei
                                       args 'BancorNetwork'
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                mem[_6900 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                mem[_6900 + 164] = arg3
                                mem[_6900 + 132] = 64
                                mem[_6900 + 196] = mem[_6900]
                                idx = 0
                                while idx < 32 * mem[_6900]:
                                    mem[idx + _6900 + 228] = mem[idx + _6900 + 32]
                                    idx = idx + 32
                                    continue 
                                require ext_code.size(address(ext_call.return_data[0]))
                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                        gas gas_remaining wei
                                       args 64, arg3, mem[_6900 + 196 len (32 * mem[_6900]) + 32]
                                mem[_6900 + 128 len 64] = ext_call.return_data[0 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 64
                                mem[_6802 + 32] = ext_call.return_data[0]
                                if 2 < mem[(32 * arg5.length) + 128]:
                                    mem[(32 * arg5.length) + 224] = _6802
                                    if 0 < mem[(32 * arg5.length) + 128]:
                                        if 0 < mem[(32 * arg5.length) + 128]:
                                            idx = 1
                                            s = mem[mem[(32 * arg5.length) + 160] + 32]
                                            t = mem[mem[(32 * arg5.length) + 160]]
                                            while idx < mem[(32 * arg5.length) + 128]:
                                                require idx < mem[(32 * arg5.length) + 128]
                                                if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                    idx = idx + 1
                                                    s = s
                                                    t = t
                                                    continue 
                                                require idx < mem[(32 * arg5.length) + 128]
                                                require idx < mem[(32 * arg5.length) + 128]
                                                idx = idx + 1
                                                s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                continue 
                                            mem[_6900 + 128] = mem[96] + 1
                                            mem[64] = _6900 + (32 * mem[96] + 1) + 160
                                            if mem[96] + 1:
                                                mem[_6900 + 160 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                            idx = 0
                                            while idx < mem[96]:
                                                require idx < mem[96]
                                                require idx < mem[_6900 + 128]
                                                require mem[(32 * idx) + 128] <= 2
                                                mem[(32 * idx) + _6900 + 160] = mem[(32 * idx) + 128]
                                                idx = idx + 1
                                                continue 
                else:
                    _6898 = mem[64]
                    mem[mem[64]] = 5
                    mem[64] = mem[64] + 192
                    if mem[_6898]:
                        mem[_6898 + 32] = stor4
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if 1 < mem[_6898]:
                            mem[_6898 + 64] = ext_call.return_data[12 len 20]
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 2 < mem[_6898]:
                                mem[_6898 + 96] = ext_call.return_data[12 len 20]
                                if 3 < mem[_6898]:
                                    mem[_6898 + 128] = arg2
                                    if 4 < mem[_6898]:
                                        mem[_6898 + 160] = arg1
                                        require ext_code.size(address(stor3))
                                        staticcall address(stor3).0x7b103999 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                gas gas_remaining wei
                                               args 'BancorNetwork'
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6898 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_6898 + 228] = arg3
                                        mem[_6898 + 196] = 64
                                        mem[_6898 + 260] = mem[_6898]
                                        idx = 0
                                        while idx < 32 * mem[_6898]:
                                            mem[idx + _6898 + 292] = mem[idx + _6898 + 32]
                                            idx = idx + 32
                                            continue 
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_6898 + 260 len (32 * mem[_6898]) + 32]
                                        mem[_6898 + 192 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_6802 + 32] = ext_call.return_data[0]
                                        if 2 < mem[(32 * arg5.length) + 128]:
                                            mem[(32 * arg5.length) + 224] = _6802
                                            if 0 < mem[(32 * arg5.length) + 128]:
                                                if 0 < mem[(32 * arg5.length) + 128]:
                                                    idx = 1
                                                    s = mem[mem[(32 * arg5.length) + 160] + 32]
                                                    t = mem[mem[(32 * arg5.length) + 160]]
                                                    while idx < mem[(32 * arg5.length) + 128]:
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                            idx = idx + 1
                                                            s = s
                                                            t = t
                                                            continue 
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        idx = idx + 1
                                                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                        continue 
                                                    mem[_6898 + 192] = mem[96] + 1
                                                    mem[64] = _6898 + (32 * mem[96] + 1) + 224
                                                    if mem[96] + 1:
                                                        mem[_6898 + 224 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                    idx = 0
                                                    while idx < mem[96]:
                                                        require idx < mem[96]
                                                        require idx < mem[_6898 + 192]
                                                        require mem[(32 * idx) + 128] <= 2
                                                        mem[(32 * idx) + _6898 + 224] = mem[(32 * idx) + 128]
                                                        idx = idx + 1
                                                        continue 
            revert
        _5101 = mem[64]
        mem[64] = mem[64] + 64
        mem[_5101] = 1
        mem[mem[64] + 4] = arg1
        require ext_code.size(stor2)
        staticcall stor2.getExchange(address arg1) with:
                gas gas_remaining wei
               args address(arg1)
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not address(ext_call.return_data[0]):
            mem[_5101 + 32] = 0
            if 1 < mem[(32 * arg5.length) + 128]:
                mem[(32 * arg5.length) + 192] = _5101
                idx = 0
                while idx < mem[96]:
                    require idx < mem[96]
                    require mem[(32 * idx) + 128] <= 2
                    if mem[(32 * idx) + 128] != 2:
                        idx = idx + 1
                        continue 
                    _6847 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6847] = 2
                    mem[_6847 + 32] = 0
                    require 2 < mem[(32 * arg5.length) + 128]
                    mem[(32 * arg5.length) + 224] = _6847
                    require 0 < mem[(32 * arg5.length) + 128]
                    require 0 < mem[(32 * arg5.length) + 128]
                    idx = 1
                    s = 0
                    t = 0
                    while idx < mem[(32 * arg5.length) + 128]:
                        require idx < mem[(32 * arg5.length) + 128]
                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        require idx < mem[(32 * arg5.length) + 128]
                        require idx < mem[(32 * arg5.length) + 128]
                        idx = idx + 1
                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                        continue 
                    _8520 = mem[96]
                    _8521 = mem[64]
                    mem[mem[64]] = mem[96] + 1
                    mem[64] = mem[64] + (32 * _8520 + 1) + 32
                    if not _8520 + 1:
                        _9426 = mem[96]
                        idx = 0
                        while idx < _9426:
                            require idx < mem[96]
                            require idx < mem[_8521]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8521 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    else:
                        mem[_8521 + 32 len 32 * _8520 + 1] = code.data[12049 len 32 * _8520 + 1]
                        _9427 = mem[96]
                        idx = 0
                        while idx < _9427:
                            require idx < mem[96]
                            require idx < mem[_8521]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8521 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    revert
                _6800 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6800] = 2
                if not arg2:
                    mem[_6800 + 32] = 0
                    if 2 < mem[(32 * arg5.length) + 128]:
                        mem[(32 * arg5.length) + 224] = _6800
                        if 0 < mem[(32 * arg5.length) + 128]:
                            if 0 < mem[(32 * arg5.length) + 128]:
                                idx = 1
                                s = 0
                                t = 0
                                while idx < mem[(32 * arg5.length) + 128]:
                                    require idx < mem[(32 * arg5.length) + 128]
                                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        continue 
                                    require idx < mem[(32 * arg5.length) + 128]
                                    require idx < mem[(32 * arg5.length) + 128]
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                    t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                    continue 
                                _8516 = mem[96]
                                _8517 = mem[64]
                                mem[mem[64]] = mem[96] + 1
                                mem[64] = mem[64] + (32 * _8516 + 1) + 32
                                if not _8516 + 1:
                                    _9422 = mem[96]
                                    idx = 0
                                    while idx < _9422:
                                        require idx < mem[96]
                                        require idx < mem[_8517]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8517 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[_8517 + 32 len 32 * _8516 + 1] = code.data[12049 len 32 * _8516 + 1]
                                    _9423 = mem[96]
                                    idx = 0
                                    while idx < _9423:
                                        require idx < mem[96]
                                        require idx < mem[_8517]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8517 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                else:
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == arg1:
                        _6892 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if mem[_6892]:
                            mem[_6892 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6892]:
                                mem[_6892 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6892]:
                                    mem[_6892 + 96] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).0x7b103999 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                            gas gas_remaining wei
                                           args 'BancorNetwork'
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_6892 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                    mem[_6892 + 164] = arg3
                                    mem[_6892 + 132] = 64
                                    mem[_6892 + 196] = mem[_6892]
                                    idx = 0
                                    while idx < 32 * mem[_6892]:
                                        mem[idx + _6892 + 228] = mem[idx + _6892 + 32]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                            gas gas_remaining wei
                                           args 64, arg3, mem[_6892 + 196 len (32 * mem[_6892]) + 32]
                                    mem[_6892 + 128 len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    mem[_6800 + 32] = ext_call.return_data[0]
                                    if 2 < mem[(32 * arg5.length) + 128]:
                                        mem[(32 * arg5.length) + 224] = _6800
                                        if 0 < mem[(32 * arg5.length) + 128]:
                                            if 0 < mem[(32 * arg5.length) + 128]:
                                                idx = 1
                                                s = mem[mem[(32 * arg5.length) + 160] + 32]
                                                t = mem[mem[(32 * arg5.length) + 160]]
                                                while idx < mem[(32 * arg5.length) + 128]:
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                        idx = idx + 1
                                                        s = s
                                                        t = t
                                                        continue 
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    idx = idx + 1
                                                    s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                    t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                    continue 
                                                mem[_6892 + 128] = mem[96] + 1
                                                mem[64] = _6892 + (32 * mem[96] + 1) + 160
                                                if mem[96] + 1:
                                                    mem[_6892 + 160 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                idx = 0
                                                while idx < mem[96]:
                                                    require idx < mem[96]
                                                    require idx < mem[_6892 + 128]
                                                    require mem[(32 * idx) + 128] <= 2
                                                    mem[(32 * idx) + _6892 + 160] = mem[(32 * idx) + 128]
                                                    idx = idx + 1
                                                    continue 
                    else:
                        _6890 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        if mem[_6890]:
                            mem[_6890 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6890]:
                                mem[_6890 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6890]:
                                    mem[_6890 + 96] = ext_call.return_data[12 len 20]
                                    if 3 < mem[_6890]:
                                        mem[_6890 + 128] = arg2
                                        if 4 < mem[_6890]:
                                            mem[_6890 + 160] = arg1
                                            require ext_code.size(address(stor3))
                                            staticcall address(stor3).0x7b103999 with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                    gas gas_remaining wei
                                                   args 'BancorNetwork'
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6890 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                            mem[_6890 + 228] = arg3
                                            mem[_6890 + 196] = 64
                                            mem[_6890 + 260] = mem[_6890]
                                            idx = 0
                                            while idx < 32 * mem[_6890]:
                                                mem[idx + _6890 + 292] = mem[idx + _6890 + 32]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 64, arg3, mem[_6890 + 260 len (32 * mem[_6890]) + 32]
                                            mem[_6890 + 192 len 64] = ext_call.return_data[0 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            mem[_6800 + 32] = ext_call.return_data[0]
                                            if 2 < mem[(32 * arg5.length) + 128]:
                                                mem[(32 * arg5.length) + 224] = _6800
                                                if 0 < mem[(32 * arg5.length) + 128]:
                                                    if 0 < mem[(32 * arg5.length) + 128]:
                                                        idx = 1
                                                        s = mem[mem[(32 * arg5.length) + 160] + 32]
                                                        t = mem[mem[(32 * arg5.length) + 160]]
                                                        while idx < mem[(32 * arg5.length) + 128]:
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                                idx = idx + 1
                                                                s = s
                                                                t = t
                                                                continue 
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            idx = idx + 1
                                                            s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                            t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                            continue 
                                                        mem[_6890 + 192] = mem[96] + 1
                                                        mem[64] = _6890 + (32 * mem[96] + 1) + 224
                                                        if mem[96] + 1:
                                                            mem[_6890 + 224 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                        idx = 0
                                                        while idx < mem[96]:
                                                            require idx < mem[96]
                                                            require idx < mem[_6890 + 192]
                                                            require mem[(32 * idx) + 128] <= 2
                                                            mem[(32 * idx) + _6890 + 224] = mem[(32 * idx) + 128]
                                                            idx = idx + 1
                                                            continue 
        else:
            mem[mem[64] + 4] = arg3
            require ext_code.size(address(ext_call.return_data[0]))
            staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                    gas gas_remaining wei
                   args arg3
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            mem[_5101 + 32] = ext_call.return_data[0]
            if 1 < mem[(32 * arg5.length) + 128]:
                mem[(32 * arg5.length) + 192] = _5101
                idx = 0
                while idx < mem[96]:
                    require idx < mem[96]
                    require mem[(32 * idx) + 128] <= 2
                    if mem[(32 * idx) + 128] != 2:
                        idx = idx + 1
                        continue 
                    _6851 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6851] = 2
                    mem[_6851 + 32] = 0
                    require 2 < mem[(32 * arg5.length) + 128]
                    mem[(32 * arg5.length) + 224] = _6851
                    require 0 < mem[(32 * arg5.length) + 128]
                    require 0 < mem[(32 * arg5.length) + 128]
                    idx = 1
                    s = 0
                    t = 0
                    while idx < mem[(32 * arg5.length) + 128]:
                        require idx < mem[(32 * arg5.length) + 128]
                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        require idx < mem[(32 * arg5.length) + 128]
                        require idx < mem[(32 * arg5.length) + 128]
                        idx = idx + 1
                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                        continue 
                    _8528 = mem[96]
                    _8529 = mem[64]
                    mem[mem[64]] = mem[96] + 1
                    mem[64] = mem[64] + (32 * _8528 + 1) + 32
                    if not _8528 + 1:
                        _9432 = mem[96]
                        idx = 0
                        while idx < _9432:
                            require idx < mem[96]
                            require idx < mem[_8529]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8529 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    else:
                        mem[_8529 + 32 len 32 * _8528 + 1] = code.data[12049 len 32 * _8528 + 1]
                        _9433 = mem[96]
                        idx = 0
                        while idx < _9433:
                            require idx < mem[96]
                            require idx < mem[_8529]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8529 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    revert
                _6801 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6801] = 2
                if not arg2:
                    mem[_6801 + 32] = 0
                    if 2 < mem[(32 * arg5.length) + 128]:
                        mem[(32 * arg5.length) + 224] = _6801
                        if 0 < mem[(32 * arg5.length) + 128]:
                            if 0 < mem[(32 * arg5.length) + 128]:
                                idx = 1
                                s = 0
                                t = 0
                                while idx < mem[(32 * arg5.length) + 128]:
                                    require idx < mem[(32 * arg5.length) + 128]
                                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        continue 
                                    require idx < mem[(32 * arg5.length) + 128]
                                    require idx < mem[(32 * arg5.length) + 128]
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                    t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                    continue 
                                _8524 = mem[96]
                                _8525 = mem[64]
                                mem[mem[64]] = mem[96] + 1
                                mem[64] = mem[64] + (32 * _8524 + 1) + 32
                                if not _8524 + 1:
                                    _9428 = mem[96]
                                    idx = 0
                                    while idx < _9428:
                                        require idx < mem[96]
                                        require idx < mem[_8525]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8525 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[_8525 + 32 len 32 * _8524 + 1] = code.data[12049 len 32 * _8524 + 1]
                                    _9429 = mem[96]
                                    idx = 0
                                    while idx < _9429:
                                        require idx < mem[96]
                                        require idx < mem[_8525]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8525 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                else:
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == arg1:
                        _6896 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if mem[_6896]:
                            mem[_6896 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6896]:
                                mem[_6896 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6896]:
                                    mem[_6896 + 96] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).0x7b103999 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                            gas gas_remaining wei
                                           args 'BancorNetwork'
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_6896 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                    mem[_6896 + 164] = arg3
                                    mem[_6896 + 132] = 64
                                    mem[_6896 + 196] = mem[_6896]
                                    idx = 0
                                    while idx < 32 * mem[_6896]:
                                        mem[idx + _6896 + 228] = mem[idx + _6896 + 32]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                            gas gas_remaining wei
                                           args 64, arg3, mem[_6896 + 196 len (32 * mem[_6896]) + 32]
                                    mem[_6896 + 128 len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    mem[_6801 + 32] = ext_call.return_data[0]
                                    if 2 < mem[(32 * arg5.length) + 128]:
                                        mem[(32 * arg5.length) + 224] = _6801
                                        if 0 < mem[(32 * arg5.length) + 128]:
                                            if 0 < mem[(32 * arg5.length) + 128]:
                                                idx = 1
                                                s = mem[mem[(32 * arg5.length) + 160] + 32]
                                                t = mem[mem[(32 * arg5.length) + 160]]
                                                while idx < mem[(32 * arg5.length) + 128]:
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                        idx = idx + 1
                                                        s = s
                                                        t = t
                                                        continue 
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    idx = idx + 1
                                                    s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                    t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                    continue 
                                                mem[_6896 + 128] = mem[96] + 1
                                                mem[64] = _6896 + (32 * mem[96] + 1) + 160
                                                if mem[96] + 1:
                                                    mem[_6896 + 160 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                idx = 0
                                                while idx < mem[96]:
                                                    require idx < mem[96]
                                                    require idx < mem[_6896 + 128]
                                                    require mem[(32 * idx) + 128] <= 2
                                                    mem[(32 * idx) + _6896 + 160] = mem[(32 * idx) + 128]
                                                    idx = idx + 1
                                                    continue 
                    else:
                        _6894 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        if mem[_6894]:
                            mem[_6894 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6894]:
                                mem[_6894 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6894]:
                                    mem[_6894 + 96] = ext_call.return_data[12 len 20]
                                    if 3 < mem[_6894]:
                                        mem[_6894 + 128] = arg2
                                        if 4 < mem[_6894]:
                                            mem[_6894 + 160] = arg1
                                            require ext_code.size(address(stor3))
                                            staticcall address(stor3).0x7b103999 with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                    gas gas_remaining wei
                                                   args 'BancorNetwork'
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6894 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                            mem[_6894 + 228] = arg3
                                            mem[_6894 + 196] = 64
                                            mem[_6894 + 260] = mem[_6894]
                                            idx = 0
                                            while idx < 32 * mem[_6894]:
                                                mem[idx + _6894 + 292] = mem[idx + _6894 + 32]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 64, arg3, mem[_6894 + 260 len (32 * mem[_6894]) + 32]
                                            mem[_6894 + 192 len 64] = ext_call.return_data[0 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            mem[_6801 + 32] = ext_call.return_data[0]
                                            if 2 < mem[(32 * arg5.length) + 128]:
                                                mem[(32 * arg5.length) + 224] = _6801
                                                if 0 < mem[(32 * arg5.length) + 128]:
                                                    if 0 < mem[(32 * arg5.length) + 128]:
                                                        idx = 1
                                                        s = mem[mem[(32 * arg5.length) + 160] + 32]
                                                        t = mem[mem[(32 * arg5.length) + 160]]
                                                        while idx < mem[(32 * arg5.length) + 128]:
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                                idx = idx + 1
                                                                s = s
                                                                t = t
                                                                continue 
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            idx = idx + 1
                                                            s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                            t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                            continue 
                                                        mem[_6894 + 192] = mem[96] + 1
                                                        mem[64] = _6894 + (32 * mem[96] + 1) + 224
                                                        if mem[96] + 1:
                                                            mem[_6894 + 224 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                        idx = 0
                                                        while idx < mem[96]:
                                                            require idx < mem[96]
                                                            require idx < mem[_6894 + 192]
                                                            require mem[(32 * idx) + 128] <= 2
                                                            mem[(32 * idx) + _6894 + 224] = mem[(32 * idx) + 128]
                                                            idx = idx + 1
                                                            continue 
        revert
    _3399 = mem[64]
    mem[64] = mem[64] + 64
    mem[_3399] = 0
    mem[mem[64] + 36] = arg1
    mem[mem[64] + 68] = arg3
    require ext_code.size(stor1)
    staticcall stor1.getExpectedRate(address arg1, address arg2, uint256 arg3) with:
            gas gas_remaining wei
           args 0xeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee, address(arg1), arg3
    mem[mem[64] len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if not ext_call.return_data[32]:
        mem[_3399 + 32] = 0
        if 0 < mem[(32 * arg5.length) + 128]:
            mem[(32 * arg5.length) + 160] = _3399
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                require mem[(32 * idx) + 128] <= 2
                if mem[(32 * idx) + 128] != 1:
                    idx = idx + 1
                    continue 
                _5112 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5112] = 1
                mem[_5112 + 32] = 0
                require 1 < mem[(32 * arg5.length) + 128]
                mem[(32 * arg5.length) + 192] = _5112
                idx = 0
                while idx < mem[96]:
                    require idx < mem[96]
                    require mem[(32 * idx) + 128] <= 2
                    if mem[(32 * idx) + 128] != 2:
                        idx = idx + 1
                        continue 
                    _6843 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6843] = 2
                    mem[_6843 + 32] = 0
                    require 2 < mem[(32 * arg5.length) + 128]
                    mem[(32 * arg5.length) + 224] = _6843
                    require 0 < mem[(32 * arg5.length) + 128]
                    require 0 < mem[(32 * arg5.length) + 128]
                    idx = 1
                    s = 0
                    t = 0
                    while idx < mem[(32 * arg5.length) + 128]:
                        require idx < mem[(32 * arg5.length) + 128]
                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        require idx < mem[(32 * arg5.length) + 128]
                        require idx < mem[(32 * arg5.length) + 128]
                        idx = idx + 1
                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                        continue 
                    _8512 = mem[96]
                    _8513 = mem[64]
                    mem[mem[64]] = mem[96] + 1
                    mem[64] = mem[64] + (32 * _8512 + 1) + 32
                    if not _8512 + 1:
                        _9420 = mem[96]
                        idx = 0
                        while idx < _9420:
                            require idx < mem[96]
                            require idx < mem[_8513]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8513 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    else:
                        mem[_8513 + 32 len 32 * _8512 + 1] = code.data[12049 len 32 * _8512 + 1]
                        _9421 = mem[96]
                        idx = 0
                        while idx < _9421:
                            require idx < mem[96]
                            require idx < mem[_8513]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8513 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    revert
                _6799 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6799] = 2
                if not arg2:
                    mem[_6799 + 32] = 0
                    if 2 < mem[(32 * arg5.length) + 128]:
                        mem[(32 * arg5.length) + 224] = _6799
                        if 0 < mem[(32 * arg5.length) + 128]:
                            if 0 < mem[(32 * arg5.length) + 128]:
                                idx = 1
                                s = 0
                                t = 0
                                while idx < mem[(32 * arg5.length) + 128]:
                                    require idx < mem[(32 * arg5.length) + 128]
                                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        continue 
                                    require idx < mem[(32 * arg5.length) + 128]
                                    require idx < mem[(32 * arg5.length) + 128]
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                    t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                    continue 
                                _8508 = mem[96]
                                _8509 = mem[64]
                                mem[mem[64]] = mem[96] + 1
                                mem[64] = mem[64] + (32 * _8508 + 1) + 32
                                if not _8508 + 1:
                                    _9416 = mem[96]
                                    idx = 0
                                    while idx < _9416:
                                        require idx < mem[96]
                                        require idx < mem[_8509]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8509 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[_8509 + 32 len 32 * _8508 + 1] = code.data[12049 len 32 * _8508 + 1]
                                    _9417 = mem[96]
                                    idx = 0
                                    while idx < _9417:
                                        require idx < mem[96]
                                        require idx < mem[_8509]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8509 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                else:
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == arg1:
                        _6888 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if mem[_6888]:
                            mem[_6888 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6888]:
                                mem[_6888 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6888]:
                                    mem[_6888 + 96] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).0x7b103999 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                            gas gas_remaining wei
                                           args 'BancorNetwork'
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_6888 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                    mem[_6888 + 164] = arg3
                                    mem[_6888 + 132] = 64
                                    mem[_6888 + 196] = mem[_6888]
                                    idx = 0
                                    while idx < 32 * mem[_6888]:
                                        mem[idx + _6888 + 228] = mem[idx + _6888 + 32]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                            gas gas_remaining wei
                                           args 64, arg3, mem[_6888 + 196 len (32 * mem[_6888]) + 32]
                                    mem[_6888 + 128 len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    mem[_6799 + 32] = ext_call.return_data[0]
                                    if 2 < mem[(32 * arg5.length) + 128]:
                                        mem[(32 * arg5.length) + 224] = _6799
                                        if 0 < mem[(32 * arg5.length) + 128]:
                                            if 0 < mem[(32 * arg5.length) + 128]:
                                                idx = 1
                                                s = mem[mem[(32 * arg5.length) + 160] + 32]
                                                t = mem[mem[(32 * arg5.length) + 160]]
                                                while idx < mem[(32 * arg5.length) + 128]:
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                        idx = idx + 1
                                                        s = s
                                                        t = t
                                                        continue 
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    idx = idx + 1
                                                    s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                    t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                    continue 
                                                mem[_6888 + 128] = mem[96] + 1
                                                mem[64] = _6888 + (32 * mem[96] + 1) + 160
                                                if mem[96] + 1:
                                                    mem[_6888 + 160 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                idx = 0
                                                while idx < mem[96]:
                                                    require idx < mem[96]
                                                    require idx < mem[_6888 + 128]
                                                    require mem[(32 * idx) + 128] <= 2
                                                    mem[(32 * idx) + _6888 + 160] = mem[(32 * idx) + 128]
                                                    idx = idx + 1
                                                    continue 
                    else:
                        _6886 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        if mem[_6886]:
                            mem[_6886 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6886]:
                                mem[_6886 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6886]:
                                    mem[_6886 + 96] = ext_call.return_data[12 len 20]
                                    if 3 < mem[_6886]:
                                        mem[_6886 + 128] = arg2
                                        if 4 < mem[_6886]:
                                            mem[_6886 + 160] = arg1
                                            require ext_code.size(address(stor3))
                                            staticcall address(stor3).0x7b103999 with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                    gas gas_remaining wei
                                                   args 'BancorNetwork'
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6886 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                            mem[_6886 + 228] = arg3
                                            mem[_6886 + 196] = 64
                                            mem[_6886 + 260] = mem[_6886]
                                            idx = 0
                                            while idx < 32 * mem[_6886]:
                                                mem[idx + _6886 + 292] = mem[idx + _6886 + 32]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 64, arg3, mem[_6886 + 260 len (32 * mem[_6886]) + 32]
                                            mem[_6886 + 192 len 64] = ext_call.return_data[0 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            mem[_6799 + 32] = ext_call.return_data[0]
                                            if 2 < mem[(32 * arg5.length) + 128]:
                                                mem[(32 * arg5.length) + 224] = _6799
                                                if 0 < mem[(32 * arg5.length) + 128]:
                                                    if 0 < mem[(32 * arg5.length) + 128]:
                                                        idx = 1
                                                        s = mem[mem[(32 * arg5.length) + 160] + 32]
                                                        t = mem[mem[(32 * arg5.length) + 160]]
                                                        while idx < mem[(32 * arg5.length) + 128]:
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                                idx = idx + 1
                                                                s = s
                                                                t = t
                                                                continue 
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            idx = idx + 1
                                                            s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                            t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                            continue 
                                                        mem[_6886 + 192] = mem[96] + 1
                                                        mem[64] = _6886 + (32 * mem[96] + 1) + 224
                                                        if mem[96] + 1:
                                                            mem[_6886 + 224 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                        idx = 0
                                                        while idx < mem[96]:
                                                            require idx < mem[96]
                                                            require idx < mem[_6886 + 192]
                                                            require mem[(32 * idx) + 128] <= 2
                                                            mem[(32 * idx) + _6886 + 224] = mem[(32 * idx) + 128]
                                                            idx = idx + 1
                                                            continue 
                revert
            _5100 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5100] = 1
            mem[mem[64] + 4] = arg1
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                mem[_5100 + 32] = 0
                if 1 < mem[(32 * arg5.length) + 128]:
                    mem[(32 * arg5.length) + 192] = _5100
                    idx = 0
                    while idx < mem[96]:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] <= 2
                        if mem[(32 * idx) + 128] != 2:
                            idx = idx + 1
                            continue 
                        _6835 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6835] = 2
                        mem[_6835 + 32] = 0
                        require 2 < mem[(32 * arg5.length) + 128]
                        mem[(32 * arg5.length) + 224] = _6835
                        require 0 < mem[(32 * arg5.length) + 128]
                        require 0 < mem[(32 * arg5.length) + 128]
                        idx = 1
                        s = 0
                        t = 0
                        while idx < mem[(32 * arg5.length) + 128]:
                            require idx < mem[(32 * arg5.length) + 128]
                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            require idx < mem[(32 * arg5.length) + 128]
                            require idx < mem[(32 * arg5.length) + 128]
                            idx = idx + 1
                            s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                            t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                            continue 
                        _8496 = mem[96]
                        _8497 = mem[64]
                        mem[mem[64]] = mem[96] + 1
                        mem[64] = mem[64] + (32 * _8496 + 1) + 32
                        if not _8496 + 1:
                            _9408 = mem[96]
                            idx = 0
                            while idx < _9408:
                                require idx < mem[96]
                                require idx < mem[_8497]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8497 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        else:
                            mem[_8497 + 32 len 32 * _8496 + 1] = code.data[12049 len 32 * _8496 + 1]
                            _9409 = mem[96]
                            idx = 0
                            while idx < _9409:
                                require idx < mem[96]
                                require idx < mem[_8497]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8497 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        revert
                    _6797 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6797] = 2
                    if not arg2:
                        mem[_6797 + 32] = 0
                        if 2 < mem[(32 * arg5.length) + 128]:
                            mem[(32 * arg5.length) + 224] = _6797
                            if 0 < mem[(32 * arg5.length) + 128]:
                                if 0 < mem[(32 * arg5.length) + 128]:
                                    idx = 1
                                    s = 0
                                    t = 0
                                    while idx < mem[(32 * arg5.length) + 128]:
                                        require idx < mem[(32 * arg5.length) + 128]
                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            continue 
                                        require idx < mem[(32 * arg5.length) + 128]
                                        require idx < mem[(32 * arg5.length) + 128]
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                        continue 
                                    _8492 = mem[96]
                                    _8493 = mem[64]
                                    mem[mem[64]] = mem[96] + 1
                                    mem[64] = mem[64] + (32 * _8492 + 1) + 32
                                    if not _8492 + 1:
                                        _9404 = mem[96]
                                        idx = 0
                                        while idx < _9404:
                                            require idx < mem[96]
                                            require idx < mem[_8493]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8493 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[_8493 + 32 len 32 * _8492 + 1] = code.data[12049 len 32 * _8492 + 1]
                                        _9405 = mem[96]
                                        idx = 0
                                        while idx < _9405:
                                            require idx < mem[96]
                                            require idx < mem[_8493]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8493 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                    else:
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == arg1:
                            _6880 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if mem[_6880]:
                                mem[_6880 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6880]:
                                    mem[_6880 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6880]:
                                        mem[_6880 + 96] = ext_call.return_data[12 len 20]
                                        require ext_code.size(address(stor3))
                                        staticcall address(stor3).0x7b103999 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                gas gas_remaining wei
                                               args 'BancorNetwork'
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6880 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_6880 + 164] = arg3
                                        mem[_6880 + 132] = 64
                                        mem[_6880 + 196] = mem[_6880]
                                        mem[_6880 + 228 len floor32(mem[_6880])] = mem[_6880 + 32 len floor32(mem[_6880])]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_6880 + 196 len (32 * mem[_6880]) + 32]
                                        mem[_6880 + 128 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_6797 + 32] = ext_call.return_data[0]
                                        if 2 < mem[(32 * arg5.length) + 128]:
                                            mem[(32 * arg5.length) + 224] = _6797
                                            if 0 < mem[(32 * arg5.length) + 128]:
                                                if 0 < mem[(32 * arg5.length) + 128]:
                                                    idx = 1
                                                    s = 0
                                                    t = 0
                                                    while idx < mem[(32 * arg5.length) + 128]:
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                            idx = idx + 1
                                                            s = s
                                                            t = t
                                                            continue 
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        idx = idx + 1
                                                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                        continue 
                                                    mem[_6880 + 128] = mem[96] + 1
                                                    mem[64] = _6880 + (32 * mem[96] + 1) + 160
                                                    if mem[96] + 1:
                                                        mem[_6880 + 160 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                    idx = 0
                                                    while idx < mem[96]:
                                                        require idx < mem[96]
                                                        require idx < mem[_6880 + 128]
                                                        require mem[(32 * idx) + 128] <= 2
                                                        mem[(32 * idx) + _6880 + 160] = mem[(32 * idx) + 128]
                                                        idx = idx + 1
                                                        continue 
                        else:
                            _6878 = mem[64]
                            mem[mem[64]] = 5
                            mem[64] = mem[64] + 192
                            if mem[_6878]:
                                mem[_6878 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6878]:
                                    mem[_6878 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6878]:
                                        mem[_6878 + 96] = ext_call.return_data[12 len 20]
                                        if 3 < mem[_6878]:
                                            mem[_6878 + 128] = arg2
                                            if 4 < mem[_6878]:
                                                mem[_6878 + 160] = arg1
                                                require ext_code.size(address(stor3))
                                                staticcall address(stor3).0x7b103999 with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                        gas gas_remaining wei
                                                       args 'BancorNetwork'
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_6878 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                mem[_6878 + 228] = arg3
                                                mem[_6878 + 196] = 64
                                                mem[_6878 + 260] = mem[_6878]
                                                mem[_6878 + 292 len floor32(mem[_6878])] = mem[_6878 + 32 len floor32(mem[_6878])]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 64, arg3, mem[_6878 + 260 len (32 * mem[_6878]) + 32]
                                                mem[_6878 + 192 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                mem[_6797 + 32] = ext_call.return_data[0]
                                                if 2 < mem[(32 * arg5.length) + 128]:
                                                    mem[(32 * arg5.length) + 224] = _6797
                                                    if 0 < mem[(32 * arg5.length) + 128]:
                                                        if 0 < mem[(32 * arg5.length) + 128]:
                                                            idx = 1
                                                            s = 0
                                                            t = 0
                                                            while idx < mem[(32 * arg5.length) + 128]:
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    t = t
                                                                    continue 
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                idx = idx + 1
                                                                s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                                t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                                continue 
                                                            mem[_6878 + 192] = mem[96] + 1
                                                            mem[64] = _6878 + (32 * mem[96] + 1) + 224
                                                            if mem[96] + 1:
                                                                mem[_6878 + 224 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                            idx = 0
                                                            while idx < mem[96]:
                                                                require idx < mem[96]
                                                                require idx < mem[_6878 + 192]
                                                                require mem[(32 * idx) + 128] <= 2
                                                                mem[(32 * idx) + _6878 + 224] = mem[(32 * idx) + 128]
                                                                idx = idx + 1
                                                                continue 
            else:
                mem[mem[64] + 4] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_5100 + 32] = ext_call.return_data[0]
                if 1 < mem[(32 * arg5.length) + 128]:
                    mem[(32 * arg5.length) + 192] = _5100
                    idx = 0
                    while idx < mem[96]:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] <= 2
                        if mem[(32 * idx) + 128] != 2:
                            idx = idx + 1
                            continue 
                        _6839 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6839] = 2
                        mem[_6839 + 32] = 0
                        require 2 < mem[(32 * arg5.length) + 128]
                        mem[(32 * arg5.length) + 224] = _6839
                        require 0 < mem[(32 * arg5.length) + 128]
                        require 0 < mem[(32 * arg5.length) + 128]
                        idx = 1
                        s = 0
                        t = 0
                        while idx < mem[(32 * arg5.length) + 128]:
                            require idx < mem[(32 * arg5.length) + 128]
                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            require idx < mem[(32 * arg5.length) + 128]
                            require idx < mem[(32 * arg5.length) + 128]
                            idx = idx + 1
                            s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                            t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                            continue 
                        _8504 = mem[96]
                        _8505 = mem[64]
                        mem[mem[64]] = mem[96] + 1
                        mem[64] = mem[64] + (32 * _8504 + 1) + 32
                        if not _8504 + 1:
                            _9414 = mem[96]
                            idx = 0
                            while idx < _9414:
                                require idx < mem[96]
                                require idx < mem[_8505]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8505 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        else:
                            mem[_8505 + 32 len 32 * _8504 + 1] = code.data[12049 len 32 * _8504 + 1]
                            _9415 = mem[96]
                            idx = 0
                            while idx < _9415:
                                require idx < mem[96]
                                require idx < mem[_8505]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8505 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        revert
                    _6798 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6798] = 2
                    if not arg2:
                        mem[_6798 + 32] = 0
                        if 2 < mem[(32 * arg5.length) + 128]:
                            mem[(32 * arg5.length) + 224] = _6798
                            if 0 < mem[(32 * arg5.length) + 128]:
                                if 0 < mem[(32 * arg5.length) + 128]:
                                    idx = 1
                                    s = 0
                                    t = 0
                                    while idx < mem[(32 * arg5.length) + 128]:
                                        require idx < mem[(32 * arg5.length) + 128]
                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            continue 
                                        require idx < mem[(32 * arg5.length) + 128]
                                        require idx < mem[(32 * arg5.length) + 128]
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                        continue 
                                    _8500 = mem[96]
                                    _8501 = mem[64]
                                    mem[mem[64]] = mem[96] + 1
                                    mem[64] = mem[64] + (32 * _8500 + 1) + 32
                                    if not _8500 + 1:
                                        _9410 = mem[96]
                                        idx = 0
                                        while idx < _9410:
                                            require idx < mem[96]
                                            require idx < mem[_8501]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8501 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[_8501 + 32 len 32 * _8500 + 1] = code.data[12049 len 32 * _8500 + 1]
                                        _9411 = mem[96]
                                        idx = 0
                                        while idx < _9411:
                                            require idx < mem[96]
                                            require idx < mem[_8501]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8501 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                    else:
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == arg1:
                            _6884 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if mem[_6884]:
                                mem[_6884 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6884]:
                                    mem[_6884 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6884]:
                                        mem[_6884 + 96] = ext_call.return_data[12 len 20]
                                        require ext_code.size(address(stor3))
                                        staticcall address(stor3).0x7b103999 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                gas gas_remaining wei
                                               args 'BancorNetwork'
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6884 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_6884 + 164] = arg3
                                        mem[_6884 + 132] = 64
                                        mem[_6884 + 196] = mem[_6884]
                                        mem[_6884 + 228 len floor32(mem[_6884])] = mem[_6884 + 32 len floor32(mem[_6884])]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_6884 + 196 len (32 * mem[_6884]) + 32]
                                        mem[_6884 + 128 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_6798 + 32] = ext_call.return_data[0]
                                        if 2 < mem[(32 * arg5.length) + 128]:
                                            mem[(32 * arg5.length) + 224] = _6798
                                            if 0 < mem[(32 * arg5.length) + 128]:
                                                if 0 < mem[(32 * arg5.length) + 128]:
                                                    idx = 1
                                                    s = 0
                                                    t = 0
                                                    while idx < mem[(32 * arg5.length) + 128]:
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                            idx = idx + 1
                                                            s = s
                                                            t = t
                                                            continue 
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        idx = idx + 1
                                                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                        continue 
                                                    mem[_6884 + 128] = mem[96] + 1
                                                    mem[64] = _6884 + (32 * mem[96] + 1) + 160
                                                    if mem[96] + 1:
                                                        mem[_6884 + 160 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                    idx = 0
                                                    while idx < mem[96]:
                                                        require idx < mem[96]
                                                        require idx < mem[_6884 + 128]
                                                        require mem[(32 * idx) + 128] <= 2
                                                        mem[(32 * idx) + _6884 + 160] = mem[(32 * idx) + 128]
                                                        idx = idx + 1
                                                        continue 
                        else:
                            _6882 = mem[64]
                            mem[mem[64]] = 5
                            mem[64] = mem[64] + 192
                            if mem[_6882]:
                                mem[_6882 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6882]:
                                    mem[_6882 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6882]:
                                        mem[_6882 + 96] = ext_call.return_data[12 len 20]
                                        if 3 < mem[_6882]:
                                            mem[_6882 + 128] = arg2
                                            if 4 < mem[_6882]:
                                                mem[_6882 + 160] = arg1
                                                require ext_code.size(address(stor3))
                                                staticcall address(stor3).0x7b103999 with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                        gas gas_remaining wei
                                                       args 'BancorNetwork'
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_6882 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                mem[_6882 + 228] = arg3
                                                mem[_6882 + 196] = 64
                                                mem[_6882 + 260] = mem[_6882]
                                                mem[_6882 + 292 len floor32(mem[_6882])] = mem[_6882 + 32 len floor32(mem[_6882])]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 64, arg3, mem[_6882 + 260 len (32 * mem[_6882]) + 32]
                                                mem[_6882 + 192 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                mem[_6798 + 32] = ext_call.return_data[0]
                                                if 2 < mem[(32 * arg5.length) + 128]:
                                                    mem[(32 * arg5.length) + 224] = _6798
                                                    if 0 < mem[(32 * arg5.length) + 128]:
                                                        if 0 < mem[(32 * arg5.length) + 128]:
                                                            idx = 1
                                                            s = 0
                                                            t = 0
                                                            while idx < mem[(32 * arg5.length) + 128]:
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    t = t
                                                                    continue 
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                idx = idx + 1
                                                                s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                                t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                                continue 
                                                            mem[_6882 + 192] = mem[96] + 1
                                                            mem[64] = _6882 + (32 * mem[96] + 1) + 224
                                                            if mem[96] + 1:
                                                                mem[_6882 + 224 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                            idx = 0
                                                            while idx < mem[96]:
                                                                require idx < mem[96]
                                                                require idx < mem[_6882 + 192]
                                                                require mem[(32 * idx) + 128] <= 2
                                                                mem[(32 * idx) + _6882 + 224] = mem[(32 * idx) + 128]
                                                                idx = idx + 1
                                                                continue 
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x313ce567 with:
                gas gas_remaining wei
        mem[mem[64]] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[_3399 + 32] = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
        if 0 < mem[(32 * arg5.length) + 128]:
            mem[(32 * arg5.length) + 160] = _3399
            idx = 0
            while idx < mem[96]:
                require idx < mem[96]
                require mem[(32 * idx) + 128] <= 2
                if mem[(32 * idx) + 128] != 1:
                    idx = idx + 1
                    continue 
                _5109 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5109] = 1
                mem[_5109 + 32] = 0
                require 1 < mem[(32 * arg5.length) + 128]
                mem[(32 * arg5.length) + 192] = _5109
                idx = 0
                while idx < mem[96]:
                    require idx < mem[96]
                    require mem[(32 * idx) + 128] <= 2
                    if mem[(32 * idx) + 128] != 2:
                        idx = idx + 1
                        continue 
                    _6831 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6831] = 2
                    mem[_6831 + 32] = 0
                    require 2 < mem[(32 * arg5.length) + 128]
                    mem[(32 * arg5.length) + 224] = _6831
                    require 0 < mem[(32 * arg5.length) + 128]
                    require 0 < mem[(32 * arg5.length) + 128]
                    idx = 1
                    s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                    t = 0
                    while idx < mem[(32 * arg5.length) + 128]:
                        require idx < mem[(32 * arg5.length) + 128]
                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                            idx = idx + 1
                            s = s
                            t = t
                            continue 
                        require idx < mem[(32 * arg5.length) + 128]
                        require idx < mem[(32 * arg5.length) + 128]
                        idx = idx + 1
                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                        continue 
                    _8488 = mem[96]
                    _8489 = mem[64]
                    mem[mem[64]] = mem[96] + 1
                    mem[64] = mem[64] + (32 * _8488 + 1) + 32
                    if not _8488 + 1:
                        _9402 = mem[96]
                        idx = 0
                        while idx < _9402:
                            require idx < mem[96]
                            require idx < mem[_8489]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8489 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    else:
                        mem[_8489 + 32 len 32 * _8488 + 1] = code.data[12049 len 32 * _8488 + 1]
                        _9403 = mem[96]
                        idx = 0
                        while idx < _9403:
                            require idx < mem[96]
                            require idx < mem[_8489]
                            require mem[(32 * idx) + 128] <= 2
                            mem[(32 * idx) + _8489 + 32] = mem[(32 * idx) + 128]
                            idx = idx + 1
                            continue 
                    revert
                _6796 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6796] = 2
                if not arg2:
                    mem[_6796 + 32] = 0
                    if 2 < mem[(32 * arg5.length) + 128]:
                        mem[(32 * arg5.length) + 224] = _6796
                        if 0 < mem[(32 * arg5.length) + 128]:
                            if 0 < mem[(32 * arg5.length) + 128]:
                                idx = 1
                                s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                t = 0
                                while idx < mem[(32 * arg5.length) + 128]:
                                    require idx < mem[(32 * arg5.length) + 128]
                                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                        idx = idx + 1
                                        s = s
                                        t = t
                                        continue 
                                    require idx < mem[(32 * arg5.length) + 128]
                                    require idx < mem[(32 * arg5.length) + 128]
                                    idx = idx + 1
                                    s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                    t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                    continue 
                                _8484 = mem[96]
                                _8485 = mem[64]
                                mem[mem[64]] = mem[96] + 1
                                mem[64] = mem[64] + (32 * _8484 + 1) + 32
                                if not _8484 + 1:
                                    _9398 = mem[96]
                                    idx = 0
                                    while idx < _9398:
                                        require idx < mem[96]
                                        require idx < mem[_8485]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8485 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                                else:
                                    mem[_8485 + 32 len 32 * _8484 + 1] = code.data[12049 len 32 * _8484 + 1]
                                    _9399 = mem[96]
                                    idx = 0
                                    while idx < _9399:
                                        require idx < mem[96]
                                        require idx < mem[_8485]
                                        require mem[(32 * idx) + 128] <= 2
                                        mem[(32 * idx) + _8485 + 32] = mem[(32 * idx) + 128]
                                        idx = idx + 1
                                        continue 
                else:
                    require ext_code.size(address(stor3))
                    staticcall address(stor3).token() with:
                            gas gas_remaining wei
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    if address(ext_call.return_data[0]) == arg1:
                        _6876 = mem[64]
                        mem[mem[64]] = 3
                        mem[64] = mem[64] + 128
                        if mem[_6876]:
                            mem[_6876 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6876]:
                                mem[_6876 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6876]:
                                    mem[_6876 + 96] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).0x7b103999 with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                            gas gas_remaining wei
                                           args 'BancorNetwork'
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    mem[_6876 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                    mem[_6876 + 164] = arg3
                                    mem[_6876 + 132] = 64
                                    mem[_6876 + 196] = mem[_6876]
                                    idx = 0
                                    while idx < 32 * mem[_6876]:
                                        mem[idx + _6876 + 228] = mem[idx + _6876 + 32]
                                        idx = idx + 32
                                        continue 
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                            gas gas_remaining wei
                                           args 64, arg3, mem[_6876 + 196 len (32 * mem[_6876]) + 32]
                                    mem[_6876 + 128 len 64] = ext_call.return_data[0 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 64
                                    mem[_6796 + 32] = ext_call.return_data[0]
                                    if 2 < mem[(32 * arg5.length) + 128]:
                                        mem[(32 * arg5.length) + 224] = _6796
                                        if 0 < mem[(32 * arg5.length) + 128]:
                                            if 0 < mem[(32 * arg5.length) + 128]:
                                                idx = 1
                                                s = mem[mem[(32 * arg5.length) + 160] + 32]
                                                t = mem[mem[(32 * arg5.length) + 160]]
                                                while idx < mem[(32 * arg5.length) + 128]:
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                        idx = idx + 1
                                                        s = s
                                                        t = t
                                                        continue 
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    require idx < mem[(32 * arg5.length) + 128]
                                                    idx = idx + 1
                                                    s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                    t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                    continue 
                                                mem[_6876 + 128] = mem[96] + 1
                                                mem[64] = _6876 + (32 * mem[96] + 1) + 160
                                                if mem[96] + 1:
                                                    mem[_6876 + 160 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                idx = 0
                                                while idx < mem[96]:
                                                    require idx < mem[96]
                                                    require idx < mem[_6876 + 128]
                                                    require mem[(32 * idx) + 128] <= 2
                                                    mem[(32 * idx) + _6876 + 160] = mem[(32 * idx) + 128]
                                                    idx = idx + 1
                                                    continue 
                    else:
                        _6874 = mem[64]
                        mem[mem[64]] = 5
                        mem[64] = mem[64] + 192
                        if mem[_6874]:
                            mem[_6874 + 32] = stor4
                            require ext_code.size(address(stor3))
                            staticcall address(stor3).token() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if 1 < mem[_6874]:
                                mem[_6874 + 64] = ext_call.return_data[12 len 20]
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 2 < mem[_6874]:
                                    mem[_6874 + 96] = ext_call.return_data[12 len 20]
                                    if 3 < mem[_6874]:
                                        mem[_6874 + 128] = arg2
                                        if 4 < mem[_6874]:
                                            mem[_6874 + 160] = arg1
                                            require ext_code.size(address(stor3))
                                            staticcall address(stor3).0x7b103999 with:
                                                    gas gas_remaining wei
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                    gas gas_remaining wei
                                                   args 'BancorNetwork'
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 32
                                            mem[_6874 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                            mem[_6874 + 228] = arg3
                                            mem[_6874 + 196] = 64
                                            mem[_6874 + 260] = mem[_6874]
                                            idx = 0
                                            while idx < 32 * mem[_6874]:
                                                mem[idx + _6874 + 292] = mem[idx + _6874 + 32]
                                                idx = idx + 32
                                                continue 
                                            require ext_code.size(address(ext_call.return_data[0]))
                                            staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                    gas gas_remaining wei
                                                   args 64, arg3, mem[_6874 + 260 len (32 * mem[_6874]) + 32]
                                            mem[_6874 + 192 len 64] = ext_call.return_data[0 len 64]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            require return_data.size >= 64
                                            mem[_6796 + 32] = ext_call.return_data[0]
                                            if 2 < mem[(32 * arg5.length) + 128]:
                                                mem[(32 * arg5.length) + 224] = _6796
                                                if 0 < mem[(32 * arg5.length) + 128]:
                                                    if 0 < mem[(32 * arg5.length) + 128]:
                                                        idx = 1
                                                        s = mem[mem[(32 * arg5.length) + 160] + 32]
                                                        t = mem[mem[(32 * arg5.length) + 160]]
                                                        while idx < mem[(32 * arg5.length) + 128]:
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                                idx = idx + 1
                                                                s = s
                                                                t = t
                                                                continue 
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            require idx < mem[(32 * arg5.length) + 128]
                                                            idx = idx + 1
                                                            s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                            t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                            continue 
                                                        mem[_6874 + 192] = mem[96] + 1
                                                        mem[64] = _6874 + (32 * mem[96] + 1) + 224
                                                        if mem[96] + 1:
                                                            mem[_6874 + 224 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                        idx = 0
                                                        while idx < mem[96]:
                                                            require idx < mem[96]
                                                            require idx < mem[_6874 + 192]
                                                            require mem[(32 * idx) + 128] <= 2
                                                            mem[(32 * idx) + _6874 + 224] = mem[(32 * idx) + 128]
                                                            idx = idx + 1
                                                            continue 
                revert
            _5099 = mem[64]
            mem[64] = mem[64] + 64
            mem[_5099] = 1
            mem[mem[64] + 4] = arg1
            require ext_code.size(stor2)
            staticcall stor2.getExchange(address arg1) with:
                    gas gas_remaining wei
                   args address(arg1)
            mem[mem[64]] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not address(ext_call.return_data[0]):
                mem[_5099 + 32] = 0
                if 1 < mem[(32 * arg5.length) + 128]:
                    mem[(32 * arg5.length) + 192] = _5099
                    idx = 0
                    while idx < mem[96]:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] <= 2
                        if mem[(32 * idx) + 128] != 2:
                            idx = idx + 1
                            continue 
                        _6823 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6823] = 2
                        mem[_6823 + 32] = 0
                        require 2 < mem[(32 * arg5.length) + 128]
                        mem[(32 * arg5.length) + 224] = _6823
                        require 0 < mem[(32 * arg5.length) + 128]
                        require 0 < mem[(32 * arg5.length) + 128]
                        idx = 1
                        s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                        t = 0
                        while idx < mem[(32 * arg5.length) + 128]:
                            require idx < mem[(32 * arg5.length) + 128]
                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            require idx < mem[(32 * arg5.length) + 128]
                            require idx < mem[(32 * arg5.length) + 128]
                            idx = idx + 1
                            s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                            t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                            continue 
                        _8472 = mem[96]
                        _8473 = mem[64]
                        mem[mem[64]] = mem[96] + 1
                        mem[64] = mem[64] + (32 * _8472 + 1) + 32
                        if not _8472 + 1:
                            _9390 = mem[96]
                            idx = 0
                            while idx < _9390:
                                require idx < mem[96]
                                require idx < mem[_8473]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8473 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        else:
                            mem[_8473 + 32 len 32 * _8472 + 1] = code.data[12049 len 32 * _8472 + 1]
                            _9391 = mem[96]
                            idx = 0
                            while idx < _9391:
                                require idx < mem[96]
                                require idx < mem[_8473]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8473 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        revert
                    _6794 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6794] = 2
                    if not arg2:
                        mem[_6794 + 32] = 0
                        if 2 < mem[(32 * arg5.length) + 128]:
                            mem[(32 * arg5.length) + 224] = _6794
                            if 0 < mem[(32 * arg5.length) + 128]:
                                if 0 < mem[(32 * arg5.length) + 128]:
                                    idx = 1
                                    s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                    t = 0
                                    while idx < mem[(32 * arg5.length) + 128]:
                                        require idx < mem[(32 * arg5.length) + 128]
                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            continue 
                                        require idx < mem[(32 * arg5.length) + 128]
                                        require idx < mem[(32 * arg5.length) + 128]
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                        continue 
                                    _8468 = mem[96]
                                    _8469 = mem[64]
                                    mem[mem[64]] = mem[96] + 1
                                    mem[64] = mem[64] + (32 * _8468 + 1) + 32
                                    if not _8468 + 1:
                                        _9386 = mem[96]
                                        idx = 0
                                        while idx < _9386:
                                            require idx < mem[96]
                                            require idx < mem[_8469]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8469 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[_8469 + 32 len 32 * _8468 + 1] = code.data[12049 len 32 * _8468 + 1]
                                        _9387 = mem[96]
                                        idx = 0
                                        while idx < _9387:
                                            require idx < mem[96]
                                            require idx < mem[_8469]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8469 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                    else:
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == arg1:
                            _6868 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if mem[_6868]:
                                mem[_6868 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6868]:
                                    mem[_6868 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6868]:
                                        mem[_6868 + 96] = ext_call.return_data[12 len 20]
                                        require ext_code.size(address(stor3))
                                        staticcall address(stor3).0x7b103999 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                gas gas_remaining wei
                                               args 'BancorNetwork'
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6868 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_6868 + 164] = arg3
                                        mem[_6868 + 132] = 64
                                        mem[_6868 + 196] = mem[_6868]
                                        mem[_6868 + 228 len floor32(mem[_6868])] = mem[_6868 + 32 len floor32(mem[_6868])]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_6868 + 196 len (32 * mem[_6868]) + 32]
                                        mem[_6868 + 128 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_6794 + 32] = ext_call.return_data[0]
                                        if 2 < mem[(32 * arg5.length) + 128]:
                                            mem[(32 * arg5.length) + 224] = _6794
                                            if 0 < mem[(32 * arg5.length) + 128]:
                                                if 0 < mem[(32 * arg5.length) + 128]:
                                                    idx = 1
                                                    s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                    t = 0
                                                    while idx < mem[(32 * arg5.length) + 128]:
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                            idx = idx + 1
                                                            s = s
                                                            t = t
                                                            continue 
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        idx = idx + 1
                                                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                        continue 
                                                    mem[_6868 + 128] = mem[96] + 1
                                                    mem[64] = _6868 + (32 * mem[96] + 1) + 160
                                                    if mem[96] + 1:
                                                        mem[_6868 + 160 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                    idx = 0
                                                    while idx < mem[96]:
                                                        require idx < mem[96]
                                                        require idx < mem[_6868 + 128]
                                                        require mem[(32 * idx) + 128] <= 2
                                                        mem[(32 * idx) + _6868 + 160] = mem[(32 * idx) + 128]
                                                        idx = idx + 1
                                                        continue 
                        else:
                            _6866 = mem[64]
                            mem[mem[64]] = 5
                            mem[64] = mem[64] + 192
                            if mem[_6866]:
                                mem[_6866 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6866]:
                                    mem[_6866 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6866]:
                                        mem[_6866 + 96] = ext_call.return_data[12 len 20]
                                        if 3 < mem[_6866]:
                                            mem[_6866 + 128] = arg2
                                            if 4 < mem[_6866]:
                                                mem[_6866 + 160] = arg1
                                                require ext_code.size(address(stor3))
                                                staticcall address(stor3).0x7b103999 with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                        gas gas_remaining wei
                                                       args 'BancorNetwork'
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_6866 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                mem[_6866 + 228] = arg3
                                                mem[_6866 + 196] = 64
                                                mem[_6866 + 260] = mem[_6866]
                                                mem[_6866 + 292 len floor32(mem[_6866])] = mem[_6866 + 32 len floor32(mem[_6866])]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 64, arg3, mem[_6866 + 260 len (32 * mem[_6866]) + 32]
                                                mem[_6866 + 192 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                mem[_6794 + 32] = ext_call.return_data[0]
                                                if 2 < mem[(32 * arg5.length) + 128]:
                                                    mem[(32 * arg5.length) + 224] = _6794
                                                    if 0 < mem[(32 * arg5.length) + 128]:
                                                        if 0 < mem[(32 * arg5.length) + 128]:
                                                            idx = 1
                                                            s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                            t = 0
                                                            while idx < mem[(32 * arg5.length) + 128]:
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    t = t
                                                                    continue 
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                idx = idx + 1
                                                                s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                                t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                                continue 
                                                            mem[_6866 + 192] = mem[96] + 1
                                                            mem[64] = _6866 + (32 * mem[96] + 1) + 224
                                                            if mem[96] + 1:
                                                                mem[_6866 + 224 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                            idx = 0
                                                            while idx < mem[96]:
                                                                require idx < mem[96]
                                                                require idx < mem[_6866 + 192]
                                                                require mem[(32 * idx) + 128] <= 2
                                                                mem[(32 * idx) + _6866 + 224] = mem[(32 * idx) + 128]
                                                                idx = idx + 1
                                                                continue 
            else:
                mem[mem[64] + 4] = arg3
                require ext_code.size(address(ext_call.return_data[0]))
                staticcall address(ext_call.return_data[0]).getEthToTokenInputPrice(uint256 arg1) with:
                        gas gas_remaining wei
                       args arg3
                mem[mem[64]] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                mem[_5099 + 32] = ext_call.return_data[0]
                if 1 < mem[(32 * arg5.length) + 128]:
                    mem[(32 * arg5.length) + 192] = _5099
                    idx = 0
                    while idx < mem[96]:
                        require idx < mem[96]
                        require mem[(32 * idx) + 128] <= 2
                        if mem[(32 * idx) + 128] != 2:
                            idx = idx + 1
                            continue 
                        _6827 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6827] = 2
                        mem[_6827 + 32] = 0
                        require 2 < mem[(32 * arg5.length) + 128]
                        mem[(32 * arg5.length) + 224] = _6827
                        require 0 < mem[(32 * arg5.length) + 128]
                        require 0 < mem[(32 * arg5.length) + 128]
                        idx = 1
                        s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                        t = 0
                        while idx < mem[(32 * arg5.length) + 128]:
                            require idx < mem[(32 * arg5.length) + 128]
                            if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                idx = idx + 1
                                s = s
                                t = t
                                continue 
                            require idx < mem[(32 * arg5.length) + 128]
                            require idx < mem[(32 * arg5.length) + 128]
                            idx = idx + 1
                            s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                            t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                            continue 
                        _8480 = mem[96]
                        _8481 = mem[64]
                        mem[mem[64]] = mem[96] + 1
                        mem[64] = mem[64] + (32 * _8480 + 1) + 32
                        if not _8480 + 1:
                            _9396 = mem[96]
                            idx = 0
                            while idx < _9396:
                                require idx < mem[96]
                                require idx < mem[_8481]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8481 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        else:
                            mem[_8481 + 32 len 32 * _8480 + 1] = code.data[12049 len 32 * _8480 + 1]
                            _9397 = mem[96]
                            idx = 0
                            while idx < _9397:
                                require idx < mem[96]
                                require idx < mem[_8481]
                                require mem[(32 * idx) + 128] <= 2
                                mem[(32 * idx) + _8481 + 32] = mem[(32 * idx) + 128]
                                idx = idx + 1
                                continue 
                        revert
                    _6795 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6795] = 2
                    if not arg2:
                        mem[_6795 + 32] = 0
                        if 2 < mem[(32 * arg5.length) + 128]:
                            mem[(32 * arg5.length) + 224] = _6795
                            if 0 < mem[(32 * arg5.length) + 128]:
                                if 0 < mem[(32 * arg5.length) + 128]:
                                    idx = 1
                                    s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                    t = 0
                                    while idx < mem[(32 * arg5.length) + 128]:
                                        require idx < mem[(32 * arg5.length) + 128]
                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                            idx = idx + 1
                                            s = s
                                            t = t
                                            continue 
                                        require idx < mem[(32 * arg5.length) + 128]
                                        require idx < mem[(32 * arg5.length) + 128]
                                        idx = idx + 1
                                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                        continue 
                                    _8476 = mem[96]
                                    _8477 = mem[64]
                                    mem[mem[64]] = mem[96] + 1
                                    mem[64] = mem[64] + (32 * _8476 + 1) + 32
                                    if not _8476 + 1:
                                        _9392 = mem[96]
                                        idx = 0
                                        while idx < _9392:
                                            require idx < mem[96]
                                            require idx < mem[_8477]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8477 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                                    else:
                                        mem[_8477 + 32 len 32 * _8476 + 1] = code.data[12049 len 32 * _8476 + 1]
                                        _9393 = mem[96]
                                        idx = 0
                                        while idx < _9393:
                                            require idx < mem[96]
                                            require idx < mem[_8477]
                                            require mem[(32 * idx) + 128] <= 2
                                            mem[(32 * idx) + _8477 + 32] = mem[(32 * idx) + 128]
                                            idx = idx + 1
                                            continue 
                    else:
                        require ext_code.size(address(stor3))
                        staticcall address(stor3).token() with:
                                gas gas_remaining wei
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if address(ext_call.return_data[0]) == arg1:
                            _6872 = mem[64]
                            mem[mem[64]] = 3
                            mem[64] = mem[64] + 128
                            if mem[_6872]:
                                mem[_6872 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6872]:
                                    mem[_6872 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6872]:
                                        mem[_6872 + 96] = ext_call.return_data[12 len 20]
                                        require ext_code.size(address(stor3))
                                        staticcall address(stor3).0x7b103999 with:
                                                gas gas_remaining wei
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                gas gas_remaining wei
                                               args 'BancorNetwork'
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 32
                                        mem[_6872 + 128] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                        mem[_6872 + 164] = arg3
                                        mem[_6872 + 132] = 64
                                        mem[_6872 + 196] = mem[_6872]
                                        mem[_6872 + 228 len floor32(mem[_6872])] = mem[_6872 + 32 len floor32(mem[_6872])]
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                gas gas_remaining wei
                                               args 64, arg3, mem[_6872 + 196 len (32 * mem[_6872]) + 32]
                                        mem[_6872 + 128 len 64] = ext_call.return_data[0 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        require return_data.size >= 64
                                        mem[_6795 + 32] = ext_call.return_data[0]
                                        if 2 < mem[(32 * arg5.length) + 128]:
                                            mem[(32 * arg5.length) + 224] = _6795
                                            if 0 < mem[(32 * arg5.length) + 128]:
                                                if 0 < mem[(32 * arg5.length) + 128]:
                                                    idx = 1
                                                    s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                    t = 0
                                                    while idx < mem[(32 * arg5.length) + 128]:
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                            idx = idx + 1
                                                            s = s
                                                            t = t
                                                            continue 
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        require idx < mem[(32 * arg5.length) + 128]
                                                        idx = idx + 1
                                                        s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                        t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                        continue 
                                                    mem[_6872 + 128] = mem[96] + 1
                                                    mem[64] = _6872 + (32 * mem[96] + 1) + 160
                                                    if mem[96] + 1:
                                                        mem[_6872 + 160 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                    idx = 0
                                                    while idx < mem[96]:
                                                        require idx < mem[96]
                                                        require idx < mem[_6872 + 128]
                                                        require mem[(32 * idx) + 128] <= 2
                                                        mem[(32 * idx) + _6872 + 160] = mem[(32 * idx) + 128]
                                                        idx = idx + 1
                                                        continue 
                        else:
                            _6870 = mem[64]
                            mem[mem[64]] = 5
                            mem[64] = mem[64] + 192
                            if mem[_6870]:
                                mem[_6870 + 32] = stor4
                                require ext_code.size(address(stor3))
                                staticcall address(stor3).token() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if 1 < mem[_6870]:
                                    mem[_6870 + 64] = ext_call.return_data[12 len 20]
                                    require ext_code.size(address(stor3))
                                    staticcall address(stor3).token() with:
                                            gas gas_remaining wei
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    require return_data.size >= 32
                                    if 2 < mem[_6870]:
                                        mem[_6870 + 96] = ext_call.return_data[12 len 20]
                                        if 3 < mem[_6870]:
                                            mem[_6870 + 128] = arg2
                                            if 4 < mem[_6870]:
                                                mem[_6870 + 160] = arg1
                                                require ext_code.size(address(stor3))
                                                staticcall address(stor3).0x7b103999 with:
                                                        gas gas_remaining wei
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).addressOf(bytes32 arg1) with:
                                                        gas gas_remaining wei
                                                       args 'BancorNetwork'
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 32
                                                mem[_6870 + 192] = 0xc8496cc00000000000000000000000000000000000000000000000000000000
                                                mem[_6870 + 228] = arg3
                                                mem[_6870 + 196] = 64
                                                mem[_6870 + 260] = mem[_6870]
                                                mem[_6870 + 292 len floor32(mem[_6870])] = mem[_6870 + 32 len floor32(mem[_6870])]
                                                require ext_code.size(address(ext_call.return_data[0]))
                                                staticcall address(ext_call.return_data[0]).getReturnByPath(address[] arg1, uint256 arg2) with:
                                                        gas gas_remaining wei
                                                       args 64, arg3, mem[_6870 + 260 len (32 * mem[_6870]) + 32]
                                                mem[_6870 + 192 len 64] = ext_call.return_data[0 len 64]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                require return_data.size >= 64
                                                mem[_6795 + 32] = ext_call.return_data[0]
                                                if 2 < mem[(32 * arg5.length) + 128]:
                                                    mem[(32 * arg5.length) + 224] = _6795
                                                    if 0 < mem[(32 * arg5.length) + 128]:
                                                        if 0 < mem[(32 * arg5.length) + 128]:
                                                            idx = 1
                                                            s = ext_call.return_data[0] * arg3 * 10^uint8(ext_call.return_data[0]) / 10^18 / 10^18
                                                            t = 0
                                                            while idx < mem[(32 * arg5.length) + 128]:
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                if mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32] <= s:
                                                                    idx = idx + 1
                                                                    s = s
                                                                    t = t
                                                                    continue 
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                require idx < mem[(32 * arg5.length) + 128]
                                                                idx = idx + 1
                                                                s = mem[mem[(32 * idx) + (32 * arg5.length) + 160] + 32]
                                                                t = mem[mem[(32 * idx) + (32 * arg5.length) + 160]]
                                                                continue 
                                                            mem[_6870 + 192] = mem[96] + 1
                                                            mem[64] = _6870 + (32 * mem[96] + 1) + 224
                                                            if mem[96] + 1:
                                                                mem[_6870 + 224 len 32 * mem[96] + 1] = code.data[12049 len 32 * mem[96] + 1]
                                                            idx = 0
                                                            while idx < mem[96]:
                                                                require idx < mem[96]
                                                                require idx < mem[_6870 + 192]
                                                                require mem[(32 * idx) + 128] <= 2
                                                                mem[(32 * idx) + _6870 + 224] = mem[(32 * idx) + 128]
                                                                idx = idx + 1
                                                                continue 
    revert
}



}
