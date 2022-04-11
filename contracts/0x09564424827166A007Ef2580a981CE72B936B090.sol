contract main {


// =======================  Init code  ======================


address stor5;
uint256 stor6;
uint8 stor7;
uint256 stor10;
uint8 stor13;
address stor13; offset 8
uint256 stor15;

function _fallback() payable {
    stor6 = 50
    stor7 = 1
    stor10 = 4
    uint8(stor13.field_0) = 0
    stor15 = 0
    require not msg.value
    address(stor13.field_8) = msg.sender
    stor5 = code.data[9208 len 20]
    return code.data[261 len 8935]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#
address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
address stor5;
uint256 stor6;
uint8 stor7;
uint256 stor8;
uint256 stor9;
uint256 sub_f76bff78;
array of uint256 sub_d36f0c29;
uint8 stopped;
address stor13;
address stor13; offset 8
uint256 totalEtherRaised;
uint256 counter;
mapping of address stor16;
mapping of uint256 stor17;
mapping of uint256 stor18;

function counter() {
    return counter
}

function totalEtherRaised() {
    return totalEtherRaised
}

function stopped() {
    return bool(stopped)
}

function sub_d36f0c29(?) {
    return sub_d36f0c29[0 len sub_d36f0c29.length]
}

function sub_f76bff78(?) {
    return sub_f76bff78
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function release() {
    require msg.sender == address(stor13.field_8)
    stopped = 0
}

function emergencyStop() {
    require msg.sender == address(stor13.field_8)
    stopped = 1
}

function end_crowdsale() {
    require msg.sender == address(stor13.field_8)
    stopped = 1
}

function transferOwnership(address arg1) {
    require msg.sender == address(stor13.field_8)
    address(stor13.field_8) = arg1
}

function sub_22cc732a(?) {
    require msg.sender == address(stor13.field_8)
    stor7 = 0
    counter = 0
    stor6 = 100
    stor8 = block.timestamp
    stor9 = stor8 + (4320 * 24 * 3600)
}

function drain() {
    require msg.sender == address(stor13.field_8)
    call address(stor13.field_8) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function sub_6d7d349c(?) {
    require msg.sender == address(stor13.field_8)
    if stor7:
        require ext_code.size(stor5)
        call stor5.0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        require ext_call.success
        require ext_code.size(stor5)
        call stor5.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(stor13.field_0), ext_call.return_data[0]
        require ext_call.success
}

function _fallback() payable {
    require not stopped
    if not stor7:
        if address(stor13.field_8) != msg.sender:
            if block.timestamp < stor8:
                if address(stor13.field_8) != msg.sender:
                    require block.timestamp < stor9
            else:
                if block.timestamp >= stor9:
                    if address(stor13.field_8) != msg.sender:
                        require block.timestamp < stor9
                else:
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
                                        stor2.length.field_1 = 11
                                        stor2.length.field_8 = 'eth_rinkeby' / 256
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
                                stor2.length.field_1 = 11
                                stor2.length.field_8 = 'eth_mainnet' / 256
                                idx = 0
                                while stor2.length + 31 / 32 > idx:
                                    stor2[idx].field_0 = 0
                                    idx = idx + 1
                                    continue 
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
                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                    require ext_code.size(address(stor1))
                    call address(stor1).getPrice(string rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args 64, 500000, 3, 'URL' % 16777216
                    require ext_call.success
                    if ext_call.return_data[0] > (500000 * block.gasprice) + 10^18:
                        stor16[0] = msg.sender
                        stor17[address(msg.sender)] = msg.value
                        stor18[0] = 0
                    else:
                        require ext_code.size(address(stor1))
                        call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                           value ext_call.return_data[0] wei
                             gas gas_remaining - 9710 wei
                            args 0, 128, 192, 500000, 3, 'URL' << 232, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=ETH&tsyms', '=USD).USD' >> 256, Mask(72, -512, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=ETH&tsyms', '=USD).USD') << 512
                        require ext_call.success
                        stor16[ext_call.return_data[0]] = msg.sender
                        stor17[address(msg.sender)] = msg.value
                        stor18[ext_call.return_data[0]] = ext_call.return_data[0]
    else:
        if address(stor13.field_8) != msg.sender:
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
                                stor2.length.field_1 = 11
                                stor2.length.field_8 = 'eth_rinkeby' / 256
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
                        stor2.length.field_1 = 11
                        stor2.length.field_8 = 'eth_mainnet' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
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
            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
            require ext_code.size(address(stor1))
            call address(stor1).getPrice(string rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args 64, 500000, 3, 'URL' % 16777216
            require ext_call.success
            if ext_call.return_data[0] > (500000 * block.gasprice) + 10^18:
                stor16[0] = msg.sender
                stor17[address(msg.sender)] = msg.value
                stor18[0] = 0
            else:
                require ext_code.size(address(stor1))
                call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 9710 wei
                    args 0, 128, 192, 500000, 3, 'URL' << 232, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=ETH&tsyms', '=USD).USD' >> 256, Mask(72, -512, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=ETH&tsyms', '=USD).USD') << 512
                require ext_call.success
                stor16[ext_call.return_data[0]] = msg.sender
                stor17[address(msg.sender)] = msg.value
                stor18[ext_call.return_data[0]] = ext_call.return_data[0]
        else:
            if not stor7:
                if address(stor13.field_8) != msg.sender:
                    if block.timestamp < stor8:
                        if address(stor13.field_8) != msg.sender:
                            require block.timestamp < stor9
                    else:
                        if block.timestamp >= stor9:
                            if address(stor13.field_8) != msg.sender:
                                require block.timestamp < stor9
                        else:
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
                                                stor2.length.field_1 = 11
                                                stor2.length.field_8 = 'eth_rinkeby' / 256
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
                                        stor2.length.field_1 = 11
                                        stor2.length.field_8 = 'eth_mainnet' / 256
                                        idx = 0
                                        while stor2.length + 31 / 32 > idx:
                                            stor2[idx].field_0 = 0
                                            idx = idx + 1
                                            continue 
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
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                            require ext_code.size(address(stor1))
                            call address(stor1).getPrice(string rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args 64, 500000, 3, 'URL' % 16777216
                            require ext_call.success
                            if ext_call.return_data[0] > (500000 * block.gasprice) + 10^18:
                                stor16[0] = msg.sender
                                stor17[address(msg.sender)] = msg.value
                                stor18[0] = 0
                            else:
                                require ext_code.size(address(stor1))
                                call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining - 9710 wei
                                    args 0, 128, 192, 500000, 3, 'URL' << 232, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=ETH&tsyms', '=USD).USD' >> 256, Mask(72, -512, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=ETH&tsyms', '=USD).USD') << 512
                                require ext_call.success
                                stor16[ext_call.return_data[0]] = msg.sender
                                stor17[address(msg.sender)] = msg.value
                                stor18[ext_call.return_data[0]] = ext_call.return_data[0]
}



}
