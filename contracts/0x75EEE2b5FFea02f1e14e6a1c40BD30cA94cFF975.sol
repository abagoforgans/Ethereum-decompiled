contract main {




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - sub_3d0baf2e(?)
#  - sub_88001c10(?)
#  - sub_ec23971e(?)
#
const sub_8d30d0b3(?) = 10^16

const sub_aab306f7(?) = 2 * 10^15

const sub_b609fd1c(?) = 45

const sub_cfca78ca(?) = 5 * 10^16

const sub_d93a8ece(?) = 5


address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
address owner;
mapping of struct queries;
mapping of uint256 sub_5c148c9e;
mapping of uint256 sub_ad594cf7;
mapping of uint8 stor9;
mapping of uint256 sub_92376edc;
array of address sub_67ec100c;
array of address sub_7cfdca0a;
array of address players;
uint256 sub_f80906e9;
uint256 sub_391ee337;
uint256 sub_49e6ccb4;
uint256 sub_ea1b6d92;
uint256 sub_3dee56c7;
uint256 sub_c7db195b;
uint256 sub_7ae7622c;
uint256 sub_811661d4;
uint256 sub_c29f0742;
uint256 sub_6edeb1db;
uint256 sub_55295190;
uint256 callbackGas;
uint256 sub_792b95a2;
address sub_fedf70e3Address;
address bonusTokenAddress;
address investTokenAddress;
uint256 stor34;

function queries(bytes32 arg1) {
    return queries[arg1].field_0, 
           queries[arg1].field_256,
           queries[arg1].field_768,
           queries[arg1].field_1024,
           queries[arg1].field_1280,
           bool(queries[arg1].field_1536),
           queries[arg1].field_1792,
           bool(queries[arg1].field_2048)
}

function sub_391ee337(?) {
    return sub_391ee337
}

function sub_3dee56c7(?) {
    return sub_3dee56c7
}

function bonusToken() {
    return bonusTokenAddress
}

function sub_49e6ccb4(?) {
    return sub_49e6ccb4
}

function sub_55295190(?) {
    return sub_55295190
}

function sub_5c148c9e(?) {
    return sub_5c148c9e[arg1]
}

function sub_67ec100c(?) {
    require arg1 < sub_67ec100c.length
    return sub_67ec100c[arg1]
}

function sub_6edeb1db(?) {
    return sub_6edeb1db
}

function sub_792b95a2(?) {
    return sub_792b95a2
}

function sub_7ae7622c(?) {
    return sub_7ae7622c
}

function sub_7cfdca0a(?) {
    require arg1 < sub_7cfdca0a.length
    return sub_7cfdca0a[arg1]
}

function sub_811661d4(?) {
    return sub_811661d4
}

function owner() {
    return owner
}

function sub_92376edc(?) {
    return sub_92376edc[arg1]
}

function callbackGas() {
    return callbackGas
}

function sub_ad594cf7(?) {
    return sub_ad594cf7[arg1]
}

function investToken() {
    return investTokenAddress
}

function sub_c29f0742(?) {
    return sub_c29f0742
}

function sub_c7db195b(?) {
    return sub_c7db195b
}

function sub_ea1b6d92(?) {
    return sub_ea1b6d92
}

function sub_f4786c12(?) {
    return bool(stor9[arg1])
}

function players(uint256 arg1) {
    require arg1 < players.length
    return players[arg1]
}

function sub_f80906e9(?) {
    return sub_f80906e9
}

function sub_fedf70e3(?) {
    return sub_fedf70e3Address
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function setOraclizeGasLimit(uint256 arg1) {
    require msg.sender == owner
    callbackGas = arg1
}

function sub_2678c2f2(?) {
    require msg.sender == owner
    require arg1
    sub_fedf70e3Address = arg1
}

function setBonusToken(address arg1) {
    require msg.sender == owner
    require arg1
    bonusTokenAddress = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setInvestToken(address arg1) {
    require msg.sender == owner
    require arg1
    investTokenAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getFund(uint256 arg1) {
    require msg.sender == owner
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_c63d9359(?) {
    require msg.sender == sub_fedf70e3Address
    sub_792b95a2 = 0
    call msg.sender with:
       value sub_792b95a2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f97f1aff(?) {
    require sub_5c148c9e[msg.sender] > 0
    require eth.balance(this.address) >= sub_5c148c9e[msg.sender]
    sub_5c148c9e[msg.sender] = 0
    call msg.sender with:
       value sub_5c148c9e[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_4100d758(?) {
    require sub_ad594cf7[msg.sender] > 0
    require ext_code.size(investTokenAddress)
    call investTokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= sub_ad594cf7[msg.sender]
    sub_ad594cf7[msg.sender] = 0
    require ext_code.size(investTokenAddress)
    call investTokenAddress.transfer(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, sub_ad594cf7[msg.sender], 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function setOraclizeGasPrice(uint256 arg1) {
    require msg.sender == owner
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
        require ext_code.size(stor0)
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
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != address(stor1):
        require ext_code.size(stor0)
        call stor0.getAddress() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(stor1))
    call address(stor1).setCustomGasPrice(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_e978e8ff(?) {
    require msg.sender == owner
    require block.timestamp - sub_55295190 >= 24 * 3600
    require stor34 <= players.length
    if players.length - stor34 >= arg1:
        s = 0
        idx = 0
        s = 0
        while idx < arg1:
            require stor34 < players.length
            mem[0] = players[stor34]
            mem[32] = 10
            if sub_92376edc[stor17[stor34]] < 10^18:
                stor34++
                s = players[stor34]
                idx = idx + 1
                s = sub_92376edc[stor17[stor34]]
                continue 
            if not sub_92376edc[stor17[stor34]] / 10^18:
                if not sub_92376edc[stor17[stor34]] / 10^18:
                    require 0 <= sub_92376edc[stor17[stor34]]
                    stor34++
                    s = players[stor34]
                    idx = idx + 1
                    s = sub_92376edc[stor17[stor34]]
                    continue 
                require 10^18 * sub_92376edc[stor17[stor34]] / 10^18 / sub_92376edc[stor17[stor34]] / 10^18 == 10^18
                require 10^18 * sub_92376edc[stor17[stor34]] / 10^18 <= sub_92376edc[stor17[stor34]]
            else:
                require 100 * sub_92376edc[stor17[stor34]] / 10^18 / sub_92376edc[stor17[stor34]] / 10^18 == 100
                if not sub_92376edc[stor17[stor34]] / 10^18:
                    require 0 <= sub_92376edc[stor17[stor34]]
                    if 100 * sub_92376edc[stor17[stor34]] / 10^18 > 0:
                        mem[0] = players[stor34]
                        mem[32] = 10
                        mem[96] = 0x752881a00000000000000000000000000000000000000000000000000000000
                        mem[100] = players[stor34]
                        mem[132] = 100 * sub_92376edc[stor17[stor34]] / 10^18
                        require ext_code.size(bonusTokenAddress)
                        call bonusTokenAddress.buyTokens(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args players[stor34], 100 * sub_92376edc[stor17[stor34]] / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    stor34++
                    s = players[stor34]
                    idx = idx + 1
                    s = sub_92376edc[stor17[stor34]]
                    continue 
                require 10^18 * sub_92376edc[stor17[stor34]] / 10^18 / sub_92376edc[stor17[stor34]] / 10^18 == 10^18
                require 10^18 * sub_92376edc[stor17[stor34]] / 10^18 <= sub_92376edc[stor17[stor34]]
                if 100 * sub_92376edc[stor17[stor34]] / 10^18 > 0:
                    mem[0] = players[stor34]
                    mem[32] = 10
                    sub_92376edc[stor17[stor34]] += -1 * 10^18 * sub_92376edc[stor17[stor34]] / 10^18
                    mem[96] = 0x752881a00000000000000000000000000000000000000000000000000000000
                    mem[100] = players[stor34]
                    mem[132] = 100 * sub_92376edc[stor17[stor34]] / 10^18
                    require ext_code.size(bonusTokenAddress)
                    call bonusTokenAddress.buyTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args players[stor34], 100 * sub_92376edc[stor17[stor34]] / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            stor34++
            s = players[stor34]
            idx = idx + 1
            s = sub_92376edc[stor17[stor34]] - (10^18 * sub_92376edc[stor17[stor34]] / 10^18)
            continue 
    else:
        require stor34 <= players.length
        s = 0
        idx = 0
        s = 0
        while idx < players.length - stor34:
            require stor34 < players.length
            mem[0] = players[stor34]
            mem[32] = 10
            if sub_92376edc[stor17[stor34]] < 10^18:
                stor34++
                s = players[stor34]
                idx = idx + 1
                s = sub_92376edc[stor17[stor34]]
                continue 
            if not sub_92376edc[stor17[stor34]] / 10^18:
                if not sub_92376edc[stor17[stor34]] / 10^18:
                    require 0 <= sub_92376edc[stor17[stor34]]
                    stor34++
                    s = players[stor34]
                    idx = idx + 1
                    s = sub_92376edc[stor17[stor34]]
                    continue 
                require 10^18 * sub_92376edc[stor17[stor34]] / 10^18 / sub_92376edc[stor17[stor34]] / 10^18 == 10^18
                require 10^18 * sub_92376edc[stor17[stor34]] / 10^18 <= sub_92376edc[stor17[stor34]]
            else:
                require 100 * sub_92376edc[stor17[stor34]] / 10^18 / sub_92376edc[stor17[stor34]] / 10^18 == 100
                if not sub_92376edc[stor17[stor34]] / 10^18:
                    require 0 <= sub_92376edc[stor17[stor34]]
                    if 100 * sub_92376edc[stor17[stor34]] / 10^18 > 0:
                        mem[0] = players[stor34]
                        mem[32] = 10
                        mem[96] = 0x752881a00000000000000000000000000000000000000000000000000000000
                        mem[100] = players[stor34]
                        mem[132] = 100 * sub_92376edc[stor17[stor34]] / 10^18
                        require ext_code.size(bonusTokenAddress)
                        call bonusTokenAddress.buyTokens(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args players[stor34], 100 * sub_92376edc[stor17[stor34]] / 10^18
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                    stor34++
                    s = players[stor34]
                    idx = idx + 1
                    s = sub_92376edc[stor17[stor34]]
                    continue 
                require 10^18 * sub_92376edc[stor17[stor34]] / 10^18 / sub_92376edc[stor17[stor34]] / 10^18 == 10^18
                require 10^18 * sub_92376edc[stor17[stor34]] / 10^18 <= sub_92376edc[stor17[stor34]]
                if 100 * sub_92376edc[stor17[stor34]] / 10^18 > 0:
                    mem[0] = players[stor34]
                    mem[32] = 10
                    sub_92376edc[stor17[stor34]] += -1 * 10^18 * sub_92376edc[stor17[stor34]] / 10^18
                    mem[96] = 0x752881a00000000000000000000000000000000000000000000000000000000
                    mem[100] = players[stor34]
                    mem[132] = 100 * sub_92376edc[stor17[stor34]] / 10^18
                    require ext_code.size(bonusTokenAddress)
                    call bonusTokenAddress.buyTokens(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args players[stor34], 100 * sub_92376edc[stor17[stor34]] / 10^18
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
            stor34++
            s = players[stor34]
            idx = idx + 1
            s = sub_92376edc[stor17[stor34]] - (10^18 * sub_92376edc[stor17[stor34]] / 10^18)
            continue 
    if stor34 == players.length:
        stor34 = 0
        sub_55295190 = block.timestamp
}



}
