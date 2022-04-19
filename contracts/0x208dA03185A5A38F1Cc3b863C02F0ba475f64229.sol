contract main {


// =======================  Init code  ======================


array of uint256 stor5;

function _fallback() {
    bool(stor5.length) = 0
    stor5.length.field_1 = 0
    stor5.length.field_8 = mem[128 len 31]
    idx = 0
    while stor5.length + 31 / 32 > idx:
        stor5[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[239 len 3979]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
array of struct randoms;

function randoms() {
    return randoms[0 len randoms.length].field_0
}

function _fallback() payable {
    revert
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function __callback(bytes32 arg1, string arg2) {
    randoms[].field_0 = Array(len=arg2.length, data=arg2[all])
    mem[ceil32(arg2.length) + 192] = uint256(randoms.field_0)
    idx = ceil32(arg2.length) + 192
    s = 0
    while ceil32(arg2.length) + randoms.length + 192 > idx + 32:
        mem[idx + 32] = randoms[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    emit 0x80b58de0: Array(len=randoms.length, data=mem[ceil32(arg2.length) + 192 len randoms.length + (floor32(randoms.length - 1) + -randoms.length + 32 % 32)])
}

function sub_4ee5c2ee(?) payable {
    mem[128 len arg1.length] = arg1[all]
    emit newOraclizeQuery(Array(len=53, data='Oraclize query was sent, standin', 'g by for the answer..'));
    mem[ceil32(arg1.length) + 128] = 12
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor2.length) = 0
            stor2.length.field_1 = 11
            stor2.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(stor0)
            call stor0.getAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if address(stor1) != ext_call.return_data[12 len 20]:
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
            require ext_code.size(address(stor1))
            call address(stor1).getPrice(string rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args 'WolframAlpha', arg2
            require ext_call.success
            if ext_call.return_data[0] <= (block.gasprice * arg2) + 10^18:
                mem[ceil32(arg1.length) + 484 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                if not arg1.length % 32:
                    require ext_code.size(address(stor1))
                    call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 9710 wei
                        args 20, 128, 192, arg2, 12, 'WolframAlpha' << 160, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
                else:
                    mem[floor32(arg1.length) + ceil32(arg1.length) + 484] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 516 len arg1.length % 32]
                    require ext_code.size(address(stor1))
                    call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 9710 wei
                        args 20, 128, 192, arg2, 12, 'WolframAlpha' << 160, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 484 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
                require ext_call.success
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor2.length) = 0
                stor2.length.field_1 = 12
                stor2.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(stor1) != ext_call.return_data[12 len 20]:
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                require ext_code.size(address(stor1))
                call address(stor1).getPrice(string rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args 'WolframAlpha', arg2
                require ext_call.success
                if ext_call.return_data[0] <= (block.gasprice * arg2) + 10^18:
                    mem[ceil32(arg1.length) + 484 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    if not arg1.length % 32:
                        require ext_code.size(address(stor1))
                        call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining - 9710 wei
                            args 20, 128, 192, arg2, 12, 'WolframAlpha' << 160, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
                    else:
                        mem[floor32(arg1.length) + ceil32(arg1.length) + 484] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 516 len arg1.length % 32]
                        require ext_code.size(address(stor1))
                        call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining - 9710 wei
                            args 20, 128, 192, arg2, 12, 'WolframAlpha' << 160, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 484 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
                    require ext_call.success
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 9
                    stor2.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if address(stor1) != ext_call.return_data[12 len 20]:
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                    require ext_code.size(address(stor1))
                    call address(stor1).getPrice(string rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args 'WolframAlpha', arg2
                    require ext_call.success
                    if ext_call.return_data[0] <= (block.gasprice * arg2) + 10^18:
                        mem[ceil32(arg1.length) + 484 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                        if not arg1.length % 32:
                            require ext_code.size(address(stor1))
                            call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 9710 wei
                                args 20, 128, 192, arg2, 12, 'WolframAlpha' << 160, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
                        else:
                            mem[floor32(arg1.length) + ceil32(arg1.length) + 484] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 516 len arg1.length % 32]
                            require ext_code.size(address(stor1))
                            call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 9710 wei
                                args 20, 128, 192, arg2, 12, 'WolframAlpha' << 160, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 484 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
                        require ext_call.success
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if address(stor1) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        require ext_code.size(address(stor1))
                        call address(stor1).getPrice(string rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args 'WolframAlpha', arg2
                        require ext_call.success
                        if ext_call.return_data[0] <= (block.gasprice * arg2) + 10^18:
                            mem[ceil32(arg1.length) + 420 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                            if not arg1.length % 32:
                                require ext_code.size(address(stor1))
                                call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining - 9710 wei
                                    args 20, 128, 192, arg2, 12, 'WolframAlpha' << 160, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
                            else:
                                mem[floor32(arg1.length) + ceil32(arg1.length) + 420] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 452 len arg1.length % 32]
                                require ext_code.size(address(stor1))
                                call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining - 9710 wei
                                    args 20, 128, 192, arg2, 12, 'WolframAlpha' << 160, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 420 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
                            require ext_call.success
                    else:
                        stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 11
                        stor2.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if address(stor1) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        require ext_code.size(address(stor1))
                        call address(stor1).getPrice(string rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args 'WolframAlpha', arg2
                        require ext_call.success
                        if ext_call.return_data[0] <= (block.gasprice * arg2) + 10^18:
                            mem[ceil32(arg1.length) + 484 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                            if not arg1.length % 32:
                                require ext_code.size(address(stor1))
                                call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining - 9710 wei
                                    args 20, 128, 192, arg2, 12, 'WolframAlpha' << 160, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
                            else:
                                mem[floor32(arg1.length) + ceil32(arg1.length) + 484] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 516 len arg1.length % 32]
                                require ext_code.size(address(stor1))
                                call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining - 9710 wei
                                    args 20, 128, 192, arg2, 12, 'WolframAlpha' << 160, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 484 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
                            require ext_call.success
    else:
        if ext_code.size(stor0):
            require ext_code.size(stor0)
            call stor0.getAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            if address(stor1) != ext_call.return_data[12 len 20]:
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
            require ext_code.size(address(stor1))
            call address(stor1).getPrice(string rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args 'WolframAlpha', arg2
            require ext_call.success
            if ext_call.return_data[0] <= (block.gasprice * arg2) + 10^18:
                mem[ceil32(arg1.length) + 420 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                if not arg1.length % 32:
                    require ext_code.size(address(stor1))
                    call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 9710 wei
                        args 20, 128, 192, arg2, 12, 'WolframAlpha' << 160, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
                else:
                    mem[floor32(arg1.length) + ceil32(arg1.length) + 420] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 452 len arg1.length % 32]
                    require ext_code.size(address(stor1))
                    call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 9710 wei
                        args 20, 128, 192, arg2, 12, 'WolframAlpha' << 160, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 420 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
                require ext_call.success
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor2.length) = 0
                stor2.length.field_1 = 11
                stor2.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                if address(stor1) != ext_call.return_data[12 len 20]:
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                require ext_code.size(address(stor1))
                call address(stor1).getPrice(string rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args 'WolframAlpha', arg2
                require ext_call.success
                if ext_call.return_data[0] <= (block.gasprice * arg2) + 10^18:
                    mem[ceil32(arg1.length) + 484 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                    if not arg1.length % 32:
                        require ext_code.size(address(stor1))
                        call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining - 9710 wei
                            args 20, 128, 192, arg2, 12, 'WolframAlpha' << 160, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
                    else:
                        mem[floor32(arg1.length) + ceil32(arg1.length) + 484] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 516 len arg1.length % 32]
                        require ext_code.size(address(stor1))
                        call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining - 9710 wei
                            args 20, 128, 192, arg2, 12, 'WolframAlpha' << 160, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 484 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
                    require ext_call.success
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 12
                    stor2.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    if address(stor1) != ext_call.return_data[12 len 20]:
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                    require ext_code.size(address(stor1))
                    call address(stor1).getPrice(string rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args 'WolframAlpha', arg2
                    require ext_call.success
                    if ext_call.return_data[0] <= (block.gasprice * arg2) + 10^18:
                        mem[ceil32(arg1.length) + 484 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                        if not arg1.length % 32:
                            require ext_code.size(address(stor1))
                            call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 9710 wei
                                args 20, 128, 192, arg2, 12, 'WolframAlpha' << 160, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
                        else:
                            mem[floor32(arg1.length) + ceil32(arg1.length) + 484] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 516 len arg1.length % 32]
                            require ext_code.size(address(stor1))
                            call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 9710 wei
                                args 20, 128, 192, arg2, 12, 'WolframAlpha' << 160, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 484 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
                        require ext_call.success
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 9
                        stor2.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        if address(stor1) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        require ext_code.size(address(stor1))
                        call address(stor1).getPrice(string rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args 'WolframAlpha', arg2
                        require ext_call.success
                        if ext_call.return_data[0] <= (block.gasprice * arg2) + 10^18:
                            mem[ceil32(arg1.length) + 484 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                            if not arg1.length % 32:
                                require ext_code.size(address(stor1))
                                call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining - 9710 wei
                                    args 20, 128, 192, arg2, 12, 'WolframAlpha' << 160, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
                            else:
                                mem[floor32(arg1.length) + ceil32(arg1.length) + 484] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 516 len arg1.length % 32]
                                require ext_code.size(address(stor1))
                                call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining - 9710 wei
                                    args 20, 128, 192, arg2, 12, 'WolframAlpha' << 160, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 484 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
                            require ext_call.success
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if address(stor1) != ext_call.return_data[12 len 20]:
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                            require ext_code.size(address(stor1))
                            call address(stor1).getPrice(string rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args 'WolframAlpha', arg2
                            require ext_call.success
                            if ext_call.return_data[0] <= (block.gasprice * arg2) + 10^18:
                                mem[ceil32(arg1.length) + 420 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                if not arg1.length % 32:
                                    require ext_code.size(address(stor1))
                                    call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining - 9710 wei
                                        args 20, 128, 192, arg2, 12, 'WolframAlpha' << 160, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
                                else:
                                    mem[floor32(arg1.length) + ceil32(arg1.length) + 420] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 452 len arg1.length % 32]
                                    require ext_code.size(address(stor1))
                                    call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining - 9710 wei
                                        args 20, 128, 192, arg2, 12, 'WolframAlpha' << 160, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 420 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
                                require ext_call.success
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor2.length) = 0
                            stor2.length.field_1 = 11
                            stor2.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            if address(stor1) != ext_call.return_data[12 len 20]:
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining - 710 wei
                                require ext_call.success
                                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                            require ext_code.size(address(stor1))
                            call address(stor1).getPrice(string rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args 'WolframAlpha', arg2
                            require ext_call.success
                            if ext_call.return_data[0] <= (block.gasprice * arg2) + 10^18:
                                mem[ceil32(arg1.length) + 484 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
                                if not arg1.length % 32:
                                    require ext_code.size(address(stor1))
                                    call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining - 9710 wei
                                        args 20, 128, 192, arg2, 12, 'WolframAlpha' << 160, arg1.length, Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256
                                else:
                                    mem[floor32(arg1.length) + ceil32(arg1.length) + 484] = mem[floor32(arg1.length) + ceil32(arg1.length) + -(arg1.length % 32) + 516 len arg1.length % 32]
                                    require ext_code.size(address(stor1))
                                    call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining - 9710 wei
                                        args 20, 128, 192, arg2, 12, 'WolframAlpha' << 160, arg1.length, Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + 484 len floor32(arg1.length) + -ceil32(arg1.length) + 32]
                                require ext_call.success
}



}
