contract main {


// =======================  Init code  ======================


uint256 stor6;
uint256 stor7;
uint256 stor9;
mapping of uint256 stor10;
address stor18;

function _fallback() payable {
    stor6 = 21 * 10^10
    stor7 = 25 * 10^9
    stor9 = stor7
    require not msg.value
    stor18 = msg.sender
    stor10[stor18] = stor7
    return code.data[226 len 9417]
}



// =====================  Runtime code  =====================


const name = 'CCCoin'

const decimals = 4

const symbol = 'CCC'


address stor1;
address stor2;
uint256 stor2;
array of uint256 stor3;
uint256 totalsupply;
uint256 total_ICO_supply;
uint256 stor8;
uint256 stor9;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of address stor12;
mapping of uint256 stor13;
mapping of uint256 stor14;
mapping of uint256 stor15;
uint256 stor16;
uint256 stor17;
uint8 stor18; offset 160
uint128 stor18; offset 160
address stor18;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totalsupply() {
    return totalsupply
}

function total_ICO_supply() {
    return total_ICO_supply
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function to_end_ico() {
    require msg.sender == address(stor18.field_0)
    Mask(96, 0, stor18.field_160) = 1
    stor8 = block.timestamp
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function to_start_ico() {
    require msg.sender == address(stor18.field_0)
    Mask(96, 0, stor18.field_160) = 0
    stor16 = block.timestamp
    stor17 = stor16 + (2160 * 24 * 3600)
}

function drain() {
    require msg.sender == address(stor18.field_0)
    call address(stor18.field_0) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function monthly_token_growth() {
    require msg.sender == address(stor18.field_0)
    if block.timestamp > stor8 + (720 * 24 * 3600):
        if stor9 <= totalsupply:
            balanceOf[address(stor18.field_0)] += 125000 * 3600
            stor8 = block.timestamp
            stor9 += 125000 * 3600
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function stringToUint(string arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[idx + 128 len 1] != 46:
            if mem[idx + 128 len 1] < 48:
                s = mem[idx + 128 len 1]
                idx = idx + 1
                continue 
            else:
                if mem[idx + 128 len 1] > 57:
                    s = mem[idx + 128 len 1]
                    idx = idx + 1
                    continue 
                else:
                    s = mem[idx + 128 len 1]
                    idx = idx + 1
                    continue 
        else:
            s = mem[idx + 128 len 1]
            idx = idx + 1
            continue 
    return 0
}

function _fallback() payable {
    require not uint8(stor18.field_160)
    require block.timestamp < stor17
    if not stor1:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor3.length) = 0
            stor3.length.field_1 = 11
            stor3.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor3.length + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor3.length) = 0
                stor3.length.field_1 = 12
                stor3.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor3.length + 31 / 32 > idx:
                    stor3[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor3.length) = 0
                    stor3.length.field_1 = 9
                    stor3.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor3.length + 31 / 32 > idx:
                        stor3[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor3.length) = 0
                        stor3.length.field_1 = 11
                        stor3.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor3.length + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if not ext_code.size(stor1):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor3.length) = 0
                stor3.length.field_1 = 11
                stor3.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor3.length + 31 / 32 > idx:
                    stor3[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor3.length) = 0
                    stor3.length.field_1 = 12
                    stor3.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor3.length + 31 / 32 > idx:
                        stor3[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor3.length) = 0
                        stor3.length.field_1 = 9
                        stor3.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor3.length + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor3.length) = 0
                            stor3.length.field_1 = 11
                            stor3.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor3.length + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
    require ext_code.size(stor1)
    call stor1.getAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
    require ext_code.size(address(stor2))
    call address(stor2).getPrice(string rg1) with:
         gas gas_remaining - 710 wei
        args 'URL'
    require ext_call.success
    if ext_call.return_data[0] > (200000 * block.gasprice) + 10^18:
        stor12[0] = msg.sender
        stor13[stor12[0]] = msg.value
    else:
        require ext_code.size(address(stor2))
        call address(stor2).query(uint256 rg1, string rg2, string rg3) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 9710 wei
            args 0, 96, 160, 3, 'URL' << 232, 68, 'json(https://poloniex.com/public', '?command=returnTicker).USDT_ETH.', 'last' >> 256, Mask(32, -512, 'json(https://poloniex.com/public', '?command=returnTicker).USDT_ETH.', 'last') << 512
        require ext_call.success
        stor12[ext_call.return_data[0]] = msg.sender
        stor13[stor12[ext_call.return_data[0]]] = msg.value
}

function __callback(bytes32 arg1, string arg2) {
    mem[96] = arg2.length
    mem[128 len arg2.length] = arg2[all]
    if not stor1:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            mem[ceil32(arg2.length) + 128] = 11
            mem[ceil32(arg2.length) + 160] = 'eth_mainnet'
            mem[0] = 3
            bool(stor3.length) = 0
            stor3.length.field_1 = 11
            stor3.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor3.length + 31 / 32 > idx:
                stor3[idx].field_0 = 0
                idx = idx + 1
                continue 
            require ext_code.size(stor1)
            call stor1.getAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            mem[ceil32(arg2.length) + 224] = 0
            require ext_code.size(address(stor2))
            call address(stor2).cbAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require msg.sender == ext_call.return_data[12 len 20]
            mem[64] = ceil32(arg2.length) + 224
            mem[ceil32(arg2.length) + 192] = 0
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                mem[ceil32(arg2.length) + 128] = 12
                mem[ceil32(arg2.length) + 160] = 'eth_ropsten3'
                mem[0] = 3
                bool(stor3.length) = 0
                stor3.length.field_1 = 12
                stor3.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor3.length + 31 / 32 > idx:
                    stor3[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                mem[ceil32(arg2.length) + 224] = 0
                require ext_code.size(address(stor2))
                call address(stor2).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                mem[64] = ceil32(arg2.length) + 224
                mem[ceil32(arg2.length) + 192] = 0
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    mem[ceil32(arg2.length) + 128] = 9
                    mem[ceil32(arg2.length) + 160] = 'eth_kovan'
                    mem[0] = 3
                    bool(stor3.length) = 0
                    stor3.length.field_1 = 9
                    stor3.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor3.length + 31 / 32 > idx:
                        stor3[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                    mem[ceil32(arg2.length) + 224] = 0
                    require ext_code.size(address(stor2))
                    call address(stor2).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    mem[64] = ceil32(arg2.length) + 224
                    mem[ceil32(arg2.length) + 192] = 0
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                        mem[ceil32(arg2.length) + 160] = 0
                        require ext_code.size(address(stor2))
                        call address(stor2).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        mem[64] = ceil32(arg2.length) + 160
                        mem[ceil32(arg2.length) + 128] = 0
                    else:
                        stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        mem[ceil32(arg2.length) + 128] = 11
                        mem[ceil32(arg2.length) + 160] = 'eth_rinkeby'
                        mem[0] = 3
                        bool(stor3.length) = 0
                        stor3.length.field_1 = 11
                        stor3.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor3.length + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                        mem[ceil32(arg2.length) + 224] = 0
                        require ext_code.size(address(stor2))
                        call address(stor2).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        mem[64] = ceil32(arg2.length) + 224
                        mem[ceil32(arg2.length) + 192] = 0
    else:
        if ext_code.size(stor1):
            require ext_code.size(stor1)
            call stor1.getAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
            mem[ceil32(arg2.length) + 160] = 0
            require ext_code.size(address(stor2))
            call address(stor2).cbAddress() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require msg.sender == ext_call.return_data[12 len 20]
            mem[64] = ceil32(arg2.length) + 160
            mem[ceil32(arg2.length) + 128] = 0
        else:
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor1 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                mem[ceil32(arg2.length) + 128] = 11
                mem[ceil32(arg2.length) + 160] = 'eth_mainnet'
                mem[0] = 3
                bool(stor3.length) = 0
                stor3.length.field_1 = 11
                stor3.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor3.length + 31 / 32 > idx:
                    stor3[idx].field_0 = 0
                    idx = idx + 1
                    continue 
                require ext_code.size(stor1)
                call stor1.getAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                mem[ceil32(arg2.length) + 224] = 0
                require ext_code.size(address(stor2))
                call address(stor2).cbAddress() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require msg.sender == ext_call.return_data[12 len 20]
                mem[64] = ceil32(arg2.length) + 224
                mem[ceil32(arg2.length) + 192] = 0
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor1 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    mem[ceil32(arg2.length) + 128] = 12
                    mem[ceil32(arg2.length) + 160] = 'eth_ropsten3'
                    mem[0] = 3
                    bool(stor3.length) = 0
                    stor3.length.field_1 = 12
                    stor3.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor3.length + 31 / 32 > idx:
                        stor3[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                    require ext_code.size(stor1)
                    call stor1.getAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                    mem[ceil32(arg2.length) + 224] = 0
                    require ext_code.size(address(stor2))
                    call address(stor2).cbAddress() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require msg.sender == ext_call.return_data[12 len 20]
                    mem[64] = ceil32(arg2.length) + 224
                    mem[ceil32(arg2.length) + 192] = 0
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor1 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        mem[ceil32(arg2.length) + 128] = 9
                        mem[ceil32(arg2.length) + 160] = 'eth_kovan'
                        mem[0] = 3
                        bool(stor3.length) = 0
                        stor3.length.field_1 = 9
                        stor3.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor3.length + 31 / 32 > idx:
                            stor3[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                        require ext_code.size(stor1)
                        call stor1.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                        mem[ceil32(arg2.length) + 224] = 0
                        require ext_code.size(address(stor2))
                        call address(stor2).cbAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require msg.sender == ext_call.return_data[12 len 20]
                        mem[64] = ceil32(arg2.length) + 224
                        mem[ceil32(arg2.length) + 192] = 0
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor1 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor1 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor1 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                            mem[ceil32(arg2.length) + 160] = 0
                            require ext_code.size(address(stor2))
                            call address(stor2).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            mem[64] = ceil32(arg2.length) + 160
                            mem[ceil32(arg2.length) + 128] = 0
                        else:
                            stor1 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            mem[ceil32(arg2.length) + 128] = 11
                            mem[ceil32(arg2.length) + 160] = 'eth_rinkeby'
                            mem[0] = 3
                            bool(stor3.length) = 0
                            stor3.length.field_1 = 11
                            stor3.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor3.length + 31 / 32 > idx:
                                stor3[idx].field_0 = 0
                                idx = idx + 1
                                continue 
                            require ext_code.size(stor1)
                            call stor1.getAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
                            mem[ceil32(arg2.length) + 224] = 0
                            require ext_code.size(address(stor2))
                            call address(stor2).cbAddress() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require msg.sender == ext_call.return_data[12 len 20]
                            mem[64] = ceil32(arg2.length) + 224
                            mem[ceil32(arg2.length) + 192] = 0
    s = 0
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        if mem[idx + 128 len 1] != 46:
            if mem[idx + 128 len 1] < 48:
                s = mem[idx + 128 len 1]
                idx = idx + 1
                continue 
            else:
                if mem[idx + 128 len 1] > 57:
                    s = mem[idx + 128 len 1]
                    idx = idx + 1
                    continue 
                else:
                    s = mem[idx + 128 len 1]
                    idx = idx + 1
                    continue 
        else:
            s = mem[idx + 128 len 1]
            idx = idx + 1
            continue 
    stor14[stor12[arg1]] = 0
    stor15[stor12[arg1]] = stor14[stor12[arg1]] * stor13[stor12[arg1]] / 30000 * 10^18
    balanceOf[address(stor18.field_0)] -= stor15[stor12[arg1]]
    balanceOf[stor12[arg1]] += stor15[stor12[arg1]]
}



}
