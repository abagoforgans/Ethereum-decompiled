contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - sub_a80c4e44(?)
#
address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
address benefactorAddress;
uint256 tokenCap;
uint256 amountRaised;
uint256 minContribution;
uint256 password;
uint256 sub_88013471;
uint256 sub_e3454bc6;
array of uint256 price;
array of uint256 milestone;
address receiveAddress;
uint256 trans;
uint256 sub_190024e0;
address rewardAddress;
mapping of uint256 balances;
uint8 stor20;
uint8 stor20; offset 8
uint256 stor20; offset 8
uint256 stor21;
array of uint256 ethUSD;
uint256 sub_f57689d5;

function sub_04b8c3cb(?) {
    return tokenCap
}

function sub_1187f9a2(?) {
    return amountRaised
}

function sub_190024e0(?) {
    return sub_190024e0
}

function sub_1e05f340(?) {
    return sub_e3454bc6
}

function password() {
    return password
}

function reward() {
    return rewardAddress
}

function price(uint256 arg1) {
    require arg1 < price.length
    return price[arg1]
}

function balances(address arg1) {
    return balances[arg1]
}

function AmountRaised() {
    return amountRaised
}

function sub_88013471(?) {
    return sub_88013471
}

function benefactor() {
    return benefactorAddress
}

function trans() {
    return trans
}

function receive() {
    return receiveAddress
}

function minContribution() {
    return minContribution
}

function ethUSD() {
    return ethUSD[0 len ethUSD.length]
}

function sub_ce90b5ec(?) {
    require stor21 < price.length
    return price[stor21]
}

function tokenCap() {
    return tokenCap
}

function sub_e3454bc6(?) {
    return sub_e3454bc6
}

function milestone(uint256 arg1) {
    require arg1 < milestone.length
    return milestone[arg1]
}

function sub_f57689d5(?) {
    return sub_f57689d5
}

function sub_d3047892(?) {
    if arg1 != sub_88013471:
    if arg2 != benefactorAddress:
    selfdestruct(benefactorAddress)
}

function sub_f13559f4(?) {
    return (tokenCap - sub_e3454bc6)
}

function checkDeadline() {
    if bool(uint8(stor20.field_0)) == 1:
        Mask(248, 0, stor20.field_8) = 1
}

function sub_119697c4(?) {
    if arg1 == sub_88013471:
        if arg3 == benefactorAddress:
            password = arg2
}

function disable(uint256 arg1, address arg2) {
    if arg1 == sub_88013471:
        if benefactorAddress == arg2:
            Mask(248, 0, stor20.field_8) = 1
}

function refund() {
    if bool(uint8(stor20.field_0)) == 1:
        balances[address(msg.sender)] = 0
        call msg.sender with:
           value balances[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit FundTransfer(msg.sender, balances[address(msg.sender)], 0);
}

function stringToUint(string arg1) {
    mem[96] = arg1.length
    mem[128 len arg1.length] = arg1[all]
    mem[64] = ceil32(arg1.length) + 160
    mem[ceil32(arg1.length) + 128] = 0
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        if mem[idx + 128 len 1] < 48:
            s = mem[idx + 128 len 1]
            idx = idx + 1
            s = s
            continue 
        if mem[idx + 128 len 1] > 57:
            s = mem[idx + 128 len 1]
            idx = idx + 1
            s = s
            continue 
        s = mem[idx + 128 len 1]
        idx = idx + 1
        s = (10 * s) + mem[idx + 128 len 1] - 48
        continue 
    return s
}

function _fallback() payable {
    require not uint8(stor20.field_8)
    require msg.value >= minContribution
    require stor21 < price.length
    receiveAddress = msg.sender
    trans = msg.value
    balances[stor15] += trans
    amountRaised += trans
    require ext_code.size(address(stor1))
    call address(stor1).getPrice(string rg1) with:
         gas gas_remaining - 710 wei
        args Array(len=3, data='URL')
    require ext_call.success
    if ext_call.return_data[0] > eth.balance(this.address):
        emit newOraclizeQuery(string rg1):
                              '',
                              'Oraclize query was NOT sent, ple',
                              'ase add some ETH to cover for th',
                              'e query fee',
    else:
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
            args 64, 700000, 3, 'URL' % 16777216
        require ext_call.success
        if ext_call.return_data[0] <= (700000 * block.gasprice) + 10^18:
            require ext_code.size(address(stor1))
            call address(stor1).query_withGasLimit(uint256 rg1, string rg2, string rg3, uint256 rg4) with:
               value ext_call.return_data[0] wei
                 gas gas_remaining - 9710 wei
                args 0, 128, 192, 700000, 3, 'URL' << 232, 76, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHUSD).result.', 'XETHZUSD.c.0' >> 256, Mask(96, -512, 'json(https://api.kraken.com/0/pu', 'blic/Ticker?pair=ETHUSD).result.', 'XETHZUSD.c.0') << 512
            require ext_call.success
}



}
