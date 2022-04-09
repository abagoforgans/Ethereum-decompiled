contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint256 stor6;
array of struct stor7;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint256 stor33;

function _fallback() payable {
    stor10 = 10^17
    stor11 = 10^15
    stor12 = 0
    stor13 = 0
    stor14 = 10^14
    stor15 = 10^15
    stor16 = 13 * 10^15
    stor17 = 109 * 10^14
    stor18 = 1875 * 10^13
    stor19 = 15625 * 10^9 * 3600
    stor20 = 35 * 10^14
    stor21 = 525 * 10^13
    stor22 = 65 * 10^15
    stor23 = 7 * 10^15
    stor24 = 77 * 10^14
    stor25 = 875 * 10^13
    stor26 = 10^16
    stor27 = 417096 * 24 * 3600
    stor28 = 417840 * 24 * 3600
    stor29 = 418560 * 24 * 3600
    stor30 = 419304 * 24 * 3600
    stor31 = 420024 * 24 * 3600
    stor32 = 420768 * 24 * 3600
    stor33 = 200000
    require not msg.value
    stor0 = msg.sender
    stor6[address(msg.sender)] = stor16
    stor6[0x35c4c86f15ba80319853df6092c838ba9b39c8] = stor17
    stor16 = 0
    stor17 = 0
    stor6[0x664b21fd33865c2259d2674f75b8c2a1a4e27a7] = 1100 * 10^6
    stor7.length++
    if not stor7.length > stor7.length + 1:
        stor7[stor7.length].field_0 = 0x664b21fd33865c2259d2674f75b8c2a1a4e27a7
        stor7[stor7.length].field_256 = 15 * 10^14
        stor12 += 15 * 10^14
        stor14 -= stor6[0x664b21fd33865c2259d2674f75b8c2a1a4e27a7]
        stor6[0xaa41e0f9f4a19719007c53064b6979bdb6df8b8c] = 62800 * 10^6
        stor7.length++
    else:
        idx = 2 * stor7.length + 1
        while 2 * stor7.length > idx:
            stor7[idx].field_0 = 0
            stor7[idx].field_256 = 0
            idx = idx + 2
            continue 
        stor7[stor7.length].field_0 = 0x664b21fd33865c2259d2674f75b8c2a1a4e27a7
        stor7[stor7.length].field_256 = 15 * 10^14
        stor12 += 15 * 10^14
        stor14 -= stor6[0x664b21fd33865c2259d2674f75b8c2a1a4e27a7]
        stor6[0xaa41e0f9f4a19719007c53064b6979bdb6df8b8c] = 62800 * 10^6
        stor7.length++
        if not stor7.length <= stor7.length + 1:
            idx = 2 * stor7.length + 1
            while 2 * stor7.length > idx:
                stor7[idx].field_0 = 0
                stor7[idx].field_256 = 0
                idx = idx + 2
                continue 
    stor7[stor7.length].field_0 = 0xaa41e0f9f4a19719007c53064b6979bdb6df8b8c
    stor7[stor7.length].field_256 = 2 * 10^15
    stor12 += 2 * 10^15
    stor14 -= stor6[0xaa41e0f9f4a19719007c53064b6979bdb6df8b8c]
    stor6[0x32be343b94f860124dc4fee278fdcbd38c102d88] = 8 * 10^9
    stor14 -= stor6[0x32be343b94f860124dc4fee278fdcbd38c102d88]
    stor6[0x7ed1e469fcb3ee19c0366d829e291451be638e59] = 10^9
    stor14 -= stor6[0x7ed1e469fcb3ee19c0366d829e291451be638e59]
    stor6[0x8aa50dfc95ab047128ccdc6af4ba2ddba8d0a874] = 2 * 10^10
    stor14 -= stor6[0x8aa50dfc95ab047128ccdc6af4ba2ddba8d0a874]
    return code.data[1958 len 11935]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - distributeDonationTokens()
#
const name = 'X'

const decimals = 8

const symbol = '|X|'


address owner;
address stor1;
address stor2;
uint256 stor2;
array of uint256 stor3;
mapping of uint256 balances;
array of struct _donations;
array of struct regularDonations;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 _totalDonations;
uint256 _regularDonationsTotal;
uint256 _crowdSaleSupply;
uint256 _donationSupply;
uint256 _foundationSupply;
uint256 _AIExchangeSupply;
uint256 _lotterySupply;
uint256 _mineableSupply;
uint256 stor21;
uint256 stor22;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint256 oraclizeGasPrice;

function _mineableSupply() {
    return _mineableSupply
}

function totalSupply() {
    return totalSupply
}

function _AIExchangeSupply() {
    return _AIExchangeSupply
}

function _lotterySupply() {
    return _lotterySupply
}

function _totalDonations() {
    return _totalDonations
}

function balances(address arg1) {
    return balances[arg1]
}

function donationCount() {
    return _donations.length
}

function _crowdSaleSupply() {
    return _crowdSaleSupply
}

function _foundationSupply() {
    return _foundationSupply
}

function _donationSupply() {
    return _donationSupply
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function _donations(uint256 arg1) {
    require arg1 < _donations.length
    return _donations[arg1].field_0, _donations[arg1].field_256
}

function owner() {
    return owner
}

function regularDonations(uint256 arg1) {
    require arg1 < regularDonations.length
    return regularDonations[arg1].field_0, regularDonations[arg1].field_256
}

function oraclizeGasPrice() {
    return oraclizeGasPrice
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _regularDonationsTotal() {
    return _regularDonationsTotal
}

function __callback(bytes32 arg1, string arg2, bytes arg3) {
  stop
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function changeOraclizeGasPrice(uint256 arg1) {
    require msg.sender == owner
    oraclizeGasPrice = arg1
    return 1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawFunds() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 200000 wei
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balances[address(msg.sender)] >= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function getCurrentTokenCost() {
    if block.timestamp < stor27:
        return stor21
    if block.timestamp < stor28:
        return stor22
    if block.timestamp < stor29:
        return stor23
    if block.timestamp < stor30:
        return stor24
    if block.timestamp >= stor31:
        return stor26
    return stor25
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balances[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balances[address(arg2)] + arg3 <= balances[address(arg2)]:
        return 0
    balances[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balances[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function crowdSaleDonate() payable {
    require block.timestamp <= stor32
    if msg.value <= 0:
        return 0
    _donations.length++
    if not _donations.length <= _donations.length + 1:
        idx = 2 * _donations.length + 1
        while 2 * _donations.length > idx:
            _donations[idx].field_0 = 0
            _donations[idx].field_256 = 0
            idx = idx + 2
            continue 
    _donations[_donations.length].field_0 = msg.sender
    _donations[_donations.length].field_256 = msg.value
    _totalDonations += msg.value
    return 1
}

function giveBlockReward() payable {
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
    call address(stor2).getPrice(string rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args 'URL', oraclizeGasPrice
    require ext_call.success
    if ext_call.return_data[0] <= (block.gasprice * oraclizeGasPrice) + 10^18:
        require ext_code.size(address(stor2))
        call address(stor2).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
           value ext_call.return_data[0] wei
             gas gas_remaining - 9710 wei
            args 0, 128, 192, oraclizeGasPrice, 3, 'URL' << 232, 52, 'json(https://digitx.io/GetLotter', 'yWinner.aspx).winner', Mask(160, -256, 'json(https://digitx.io/GetLotter', 'yWinner.aspx).winner') << 256
        require ext_call.success
    if _mineableSupply < 300 * 10^6:
        balances[address(block.coinbase)] += _mineableSupply
        _mineableSupply = 0
    else:
        _mineableSupply -= 300 * 10^6
        balances[address(block.coinbase)] += 300 * 10^6
    return 1
}

function _fallback() payable {
    if block.timestamp > stor32:
        regularDonations.length++
        if not regularDonations.length <= regularDonations.length + 1:
            idx = 2 * regularDonations.length + 1
            while 2 * regularDonations.length > idx:
                regularDonations[idx].field_0 = 0
                regularDonations[idx].field_256 = 0
                idx = idx + 2
                continue 
        regularDonations[regularDonations.length].field_0 = msg.sender
        regularDonations[regularDonations.length].field_256 = msg.value
        _regularDonationsTotal += msg.value
    else:
        if block.timestamp < stor27:
            require msg.value >= stor21
            require stor21
            if _crowdSaleSupply / 100 * 10^6 >= msg.value / stor21:
                balances[address(msg.sender)] = 100 * 10^6 * msg.value / stor21
                _crowdSaleSupply += -100 * 10^6 * msg.value / stor21
                if msg.value - (msg.value / stor21 * stor21) > 0:
                    _donations.length++
                    if not _donations.length <= _donations.length + 1:
                        idx = 2 * _donations.length + 1
                        while 2 * _donations.length > idx:
                            _donations[idx].field_0 = 0
                            _donations[idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    _donations[_donations.length].field_0 = msg.sender
                    _donations[_donations.length].field_256 = msg.value - (msg.value / stor21 * stor21)
                    _totalDonations = _totalDonations + msg.value - (msg.value / stor21 * stor21)
            else:
                if _crowdSaleSupply <= 0:
                    _donations.length++
                    if not _donations.length <= _donations.length + 1:
                        idx = 2 * _donations.length + 1
                        while 2 * _donations.length > idx:
                            _donations[idx].field_0 = 0
                            _donations[idx].field_256 = 0
                            idx = idx + 2
                            continue 
                    _donations[_donations.length].field_0 = msg.sender
                    _donations[_donations.length].field_256 = msg.value
                    _totalDonations += msg.value
                else:
                    if _crowdSaleSupply / 100 * 10^6 >= msg.value / stor21:
                        _donations.length++
                        if not _donations.length <= _donations.length + 1:
                            idx = 2 * _donations.length + 1
                            while 2 * _donations.length > idx:
                                _donations[idx].field_0 = 0
                                _donations[idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        _donations[_donations.length].field_0 = msg.sender
                        _donations[_donations.length].field_256 = msg.value
                        _totalDonations += msg.value
                    else:
                        balances[address(msg.sender)] = _crowdSaleSupply
                        _donations.length++
                        if not _donations.length <= _donations.length + 1:
                            idx = 2 * _donations.length + 1
                            while 2 * _donations.length > idx:
                                _donations[idx].field_0 = 0
                                _donations[idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        _donations[_donations.length].field_0 = msg.sender
                        _donations[_donations.length].field_256 = (msg.value / stor21 * stor21) - (_crowdSaleSupply / 100 * 10^6 * stor21)
                        _totalDonations = _totalDonations + (msg.value / stor21 * stor21) - (_crowdSaleSupply / 100 * 10^6 * stor21)
                        _crowdSaleSupply = 0
        else:
            if block.timestamp < stor28:
                require msg.value >= stor22
                require stor22
                if _crowdSaleSupply / 100 * 10^6 >= msg.value / stor22:
                    balances[address(msg.sender)] = 100 * 10^6 * msg.value / stor22
                    _crowdSaleSupply += -100 * 10^6 * msg.value / stor22
                    if msg.value - (msg.value / stor22 * stor22) > 0:
                        _donations.length++
                        if not _donations.length <= _donations.length + 1:
                            idx = 2 * _donations.length + 1
                            while 2 * _donations.length > idx:
                                _donations[idx].field_0 = 0
                                _donations[idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        _donations[_donations.length].field_0 = msg.sender
                        _donations[_donations.length].field_256 = msg.value - (msg.value / stor22 * stor22)
                        _totalDonations = _totalDonations + msg.value - (msg.value / stor22 * stor22)
                else:
                    if _crowdSaleSupply <= 0:
                        _donations.length++
                        if not _donations.length <= _donations.length + 1:
                            idx = 2 * _donations.length + 1
                            while 2 * _donations.length > idx:
                                _donations[idx].field_0 = 0
                                _donations[idx].field_256 = 0
                                idx = idx + 2
                                continue 
                        _donations[_donations.length].field_0 = msg.sender
                        _donations[_donations.length].field_256 = msg.value
                        _totalDonations += msg.value
                    else:
                        if _crowdSaleSupply / 100 * 10^6 >= msg.value / stor22:
                            _donations.length++
                            if not _donations.length <= _donations.length + 1:
                                idx = 2 * _donations.length + 1
                                while 2 * _donations.length > idx:
                                    _donations[idx].field_0 = 0
                                    _donations[idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            _donations[_donations.length].field_0 = msg.sender
                            _donations[_donations.length].field_256 = msg.value
                            _totalDonations += msg.value
                        else:
                            balances[address(msg.sender)] = _crowdSaleSupply
                            _donations.length++
                            if not _donations.length <= _donations.length + 1:
                                idx = 2 * _donations.length + 1
                                while 2 * _donations.length > idx:
                                    _donations[idx].field_0 = 0
                                    _donations[idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            _donations[_donations.length].field_0 = msg.sender
                            _donations[_donations.length].field_256 = (msg.value / stor22 * stor22) - (_crowdSaleSupply / 100 * 10^6 * stor22)
                            _totalDonations = _totalDonations + (msg.value / stor22 * stor22) - (_crowdSaleSupply / 100 * 10^6 * stor22)
                            _crowdSaleSupply = 0
            else:
                if block.timestamp < stor29:
                    require msg.value >= stor23
                    require stor23
                    if _crowdSaleSupply / 100 * 10^6 >= msg.value / stor23:
                        balances[address(msg.sender)] = 100 * 10^6 * msg.value / stor23
                        _crowdSaleSupply += -100 * 10^6 * msg.value / stor23
                        if msg.value - (msg.value / stor23 * stor23) > 0:
                            _donations.length++
                            if not _donations.length <= _donations.length + 1:
                                idx = 2 * _donations.length + 1
                                while 2 * _donations.length > idx:
                                    _donations[idx].field_0 = 0
                                    _donations[idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            _donations[_donations.length].field_0 = msg.sender
                            _donations[_donations.length].field_256 = msg.value - (msg.value / stor23 * stor23)
                            _totalDonations = _totalDonations + msg.value - (msg.value / stor23 * stor23)
                    else:
                        if _crowdSaleSupply <= 0:
                            _donations.length++
                            if not _donations.length <= _donations.length + 1:
                                idx = 2 * _donations.length + 1
                                while 2 * _donations.length > idx:
                                    _donations[idx].field_0 = 0
                                    _donations[idx].field_256 = 0
                                    idx = idx + 2
                                    continue 
                            _donations[_donations.length].field_0 = msg.sender
                            _donations[_donations.length].field_256 = msg.value
                            _totalDonations += msg.value
                        else:
                            if _crowdSaleSupply / 100 * 10^6 >= msg.value / stor23:
                                _donations.length++
                                if not _donations.length <= _donations.length + 1:
                                    idx = 2 * _donations.length + 1
                                    while 2 * _donations.length > idx:
                                        _donations[idx].field_0 = 0
                                        _donations[idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                _donations[_donations.length].field_0 = msg.sender
                                _donations[_donations.length].field_256 = msg.value
                                _totalDonations += msg.value
                            else:
                                balances[address(msg.sender)] = _crowdSaleSupply
                                _donations.length++
                                if not _donations.length <= _donations.length + 1:
                                    idx = 2 * _donations.length + 1
                                    while 2 * _donations.length > idx:
                                        _donations[idx].field_0 = 0
                                        _donations[idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                _donations[_donations.length].field_0 = msg.sender
                                _donations[_donations.length].field_256 = (msg.value / stor23 * stor23) - (_crowdSaleSupply / 100 * 10^6 * stor23)
                                _totalDonations = _totalDonations + (msg.value / stor23 * stor23) - (_crowdSaleSupply / 100 * 10^6 * stor23)
                                _crowdSaleSupply = 0
                else:
                    if block.timestamp < stor30:
                        require msg.value >= stor24
                        require stor24
                        if _crowdSaleSupply / 100 * 10^6 >= msg.value / stor24:
                            balances[address(msg.sender)] = 100 * 10^6 * msg.value / stor24
                            _crowdSaleSupply += -100 * 10^6 * msg.value / stor24
                            if msg.value - (msg.value / stor24 * stor24) > 0:
                                _donations.length++
                                if not _donations.length <= _donations.length + 1:
                                    idx = 2 * _donations.length + 1
                                    while 2 * _donations.length > idx:
                                        _donations[idx].field_0 = 0
                                        _donations[idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                _donations[_donations.length].field_0 = msg.sender
                                _donations[_donations.length].field_256 = msg.value - (msg.value / stor24 * stor24)
                                _totalDonations = _totalDonations + msg.value - (msg.value / stor24 * stor24)
                        else:
                            if _crowdSaleSupply <= 0:
                                _donations.length++
                                if not _donations.length <= _donations.length + 1:
                                    idx = 2 * _donations.length + 1
                                    while 2 * _donations.length > idx:
                                        _donations[idx].field_0 = 0
                                        _donations[idx].field_256 = 0
                                        idx = idx + 2
                                        continue 
                                _donations[_donations.length].field_0 = msg.sender
                                _donations[_donations.length].field_256 = msg.value
                                _totalDonations += msg.value
                            else:
                                if _crowdSaleSupply / 100 * 10^6 >= msg.value / stor24:
                                    _donations.length++
                                    if not _donations.length <= _donations.length + 1:
                                        idx = 2 * _donations.length + 1
                                        while 2 * _donations.length > idx:
                                            _donations[idx].field_0 = 0
                                            _donations[idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                    _donations[_donations.length].field_0 = msg.sender
                                    _donations[_donations.length].field_256 = msg.value
                                    _totalDonations += msg.value
                                else:
                                    balances[address(msg.sender)] = _crowdSaleSupply
                                    _donations.length++
                                    if not _donations.length <= _donations.length + 1:
                                        idx = 2 * _donations.length + 1
                                        while 2 * _donations.length > idx:
                                            _donations[idx].field_0 = 0
                                            _donations[idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                    _donations[_donations.length].field_0 = msg.sender
                                    _donations[_donations.length].field_256 = (msg.value / stor24 * stor24) - (_crowdSaleSupply / 100 * 10^6 * stor24)
                                    _totalDonations = _totalDonations + (msg.value / stor24 * stor24) - (_crowdSaleSupply / 100 * 10^6 * stor24)
                                    _crowdSaleSupply = 0
                    else:
                        if block.timestamp >= stor31:
                            require msg.value >= stor26
                            require stor26
                            if _crowdSaleSupply / 100 * 10^6 >= msg.value / stor26:
                                balances[address(msg.sender)] = 100 * 10^6 * msg.value / stor26
                                _crowdSaleSupply += -100 * 10^6 * msg.value / stor26
                                if msg.value - (msg.value / stor26 * stor26) > 0:
                                    _donations.length++
                                    if not _donations.length <= _donations.length + 1:
                                        idx = 2 * _donations.length + 1
                                        while 2 * _donations.length > idx:
                                            _donations[idx].field_0 = 0
                                            _donations[idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                    _donations[_donations.length].field_0 = msg.sender
                                    _donations[_donations.length].field_256 = msg.value - (msg.value / stor26 * stor26)
                                    _totalDonations = _totalDonations + msg.value - (msg.value / stor26 * stor26)
                            else:
                                if _crowdSaleSupply <= 0:
                                    _donations.length++
                                    if not _donations.length <= _donations.length + 1:
                                        idx = 2 * _donations.length + 1
                                        while 2 * _donations.length > idx:
                                            _donations[idx].field_0 = 0
                                            _donations[idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                    _donations[_donations.length].field_0 = msg.sender
                                    _donations[_donations.length].field_256 = msg.value
                                    _totalDonations += msg.value
                                else:
                                    if _crowdSaleSupply / 100 * 10^6 >= msg.value / stor26:
                                        _donations.length++
                                        if not _donations.length <= _donations.length + 1:
                                            idx = 2 * _donations.length + 1
                                            while 2 * _donations.length > idx:
                                                _donations[idx].field_0 = 0
                                                _donations[idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                        _donations[_donations.length].field_0 = msg.sender
                                        _donations[_donations.length].field_256 = msg.value
                                        _totalDonations += msg.value
                                    else:
                                        balances[address(msg.sender)] = _crowdSaleSupply
                                        _donations.length++
                                        if not _donations.length <= _donations.length + 1:
                                            idx = 2 * _donations.length + 1
                                            while 2 * _donations.length > idx:
                                                _donations[idx].field_0 = 0
                                                _donations[idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                        _donations[_donations.length].field_0 = msg.sender
                                        _donations[_donations.length].field_256 = (msg.value / stor26 * stor26) - (_crowdSaleSupply / 100 * 10^6 * stor26)
                                        _totalDonations = _totalDonations + (msg.value / stor26 * stor26) - (_crowdSaleSupply / 100 * 10^6 * stor26)
                                        _crowdSaleSupply = 0
                        else:
                            require msg.value >= stor25
                            require stor25
                            if _crowdSaleSupply / 100 * 10^6 >= msg.value / stor25:
                                balances[address(msg.sender)] = 100 * 10^6 * msg.value / stor25
                                _crowdSaleSupply += -100 * 10^6 * msg.value / stor25
                                if msg.value - (msg.value / stor25 * stor25) > 0:
                                    _donations.length++
                                    if not _donations.length <= _donations.length + 1:
                                        idx = 2 * _donations.length + 1
                                        while 2 * _donations.length > idx:
                                            _donations[idx].field_0 = 0
                                            _donations[idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                    _donations[_donations.length].field_0 = msg.sender
                                    _donations[_donations.length].field_256 = msg.value - (msg.value / stor25 * stor25)
                                    _totalDonations = _totalDonations + msg.value - (msg.value / stor25 * stor25)
                            else:
                                if _crowdSaleSupply <= 0:
                                    _donations.length++
                                    if not _donations.length <= _donations.length + 1:
                                        idx = 2 * _donations.length + 1
                                        while 2 * _donations.length > idx:
                                            _donations[idx].field_0 = 0
                                            _donations[idx].field_256 = 0
                                            idx = idx + 2
                                            continue 
                                    _donations[_donations.length].field_0 = msg.sender
                                    _donations[_donations.length].field_256 = msg.value
                                    _totalDonations += msg.value
                                else:
                                    if _crowdSaleSupply / 100 * 10^6 >= msg.value / stor25:
                                        _donations.length++
                                        if not _donations.length <= _donations.length + 1:
                                            idx = 2 * _donations.length + 1
                                            while 2 * _donations.length > idx:
                                                _donations[idx].field_0 = 0
                                                _donations[idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                        _donations[_donations.length].field_0 = msg.sender
                                        _donations[_donations.length].field_256 = msg.value
                                        _totalDonations += msg.value
                                    else:
                                        balances[address(msg.sender)] = _crowdSaleSupply
                                        _donations.length++
                                        if not _donations.length <= _donations.length + 1:
                                            idx = 2 * _donations.length + 1
                                            while 2 * _donations.length > idx:
                                                _donations[idx].field_0 = 0
                                                _donations[idx].field_256 = 0
                                                idx = idx + 2
                                                continue 
                                        _donations[_donations.length].field_0 = msg.sender
                                        _donations[_donations.length].field_256 = (msg.value / stor25 * stor25) - (_crowdSaleSupply / 100 * 10^6 * stor25)
                                        _totalDonations = _totalDonations + (msg.value / stor25 * stor25) - (_crowdSaleSupply / 100 * 10^6 * stor25)
                                        _crowdSaleSupply = 0
}



}
