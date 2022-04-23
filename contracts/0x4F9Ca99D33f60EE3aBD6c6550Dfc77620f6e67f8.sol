contract main {


// =======================  Init code  ======================


address stor5;
uint256 stor7;
uint256 stor8;
uint256 stor14;

function _fallback() payable {
    stor5 = msg.sender
    stor7 = 5 * 10^16
    stor8 = 0
    stor14 = 0
    return code.data[114 len 8377]
}



// =====================  Runtime code  =====================


#
#  - buyTicket()
#
address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
address stor5;
address stor6;
uint256 stor7;
uint256 stor8;
address stor9;
address stor10;
address stor11;
mapping of address stor12;
mapping of uint256 stor13;
uint256 stor14;

function _fallback() payable {
  stop
}

function changeBank(address arg1) {
    require msg.sender == stor5
    stor10 = arg1
}

function sub_82b2ff24(?) {
    require msg.sender == stor5
    stor6 = arg1
    stor11 = stor6
}

function changeTokenAddress(address arg1) {
    require msg.sender == stor5
    stor6 = arg1
    stor9 = stor6
}

function sub_fdf45da5(?) {
    require msg.sender == stor5
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_4a9106b6(?) {
    require msg.sender == stor5
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor2.length) = 0
            uint255(stor2.length.field_1) = 11
            Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 12
                Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 9
                    Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
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
                    else:
                        stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 11
                        Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if not ext_code.size(stor0):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 11
                Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 12
                    Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 9
                        Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
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
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor2.length) = 0
                            uint255(stor2.length.field_1) = 11
                            Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
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
    call address(stor1).getPrice(string rg1) with:
         gas gas_remaining - 710 wei
        args 'WolframAlpha'
    require ext_call.success
    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
        require ext_code.size(address(stor1))
        call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 9710 wei
            args 0, 96, 160, 12, 'WolframAlpha' << 160, 31, Mask(248, 0, 'random number between 1 and 250')
        require ext_call.success
}

function __callback(string arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            mem[ceil32(arg1.length) + 128] = 11
            mem[ceil32(arg1.length) + 160] = 'eth_mainnet'
            mem[0] = 2
            bool(stor2.length) = 0
            uint255(stor2.length.field_1) = 11
            Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
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
            mem[ceil32(arg1.length) + 224] = 0
            require ext_code.size(address(stor1))
            call address(stor1).cbAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require msg.sender == ext_call.return_data[12 len 20]
            mem[64] = ceil32(arg1.length) + 224
            mem[ceil32(arg1.length) + 192] = 0
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                mem[ceil32(arg1.length) + 128] = 12
                mem[ceil32(arg1.length) + 160] = 'eth_ropsten3'
                mem[0] = 2
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 12
                Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
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
                mem[ceil32(arg1.length) + 224] = 0
                require ext_code.size(address(stor1))
                call address(stor1).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                mem[64] = ceil32(arg1.length) + 224
                mem[ceil32(arg1.length) + 192] = 0
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    mem[ceil32(arg1.length) + 128] = 9
                    mem[ceil32(arg1.length) + 160] = 'eth_kovan'
                    mem[0] = 2
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 9
                    Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
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
                    mem[ceil32(arg1.length) + 224] = 0
                    require ext_code.size(address(stor1))
                    call address(stor1).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    mem[64] = ceil32(arg1.length) + 224
                    mem[ceil32(arg1.length) + 192] = 0
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
                        mem[ceil32(arg1.length) + 160] = 0
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        mem[64] = ceil32(arg1.length) + 160
                        mem[ceil32(arg1.length) + 128] = 0
                    else:
                        stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        mem[ceil32(arg1.length) + 128] = 11
                        mem[ceil32(arg1.length) + 160] = 'eth_rinkeby'
                        mem[0] = 2
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 11
                        Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
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
                        mem[ceil32(arg1.length) + 224] = 0
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        mem[64] = ceil32(arg1.length) + 224
                        mem[ceil32(arg1.length) + 192] = 0
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
            mem[ceil32(arg1.length) + 160] = 0
            require ext_code.size(address(stor1))
            call address(stor1).cbAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require msg.sender == ext_call.return_data[12 len 20]
            mem[64] = ceil32(arg1.length) + 160
            mem[ceil32(arg1.length) + 128] = 0
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                mem[ceil32(arg1.length) + 128] = 11
                mem[ceil32(arg1.length) + 160] = 'eth_mainnet'
                mem[0] = 2
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 11
                Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
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
                mem[ceil32(arg1.length) + 224] = 0
                require ext_code.size(address(stor1))
                call address(stor1).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                mem[64] = ceil32(arg1.length) + 224
                mem[ceil32(arg1.length) + 192] = 0
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    mem[ceil32(arg1.length) + 128] = 12
                    mem[ceil32(arg1.length) + 160] = 'eth_ropsten3'
                    mem[0] = 2
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 12
                    Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
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
                    mem[ceil32(arg1.length) + 224] = 0
                    require ext_code.size(address(stor1))
                    call address(stor1).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    mem[64] = ceil32(arg1.length) + 224
                    mem[ceil32(arg1.length) + 192] = 0
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        mem[ceil32(arg1.length) + 128] = 9
                        mem[ceil32(arg1.length) + 160] = 'eth_kovan'
                        mem[0] = 2
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 9
                        Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
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
                        mem[ceil32(arg1.length) + 224] = 0
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        mem[64] = ceil32(arg1.length) + 224
                        mem[ceil32(arg1.length) + 192] = 0
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
                            mem[ceil32(arg1.length) + 160] = 0
                            require ext_code.size(address(stor1))
                            call address(stor1).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            mem[64] = ceil32(arg1.length) + 160
                            mem[ceil32(arg1.length) + 128] = 0
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            mem[ceil32(arg1.length) + 128] = 11
                            mem[ceil32(arg1.length) + 160] = 'eth_rinkeby'
                            mem[0] = 2
                            bool(stor2.length) = 0
                            uint255(stor2.length.field_1) = 11
                            Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
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
                            mem[ceil32(arg1.length) + 224] = 0
                            require ext_code.size(address(stor1))
                            call address(stor1).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            mem[64] = ceil32(arg1.length) + 224
                            mem[ceil32(arg1.length) + 192] = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        require idx < arg1.length
        if Mask(8, 248, mem[idx + 128]) >= 0x3000000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, 248, mem[idx + 128]) <= 0x3900000000000000000000000000000000000000000000000000000000000000:
                require idx < arg1.length
                idx = idx + 1
                s = (10 * s) + mem[idx + 128 len 1] - 48
                continue 
        idx = idx + 1
        s = s
        continue 
    mem[0] = 0
    mem[32] = 13
    t = 0
    u = stor[sha3(mem[0 len 64])]
    while u < u % 25:
        mem[0] = t + 1
        mem[32] = 13
        t = t + 1
        u = u + stor13[t + 1]
        continue 
    if u < 25:
        call stor12[t] with:
           value (6 * eth.balance(this.address) + (-20 * stor7) - 15 * 10^16 / 10) + (20 * stor7) wei
             gas 2300 * is_zero(value) wei
    else:
        call stor12[t] with:
           value 20 * stor7 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    stor14 = 0
    stor8 = 0
    require ext_code.size(stor10)
    call stor10.receiveFromGame() with:
       value 3 * 10^16 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    require ext_code.size(stor11)
    call stor11.receiveFromGame() with:
       value 11 * 10^16 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function __callback(bytes32 arg1, string arg2) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            mem[ceil32(arg2.length) + 128] = 11
            mem[ceil32(arg2.length) + 160] = 'eth_mainnet'
            mem[0] = 2
            bool(stor2.length) = 0
            uint255(stor2.length.field_1) = 11
            Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
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
            mem[ceil32(arg2.length) + 224] = 0
            require ext_code.size(address(stor1))
            call address(stor1).cbAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require msg.sender == ext_call.return_data[12 len 20]
            mem[64] = ceil32(arg2.length) + 224
            mem[ceil32(arg2.length) + 192] = 0
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                mem[ceil32(arg2.length) + 128] = 12
                mem[ceil32(arg2.length) + 160] = 'eth_ropsten3'
                mem[0] = 2
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 12
                Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
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
                mem[ceil32(arg2.length) + 224] = 0
                require ext_code.size(address(stor1))
                call address(stor1).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                mem[64] = ceil32(arg2.length) + 224
                mem[ceil32(arg2.length) + 192] = 0
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    mem[ceil32(arg2.length) + 128] = 9
                    mem[ceil32(arg2.length) + 160] = 'eth_kovan'
                    mem[0] = 2
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 9
                    Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
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
                    mem[ceil32(arg2.length) + 224] = 0
                    require ext_code.size(address(stor1))
                    call address(stor1).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    mem[64] = ceil32(arg2.length) + 224
                    mem[ceil32(arg2.length) + 192] = 0
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
                        mem[ceil32(arg2.length) + 160] = 0
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        mem[64] = ceil32(arg2.length) + 160
                        mem[ceil32(arg2.length) + 128] = 0
                    else:
                        stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        mem[ceil32(arg2.length) + 128] = 11
                        mem[ceil32(arg2.length) + 160] = 'eth_rinkeby'
                        mem[0] = 2
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 11
                        Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
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
                        mem[ceil32(arg2.length) + 224] = 0
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        mem[64] = ceil32(arg2.length) + 224
                        mem[ceil32(arg2.length) + 192] = 0
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
            mem[ceil32(arg2.length) + 160] = 0
            require ext_code.size(address(stor1))
            call address(stor1).cbAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require msg.sender == ext_call.return_data[12 len 20]
            mem[64] = ceil32(arg2.length) + 160
            mem[ceil32(arg2.length) + 128] = 0
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                mem[ceil32(arg2.length) + 128] = 11
                mem[ceil32(arg2.length) + 160] = 'eth_mainnet'
                mem[0] = 2
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 11
                Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
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
                mem[ceil32(arg2.length) + 224] = 0
                require ext_code.size(address(stor1))
                call address(stor1).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                mem[64] = ceil32(arg2.length) + 224
                mem[ceil32(arg2.length) + 192] = 0
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    mem[ceil32(arg2.length) + 128] = 12
                    mem[ceil32(arg2.length) + 160] = 'eth_ropsten3'
                    mem[0] = 2
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 12
                    Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
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
                    mem[ceil32(arg2.length) + 224] = 0
                    require ext_code.size(address(stor1))
                    call address(stor1).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    mem[64] = ceil32(arg2.length) + 224
                    mem[ceil32(arg2.length) + 192] = 0
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        mem[ceil32(arg2.length) + 128] = 9
                        mem[ceil32(arg2.length) + 160] = 'eth_kovan'
                        mem[0] = 2
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 9
                        Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
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
                        mem[ceil32(arg2.length) + 224] = 0
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        mem[64] = ceil32(arg2.length) + 224
                        mem[ceil32(arg2.length) + 192] = 0
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
                            mem[ceil32(arg2.length) + 160] = 0
                            require ext_code.size(address(stor1))
                            call address(stor1).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            mem[64] = ceil32(arg2.length) + 160
                            mem[ceil32(arg2.length) + 128] = 0
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            mem[ceil32(arg2.length) + 128] = 11
                            mem[ceil32(arg2.length) + 160] = 'eth_rinkeby'
                            mem[0] = 2
                            bool(stor2.length) = 0
                            uint255(stor2.length.field_1) = 11
                            Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
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
                            mem[ceil32(arg2.length) + 224] = 0
                            require ext_code.size(address(stor1))
                            call address(stor1).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            mem[64] = ceil32(arg2.length) + 224
                            mem[ceil32(arg2.length) + 192] = 0
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
    mem[0] = 0
    mem[32] = 13
    t = 0
    u = stor[sha3(mem[0 len 64])]
    while u < u % 25:
        mem[0] = t + 1
        mem[32] = 13
        t = t + 1
        u = u + stor13[t + 1]
        continue 
    if u < 25:
        call stor12[t] with:
           value (6 * eth.balance(this.address) + (-20 * stor7) - 15 * 10^16 / 10) + (20 * stor7) wei
             gas 2300 * is_zero(value) wei
    else:
        call stor12[t] with:
           value 20 * stor7 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    stor14 = 0
    stor8 = 0
    require ext_code.size(stor10)
    call stor10.receiveFromGame() with:
       value 3 * 10^16 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    require ext_code.size(stor11)
    call stor11.receiveFromGame() with:
       value 11 * 10^16 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    mem[ceil32(arg2.length) + 128] = arg3.length
    mem[ceil32(arg2.length) + 160 len arg3.length] = arg3[all]
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 11
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 'eth_mainnet'
            mem[0] = 2
            bool(stor2.length) = 0
            uint255(stor2.length.field_1) = 11
            Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
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
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = 0
            require ext_code.size(address(stor1))
            call address(stor1).cbAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require msg.sender == ext_call.return_data[12 len 20]
            mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 256
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = 0
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 12
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 'eth_ropsten3'
                mem[0] = 2
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 12
                Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
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
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = 0
                require ext_code.size(address(stor1))
                call address(stor1).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 256
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = 0
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 9
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 'eth_kovan'
                    mem[0] = 2
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 9
                    Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
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
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = 0
                    require ext_code.size(address(stor1))
                    call address(stor1).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 256
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = 0
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
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 0
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 192
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0
                    else:
                        stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 11
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 'eth_rinkeby'
                        mem[0] = 2
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 11
                        Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
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
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = 0
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 256
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = 0
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
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 0
            require ext_code.size(address(stor1))
            call address(stor1).cbAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require msg.sender == ext_call.return_data[12 len 20]
            mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 192
            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 11
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 'eth_mainnet'
                mem[0] = 2
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 11
                Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
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
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = 0
                require ext_code.size(address(stor1))
                call address(stor1).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 256
                mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = 0
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 12
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 'eth_ropsten3'
                    mem[0] = 2
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 12
                    Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
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
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = 0
                    require ext_code.size(address(stor1))
                    call address(stor1).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 256
                    mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = 0
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 9
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 'eth_kovan'
                        mem[0] = 2
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 9
                        Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
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
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = 0
                        require ext_code.size(address(stor1))
                        call address(stor1).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 256
                        mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = 0
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
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 0
                            require ext_code.size(address(stor1))
                            call address(stor1).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 192
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 0
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 160] = 11
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 192] = 'eth_rinkeby'
                            mem[0] = 2
                            bool(stor2.length) = 0
                            uint255(stor2.length.field_1) = 11
                            Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
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
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 256] = 0
                            require ext_code.size(address(stor1))
                            call address(stor1).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            mem[64] = ceil32(arg2.length) + ceil32(arg3.length) + 256
                            mem[ceil32(arg2.length) + ceil32(arg3.length) + 224] = 0
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
    mem[0] = 0
    mem[32] = 13
    t = 0
    u = stor[sha3(mem[0 len 64])]
    while u < u % 25:
        mem[0] = t + 1
        mem[32] = 13
        t = t + 1
        u = u + stor13[t + 1]
        continue 
    if u < 25:
        call stor12[t] with:
           value (6 * eth.balance(this.address) + (-20 * stor7) - 15 * 10^16 / 10) + (20 * stor7) wei
             gas 2300 * is_zero(value) wei
    else:
        call stor12[t] with:
           value 20 * stor7 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    stor14 = 0
    stor8 = 0
    require ext_code.size(stor10)
    call stor10.receiveFromGame() with:
       value 3 * 10^16 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
    require ext_code.size(stor11)
    call stor11.receiveFromGame() with:
       value 11 * 10^16 wei
         gas gas_remaining - 9710 wei
    require ext_call.success
}



}
