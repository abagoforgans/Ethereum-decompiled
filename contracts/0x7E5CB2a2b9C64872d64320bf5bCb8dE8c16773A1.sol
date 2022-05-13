contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - bet(uint8 arg1)
#
const maxProfitDivisor = 10^6

const sub_7705500b(?) = 1000


address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address newOwner;
address stor2;
address stor3;
uint256 stor3;
array of uint256 stor4;
mapping of struct bets;
array of uint256 sub_14648796;
array of uint256 sub_efe0a1c2;
mapping of uint256 sub_c57f24a5;
uint256 minimumBet;
uint256 oraclizeGas;
uint256 oraclizeGasPrice;
uint256 sub_927d37a0;
uint256 sub_eecd8ea3;
uint256 maxProfit;
uint256 houseFee;

function houseFee() {
    return houseFee
}

function sub_14648796(?) {
    return sub_14648796[address(arg1)]
}

function oraclizeGas() {
    return oraclizeGas
}

function owner() {
    return owner
}

function sub_927d37a0(?) {
    return sub_927d37a0
}

function sub_ab6b1f68(?) {
    require arg2 < sub_14648796[arg1]
    return sub_14648796[arg1][arg2]
}

function isPaused() {
    return bool(uint8(stor1.field_160))
}

function maxProfit() {
    return maxProfit
}

function getBetCount() {
    return sub_efe0a1c2.length
}

function minimumBet() {
    return minimumBet
}

function sub_c57f24a5(?) {
    return sub_c57f24a5[arg1]
}

function bets(bytes32 arg1) {
    require bets[arg1].field_512 <= 1
    require bets[arg1].field_520 <= 4
    return bets[arg1].field_0, 
           bets[arg1].field_256,
           bets[arg1].field_512,
           bets[arg1].field_512,
           bets[arg1].field_768,
           bets[arg1].field_1024
}

function oraclizeGasPrice() {
    return oraclizeGasPrice
}

function newOwner() {
    return newOwner
}

function sub_eecd8ea3(?) {
    return sub_eecd8ea3
}

function sub_efe0a1c2(?) {
    require arg1 < sub_efe0a1c2.length
    return sub_efe0a1c2[arg1]
}

function _fallback() payable {
    require msg.sender == owner
}

function sub_aa80b145(?) {
    return (eth.balance(this.address) - sub_927d37a0)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function sub_35674888(?) {
    return (((1000 * arg1) - (houseFee * arg1) / 1000) - (oraclizeGas * oraclizeGasPrice))
}

function setHouseFee(uint256 arg1) {
    require msg.sender == owner
    require uint8(stor1.field_160)
    houseFee = arg1
}

function setMinimumBet(uint256 arg1) {
    require msg.sender == owner
    require uint8(stor1.field_160)
    minimumBet = arg1
}

function setOraclizeGas(uint256 arg1) {
    require msg.sender == owner
    require uint8(stor1.field_160)
    oraclizeGas = arg1
}

function sub_8ac40259(?) {
    require -houseFee + 1000
    return (1000 * maxProfit + (oraclizeGas * oraclizeGasPrice) / -houseFee + 1000)
}

function resume() {
    require msg.sender == owner
    require uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 0
    emit Resumed()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor1.field_160)
    Mask(96, 0, stor1.field_160) = 1
    emit Paused()
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function sub_57549c7b(?) {
    require msg.sender == owner
    require uint8(stor1.field_160)
    sub_eecd8ea3 = arg1
    maxProfit = (eth.balance(this.address) * sub_eecd8ea3) - (sub_927d37a0 * sub_eecd8ea3) / 10^6
}

function withdraw(address arg1, uint256 arg2) {
    require msg.sender == owner
    require eth.balance(this.address) - sub_927d37a0 >= arg2
    maxProfit = (eth.balance(this.address) * sub_eecd8ea3) - (sub_927d37a0 * sub_eecd8ea3) - (arg2 * sub_eecd8ea3) / 10^6
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getBet(bytes32 arg1) {
    require bets[arg1].field_512 <= 1
    require bets[arg1].field_520 <= 4
    require bets[arg1].field_512 <= 1
    require bets[arg1].field_520 <= 4
    return bets[arg1].field_0, 
           bets[arg1].field_256,
           bets[arg1].field_512,
           bets[arg1].field_512,
           bets[arg1].field_768,
           bets[arg1].field_1024,
           arg1
}

function sub_d615903a(?) {
    require sub_c57f24a5[address(msg.sender)] > 0
    sub_c57f24a5[address(msg.sender)] = 0
    sub_927d37a0 -= sub_c57f24a5[address(msg.sender)]
    maxProfit = (eth.balance(this.address) * sub_eecd8ea3) - (sub_927d37a0 * sub_eecd8ea3) / 10^6
    call msg.sender with:
       value sub_c57f24a5[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x5f762320: msg.sender, sub_c57f24a5[address(msg.sender)]
}

function sub_129c45fc(?) {
    require arg1 < sub_efe0a1c2.length
    require bets[stor9[arg1]].field_512 <= 1
    require bets[stor9[arg1]].field_520 <= 4
    require bets[stor9[arg1]].field_512 <= 1
    require bets[stor9[arg1]].field_520 <= 4
    return bets[stor9[arg1]].field_0, 
           bets[stor9[arg1]].field_256,
           bets[stor9[arg1]].field_512,
           bets[stor9[arg1]].field_512,
           bets[stor9[arg1]].field_768,
           bets[stor9[arg1]].field_1024,
           sub_efe0a1c2[arg1]
}

function sub_a4a6a950(?) {
    require msg.sender == owner
    require bets[arg1].field_520 <= 4
    require not bets[arg1].field_520
    sub_927d37a0 -= bets[arg1].field_1024
    maxProfit = (eth.balance(this.address) * sub_eecd8ea3) - (sub_927d37a0 * sub_eecd8ea3) / 10^6
    bets[arg1].field_520 = 4
    bets[arg1].field_1024 = bets[arg1].field_256
    sub_c57f24a5[stor7[arg1].field_0] += bets[arg1].field_1024
    sub_927d37a0 += bets[arg1].field_1024
    maxProfit = (eth.balance(this.address) * sub_eecd8ea3) - (sub_927d37a0 * sub_eecd8ea3) / 10^6
}

function sub_d305843c(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[ceil32(arg1.length) + 128] = uint8(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]))
    return memory
      from ceil32(arg1.length) + 128
       len 32
}

function sub_7d85e4f4(?) {
    require arg2 < sub_14648796[address(arg1)]
    require bets[stor8[address(arg1)][arg2]].field_512 <= 1
    require bets[stor8[address(arg1)][arg2]].field_520 <= 4
    require bets[stor8[address(arg1)][arg2]].field_512 <= 1
    require bets[stor8[address(arg1)][arg2]].field_520 <= 4
    return bets[stor8[address(arg1)][arg2]].field_0, 
           bets[stor8[address(arg1)][arg2]].field_256,
           bets[stor8[address(arg1)][arg2]].field_512,
           bets[stor8[address(arg1)][arg2]].field_512,
           bets[stor8[address(arg1)][arg2]].field_768,
           bets[stor8[address(arg1)][arg2]].field_1024,
           sub_14648796[address(arg1)][arg2]
}

function setOraclizeGasPrice(uint256 arg1) {
    require msg.sender == owner
    require uint8(stor1.field_160)
    oraclizeGasPrice = arg1
    if not stor2:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor2 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor4.length) = 0
            stor4.length.field_1 = 11
            stor4.length.field_8 = 'eth_mainnet' / 256
            idx = 0
            while stor4.length + 31 / 32 > idx:
                stor4[idx].field_0 = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor2 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor4.length) = 0
                stor4.length.field_1 = 12
                stor4.length.field_8 = 'eth_ropsten3' / 256
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    stor4[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor2 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor4.length) = 0
                    stor4.length.field_1 = 9
                    stor4.length.field_8 = 'eth_kovan' / 256
                    idx = 0
                    while stor4.length + 31 / 32 > idx:
                        stor4[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                        if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                            stor2 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                        else:
                            if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                stor2 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                            else:
                                if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                    stor2 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                    else:
                        stor2 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                        bool(stor4.length) = 0
                        stor4.length.field_1 = 11
                        stor4.length.field_8 = 'eth_rinkeby' / 256
                        idx = 0
                        while stor4.length + 31 / 32 > idx:
                            stor4[idx].field_0 = 0
                            idx = idx + 1
                            continue 
    else:
        if not ext_code.size(stor2):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor2 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor4.length) = 0
                stor4.length.field_1 = 11
                stor4.length.field_8 = 'eth_mainnet' / 256
                idx = 0
                while stor4.length + 31 / 32 > idx:
                    stor4[idx].field_0 = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor2 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor4.length) = 0
                    stor4.length.field_1 = 12
                    stor4.length.field_8 = 'eth_ropsten3' / 256
                    idx = 0
                    while stor4.length + 31 / 32 > idx:
                        stor4[idx].field_0 = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor2 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor4.length) = 0
                        stor4.length.field_1 = 9
                        stor4.length.field_8 = 'eth_kovan' / 256
                        idx = 0
                        while stor4.length + 31 / 32 > idx:
                            stor4[idx].field_0 = 0
                            idx = idx + 1
                            continue 
                    else:
                        if ext_code.size(0x146500cfd35b22e4a392fe0adc06de1a1368ed48) <= 0:
                            if ext_code.size(0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475) > 0:
                                stor2 = 0x6f485c8bf6fc43ea212e93bbf8ce046c7f1cb475
                            else:
                                if ext_code.size(0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf) > 0:
                                    stor2 = 0x20e12a1f859b3feae5fb2a0a32c18f5a65555bbf
                                else:
                                    if ext_code.size(0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa) > 0:
                                        stor2 = 0x51efaf4c8b3c9afbd5ab9f4bbc82784ab6ef8faa
                        else:
                            stor2 = 0x146500cfd35b22e4a392fe0adc06de1a1368ed48
                            bool(stor4.length) = 0
                            stor4.length.field_1 = 11
                            stor4.length.field_8 = 'eth_rinkeby' / 256
                            idx = 0
                            while stor4.length + 31 / 32 > idx:
                                stor4[idx].field_0 = 0
                                idx = idx + 1
                                continue 
    require ext_code.size(stor2)
    call stor2.getAddress() with:
         gas gas_remaining wei
    require ext_call.success
    if address(stor3) != ext_call.return_data[12 len 20]:
        require ext_code.size(stor2)
        call stor2.getAddress() with:
             gas gas_remaining wei
        require ext_call.success
        uint256(stor3) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor3))
    require ext_code.size(address(stor3))
    call address(stor3).setCustomGasPrice(uint256 arg1) with:
         gas gas_remaining wei
        args oraclizeGasPrice
    require ext_call.success
}



}
