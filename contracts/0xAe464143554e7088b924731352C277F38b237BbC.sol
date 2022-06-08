contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;

function _fallback() payable {
    emit newOraclizeQuery(Array(len=53, data='Oraclize query was sent, standin', 'g by for the answer..'));
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
                 gas gas_remaining - 50 wei
            require ext_call.success
            if address(stor1) != ext_call.return_data[12 len 20]:
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
            mem[356] = mem[376 len 12]
            require ext_code.size(address(stor1))
            call address(stor1).getPrice(string arg1) with:
                 gas gas_remaining - 50 wei
                args Array(len=12, data=mem[356])
            require ext_call.success
            if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                mem[420] = mem[440 len 12]
                mem[484] = Mask(80, 88, 'temperature in London') >> 88, mem[505 len 11]
                require ext_code.size(address(stor1))
                call address(stor1).query(uint256 arg1, string arg2, string arg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 9050 wei
                    args 0, 96, 160, 12, mem[420], 21, mem[484]
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
                     gas gas_remaining - 50 wei
                require ext_call.success
                if address(stor1) != ext_call.return_data[12 len 20]:
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
                mem[356] = mem[376 len 12]
                require ext_code.size(address(stor1))
                call address(stor1).getPrice(string arg1) with:
                     gas gas_remaining - 50 wei
                    args Array(len=12, data=mem[356])
                require ext_call.success
                if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                    mem[420] = mem[440 len 12]
                    mem[484] = Mask(80, 88, 'temperature in London') >> 88, mem[505 len 11]
                    require ext_code.size(address(stor1))
                    call address(stor1).query(uint256 arg1, string arg2, string arg3) with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 9050 wei
                        args 0, 96, 160, 12, mem[420], 21, mem[484]
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
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    if address(stor1) != ext_call.return_data[12 len 20]:
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
                    mem[356] = mem[376 len 12]
                    require ext_code.size(address(stor1))
                    call address(stor1).getPrice(string arg1) with:
                         gas gas_remaining - 50 wei
                        args Array(len=12, data=mem[356])
                    require ext_call.success
                    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                        mem[420] = mem[440 len 12]
                        mem[484] = Mask(80, 88, 'temperature in London') >> 88, mem[505 len 11]
                        require ext_code.size(address(stor1))
                        call address(stor1).query(uint256 arg1, string arg2, string arg3) with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining - 9050 wei
                            args 0, 96, 160, 12, mem[420], 21, mem[484]
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
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        if address(stor1) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
                        mem[292] = mem[312 len 12]
                        require ext_code.size(address(stor1))
                        call address(stor1).getPrice(string arg1) with:
                             gas gas_remaining - 50 wei
                            args Array(len=12, data=mem[292])
                        require ext_call.success
                        if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                            mem[356] = mem[376 len 12]
                            mem[420] = Mask(80, 88, 'temperature in London') >> 88, mem[441 len 11]
                            require ext_code.size(address(stor1))
                            call address(stor1).query(uint256 arg1, string arg2, string arg3) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 9050 wei
                                args 0, 96, 160, 12, mem[356], 21, mem[420]
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
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        if address(stor1) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
                        mem[356] = mem[376 len 12]
                        require ext_code.size(address(stor1))
                        call address(stor1).getPrice(string arg1) with:
                             gas gas_remaining - 50 wei
                            args Array(len=12, data=mem[356])
                        require ext_call.success
                        if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                            mem[420] = mem[440 len 12]
                            mem[484] = Mask(80, 88, 'temperature in London') >> 88, mem[505 len 11]
                            require ext_code.size(address(stor1))
                            call address(stor1).query(uint256 arg1, string arg2, string arg3) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 9050 wei
                                args 0, 96, 160, 12, mem[420], 21, mem[484]
                            require ext_call.success
    else:
        if ext_code.size(stor0):
            require ext_code.size(stor0)
            call stor0.getAddress() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if address(stor1) != ext_call.return_data[12 len 20]:
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
            mem[292] = mem[312 len 12]
            require ext_code.size(address(stor1))
            call address(stor1).getPrice(string arg1) with:
                 gas gas_remaining - 50 wei
                args Array(len=12, data=mem[292])
            require ext_call.success
            if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                mem[356] = mem[376 len 12]
                mem[420] = Mask(80, 88, 'temperature in London') >> 88, mem[441 len 11]
                require ext_code.size(address(stor1))
                call address(stor1).query(uint256 arg1, string arg2, string arg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 9050 wei
                    args 0, 96, 160, 12, mem[356], 21, mem[420]
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
                     gas gas_remaining - 50 wei
                require ext_call.success
                if address(stor1) != ext_call.return_data[12 len 20]:
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
                mem[356] = mem[376 len 12]
                require ext_code.size(address(stor1))
                call address(stor1).getPrice(string arg1) with:
                     gas gas_remaining - 50 wei
                    args Array(len=12, data=mem[356])
                require ext_call.success
                if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                    mem[420] = mem[440 len 12]
                    mem[484] = Mask(80, 88, 'temperature in London') >> 88, mem[505 len 11]
                    require ext_code.size(address(stor1))
                    call address(stor1).query(uint256 arg1, string arg2, string arg3) with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 9050 wei
                        args 0, 96, 160, 12, mem[420], 21, mem[484]
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
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    if address(stor1) != ext_call.return_data[12 len 20]:
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
                    mem[356] = mem[376 len 12]
                    require ext_code.size(address(stor1))
                    call address(stor1).getPrice(string arg1) with:
                         gas gas_remaining - 50 wei
                        args Array(len=12, data=mem[356])
                    require ext_call.success
                    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                        mem[420] = mem[440 len 12]
                        mem[484] = Mask(80, 88, 'temperature in London') >> 88, mem[505 len 11]
                        require ext_code.size(address(stor1))
                        call address(stor1).query(uint256 arg1, string arg2, string arg3) with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining - 9050 wei
                            args 0, 96, 160, 12, mem[420], 21, mem[484]
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
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        if address(stor1) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
                        mem[356] = mem[376 len 12]
                        require ext_code.size(address(stor1))
                        call address(stor1).getPrice(string arg1) with:
                             gas gas_remaining - 50 wei
                            args Array(len=12, data=mem[356])
                        require ext_call.success
                        if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                            mem[420] = mem[440 len 12]
                            mem[484] = Mask(80, 88, 'temperature in London') >> 88, mem[505 len 11]
                            require ext_code.size(address(stor1))
                            call address(stor1).query(uint256 arg1, string arg2, string arg3) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 9050 wei
                                args 0, 96, 160, 12, mem[420], 21, mem[484]
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
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            if address(stor1) != ext_call.return_data[12 len 20]:
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
                            mem[292] = mem[312 len 12]
                            require ext_code.size(address(stor1))
                            call address(stor1).getPrice(string arg1) with:
                                 gas gas_remaining - 50 wei
                                args Array(len=12, data=mem[292])
                            require ext_call.success
                            if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                                mem[356] = mem[376 len 12]
                                mem[420] = Mask(80, 88, 'temperature in London') >> 88, mem[441 len 11]
                                require ext_code.size(address(stor1))
                                call address(stor1).query(uint256 arg1, string arg2, string arg3) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining - 9050 wei
                                    args 0, 96, 160, 12, mem[356], 21, mem[420]
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
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            if address(stor1) != ext_call.return_data[12 len 20]:
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
                            mem[356] = mem[376 len 12]
                            require ext_code.size(address(stor1))
                            call address(stor1).getPrice(string arg1) with:
                                 gas gas_remaining - 50 wei
                                args Array(len=12, data=mem[356])
                            require ext_call.success
                            if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                                mem[420] = mem[440 len 12]
                                mem[484] = Mask(80, 88, 'temperature in London') >> 88, mem[505 len 11]
                                require ext_code.size(address(stor1))
                                call address(stor1).query(uint256 arg1, string arg2, string arg3) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining - 9050 wei
                                    args 0, 96, 160, 12, mem[420], 21, mem[484]
                                require ext_call.success
    return code.data[2735 len 4715]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#
address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
array of uint256 temperature;

function temperature() {
    return temperature[0 len temperature.length]
}

function _fallback() payable {
    revert 
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function update() payable {
    emit newOraclizeQuery(Array(len=53, data='Oraclize query was sent, standin', 'g by for the answer..'));
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
                 gas gas_remaining - 50 wei
            require ext_call.success
            if address(stor1) != ext_call.return_data[12 len 20]:
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
            mem[356] = mem[376 len 12]
            require ext_code.size(address(stor1))
            call address(stor1).getPrice(string arg1) with:
                 gas gas_remaining - 50 wei
                args Array(len=12, data=mem[356])
            require ext_call.success
            if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                mem[420] = mem[440 len 12]
                mem[484] = Mask(80, 88, 'temperature in London') >> 88, mem[505 len 11]
                require ext_code.size(address(stor1))
                call address(stor1).query(uint256 arg1, string arg2, string arg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 9050 wei
                    args 0, 96, 160, 12, mem[420], 21, mem[484]
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
                     gas gas_remaining - 50 wei
                require ext_call.success
                if address(stor1) != ext_call.return_data[12 len 20]:
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
                mem[356] = mem[376 len 12]
                require ext_code.size(address(stor1))
                call address(stor1).getPrice(string arg1) with:
                     gas gas_remaining - 50 wei
                    args Array(len=12, data=mem[356])
                require ext_call.success
                if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                    mem[420] = mem[440 len 12]
                    mem[484] = Mask(80, 88, 'temperature in London') >> 88, mem[505 len 11]
                    require ext_code.size(address(stor1))
                    call address(stor1).query(uint256 arg1, string arg2, string arg3) with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 9050 wei
                        args 0, 96, 160, 12, mem[420], 21, mem[484]
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
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    if address(stor1) != ext_call.return_data[12 len 20]:
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
                    mem[356] = mem[376 len 12]
                    require ext_code.size(address(stor1))
                    call address(stor1).getPrice(string arg1) with:
                         gas gas_remaining - 50 wei
                        args Array(len=12, data=mem[356])
                    require ext_call.success
                    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                        mem[420] = mem[440 len 12]
                        mem[484] = Mask(80, 88, 'temperature in London') >> 88, mem[505 len 11]
                        require ext_code.size(address(stor1))
                        call address(stor1).query(uint256 arg1, string arg2, string arg3) with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining - 9050 wei
                            args 0, 96, 160, 12, mem[420], 21, mem[484]
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
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        if address(stor1) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
                        mem[292] = mem[312 len 12]
                        require ext_code.size(address(stor1))
                        call address(stor1).getPrice(string arg1) with:
                             gas gas_remaining - 50 wei
                            args Array(len=12, data=mem[292])
                        require ext_call.success
                        if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                            mem[356] = mem[376 len 12]
                            mem[420] = Mask(80, 88, 'temperature in London') >> 88, mem[441 len 11]
                            require ext_code.size(address(stor1))
                            call address(stor1).query(uint256 arg1, string arg2, string arg3) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 9050 wei
                                args 0, 96, 160, 12, mem[356], 21, mem[420]
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
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        if address(stor1) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
                        mem[356] = mem[376 len 12]
                        require ext_code.size(address(stor1))
                        call address(stor1).getPrice(string arg1) with:
                             gas gas_remaining - 50 wei
                            args Array(len=12, data=mem[356])
                        require ext_call.success
                        if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                            mem[420] = mem[440 len 12]
                            mem[484] = Mask(80, 88, 'temperature in London') >> 88, mem[505 len 11]
                            require ext_code.size(address(stor1))
                            call address(stor1).query(uint256 arg1, string arg2, string arg3) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 9050 wei
                                args 0, 96, 160, 12, mem[420], 21, mem[484]
                            require ext_call.success
    else:
        if ext_code.size(stor0):
            require ext_code.size(stor0)
            call stor0.getAddress() with:
                 gas gas_remaining - 50 wei
            require ext_call.success
            if address(stor1) != ext_call.return_data[12 len 20]:
                require ext_code.size(stor0)
                call stor0.getAddress() with:
                     gas gas_remaining - 50 wei
                require ext_call.success
                uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
            mem[292] = mem[312 len 12]
            require ext_code.size(address(stor1))
            call address(stor1).getPrice(string arg1) with:
                 gas gas_remaining - 50 wei
                args Array(len=12, data=mem[292])
            require ext_call.success
            if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                mem[356] = mem[376 len 12]
                mem[420] = Mask(80, 88, 'temperature in London') >> 88, mem[441 len 11]
                require ext_code.size(address(stor1))
                call address(stor1).query(uint256 arg1, string arg2, string arg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 9050 wei
                    args 0, 96, 160, 12, mem[356], 21, mem[420]
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
                     gas gas_remaining - 50 wei
                require ext_call.success
                if address(stor1) != ext_call.return_data[12 len 20]:
                    require ext_code.size(stor0)
                    call stor0.getAddress() with:
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
                mem[356] = mem[376 len 12]
                require ext_code.size(address(stor1))
                call address(stor1).getPrice(string arg1) with:
                     gas gas_remaining - 50 wei
                    args Array(len=12, data=mem[356])
                require ext_call.success
                if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                    mem[420] = mem[440 len 12]
                    mem[484] = Mask(80, 88, 'temperature in London') >> 88, mem[505 len 11]
                    require ext_code.size(address(stor1))
                    call address(stor1).query(uint256 arg1, string arg2, string arg3) with:
                       value ext_call.return_data[0] wei
                         gas gas_remaining - 9050 wei
                        args 0, 96, 160, 12, mem[420], 21, mem[484]
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
                         gas gas_remaining - 50 wei
                    require ext_call.success
                    if address(stor1) != ext_call.return_data[12 len 20]:
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
                    mem[356] = mem[376 len 12]
                    require ext_code.size(address(stor1))
                    call address(stor1).getPrice(string arg1) with:
                         gas gas_remaining - 50 wei
                        args Array(len=12, data=mem[356])
                    require ext_call.success
                    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                        mem[420] = mem[440 len 12]
                        mem[484] = Mask(80, 88, 'temperature in London') >> 88, mem[505 len 11]
                        require ext_code.size(address(stor1))
                        call address(stor1).query(uint256 arg1, string arg2, string arg3) with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining - 9050 wei
                            args 0, 96, 160, 12, mem[420], 21, mem[484]
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
                             gas gas_remaining - 50 wei
                        require ext_call.success
                        if address(stor1) != ext_call.return_data[12 len 20]:
                            require ext_code.size(stor0)
                            call stor0.getAddress() with:
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
                        mem[356] = mem[376 len 12]
                        require ext_code.size(address(stor1))
                        call address(stor1).getPrice(string arg1) with:
                             gas gas_remaining - 50 wei
                            args Array(len=12, data=mem[356])
                        require ext_call.success
                        if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                            mem[420] = mem[440 len 12]
                            mem[484] = Mask(80, 88, 'temperature in London') >> 88, mem[505 len 11]
                            require ext_code.size(address(stor1))
                            call address(stor1).query(uint256 arg1, string arg2, string arg3) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 9050 wei
                                args 0, 96, 160, 12, mem[420], 21, mem[484]
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
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            if address(stor1) != ext_call.return_data[12 len 20]:
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
                            mem[292] = mem[312 len 12]
                            require ext_code.size(address(stor1))
                            call address(stor1).getPrice(string arg1) with:
                                 gas gas_remaining - 50 wei
                                args Array(len=12, data=mem[292])
                            require ext_call.success
                            if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                                mem[356] = mem[376 len 12]
                                mem[420] = Mask(80, 88, 'temperature in London') >> 88, mem[441 len 11]
                                require ext_code.size(address(stor1))
                                call address(stor1).query(uint256 arg1, string arg2, string arg3) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining - 9050 wei
                                    args 0, 96, 160, 12, mem[356], 21, mem[420]
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
                                 gas gas_remaining - 50 wei
                            require ext_call.success
                            if address(stor1) != ext_call.return_data[12 len 20]:
                                require ext_code.size(stor0)
                                call stor0.getAddress() with:
                                     gas gas_remaining - 50 wei
                                require ext_call.success
                                uint256(stor1) = ext_call.return_data[0] or Mask(96, 160, uint256(stor1))
                            mem[356] = mem[376 len 12]
                            require ext_code.size(address(stor1))
                            call address(stor1).getPrice(string arg1) with:
                                 gas gas_remaining - 50 wei
                                args Array(len=12, data=mem[356])
                            require ext_call.success
                            if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                                mem[420] = mem[440 len 12]
                                mem[484] = Mask(80, 88, 'temperature in London') >> 88, mem[505 len 11]
                                require ext_code.size(address(stor1))
                                call address(stor1).query(uint256 arg1, string arg2, string arg3) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining - 9050 wei
                                    args 0, 96, 160, 12, mem[420], 21, mem[484]
                                require ext_call.success
}



}
