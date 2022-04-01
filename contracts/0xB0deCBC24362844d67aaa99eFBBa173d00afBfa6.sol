contract main {


// =======================  Init code  ======================


address stor5;
address stor6;

function _fallback() {
    stor5 = msg.sender
    stor6 = 0x27333a2362653e011224f1c9652dd37adf632a3f
    return code.data[180 len 4998]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#
address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
address stor5;
address stor6;
mapping of uint8 stor7;
uint256 stor8;

function kill() {
    if stor5 != msg.sender:
    selfdestruct(stor5)
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function __callback(bytes32 arg1, string arg2) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            mem[ceil32(arg2.length) + 128] = 11
            mem[ceil32(arg2.length) + 160] = 'eth_mainnet'
            bool(stor2.length) = 0
            stor2.length.field_1 = 11
            stor2.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor2[idx].field_0 = 0
                idx = idx + 1
                continue 
            if ext_code.size(stor0):
                call stor0.getAddress() with:
                     gas gas_remaining - 710 wei
                if ext_call.success:
                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                    mem[ceil32(arg2.length) + 224] = 0
                    if ext_code.size(address(stor1)):
                        call address(stor1).cbAddress() with:
                             gas gas_remaining - 710 wei
                        if ext_call.success:
                            require msg.sender == ext_call.return_data[12 len 20]
                            require bool(stor7[arg1]) != 1
                            mem[0] = arg1
                            mem[32] = 7
                            stor7[arg1] = 1
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
                            stor8 = s
                            if stor8 <= 50:
                                call stor6 with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                call stor5 with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                            if ext_call.success:
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                mem[ceil32(arg2.length) + 128] = 12
                mem[ceil32(arg2.length) + 160] = 'eth_ropsten3'
                bool(stor2.length) = 0
                stor2.length.field_1 = 12
                stor2.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if ext_code.size(stor0):
                    call stor0.getAddress() with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        mem[ceil32(arg2.length) + 224] = 0
                        if ext_code.size(address(stor1)):
                            call address(stor1).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            if ext_call.success:
                                require msg.sender == ext_call.return_data[12 len 20]
                                require bool(stor7[arg1]) != 1
                                mem[0] = arg1
                                mem[32] = 7
                                stor7[arg1] = 1
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
                                stor8 = s
                                if stor8 <= 50:
                                    call stor6 with:
                                       value eth.balance(this.address) wei
                                         gas 2300 * is_zero(value) wei
                                else:
                                    call stor5 with:
                                       value eth.balance(this.address) wei
                                         gas 2300 * is_zero(value) wei
                                if ext_call.success:
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    mem[ceil32(arg2.length) + 128] = 9
                    mem[ceil32(arg2.length) + 160] = 'eth_kovan'
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 9
                    stor2.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    if ext_code.size(stor0):
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        if ext_call.success:
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                            mem[ceil32(arg2.length) + 224] = 0
                            if ext_code.size(address(stor1)):
                                call address(stor1).cbAddress() with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    require msg.sender == ext_call.return_data[12 len 20]
                                    require bool(stor7[arg1]) != 1
                                    mem[0] = arg1
                                    mem[32] = 7
                                    stor7[arg1] = 1
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
                                    stor8 = s
                                    if stor8 <= 50:
                                        call stor6 with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                    else:
                                        call stor5 with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                    if ext_call.success:
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
                        if ext_code.size(stor0):
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            if ext_call.success:
                                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                                mem[ceil32(arg2.length) + 160] = 0
                                if ext_code.size(address(stor1)):
                                    call address(stor1).cbAddress() with:
                                         gas gas_remaining - 710 wei
                                    if ext_call.success:
                                        require msg.sender == ext_call.return_data[12 len 20]
                                        require bool(stor7[arg1]) != 1
                                        mem[0] = arg1
                                        mem[32] = 7
                                        stor7[arg1] = 1
                                        mem[64] = ceil32(arg2.length) + 160
                                        mem[ceil32(arg2.length) + 128] = 0
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
                                        stor8 = s
                                        if stor8 <= 50:
                                            call stor6 with:
                                               value eth.balance(this.address) wei
                                                 gas 2300 * is_zero(value) wei
                                        else:
                                            call stor5 with:
                                               value eth.balance(this.address) wei
                                                 gas 2300 * is_zero(value) wei
                                        if ext_call.success:
                    else:
                        stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        mem[ceil32(arg2.length) + 128] = 11
                        mem[ceil32(arg2.length) + 160] = 'eth_rinkeby'
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 11
                        stor2.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        if ext_code.size(stor0):
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            if ext_call.success:
                                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                                mem[ceil32(arg2.length) + 224] = 0
                                if ext_code.size(address(stor1)):
                                    call address(stor1).cbAddress() with:
                                         gas gas_remaining - 710 wei
                                    if ext_call.success:
                                        require msg.sender == ext_call.return_data[12 len 20]
                                        require bool(stor7[arg1]) != 1
                                        mem[0] = arg1
                                        mem[32] = 7
                                        stor7[arg1] = 1
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
                                        stor8 = s
                                        if stor8 <= 50:
                                            call stor6 with:
                                               value eth.balance(this.address) wei
                                                 gas 2300 * is_zero(value) wei
                                        else:
                                            call stor5 with:
                                               value eth.balance(this.address) wei
                                                 gas 2300 * is_zero(value) wei
                                        if ext_call.success:
    else:
        if ext_code.size(stor0):
            if ext_code.size(stor0):
                call stor0.getAddress() with:
                     gas gas_remaining - 710 wei
                if ext_call.success:
                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                    mem[ceil32(arg2.length) + 160] = 0
                    if ext_code.size(address(stor1)):
                        call address(stor1).cbAddress() with:
                             gas gas_remaining - 710 wei
                        if ext_call.success:
                            require msg.sender == ext_call.return_data[12 len 20]
                            require bool(stor7[arg1]) != 1
                            mem[0] = arg1
                            mem[32] = 7
                            stor7[arg1] = 1
                            mem[64] = ceil32(arg2.length) + 160
                            mem[ceil32(arg2.length) + 128] = 0
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
                            stor8 = s
                            if stor8 <= 50:
                                call stor6 with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                            else:
                                call stor5 with:
                                   value eth.balance(this.address) wei
                                     gas 2300 * is_zero(value) wei
                            if ext_call.success:
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                mem[ceil32(arg2.length) + 128] = 11
                mem[ceil32(arg2.length) + 160] = 'eth_mainnet'
                bool(stor2.length) = 0
                stor2.length.field_1 = 11
                stor2.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    stor2[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                if ext_code.size(stor0):
                    call stor0.getAddress() with:
                         gas gas_remaining - 710 wei
                    if ext_call.success:
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        mem[ceil32(arg2.length) + 224] = 0
                        if ext_code.size(address(stor1)):
                            call address(stor1).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            if ext_call.success:
                                require msg.sender == ext_call.return_data[12 len 20]
                                require bool(stor7[arg1]) != 1
                                mem[0] = arg1
                                mem[32] = 7
                                stor7[arg1] = 1
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
                                stor8 = s
                                if stor8 <= 50:
                                    call stor6 with:
                                       value eth.balance(this.address) wei
                                         gas 2300 * is_zero(value) wei
                                else:
                                    call stor5 with:
                                       value eth.balance(this.address) wei
                                         gas 2300 * is_zero(value) wei
                                if ext_call.success:
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    mem[ceil32(arg2.length) + 128] = 12
                    mem[ceil32(arg2.length) + 160] = 'eth_ropsten3'
                    bool(stor2.length) = 0
                    stor2.length.field_1 = 12
                    stor2.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        stor2[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    if ext_code.size(stor0):
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        if ext_call.success:
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                            mem[ceil32(arg2.length) + 224] = 0
                            if ext_code.size(address(stor1)):
                                call address(stor1).cbAddress() with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    require msg.sender == ext_call.return_data[12 len 20]
                                    require bool(stor7[arg1]) != 1
                                    mem[0] = arg1
                                    mem[32] = 7
                                    stor7[arg1] = 1
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
                                    stor8 = s
                                    if stor8 <= 50:
                                        call stor6 with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                    else:
                                        call stor5 with:
                                           value eth.balance(this.address) wei
                                             gas 2300 * is_zero(value) wei
                                    if ext_call.success:
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        mem[ceil32(arg2.length) + 128] = 9
                        mem[ceil32(arg2.length) + 160] = 'eth_kovan'
                        bool(stor2.length) = 0
                        stor2.length.field_1 = 9
                        stor2.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            stor2[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        if ext_code.size(stor0):
                            call stor0.getAddress() with:
                                 gas gas_remaining - 710 wei
                            if ext_call.success:
                                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                                mem[ceil32(arg2.length) + 224] = 0
                                if ext_code.size(address(stor1)):
                                    call address(stor1).cbAddress() with:
                                         gas gas_remaining - 710 wei
                                    if ext_call.success:
                                        require msg.sender == ext_call.return_data[12 len 20]
                                        require bool(stor7[arg1]) != 1
                                        mem[0] = arg1
                                        mem[32] = 7
                                        stor7[arg1] = 1
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
                                        stor8 = s
                                        if stor8 <= 50:
                                            call stor6 with:
                                               value eth.balance(this.address) wei
                                                 gas 2300 * is_zero(value) wei
                                        else:
                                            call stor5 with:
                                               value eth.balance(this.address) wei
                                                 gas 2300 * is_zero(value) wei
                                        if ext_call.success:
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
                            if ext_code.size(stor0):
                                call stor0.getAddress() with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                                    mem[ceil32(arg2.length) + 160] = 0
                                    if ext_code.size(address(stor1)):
                                        call address(stor1).cbAddress() with:
                                             gas gas_remaining - 710 wei
                                        if ext_call.success:
                                            require msg.sender == ext_call.return_data[12 len 20]
                                            require bool(stor7[arg1]) != 1
                                            mem[0] = arg1
                                            mem[32] = 7
                                            stor7[arg1] = 1
                                            mem[64] = ceil32(arg2.length) + 160
                                            mem[ceil32(arg2.length) + 128] = 0
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
                                            stor8 = s
                                            if stor8 <= 50:
                                                call stor6 with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                            else:
                                                call stor5 with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                            if ext_call.success:
                        else:
                            stor0 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            mem[ceil32(arg2.length) + 128] = 11
                            mem[ceil32(arg2.length) + 160] = 'eth_rinkeby'
                            bool(stor2.length) = 0
                            stor2.length.field_1 = 11
                            stor2.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                stor2[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            if ext_code.size(stor0):
                                call stor0.getAddress() with:
                                     gas gas_remaining - 710 wei
                                if ext_call.success:
                                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                                    mem[ceil32(arg2.length) + 224] = 0
                                    if ext_code.size(address(stor1)):
                                        call address(stor1).cbAddress() with:
                                             gas gas_remaining - 710 wei
                                        if ext_call.success:
                                            require msg.sender == ext_call.return_data[12 len 20]
                                            require bool(stor7[arg1]) != 1
                                            mem[0] = arg1
                                            mem[32] = 7
                                            stor7[arg1] = 1
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
                                            stor8 = s
                                            if stor8 <= 50:
                                                call stor6 with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                            else:
                                                call stor5 with:
                                                   value eth.balance(this.address) wei
                                                     gas 2300 * is_zero(value) wei
                                            if ext_call.success:
    revert
}



}
