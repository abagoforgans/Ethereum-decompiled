contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - update(uint256 arg1)
#
address stor0;
uint256 stor1;
uint256 ETHUSD;
array of uint256 answer;
address stor4;

function ETHUSD() {
    return ETHUSD
}

function answer() {
    return answer[0 len answer.length].field_0
}

function kill() {
    if stor4 != msg.sender:
    selfdestruct(stor4)
}

function _fallback() payable {
    revert 
}

function __callback(bytes32 arg1, string arg2) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if arg2.length < ceil32(arg2.length):
        mem[ceil32(arg2.length) + 128] = 0
        if not stor0:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).cbAddress() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                if ext_call.return_data[12 len 20] != msg.sender:
                    mem[64] = ceil32(arg2.length) + 224
                    mem[ceil32(arg2.length) + 160] = 17
                    mem[ceil32(arg2.length) + 192] = 'indirizzo diverso'
                    mem[0] = 3
                    uint8(answer.length) = 34
                    Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                    require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var31001
                    stor[var31001] = 0
                    var31001 = var31001 + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).cbAddress() with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    if ext_call.return_data[12 len 20] != msg.sender:
                        mem[64] = ceil32(arg2.length) + 224
                        mem[ceil32(arg2.length) + 160] = 17
                        mem[ceil32(arg2.length) + 192] = 'indirizzo diverso'
                        mem[0] = 3
                        uint8(answer.length) = 34
                        Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                        require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var35001
                        stor[var35001] = 0
                        var35001 = var35001 + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).cbAddress() with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        if ext_call.return_data[12 len 20] != msg.sender:
                            mem[64] = ceil32(arg2.length) + 224
                            mem[ceil32(arg2.length) + 160] = 17
                            mem[ceil32(arg2.length) + 192] = 'indirizzo diverso'
                            mem[0] = 3
                            uint8(answer.length) = 34
                            Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                            require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var39001
                            stor[var39001] = 0
                            var39001 = var39001 + 1
                            continue 
                    else:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).cbAddress() with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            if ext_call.return_data[12 len 20] != msg.sender:
                                mem[64] = ceil32(arg2.length) + 224
                                mem[ceil32(arg2.length) + 160] = 17
                                mem[ceil32(arg2.length) + 192] = 'indirizzo diverso'
                                mem[0] = 3
                                uint8(answer.length) = 34
                                Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                                require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var43001
                                stor[var43001] = 0
                                var43001 = var43001 + 1
                                continue 
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).cbAddress() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                if ext_call.return_data[12 len 20] != msg.sender:
                                    mem[64] = ceil32(arg2.length) + 224
                                    mem[ceil32(arg2.length) + 160] = 17
                                    mem[ceil32(arg2.length) + 192] = 'indirizzo diverso'
                                    mem[0] = 3
                                    uint8(answer.length) = 34
                                    Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                                    require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var47001
                                    stor[var47001] = 0
                                    var47001 = var47001 + 1
                                    continue 
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) <= 0:
                                    require ext_code.size(stor0)
                                    call stor0.getAddress() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).cbAddress() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    if ext_call.return_data[12 len 20] != msg.sender:
                                        mem[64] = ceil32(arg2.length) + 224
                                        mem[ceil32(arg2.length) + 160] = 17
                                        mem[ceil32(arg2.length) + 192] = 'indirizzo diverso'
                                        mem[0] = 3
                                        uint8(answer.length) = 34
                                        Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                                        require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var50001
                                        stor[var50001] = 0
                                        var50001 = var50001 + 1
                                        continue 
                                else:
                                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                                    require ext_code.size(stor0)
                                    call stor0.getAddress() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).cbAddress() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    if ext_call.return_data[12 len 20] != msg.sender:
                                        mem[64] = ceil32(arg2.length) + 224
                                        mem[ceil32(arg2.length) + 160] = 17
                                        mem[ceil32(arg2.length) + 192] = 'indirizzo diverso'
                                        mem[0] = 3
                                        uint8(answer.length) = 34
                                        Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                                        require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var51001
                                        stor[var51001] = 0
                                        var51001 = var51001 + 1
                                        continue 
        else:
            if ext_code.size(stor0):
                call stor0.getAddress() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).cbAddress() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                if ext_call.return_data[12 len 20] != msg.sender:
                    mem[64] = ceil32(arg2.length) + 224
                    mem[ceil32(arg2.length) + 160] = 17
                    mem[ceil32(arg2.length) + 192] = 'indirizzo diverso'
                    mem[0] = 3
                    uint8(answer.length) = 34
                    Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                    require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var26001
                    stor[var26001] = 0
                    var26001 = var26001 + 1
                    continue 
            else:
                if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                    stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).cbAddress() with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    if ext_call.return_data[12 len 20] != msg.sender:
                        mem[64] = ceil32(arg2.length) + 224
                        mem[ceil32(arg2.length) + 160] = 17
                        mem[ceil32(arg2.length) + 192] = 'indirizzo diverso'
                        mem[0] = 3
                        uint8(answer.length) = 34
                        Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                        require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var35001
                        stor[var35001] = 0
                        var35001 = var35001 + 1
                        continue 
                else:
                    if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                        stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).cbAddress() with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        if ext_call.return_data[12 len 20] != msg.sender:
                            mem[64] = ceil32(arg2.length) + 224
                            mem[ceil32(arg2.length) + 160] = 17
                            mem[ceil32(arg2.length) + 192] = 'indirizzo diverso'
                            mem[0] = 3
                            uint8(answer.length) = 34
                            Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                            require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var39001
                            stor[var39001] = 0
                            var39001 = var39001 + 1
                            continue 
                    else:
                        if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                            stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).cbAddress() with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            if ext_call.return_data[12 len 20] != msg.sender:
                                mem[64] = ceil32(arg2.length) + 224
                                mem[ceil32(arg2.length) + 160] = 17
                                mem[ceil32(arg2.length) + 192] = 'indirizzo diverso'
                                mem[0] = 3
                                uint8(answer.length) = 34
                                Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                                require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var43001
                                stor[var43001] = 0
                                var43001 = var43001 + 1
                                continue 
                        else:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).cbAddress() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                if ext_call.return_data[12 len 20] != msg.sender:
                                    mem[64] = ceil32(arg2.length) + 224
                                    mem[ceil32(arg2.length) + 160] = 17
                                    mem[ceil32(arg2.length) + 192] = 'indirizzo diverso'
                                    mem[0] = 3
                                    uint8(answer.length) = 34
                                    Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                                    require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var47001
                                    stor[var47001] = 0
                                    var47001 = var47001 + 1
                                    continue 
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                    require ext_code.size(stor0)
                                    call stor0.getAddress() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).cbAddress() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    if ext_call.return_data[12 len 20] != msg.sender:
                                        mem[64] = ceil32(arg2.length) + 224
                                        mem[ceil32(arg2.length) + 160] = 17
                                        mem[ceil32(arg2.length) + 192] = 'indirizzo diverso'
                                        mem[0] = 3
                                        uint8(answer.length) = 34
                                        Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                                        require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var51001
                                        stor[var51001] = 0
                                        var51001 = var51001 + 1
                                        continue 
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) <= 0:
                                        require ext_code.size(stor0)
                                        call stor0.getAddress() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).cbAddress() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        if ext_call.return_data[12 len 20] != msg.sender:
                                            mem[64] = ceil32(arg2.length) + 224
                                            mem[ceil32(arg2.length) + 160] = 17
                                            mem[ceil32(arg2.length) + 192] = 'indirizzo diverso'
                                            mem[0] = 3
                                            uint8(answer.length) = 34
                                            Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                                            require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var54001
                                            stor[var54001] = 0
                                            var54001 = var54001 + 1
                                            continue 
                                    else:
                                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                                        require ext_code.size(stor0)
                                        call stor0.getAddress() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).cbAddress() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        if ext_call.return_data[12 len 20] != msg.sender:
                                            mem[64] = ceil32(arg2.length) + 224
                                            mem[ceil32(arg2.length) + 160] = 17
                                            mem[ceil32(arg2.length) + 192] = 'indirizzo diverso'
                                            mem[0] = 3
                                            uint8(answer.length) = 34
                                            Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                                            require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var55001
                                            stor[var55001] = 0
                                            var55001 = var55001 + 1
                                            continue 
        ('eq', 'msg.sender', ('ext_call.return_data', 12, 20))
        mem[ceil32(arg2.length) + 160] = 32
        mem[ceil32(arg2.length) + 192] = arg2.length
        if arg2.length:
            mem[ceil32(arg2.length) + 224] = mem[128]
            mem[ceil32(arg2.length) + 256 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        emit newKrakenPriceTicker(Array(len=arg2.length, data=mem[ceil32(arg2.length) + 224 len arg2.length]));
        mem[64] = ceil32(arg2.length) + 192
        mem[ceil32(arg2.length) + 160] = 0
    else:
        mem[arg2.length + 128] = 0
        if not stor0:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).cbAddress() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                if ext_call.return_data[12 len 20] != msg.sender:
                    mem[64] = arg2.length + 224
                    mem[arg2.length + 160] = 17
                    mem[arg2.length + 192] = 'indirizzo diverso'
                    mem[0] = 3
                    uint8(answer.length) = 34
                    Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                    require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var32001
                    stor[var32001] = 0
                    var32001 = var32001 + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).cbAddress() with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    if ext_call.return_data[12 len 20] != msg.sender:
                        mem[64] = arg2.length + 224
                        mem[arg2.length + 160] = 17
                        mem[arg2.length + 192] = 'indirizzo diverso'
                        mem[0] = 3
                        uint8(answer.length) = 34
                        Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                        require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var36001
                        stor[var36001] = 0
                        var36001 = var36001 + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).cbAddress() with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        if ext_call.return_data[12 len 20] != msg.sender:
                            mem[64] = arg2.length + 224
                            mem[arg2.length + 160] = 17
                            mem[arg2.length + 192] = 'indirizzo diverso'
                            mem[0] = 3
                            uint8(answer.length) = 34
                            Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                            require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var40001
                            stor[var40001] = 0
                            var40001 = var40001 + 1
                            continue 
                    else:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).cbAddress() with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            if ext_call.return_data[12 len 20] != msg.sender:
                                mem[64] = arg2.length + 224
                                mem[arg2.length + 160] = 17
                                mem[arg2.length + 192] = 'indirizzo diverso'
                                mem[0] = 3
                                uint8(answer.length) = 34
                                Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                                require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var44001
                                stor[var44001] = 0
                                var44001 = var44001 + 1
                                continue 
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).cbAddress() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                if ext_call.return_data[12 len 20] != msg.sender:
                                    mem[64] = arg2.length + 224
                                    mem[arg2.length + 160] = 17
                                    mem[arg2.length + 192] = 'indirizzo diverso'
                                    mem[0] = 3
                                    uint8(answer.length) = 34
                                    Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                                    require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var48001
                                    stor[var48001] = 0
                                    var48001 = var48001 + 1
                                    continue 
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) <= 0:
                                    require ext_code.size(stor0)
                                    call stor0.getAddress() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).cbAddress() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    if ext_call.return_data[12 len 20] != msg.sender:
                                        mem[64] = arg2.length + 224
                                        mem[arg2.length + 160] = 17
                                        mem[arg2.length + 192] = 'indirizzo diverso'
                                        mem[0] = 3
                                        uint8(answer.length) = 34
                                        Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                                        require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var51001
                                        stor[var51001] = 0
                                        var51001 = var51001 + 1
                                        continue 
                                else:
                                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                                    require ext_code.size(stor0)
                                    call stor0.getAddress() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).cbAddress() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    if ext_call.return_data[12 len 20] != msg.sender:
                                        mem[64] = arg2.length + 224
                                        mem[arg2.length + 160] = 17
                                        mem[arg2.length + 192] = 'indirizzo diverso'
                                        mem[0] = 3
                                        uint8(answer.length) = 34
                                        Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                                        require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var52001
                                        stor[var52001] = 0
                                        var52001 = var52001 + 1
                                        continue 
        else:
            if ext_code.size(stor0):
                call stor0.getAddress() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                require ext_code.size(address(ext_call.return_data[0]))
                call address(ext_call.return_data[0]).cbAddress() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                if ext_call.return_data[12 len 20] != msg.sender:
                    mem[64] = arg2.length + 224
                    mem[arg2.length + 160] = 17
                    mem[arg2.length + 192] = 'indirizzo diverso'
                    mem[0] = 3
                    uint8(answer.length) = 34
                    Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                    require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var27001
                    stor[var27001] = 0
                    var27001 = var27001 + 1
                    continue 
            else:
                if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                    stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                    require ext_code.size(address(ext_call.return_data[0]))
                    call address(ext_call.return_data[0]).cbAddress() with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    if ext_call.return_data[12 len 20] != msg.sender:
                        mem[64] = arg2.length + 224
                        mem[arg2.length + 160] = 17
                        mem[arg2.length + 192] = 'indirizzo diverso'
                        mem[0] = 3
                        uint8(answer.length) = 34
                        Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                        require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var36001
                        stor[var36001] = 0
                        var36001 = var36001 + 1
                        continue 
                else:
                    if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                        stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                        require ext_code.size(address(ext_call.return_data[0]))
                        call address(ext_call.return_data[0]).cbAddress() with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        if ext_call.return_data[12 len 20] != msg.sender:
                            mem[64] = arg2.length + 224
                            mem[arg2.length + 160] = 17
                            mem[arg2.length + 192] = 'indirizzo diverso'
                            mem[0] = 3
                            uint8(answer.length) = 34
                            Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                            require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var40001
                            stor[var40001] = 0
                            var40001 = var40001 + 1
                            continue 
                    else:
                        if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                            stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                            require ext_code.size(address(ext_call.return_data[0]))
                            call address(ext_call.return_data[0]).cbAddress() with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            if ext_call.return_data[12 len 20] != msg.sender:
                                mem[64] = arg2.length + 224
                                mem[arg2.length + 160] = 17
                                mem[arg2.length + 192] = 'indirizzo diverso'
                                mem[0] = 3
                                uint8(answer.length) = 34
                                Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                                require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var44001
                                stor[var44001] = 0
                                var44001 = var44001 + 1
                                continue 
                        else:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                                require ext_code.size(address(ext_call.return_data[0]))
                                call address(ext_call.return_data[0]).cbAddress() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                if ext_call.return_data[12 len 20] != msg.sender:
                                    mem[64] = arg2.length + 224
                                    mem[arg2.length + 160] = 17
                                    mem[arg2.length + 192] = 'indirizzo diverso'
                                    mem[0] = 3
                                    uint8(answer.length) = 34
                                    Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                                    require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var48001
                                    stor[var48001] = 0
                                    var48001 = var48001 + 1
                                    continue 
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                    require ext_code.size(stor0)
                                    call stor0.getAddress() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                                    require ext_code.size(address(ext_call.return_data[0]))
                                    call address(ext_call.return_data[0]).cbAddress() with:
                                         gas gas_remaining - 50 wei
                                    require ext_call.success
                                    if ext_call.return_data[12 len 20] != msg.sender:
                                        mem[64] = arg2.length + 224
                                        mem[arg2.length + 160] = 17
                                        mem[arg2.length + 192] = 'indirizzo diverso'
                                        mem[0] = 3
                                        uint8(answer.length) = 34
                                        Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                                        require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var52001
                                        stor[var52001] = 0
                                        var52001 = var52001 + 1
                                        continue 
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) <= 0:
                                        require ext_code.size(stor0)
                                        call stor0.getAddress() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).cbAddress() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        if ext_call.return_data[12 len 20] != msg.sender:
                                            mem[64] = arg2.length + 224
                                            mem[arg2.length + 160] = 17
                                            mem[arg2.length + 192] = 'indirizzo diverso'
                                            mem[0] = 3
                                            uint8(answer.length) = 34
                                            Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                                            require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var55001
                                            stor[var55001] = 0
                                            var55001 = var55001 + 1
                                            continue 
                                    else:
                                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                                        require ext_code.size(stor0)
                                        call stor0.getAddress() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        stor1 = ext_call.return_data[12 len 20] or Mask(96, 160, stor1)
                                        require ext_code.size(address(ext_call.return_data[0]))
                                        call address(ext_call.return_data[0]).cbAddress() with:
                                             gas gas_remaining - 50 wei
                                        require ext_call.success
                                        if ext_call.return_data[12 len 20] != msg.sender:
                                            mem[64] = arg2.length + 224
                                            mem[arg2.length + 160] = 17
                                            mem[arg2.length + 192] = 'indirizzo diverso'
                                            mem[0] = 3
                                            uint8(answer.length) = 34
                                            Mask(248, 0, answer.length.field_8) = 'indirizzo diverso' / 256
                                            require (answer.length + 31 / 32) - 0x3da8a5f161a6c3ff06a60736d0ed24d7963cc6a5c4fafd2fa1dae9bb908e07a5 > var56001
                                            stor[var56001] = 0
                                            var56001 = var56001 + 1
                                            continue 
        ('eq', 'msg.sender', ('ext_call.return_data', 12, 20))
        mem[arg2.length + 160] = 32
        mem[arg2.length + 192] = arg2.length
        if arg2.length:
            mem[arg2.length + 224] = mem[128]
            mem[arg2.length + 256 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        emit newKrakenPriceTicker(Array(len=arg2.length, data=mem[arg2.length + 224 len arg2.length]));
        mem[64] = arg2.length + 192
        mem[arg2.length + 160] = 0
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg2.length
        require idx < arg2.length
        if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                require idx < arg2.length
                idx = idx + 1
                s = (10 * s) + mem[idx + 128 len 1] - 48
                continue 
        idx = idx + 1
        s = s
        continue 
    ETHUSD = 100 * s
    answer.length = (2 * arg2.length) + 1
    s = 0
    idx = 128
    while arg2.length + 128 > idx:
        answer[s].field_0 = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if answer.length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
        answer[Mask(251, 0, arg2.length + 31) >> 5].field_0 = 0
        idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
        while answer.length + 31 / 32 > idx:
            answer[idx].field_0 = 0
            idx = idx + 1
            continue 
}



}
