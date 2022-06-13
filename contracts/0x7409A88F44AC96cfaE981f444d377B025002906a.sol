contract main {




// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - sub_30d14655(?)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - lottery()
#
const sub_0ee4aa4b(?) = 2

const sub_4968d33d(?) = 0

const sub_aab306f7(?) = 2 * 10^15

const sub_bf147829(?) = 3

const sub_d93a8ece(?) = 2

const sub_f027af76(?) = 1

const MIN_BET = 10^16


address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
address owner;
mapping of struct queries;
mapping of uint256 sub_14fe75fa;
mapping of uint8 stor8;
mapping of uint256 sub_92376edc;
mapping of uint256 sub_f06dedaf;
mapping of uint256 sub_8a03bd38;
array of address sub_a1a4a27b;
array of struct players;
uint256 sub_ca9db4b5;
uint256 sub_83c49d36;
uint256 sub_b464e7ec;
uint256 sub_c5196426;
uint256 sub_442208b2;
uint256 sub_55295190;
uint256 callbackGas;
uint256 sub_792b95a2;
address sub_fedf70e3Address;
address tokenAddress;
uint256 stor24;

function sub_14fe75fa(?) {
    return sub_14fe75fa[arg1]
}

function queries(bytes32 arg1) {
    return queries[arg1].field_0, 
           queries[arg1].field_256,
           queries[arg1].field_768,
           queries[arg1].field_1024,
           queries[arg1].field_1280,
           queries[arg1].field_1536,
           bool(queries[arg1].field_1792)
}

function sub_442208b2(?) {
    return sub_442208b2
}

function sub_55295190(?) {
    return sub_55295190
}

function sub_792b95a2(?) {
    return sub_792b95a2
}

function sub_83c49d36(?) {
    return sub_83c49d36
}

function sub_8a03bd38(?) {
    return sub_8a03bd38[arg1]
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

function sub_a1a4a27b(?) {
    require arg1 < sub_a1a4a27b.length
    return sub_a1a4a27b[arg1]
}

function sub_b464e7ec(?) {
    return sub_b464e7ec
}

function sub_c5196426(?) {
    return sub_c5196426
}

function sub_ca9db4b5(?) {
    return sub_ca9db4b5
}

function sub_f06dedaf(?) {
    return sub_f06dedaf[arg1]
}

function sub_f4786c12(?) {
    return bool(stor8[arg1])
}

function players(uint256 arg1) {
    require arg1 < players.length
    return players[arg1].field_0
}

function token() {
    return tokenAddress
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

function sub_f0963099(?) {
    require msg.sender == owner
    require arg1
    sub_fedf70e3Address = arg1
}

function setTokenAddress(address arg1) {
    require msg.sender == owner
    require arg1
    tokenAddress = arg1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
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
    call sub_fedf70e3Address with:
       value sub_792b95a2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function refundBet(bytes32 arg1) {
    require not queries[arg1].field_1792
    require block.timestamp - queries[arg1].field_1536 > 24 * 3600
    queries[arg1].field_1792 = 1
    call msg.sender with:
       value queries[arg1].field_0 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function refund() {
    if sub_14fe75fa[msg.sender] <= 0:
        revert with 0, '0'
    require eth.balance(this.address) >= sub_14fe75fa[msg.sender]
    sub_14fe75fa[msg.sender] = 0
    call msg.sender with:
       value sub_14fe75fa[msg.sender] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getPlayers() {
    if not players.length:
        mem[(32 * players.length) + 128] = 32
        mem[(32 * players.length) + 160] = players.length
        mem[(32 * players.length) + 192 len floor32(players.length)] = mem[128 len floor32(players.length)]
        return memory
          from (32 * players.length) + 128
           len (96 * players.length) + 64
    mem[128] = address(players.field_0)
    idx = 128
    s = 0
    while (32 * players.length) + 96 > idx:
        mem[idx + 32] = players[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * players.length) + 192 len floor32(players.length)] = mem[128 len floor32(players.length)]
    return Array(len=players.length, data=mem[128 len floor32(players.length)], mem[(32 * players.length) + floor32(players.length) + 192 len (32 * players.length) - floor32(players.length)]), 
}

function sub_e978e8ff(?) {
    require msg.sender == owner
    require block.timestamp - sub_55295190 >= 24 * 3600
    require stor24 <= players.length
    if players.length - stor24 >= arg1:
        s = 0
        s = 0
        idx = 0
        while idx < arg1:
            require stor24 < players.length
            mem[0] = players[stor24].field_0
            mem[32] = 9
            s = sub_92376edc[stor13[stor24].field_0]
            t = 0
            while s >= 10^18:
                require t + 100 >= t
                require 10^18 <= s
                s = s - 10^18
                t = t + 100
                continue 
            if t > 0:
                mem[96] = 0x752881a00000000000000000000000000000000000000000000000000000000
                mem[100] = players[stor24].field_0
                mem[132] = t
                require ext_code.size(tokenAddress)
                call tokenAddress.buyTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args players[stor24].field_0, t
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            stor24++
            s = s
            s = players[stor24].field_0
            idx = idx + 1
            continue 
    else:
        require stor24 <= players.length
        s = 0
        s = 0
        idx = 0
        while idx < players.length - stor24:
            require stor24 < players.length
            mem[0] = players[stor24].field_0
            mem[32] = 9
            s = sub_92376edc[stor13[stor24].field_0]
            t = 0
            while s >= 10^18:
                require t + 100 >= t
                require 10^18 <= s
                s = s - 10^18
                t = t + 100
                continue 
            if t > 0:
                mem[96] = 0x752881a00000000000000000000000000000000000000000000000000000000
                mem[100] = players[stor24].field_0
                mem[132] = t
                require ext_code.size(tokenAddress)
                call tokenAddress.buyTokens(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args players[stor24].field_0, t
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            stor24++
            s = s
            s = players[stor24].field_0
            idx = idx + 1
            continue 
    if stor24 == players.length:
        stor24 = 0
        sub_55295190 = block.timestamp
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



}
