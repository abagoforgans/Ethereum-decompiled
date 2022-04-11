contract main {


// =======================  Init code  ======================


uint256 stor9;
uint256 stor10;
address stor12;

function _fallback() payable {
    stor9 = 10^16
    stor10 = 5 * 10^16
    stor12 = msg.sender
    return code.data[109 len 9974]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#
address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
uint256 dOWN_totalBets;
uint256 dOWN_etherWin;
uint256 dOWN_winBets;
uint256 dOWN_winRate;
uint256 min_bet;
uint256 max_bet;
mapping of struct stor11;
address stor12;

function DOWN_winRate() {
    return dOWN_winRate
}

function max_bet() {
    return max_bet
}

function DOWN_etherWin() {
    return dOWN_etherWin
}

function min_bet() {
    return min_bet
}

function DOWN_winBets() {
    return dOWN_winBets
}

function DOWN_totalBets() {
    return dOWN_totalBets
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function setMaxBet(uint256 arg1) {
    require msg.sender == stor12
    max_bet = arg1
}

function setMinBet(uint256 arg1) {
    require msg.sender == stor12
    min_bet = arg1
}

function drain() payable {
    require msg.sender == stor12
    call stor12 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function loser(address arg1) payable {
    call arg1 with:
       value 1 wei
         gas 0 wei
    require ext_call.success
    emit DownStats(dOWN_winRate, dOWN_totalBets, dOWN_etherWin, dOWN_winBets);
}

function draw(address arg1, uint256 arg2) payable {
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit DownStats(dOWN_winRate, dOWN_totalBets, dOWN_etherWin, dOWN_winBets);
}

function winnerReward(address arg1, uint256 arg2) payable {
    call arg1 with:
       value 175 * arg2 / 100 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit DownStats(dOWN_winRate, dOWN_totalBets, dOWN_etherWin, dOWN_winBets);
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

function createBet() payable {
    if msg.value > max_bet:
        emit DownSuccess(Array(len=15, data='Invalid payment'), msg.sender);
        call msg.sender with:
           value msg.value - 2000 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    else:
        if msg.value < min_bet:
            emit DownSuccess(Array(len=15, data='Invalid payment'), msg.sender);
            call msg.sender with:
               value msg.value - 2000 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            emit DownSuccess(Array(len=16, data='payment received'), msg.sender);
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
            call address(stor1).getPrice(string rg1) with:
                 gas gas_remaining - 710 wei
                args 'URL'
            require ext_call.success
            if ext_call.return_data[0] > (200000 * block.gasprice) + 10^18:
                stor11[0].field_0 = msg.sender
                stor11[0].field_256 = msg.value
                stor11[0].field_512 = 0
                stor11[0].field_768 = 0
            else:
                require ext_code.size(address(stor1))
                call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                   value ext_call.return_data[0] wei
                     gas gas_remaining - 9710 wei
                    args 0, 96, 160, 3, 'URL' << 232, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD' >> 256, Mask(72, -512, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD') << 512
                require ext_call.success
                stor11[ext_call.return_data[0]].field_0 = msg.sender
                stor11[ext_call.return_data[0]].field_256 = msg.value
                stor11[ext_call.return_data[0]].field_512 = ext_call.return_data[0]
                stor11[ext_call.return_data[0]].field_768 = 0
}

function _fallback() payable {
    if stor12 != msg.sender:
        if msg.value > max_bet:
            emit DownSuccess(Array(len=15, data='Invalid payment'), msg.sender);
            call msg.sender with:
               value msg.value - 2000 wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
        else:
            if msg.value >= min_bet:
                emit DownSuccess(Array(len=16, data='payment received'), msg.sender);
                if not stor0:
                    if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) <= 0:
                        if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) <= 0:
                            if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) <= 0:
                                if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                                    if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) <= 0:
                                        if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) <= 0:
                                            if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) <= 0:
                                                require ext_code.size(stor0)
                                                call stor0.getAddress() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                                                require ext_code.size(address(stor1))
                                                call address(stor1).getPrice(string rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args 'URL'
                                                require ext_call.success
                                                if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                                                    require ext_code.size(address(stor1))
                                                    call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                                       value ext_call.return_data[0] wei
                                                         gas gas_remaining - 9710 wei
                                                        args 0, 96, 160, 3, 'URL' << 232, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD' >> 256, Mask(72, -512, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD') << 512
                                                    require ext_call.success
                                                    stor11[ext_call.return_data[0]].field_0 = msg.sender
                                                    stor11[ext_call.return_data[0]].field_256 = msg.value
                                                    stor11[ext_call.return_data[0]].field_512 = ext_call.return_data[0]
                                                    stor11[ext_call.return_data[0]].field_768 = 0
                                                else:
                                                    stor11[0].field_0 = msg.sender
                                                    stor11[0].field_256 = msg.value
                                                    stor11[0].field_512 = 0
                                                    stor11[0].field_768 = 0
                                            else:
                                                stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                                                require ext_code.size(stor0)
                                                call stor0.getAddress() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                                                require ext_code.size(address(stor1))
                                                call address(stor1).getPrice(string rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args 'URL'
                                                require ext_call.success
                                                if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                                                    require ext_code.size(address(stor1))
                                                    call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                                       value ext_call.return_data[0] wei
                                                         gas gas_remaining - 9710 wei
                                                        args 0, 96, 160, 3, 'URL' << 232, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD' >> 256, Mask(72, -512, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD') << 512
                                                    require ext_call.success
                                                    stor11[ext_call.return_data[0]].field_0 = msg.sender
                                                    stor11[ext_call.return_data[0]].field_256 = msg.value
                                                    stor11[ext_call.return_data[0]].field_512 = ext_call.return_data[0]
                                                    stor11[ext_call.return_data[0]].field_768 = 0
                                                else:
                                                    stor11[0].field_0 = msg.sender
                                                    stor11[0].field_256 = msg.value
                                                    stor11[0].field_512 = 0
                                                    stor11[0].field_768 = 0
                                        else:
                                            stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                            require ext_code.size(stor0)
                                            call stor0.getAddress() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                                            require ext_code.size(address(stor1))
                                            call address(stor1).getPrice(string rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args 'URL'
                                            require ext_call.success
                                            if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                                                require ext_code.size(address(stor1))
                                                call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                                   value ext_call.return_data[0] wei
                                                     gas gas_remaining - 9710 wei
                                                    args 0, 96, 160, 3, 'URL' << 232, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD' >> 256, Mask(72, -512, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD') << 512
                                                require ext_call.success
                                                stor11[ext_call.return_data[0]].field_0 = msg.sender
                                                stor11[ext_call.return_data[0]].field_256 = msg.value
                                                stor11[ext_call.return_data[0]].field_512 = ext_call.return_data[0]
                                                stor11[ext_call.return_data[0]].field_768 = 0
                                            else:
                                                stor11[0].field_0 = msg.sender
                                                stor11[0].field_256 = msg.value
                                                stor11[0].field_512 = 0
                                                stor11[0].field_768 = 0
                                    else:
                                        stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                                        require ext_code.size(stor0)
                                        call stor0.getAddress() with:
                                             gas gas_remaining - 710 wei
                                        require ext_call.success
                                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                                        require ext_code.size(address(stor1))
                                        call address(stor1).getPrice(string rg1) with:
                                             gas gas_remaining - 710 wei
                                            args 'URL'
                                        require ext_call.success
                                        if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                                            require ext_code.size(address(stor1))
                                            call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                               value ext_call.return_data[0] wei
                                                 gas gas_remaining - 9710 wei
                                                args 0, 96, 160, 3, 'URL' << 232, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD' >> 256, Mask(72, -512, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD') << 512
                                            require ext_call.success
                                            stor11[ext_call.return_data[0]].field_0 = msg.sender
                                            stor11[ext_call.return_data[0]].field_256 = msg.value
                                            stor11[ext_call.return_data[0]].field_512 = ext_call.return_data[0]
                                            stor11[ext_call.return_data[0]].field_768 = 0
                                        else:
                                            stor11[0].field_0 = msg.sender
                                            stor11[0].field_256 = msg.value
                                            stor11[0].field_512 = 0
                                            stor11[0].field_768 = 0
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
                                    call address(stor1).getPrice(string rg1) with:
                                         gas gas_remaining - 710 wei
                                        args 'URL'
                                    require ext_call.success
                                    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                                        require ext_code.size(address(stor1))
                                        call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                           value ext_call.return_data[0] wei
                                             gas gas_remaining - 9710 wei
                                            args 0, 96, 160, 3, 'URL' << 232, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD' >> 256, Mask(72, -512, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD') << 512
                                        require ext_call.success
                                        stor11[ext_call.return_data[0]].field_0 = msg.sender
                                        stor11[ext_call.return_data[0]].field_256 = msg.value
                                        stor11[ext_call.return_data[0]].field_512 = ext_call.return_data[0]
                                        stor11[ext_call.return_data[0]].field_768 = 0
                                    else:
                                        stor11[0].field_0 = msg.sender
                                        stor11[0].field_256 = msg.value
                                        stor11[0].field_512 = 0
                                        stor11[0].field_768 = 0
                            else:
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
                                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                                require ext_code.size(address(stor1))
                                call address(stor1).getPrice(string rg1) with:
                                     gas gas_remaining - 710 wei
                                    args 'URL'
                                require ext_call.success
                                if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                                    require ext_code.size(address(stor1))
                                    call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining - 9710 wei
                                        args 0, 96, 160, 3, 'URL' << 232, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD' >> 256, Mask(72, -512, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD') << 512
                                    require ext_call.success
                                    stor11[ext_call.return_data[0]].field_0 = msg.sender
                                    stor11[ext_call.return_data[0]].field_256 = msg.value
                                    stor11[ext_call.return_data[0]].field_512 = ext_call.return_data[0]
                                    stor11[ext_call.return_data[0]].field_768 = 0
                                else:
                                    stor11[0].field_0 = msg.sender
                                    stor11[0].field_256 = msg.value
                                    stor11[0].field_512 = 0
                                    stor11[0].field_768 = 0
                        else:
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
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                            require ext_code.size(address(stor1))
                            call address(stor1).getPrice(string rg1) with:
                                 gas gas_remaining - 710 wei
                                args 'URL'
                            require ext_call.success
                            if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                                require ext_code.size(address(stor1))
                                call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining - 9710 wei
                                    args 0, 96, 160, 3, 'URL' << 232, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD' >> 256, Mask(72, -512, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD') << 512
                                require ext_call.success
                                stor11[ext_call.return_data[0]].field_0 = msg.sender
                                stor11[ext_call.return_data[0]].field_256 = msg.value
                                stor11[ext_call.return_data[0]].field_512 = ext_call.return_data[0]
                                stor11[ext_call.return_data[0]].field_768 = 0
                            else:
                                stor11[0].field_0 = msg.sender
                                stor11[0].field_256 = msg.value
                                stor11[0].field_512 = 0
                                stor11[0].field_768 = 0
                    else:
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
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        require ext_code.size(address(stor1))
                        call address(stor1).getPrice(string rg1) with:
                             gas gas_remaining - 710 wei
                            args 'URL'
                        require ext_call.success
                        if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                            require ext_code.size(address(stor1))
                            call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 9710 wei
                                args 0, 96, 160, 3, 'URL' << 232, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD' >> 256, Mask(72, -512, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD') << 512
                            require ext_call.success
                            stor11[ext_call.return_data[0]].field_0 = msg.sender
                            stor11[ext_call.return_data[0]].field_256 = msg.value
                            stor11[ext_call.return_data[0]].field_512 = ext_call.return_data[0]
                            stor11[ext_call.return_data[0]].field_768 = 0
                        else:
                            stor11[0].field_0 = msg.sender
                            stor11[0].field_256 = msg.value
                            stor11[0].field_512 = 0
                            stor11[0].field_768 = 0
                else:
                    if ext_code.size(stor0):
                        require ext_code.size(stor0)
                        call stor0.getAddress() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                        require ext_code.size(address(stor1))
                        call address(stor1).getPrice(string rg1) with:
                             gas gas_remaining - 710 wei
                            args 'URL'
                        require ext_call.success
                        if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                            require ext_code.size(address(stor1))
                            call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                               value ext_call.return_data[0] wei
                                 gas gas_remaining - 9710 wei
                                args 0, 96, 160, 3, 'URL' << 232, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD' >> 256, Mask(72, -512, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD') << 512
                            require ext_call.success
                            stor11[ext_call.return_data[0]].field_0 = msg.sender
                            stor11[ext_call.return_data[0]].field_256 = msg.value
                            stor11[ext_call.return_data[0]].field_512 = ext_call.return_data[0]
                            stor11[ext_call.return_data[0]].field_768 = 0
                        else:
                            stor11[0].field_0 = msg.sender
                            stor11[0].field_256 = msg.value
                            stor11[0].field_512 = 0
                            stor11[0].field_768 = 0
                    else:
                        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) <= 0:
                            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) <= 0:
                                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) <= 0:
                                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) <= 0:
                                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) <= 0:
                                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) <= 0:
                                                    require ext_code.size(stor0)
                                                    call stor0.getAddress() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                                                    require ext_code.size(address(stor1))
                                                    call address(stor1).getPrice(string rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args 'URL'
                                                    require ext_call.success
                                                    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                                                        require ext_code.size(address(stor1))
                                                        call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                                           value ext_call.return_data[0] wei
                                                             gas gas_remaining - 9710 wei
                                                            args 0, 96, 160, 3, 'URL' << 232, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD' >> 256, Mask(72, -512, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD') << 512
                                                        require ext_call.success
                                                        stor11[ext_call.return_data[0]].field_0 = msg.sender
                                                        stor11[ext_call.return_data[0]].field_256 = msg.value
                                                        stor11[ext_call.return_data[0]].field_512 = ext_call.return_data[0]
                                                        stor11[ext_call.return_data[0]].field_768 = 0
                                                    else:
                                                        stor11[0].field_0 = msg.sender
                                                        stor11[0].field_256 = msg.value
                                                        stor11[0].field_512 = 0
                                                        stor11[0].field_768 = 0
                                                else:
                                                    stor0 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                                                    require ext_code.size(stor0)
                                                    call stor0.getAddress() with:
                                                         gas gas_remaining - 710 wei
                                                    require ext_call.success
                                                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                                                    require ext_code.size(address(stor1))
                                                    call address(stor1).getPrice(string rg1) with:
                                                         gas gas_remaining - 710 wei
                                                        args 'URL'
                                                    require ext_call.success
                                                    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                                                        require ext_code.size(address(stor1))
                                                        call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                                           value ext_call.return_data[0] wei
                                                             gas gas_remaining - 9710 wei
                                                            args 0, 96, 160, 3, 'URL' << 232, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD' >> 256, Mask(72, -512, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD') << 512
                                                        require ext_call.success
                                                        stor11[ext_call.return_data[0]].field_0 = msg.sender
                                                        stor11[ext_call.return_data[0]].field_256 = msg.value
                                                        stor11[ext_call.return_data[0]].field_512 = ext_call.return_data[0]
                                                        stor11[ext_call.return_data[0]].field_768 = 0
                                                    else:
                                                        stor11[0].field_0 = msg.sender
                                                        stor11[0].field_256 = msg.value
                                                        stor11[0].field_512 = 0
                                                        stor11[0].field_768 = 0
                                            else:
                                                stor0 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                                require ext_code.size(stor0)
                                                call stor0.getAddress() with:
                                                     gas gas_remaining - 710 wei
                                                require ext_call.success
                                                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                                                require ext_code.size(address(stor1))
                                                call address(stor1).getPrice(string rg1) with:
                                                     gas gas_remaining - 710 wei
                                                    args 'URL'
                                                require ext_call.success
                                                if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                                                    require ext_code.size(address(stor1))
                                                    call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                                       value ext_call.return_data[0] wei
                                                         gas gas_remaining - 9710 wei
                                                        args 0, 96, 160, 3, 'URL' << 232, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD' >> 256, Mask(72, -512, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD') << 512
                                                    require ext_call.success
                                                    stor11[ext_call.return_data[0]].field_0 = msg.sender
                                                    stor11[ext_call.return_data[0]].field_256 = msg.value
                                                    stor11[ext_call.return_data[0]].field_512 = ext_call.return_data[0]
                                                    stor11[ext_call.return_data[0]].field_768 = 0
                                                else:
                                                    stor11[0].field_0 = msg.sender
                                                    stor11[0].field_256 = msg.value
                                                    stor11[0].field_512 = 0
                                                    stor11[0].field_768 = 0
                                        else:
                                            stor0 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                                            require ext_code.size(stor0)
                                            call stor0.getAddress() with:
                                                 gas gas_remaining - 710 wei
                                            require ext_call.success
                                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                                            require ext_code.size(address(stor1))
                                            call address(stor1).getPrice(string rg1) with:
                                                 gas gas_remaining - 710 wei
                                                args 'URL'
                                            require ext_call.success
                                            if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                                                require ext_code.size(address(stor1))
                                                call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                                   value ext_call.return_data[0] wei
                                                     gas gas_remaining - 9710 wei
                                                    args 0, 96, 160, 3, 'URL' << 232, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD' >> 256, Mask(72, -512, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD') << 512
                                                require ext_call.success
                                                stor11[ext_call.return_data[0]].field_0 = msg.sender
                                                stor11[ext_call.return_data[0]].field_256 = msg.value
                                                stor11[ext_call.return_data[0]].field_512 = ext_call.return_data[0]
                                                stor11[ext_call.return_data[0]].field_768 = 0
                                            else:
                                                stor11[0].field_0 = msg.sender
                                                stor11[0].field_256 = msg.value
                                                stor11[0].field_512 = 0
                                                stor11[0].field_768 = 0
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
                                        call address(stor1).getPrice(string rg1) with:
                                             gas gas_remaining - 710 wei
                                            args 'URL'
                                        require ext_call.success
                                        if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                                            require ext_code.size(address(stor1))
                                            call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                               value ext_call.return_data[0] wei
                                                 gas gas_remaining - 9710 wei
                                                args 0, 96, 160, 3, 'URL' << 232, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD' >> 256, Mask(72, -512, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD') << 512
                                            require ext_call.success
                                            stor11[ext_call.return_data[0]].field_0 = msg.sender
                                            stor11[ext_call.return_data[0]].field_256 = msg.value
                                            stor11[ext_call.return_data[0]].field_512 = ext_call.return_data[0]
                                            stor11[ext_call.return_data[0]].field_768 = 0
                                        else:
                                            stor11[0].field_0 = msg.sender
                                            stor11[0].field_256 = msg.value
                                            stor11[0].field_512 = 0
                                            stor11[0].field_768 = 0
                                else:
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
                                    uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                                    require ext_code.size(address(stor1))
                                    call address(stor1).getPrice(string rg1) with:
                                         gas gas_remaining - 710 wei
                                        args 'URL'
                                    require ext_call.success
                                    if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                                        require ext_code.size(address(stor1))
                                        call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                           value ext_call.return_data[0] wei
                                             gas gas_remaining - 9710 wei
                                            args 0, 96, 160, 3, 'URL' << 232, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD' >> 256, Mask(72, -512, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD') << 512
                                        require ext_call.success
                                        stor11[ext_call.return_data[0]].field_0 = msg.sender
                                        stor11[ext_call.return_data[0]].field_256 = msg.value
                                        stor11[ext_call.return_data[0]].field_512 = ext_call.return_data[0]
                                        stor11[ext_call.return_data[0]].field_768 = 0
                                    else:
                                        stor11[0].field_0 = msg.sender
                                        stor11[0].field_256 = msg.value
                                        stor11[0].field_512 = 0
                                        stor11[0].field_768 = 0
                            else:
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
                                uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                                require ext_code.size(address(stor1))
                                call address(stor1).getPrice(string rg1) with:
                                     gas gas_remaining - 710 wei
                                    args 'URL'
                                require ext_call.success
                                if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                                    require ext_code.size(address(stor1))
                                    call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                       value ext_call.return_data[0] wei
                                         gas gas_remaining - 9710 wei
                                        args 0, 96, 160, 3, 'URL' << 232, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD' >> 256, Mask(72, -512, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD') << 512
                                    require ext_call.success
                                    stor11[ext_call.return_data[0]].field_0 = msg.sender
                                    stor11[ext_call.return_data[0]].field_256 = msg.value
                                    stor11[ext_call.return_data[0]].field_512 = ext_call.return_data[0]
                                    stor11[ext_call.return_data[0]].field_768 = 0
                                else:
                                    stor11[0].field_0 = msg.sender
                                    stor11[0].field_256 = msg.value
                                    stor11[0].field_512 = 0
                                    stor11[0].field_768 = 0
                        else:
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
                            uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
                            require ext_code.size(address(stor1))
                            call address(stor1).getPrice(string rg1) with:
                                 gas gas_remaining - 710 wei
                                args 'URL'
                            require ext_call.success
                            if ext_call.return_data[0] <= (200000 * block.gasprice) + 10^18:
                                require ext_code.size(address(stor1))
                                call address(stor1).query(uint256 rg1, string rg2, string rg3) with:
                                   value ext_call.return_data[0] wei
                                     gas gas_remaining - 9710 wei
                                    args 0, 96, 160, 3, 'URL' << 232, 73, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD' >> 256, Mask(72, -512, 'json(https://min-api.cryptocompa', 're.com/data/price?fsym=BTC&tsyms', '=USD).USD') << 512
                                require ext_call.success
                                stor11[ext_call.return_data[0]].field_0 = msg.sender
                                stor11[ext_call.return_data[0]].field_256 = msg.value
                                stor11[ext_call.return_data[0]].field_512 = ext_call.return_data[0]
                                stor11[ext_call.return_data[0]].field_768 = 0
                            else:
                                stor11[0].field_0 = msg.sender
                                stor11[0].field_256 = msg.value
                                stor11[0].field_512 = 0
                                stor11[0].field_768 = 0
            else:
                emit DownSuccess(Array(len=15, data='Invalid payment'), msg.sender);
                call msg.sender with:
                   value msg.value - 2000 wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
    else:
        emit DownSuccess(Array(len=18, data='Contract is funded'), stor12);
}



}
