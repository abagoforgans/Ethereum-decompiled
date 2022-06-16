contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
address stor6;
uint256 stor7;
uint256 stor8;
uint16 stor9;
uint256 stor16;
bool stor19; offset 256
uint8 stor19;
uint8 stor19; offset 8
uint8 stor19; offset 16
uint8 stor19; offset 24
uint8 stor19; offset 32
uint8 stor19; offset 40
uint8 stor19; offset 48
uint8 stor19; offset 56
uint8 stor19; offset 64

function _fallback() payable {
    stor7 = 2 * 10^16
    stor8 = 15 * 10^13
    stor9 = 333
    stor16 = 230000
    uint8(stor19.field_0) = 0
    uint8(stor19.field_8) = 1
    uint8(stor19.field_16) = 2
    uint8(stor19.field_24) = 3
    uint8(stor19.field_32) = 4
    uint8(stor19.field_40) = 5
    uint8(stor19.field_48) = 6
    uint8(stor19.field_56) = 7
    uint8(stor19.field_64) = 8
    stor19.field_256 % 1 = 0
    stor19.field_256 % 1 = 0
    stor19.field_256 % 1 = 0
    stor19.field_256 % 1 = 0
    stor19.field_256 % 1 = 0
    stor19.field_256 % 1 = 0
    stor19.field_256 % 1 = 0
    require not msg.value
    stor6 = msg.sender
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
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != address(stor1):
        require ext_code.size(stor0)
        call stor0.getAddress() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(stor1))
    call address(stor1).setProofType(bytes1 arg1) with:
         gas gas_remaining - 710 wei
        args 0
    require ext_call.success
    return code.data[2044 len 19051]
}



// =====================  Runtime code  =====================


#
#  - __callback(bytes32 arg1, string arg2)
#  - __callback(bytes32 arg1, string arg2, bytes arg3)
#  - startJackpotPlay(uint8 arg1)
#
const getContractsWeiBalance = eth.balance(this.address)


address stor0;
address stor1;
uint256 stor1;
array of uint256 stor2;
address owner;
address stor6;
uint256 sub_efc08a62;
uint256 tokenPriceInWei;
uint16 sub_f7eb24d7;
uint256 sub_2706a341;
mapping of address sub_66be735f;
uint256 sub_ba1d2819;
address sub_15b85d68Address;
uint256 sub_eb0241a7;
mapping of uint256 reward;
uint256 oraclizeCallbackGas;
uint256 sub_ee0988ab;
mapping of uint256 sub_9d4dcb83;
uint8 sub_4d035a6f;
uint8 sub_1c64e4dd; offset 8
uint8 sub_70ef48d1; offset 16
uint8 sub_1dde17c1; offset 24
uint8 sub_c0ad4133; offset 32
uint8 income; offset 40
uint8 marketingFund; offset 48
uint8 sub_e8732ada; offset 56
uint8 sub_fb069e20; offset 64
mapping of uint256 sub_45decae7;
mapping of uint8 stor21;
mapping of struct rate;
mapping of uint256 sub_d49f8461;
address sub_8663d068Address;
address sub_41003a1cAddress;
uint256 stor27;
uint256 sub_a28b5167;
mapping of uint8 stor29;
mapping of uint256 sub_0fd16148;
mapping of uint256 sub_b4979f5f;
uint256 betCounter;
mapping of address referrer;
mapping of uint8 sub_cff36c5c;
uint256 sub_346dd7d5;

function sub_0fd16148(?) {
    return sub_0fd16148[arg1]
}

function sub_15b85d68(?) {
    return sub_15b85d68Address
}

function sub_1c64e4dd(?) {
    return sub_1c64e4dd
}

function sub_1dde17c1(?) {
    return sub_1dde17c1
}

function sub_2706a341(?) {
    return sub_2706a341
}

function referrer(address arg1) {
    return referrer[arg1]
}

function tokenPriceInWei() {
    return tokenPriceInWei
}

function sub_346dd7d5(?) {
    return sub_346dd7d5
}

function rate(uint8 arg1) {
    return rate[arg1].field_0
}

function sub_41003a1c(?) {
    return sub_41003a1cAddress
}

function sub_45decae7(?) {
    return sub_45decae7[arg1]
}

function sub_4d035a6f(?) {
    return sub_4d035a6f
}

function oraclizeCallbackGas() {
    return oraclizeCallbackGas
}

function reward(address arg1) {
    return reward[arg1]
}

function sub_66be735f(?) {
    return sub_66be735f[arg1]
}

function sub_70ef48d1(?) {
    return sub_70ef48d1
}

function sub_8663d068(?) {
    return sub_8663d068Address
}

function income() {
    return income
}

function owner() {
    return owner
}

function sub_9d4dcb83(?) {
    return sub_9d4dcb83[arg1]
}

function sub_9d5dbb69(?) {
    return bool(stor29[arg1])
}

function sub_a28b5167(?) {
    return sub_a28b5167
}

function betCounter() {
    return betCounter
}

function sub_b4979f5f(?) {
    return sub_b4979f5f[arg1]
}

function sub_ba1d2819(?) {
    return sub_ba1d2819
}

function sub_c0ad4133(?) {
    return sub_c0ad4133
}

function sub_cff36c5c(?) {
    return sub_cff36c5c[arg1]
}

function sub_d49f8461(?) {
    return sub_d49f8461[arg1]
}

function sub_e8732ada(?) {
    return sub_e8732ada
}

function sub_eb0241a7(?) {
    return sub_eb0241a7
}

function sub_ee0988ab(?) {
    return sub_ee0988ab
}

function sub_efc08a62(?) {
    return sub_efc08a62
}

function marketingFund() {
    return marketingFund
}

function sub_f62f6f9f(?) {
    return bool(stor21[arg1])
}

function sub_f7eb24d7(?) {
    return sub_f7eb24d7
}

function sub_fb069e20(?) {
    return sub_fb069e20
}

function _fallback() payable {
    revert
}

function weiInTokensContract() {
    return eth.balance(sub_41003a1cAddress)
}

function payDividends() {
    sub_2706a341++
    emit 0x568fe586: sub_9d4dcb83[uint8(stor19.field_0)], sub_2706a341 + 1, msg.sender
    sub_9d4dcb83[uint8(stor19.field_0)] = 0
    return 1
}

function tokensTotalSupply() {
    require ext_code.size(sub_41003a1cAddress)
    call sub_41003a1cAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return ext_call.return_data[0]
}

function tokenSaleIsRunning() {
    require ext_code.size(sub_41003a1cAddress)
    call sub_41003a1cAddress.0x99eed4ba with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function tokensBalanceOf(address arg1) {
    require ext_code.size(sub_41003a1cAddress)
    call sub_41003a1cAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function withdrawFromMarketingFund() {
    require owner == msg.sender
    call owner with:
       value sub_9d4dcb83[uint8(stor19.field_0)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_2706a341++
    emit withdrawalFromMarketingFund(sub_9d4dcb83[uint8(stor19.field_0)], sub_2706a341 + 1);
    sub_9d4dcb83[uint8(stor19.field_0)] = 0
}

function getReward() {
    require reward[address(msg.sender)] > 0
    call msg.sender with:
       value reward[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    sub_2706a341++
    emit rewardPaid(reward[address(msg.sender)], sub_2706a341 + 1, msg.sender);
    require reward[address(msg.sender)] <= sub_9d4dcb83[uint8(stor19.field_0)]
    sub_9d4dcb83[uint8(stor19.field_0)] -= reward[address(msg.sender)]
    reward[address(msg.sender)] = 0
}

function adjustAllocation(uint16 arg1, uint16 arg2, uint16 arg3, uint16 arg4, uint16 arg5, uint16 arg6) {
    require owner == msg.sender
    rate[uint8(stor19.field_0)].field_0 = arg1
    rate[uint8(stor19.field_8)].field_0 = arg2
    rate[uint8(stor19.field_16)].field_0 = arg3
    rate[uint8(stor19.field_24)].field_0 = arg4
    rate[uint8(stor19.field_32)].field_0 = arg5
    rate[uint8(stor19.field_40)].field_0 = arg6
    idx = sub_4d035a6f
    s = 0
    while uint8(idx) <= income:
        mem[0] = uint8(idx)
        mem[32] = 22
        idx = idx + 1
        s = rate[idx << 248].field_0 + s
        continue 
    require uint16(stor[_8] + (None * stor[_8]) - (sub_4d035a6f * stor[_8])) == 10000
    sub_2706a341++
    emit AllocationAdjusted(address(msg.sender), rate[uint8(stor19.field_0)].field_0, rate[uint8(stor19.field_8)].field_0, rate[uint8(stor19.field_16)].field_0, rate[uint8(stor19.field_24)].field_0, rate[uint8(stor19.field_32)].field_0, rate[uint8(stor19.field_40)].field_0, sub_2706a341 + 1);
}

function placeABet() payable {
    require sub_15b85d68Address != msg.sender
    require not stor29[address(msg.sender)]
    require sub_efc08a62
    sub_2706a341++
    betCounter++
    emit 0x76becb27: msg.value, sub_ba1d2819, msg.value / sub_efc08a62, sub_2706a341, betCounter, msg.sender
    if not msg.value / sub_efc08a62:
        require sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
    else:
        require sub_efc08a62 * msg.value / sub_efc08a62 / msg.value / sub_efc08a62 == sub_efc08a62
        require (sub_efc08a62 * msg.value / sub_efc08a62) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
        sub_9d4dcb83[uint8(stor19.field_0)] += sub_efc08a62 * msg.value / sub_efc08a62
    require msg.value / sub_efc08a62 > 0
    require msg.value / sub_efc08a62 <= sub_f7eb24d7
    require (msg.value / sub_efc08a62) + sub_ba1d2819 >= sub_ba1d2819
    idx = sub_ba1d2819 + 1
    while idx <= (msg.value / sub_efc08a62) + sub_ba1d2819:
        mem[0] = idx
        mem[32] = 11
        sub_66be735f[idx] = msg.sender
        idx = idx + 1
        continue 
    sub_ba1d2819 += msg.value / sub_efc08a62
    sub_b4979f5f[address(msg.sender)] = msg.value / sub_efc08a62
    stor29[address(msg.sender)] = 1
    sub_0fd16148[address(msg.sender)] = block.number
}

function placeABetWithReferrer(address arg1) payable {
    if not referrer[address(msg.sender)]:
        referrer[address(msg.sender)] = arg1
    require sub_15b85d68Address != msg.sender
    require not stor29[address(msg.sender)]
    require sub_efc08a62
    sub_2706a341++
    betCounter++
    emit 0x76becb27: msg.value, sub_ba1d2819, msg.value / sub_efc08a62, sub_2706a341, betCounter, msg.sender
    if not msg.value / sub_efc08a62:
        require sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
    else:
        require sub_efc08a62 * msg.value / sub_efc08a62 / msg.value / sub_efc08a62 == sub_efc08a62
        require (sub_efc08a62 * msg.value / sub_efc08a62) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
        sub_9d4dcb83[uint8(stor19.field_0)] += sub_efc08a62 * msg.value / sub_efc08a62
    require msg.value / sub_efc08a62 > 0
    require msg.value / sub_efc08a62 <= sub_f7eb24d7
    require (msg.value / sub_efc08a62) + sub_ba1d2819 >= sub_ba1d2819
    idx = sub_ba1d2819 + 1
    while idx <= (msg.value / sub_efc08a62) + sub_ba1d2819:
        mem[0] = idx
        mem[32] = 11
        sub_66be735f[idx] = msg.sender
        idx = idx + 1
        continue 
    sub_ba1d2819 += msg.value / sub_efc08a62
    sub_b4979f5f[address(msg.sender)] = msg.value / sub_efc08a62
    stor29[address(msg.sender)] = 1
    sub_0fd16148[address(msg.sender)] = block.number
}

function investAndPlay() payable {
    require (msg.value / 5) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
    sub_9d4dcb83[uint8(stor19.field_0)] += msg.value / 5
    require msg.value / 5 <= msg.value
    require sub_15b85d68Address != msg.sender
    require not stor29[address(msg.sender)]
    require sub_efc08a62
    sub_2706a341++
    betCounter++
    emit 0x76becb27: msg.value - (msg.value / 5), sub_ba1d2819, msg.value - (msg.value / 5) / sub_efc08a62, sub_2706a341, betCounter, msg.sender
    if not msg.value - (msg.value / 5) / sub_efc08a62:
        require sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
    else:
        require sub_efc08a62 * msg.value - (msg.value / 5) / sub_efc08a62 / msg.value - (msg.value / 5) / sub_efc08a62 == sub_efc08a62
        require (sub_efc08a62 * msg.value - (msg.value / 5) / sub_efc08a62) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
        sub_9d4dcb83[uint8(stor19.field_0)] += sub_efc08a62 * msg.value - (msg.value / 5) / sub_efc08a62
    require msg.value - (msg.value / 5) / sub_efc08a62 > 0
    require msg.value - (msg.value / 5) / sub_efc08a62 <= sub_f7eb24d7
    require (msg.value - (msg.value / 5) / sub_efc08a62) + sub_ba1d2819 >= sub_ba1d2819
    idx = sub_ba1d2819 + 1
    while idx <= (msg.value - (msg.value / 5) / sub_efc08a62) + sub_ba1d2819:
        mem[0] = idx
        mem[32] = 11
        sub_66be735f[idx] = msg.sender
        idx = idx + 1
        continue 
    sub_ba1d2819 += msg.value - (msg.value / 5) / sub_efc08a62
    sub_b4979f5f[address(msg.sender)] = msg.value - (msg.value / 5) / sub_efc08a62
    stor29[address(msg.sender)] = 1
    sub_0fd16148[address(msg.sender)] = block.number
    require tokenPriceInWei
    require ext_code.size(sub_41003a1cAddress)
    call sub_41003a1cAddress.mint(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / 5 / tokenPriceInWei, msg.value / 5
    require ext_call.success
    sub_2706a341++
    emit 0xd7c60694: msg.value, msg.value / 5, msg.value - (msg.value / 5), msg.value / 5 / tokenPriceInWei, sub_2706a341 + 1, msg.sender
}

function investAndPlayWithReferrer(address arg1) payable {
    if not referrer[address(msg.sender)]:
        referrer[address(msg.sender)] = arg1
    require (msg.value / 5) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
    sub_9d4dcb83[uint8(stor19.field_0)] += msg.value / 5
    require msg.value / 5 <= msg.value
    require sub_15b85d68Address != msg.sender
    require not stor29[address(msg.sender)]
    require sub_efc08a62
    sub_2706a341++
    betCounter++
    emit 0x76becb27: msg.value - (msg.value / 5), sub_ba1d2819, msg.value - (msg.value / 5) / sub_efc08a62, sub_2706a341, betCounter, msg.sender
    if not msg.value - (msg.value / 5) / sub_efc08a62:
        require sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
    else:
        require sub_efc08a62 * msg.value - (msg.value / 5) / sub_efc08a62 / msg.value - (msg.value / 5) / sub_efc08a62 == sub_efc08a62
        require (sub_efc08a62 * msg.value - (msg.value / 5) / sub_efc08a62) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
        sub_9d4dcb83[uint8(stor19.field_0)] += sub_efc08a62 * msg.value - (msg.value / 5) / sub_efc08a62
    require msg.value - (msg.value / 5) / sub_efc08a62 > 0
    require msg.value - (msg.value / 5) / sub_efc08a62 <= sub_f7eb24d7
    require (msg.value - (msg.value / 5) / sub_efc08a62) + sub_ba1d2819 >= sub_ba1d2819
    idx = sub_ba1d2819 + 1
    while idx <= (msg.value - (msg.value / 5) / sub_efc08a62) + sub_ba1d2819:
        mem[0] = idx
        mem[32] = 11
        sub_66be735f[idx] = msg.sender
        idx = idx + 1
        continue 
    sub_ba1d2819 += msg.value - (msg.value / 5) / sub_efc08a62
    sub_b4979f5f[address(msg.sender)] = msg.value - (msg.value / 5) / sub_efc08a62
    stor29[address(msg.sender)] = 1
    sub_0fd16148[address(msg.sender)] = block.number
    require tokenPriceInWei
    require ext_code.size(sub_41003a1cAddress)
    call sub_41003a1cAddress.mint(address arg1, uint256 arg2, uint256 arg3) with:
         gas gas_remaining - 710 wei
        args msg.sender, msg.value / 5 / tokenPriceInWei, msg.value / 5
    require ext_call.success
    sub_2706a341++
    emit 0xd7c60694: msg.value, msg.value / 5, msg.value - (msg.value / 5), msg.value / 5 / tokenPriceInWei, sub_2706a341 + 1, msg.sender
}

function oraclizeGetPrice() {
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor2.length) = 0
            uint255(stor2.length.field_1) = 11
            Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                uint256(stor2[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 12
                Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    uint256(stor2[idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 9
                    Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        uint256(stor2[idx].field_0) = 0
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
                        uint255(stor2.length.field_1) = 11
                        Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            uint256(stor2[idx].field_0) = 0
                            idx = idx + 1
                            continue 
        require ext_code.size(stor0)
    else:
        if not ext_code.size(stor0):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 11
                Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    uint256(stor2[idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 12
                    Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        uint256(stor2[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 9
                        Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            uint256(stor2[idx].field_0) = 0
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
                            uint255(stor2.length.field_1) = 11
                            Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                uint256(stor2[idx].field_0) = 0
                                idx = idx + 1
                                continue 
            require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != address(stor1):
        require ext_code.size(stor0)
        call stor0.getAddress() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(stor1))
    call address(stor1).getPrice(string arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 'random', oraclizeCallbackGas
    require ext_call.success
    sub_ee0988ab = ext_call.return_data[0]
    return ext_call.return_data[0]
}

function init(address arg1) payable {
    require not sub_ba1d2819
    require stor6 == msg.sender
    owner = 0xbbab60c495413c870f8cabf09436bee9fe3542f
    require sub_efc08a62
    require msg.value / sub_efc08a62 >= 1
    sub_8663d068Address = arg1
    if not stor0:
        if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
            stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
            bool(stor2.length) = 0
            uint255(stor2.length.field_1) = 11
            Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
            idx = 0
            while stor2.length + 31 / 32 > idx:
                uint256(stor2[idx].field_0) = 0
                idx = idx + 1
                continue 
        else:
            if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 12
                Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    uint256(stor2[idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                    stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 9
                    Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        uint256(stor2[idx].field_0) = 0
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
                        uint255(stor2.length.field_1) = 11
                        Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            uint256(stor2[idx].field_0) = 0
                            idx = idx + 1
                            continue 
        require ext_code.size(stor0)
    else:
        if not ext_code.size(stor0):
            if ext_code.size(0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed) > 0:
                stor0 = 0x1d3b2638a7cc9f2cb3d298a3da7a90b67e5506ed
                bool(stor2.length) = 0
                uint255(stor2.length.field_1) = 11
                Mask(248, 0, stor2.length.field_8) = 'eth_mainnet' / 256
                idx = 0
                while stor2.length + 31 / 32 > idx:
                    uint256(stor2[idx].field_0) = 0
                    idx = idx + 1
                    continue 
            else:
                if ext_code.size(0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1) > 0:
                    stor0 = 0xc03a2615d5efaf5f49f60b7bb6583eaec212fdf1
                    bool(stor2.length) = 0
                    uint255(stor2.length.field_1) = 12
                    Mask(248, 0, stor2.length.field_8) = 'eth_ropsten3' / 256
                    idx = 0
                    while stor2.length + 31 / 32 > idx:
                        uint256(stor2[idx].field_0) = 0
                        idx = idx + 1
                        continue 
                else:
                    if ext_code.size(0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e) > 0:
                        stor0 = 0xb7a07bcf2ba2f2703b24c0691b5278999c59ac7e
                        bool(stor2.length) = 0
                        uint255(stor2.length.field_1) = 9
                        Mask(248, 0, stor2.length.field_8) = 'eth_kovan' / 256
                        idx = 0
                        while stor2.length + 31 / 32 > idx:
                            uint256(stor2[idx].field_0) = 0
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
                            uint255(stor2.length.field_1) = 11
                            Mask(248, 0, stor2.length.field_8) = 'eth_rinkeby' / 256
                            idx = 0
                            while stor2.length + 31 / 32 > idx:
                                uint256(stor2[idx].field_0) = 0
                                idx = idx + 1
                                continue 
            require ext_code.size(stor0)
    call stor0.getAddress() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[12 len 20] != address(stor1):
        require ext_code.size(stor0)
        call stor0.getAddress() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        uint256(stor1) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor1))
    require ext_code.size(address(stor1))
    call address(stor1).getPrice(string arg1, uint256 arg2) with:
         gas gas_remaining - 710 wei
        args 'random', oraclizeCallbackGas
    require ext_call.success
    sub_ee0988ab = ext_call.return_data[0]
    sub_15b85d68Address = msg.sender
    sub_eb0241a7 = 1
    sub_ba1d2819 = 1
    sub_66be735f[1] = msg.sender
    sub_45decae7[uint8(stor19.field_0)] = 24 * 3600
    sub_45decae7[uint8(stor19.field_16)] = 168 * 24 * 3600
    sub_45decae7[uint8(stor19.field_24)] = 720 * 24 * 3600
    sub_45decae7[uint8(stor19.field_32)] = 8760 * 24 * 3600
    idx = sub_1c64e4dd
    while uint8(idx) <= sub_c0ad4133:
        mem[0] = uint8(idx)
        mem[32] = 24
        sub_d49f8461[idx << 248] = block.timestamp
        idx = idx + 1
        continue 
    rate[uint8(stor19.field_0)].field_0 = 8500
    rate[uint8(stor19.field_8)].field_0 = 500
    rate[uint8(stor19.field_16)].field_0 = 300
    uint8(rate[uint8(stor19.field_24)].field_0) = 100
    uint8(rate[uint8(stor19.field_24)].field_8) = 0
    uint8(rate[uint8(stor19.field_32)].field_0) = 100
    uint8(rate[uint8(stor19.field_32)].field_8) = 0
    rate[uint8(stor19.field_40)].field_0 = 500
    sub_41003a1cAddress = sub_8663d068Address
}

function play(address arg1) {
    require stor29[address(arg1)]
    require sub_0fd16148[address(arg1)] < block.number
    sub_a28b5167++
    if not sub_b4979f5f[address(arg1)]:
        require 0 <= sub_9d4dcb83[uint8(stor19.field_0)]
        if block.number - sub_0fd16148[address(arg1)] > 250:
            sub_2706a341++
            emit 0x1430d4a0: sub_a28b5167, 0, 0, 0, 0, 0, 0, msg.sender, sub_2706a341 + 1, arg1, 0
            require sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
            sub_b4979f5f[address(arg1)] = 0
            stor29[address(arg1)] = 0
        else:
            require sub_b4979f5f[address(arg1)] + sub_eb0241a7 >= sub_eb0241a7
            require sub_b4979f5f[address(arg1)] + sub_eb0241a7
            if sha3(block.hash(sub_0fd16148[address(arg1)])) % sub_b4979f5f[address(arg1)] + sub_eb0241a7:
                if sha3(block.hash(sub_0fd16148[address(arg1)])) % sub_b4979f5f[address(arg1)] + sub_eb0241a7 <= sub_eb0241a7:
                    idx = sub_1c64e4dd
                    while uint8(idx) <= sub_c0ad4133:
                        require sub_9d4dcb83[idx << 248] >= sub_9d4dcb83[idx << 248]
                        mem[0] = uint8(idx)
                        mem[32] = 18
                        require uint8(idx) < 5
                        mem[(32 * uint8(idx)) + 160] = 0
                        idx = idx + 1
                        continue 
                    if referrer[address(arg1)]:
                        require reward[stor33[address(arg1)]] >= reward[stor33[address(arg1)]]
                        require sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                    require sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                    sub_2706a341++
                    stor27++
                    emit 0x5ad30b1d: address(arg1), 0, mem[192], mem[224], mem[256], mem[288], 0, 0, 0, sub_2706a341, stor27
                    stor29[address(arg1)] = 0
                    call sub_15b85d68Address with:
                         gas 2300 wei
                    require ext_call.success
                    sub_2706a341++
                    emit 0x1430d4a0: sub_a28b5167, 1, sub_eb0241a7, sub_15b85d68Address, 0, sub_b4979f5f[address(arg1)] + sub_eb0241a7, sha3(block.hash(sub_0fd16148[address(arg1)])) % sub_b4979f5f[address(arg1)] + sub_eb0241a7, msg.sender, sub_2706a341, arg1, sub_15b85d68Address
                else:
                    sub_15b85d68Address = arg1
                    sub_eb0241a7 = sub_b4979f5f[address(arg1)]
                    idx = sub_1c64e4dd
                    while uint8(idx) <= sub_c0ad4133:
                        require sub_9d4dcb83[idx << 248] >= sub_9d4dcb83[idx << 248]
                        mem[0] = uint8(idx)
                        mem[32] = 18
                        require uint8(idx) < 5
                        mem[(32 * uint8(idx)) + 160] = 0
                        idx = idx + 1
                        continue 
                    if referrer[stor13]:
                        require reward[stor33[stor13]] >= reward[stor33[stor13]]
                        require sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                    require sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                    sub_2706a341++
                    stor27++
                    emit 0x5ad30b1d: sub_15b85d68Address, 0, mem[192], mem[224], mem[256], mem[288], 0, 0, 0, sub_2706a341, stor27
                    stor29[address(arg1)] = 0
                    call arg1 with:
                         gas 2300 wei
                    require ext_call.success
                    sub_2706a341++
                    emit 0x1430d4a0: sub_a28b5167, 1, sub_eb0241a7, address(arg1), 0, sub_b4979f5f[address(arg1)] + sub_eb0241a7, sha3(block.hash(sub_0fd16148[address(arg1)])) % sub_b4979f5f[address(arg1)] + sub_eb0241a7, msg.sender, sub_2706a341, arg1, sub_15b85d68Address
            else:
                if sub_b4979f5f[address(arg1)] + sub_eb0241a7 <= sub_eb0241a7:
                    idx = sub_1c64e4dd
                    while uint8(idx) <= sub_c0ad4133:
                        require sub_9d4dcb83[idx << 248] >= sub_9d4dcb83[idx << 248]
                        mem[0] = uint8(idx)
                        mem[32] = 18
                        require uint8(idx) < 5
                        mem[(32 * uint8(idx)) + 160] = 0
                        idx = idx + 1
                        continue 
                    if referrer[address(arg1)]:
                        require reward[stor33[address(arg1)]] >= reward[stor33[address(arg1)]]
                        require sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                    require sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                    sub_2706a341++
                    stor27++
                    emit 0x5ad30b1d: address(arg1), 0, mem[192], mem[224], mem[256], mem[288], 0, 0, 0, sub_2706a341, stor27
                    stor29[address(arg1)] = 0
                    call sub_15b85d68Address with:
                         gas 2300 wei
                    require ext_call.success
                    sub_2706a341++
                    emit 0x1430d4a0: sub_a28b5167, 1, sub_eb0241a7, sub_15b85d68Address, 0, sub_b4979f5f[address(arg1)] + sub_eb0241a7, sub_b4979f5f[address(arg1)] + sub_eb0241a7, msg.sender, sub_2706a341, arg1, sub_15b85d68Address
                else:
                    sub_15b85d68Address = arg1
                    sub_eb0241a7 = sub_b4979f5f[address(arg1)]
                    idx = sub_1c64e4dd
                    while uint8(idx) <= sub_c0ad4133:
                        require sub_9d4dcb83[idx << 248] >= sub_9d4dcb83[idx << 248]
                        mem[0] = uint8(idx)
                        mem[32] = 18
                        require uint8(idx) < 5
                        mem[(32 * uint8(idx)) + 160] = 0
                        idx = idx + 1
                        continue 
                    if referrer[stor13]:
                        require reward[stor33[stor13]] >= reward[stor33[stor13]]
                        require sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                    require sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                    sub_2706a341++
                    stor27++
                    emit 0x5ad30b1d: sub_15b85d68Address, 0, mem[192], mem[224], mem[256], mem[288], 0, 0, 0, sub_2706a341, stor27
                    stor29[address(arg1)] = 0
                    call arg1 with:
                         gas 2300 wei
                    require ext_call.success
                    sub_2706a341++
                    emit 0x1430d4a0: sub_a28b5167, 1, sub_eb0241a7, address(arg1), 0, sub_b4979f5f[address(arg1)] + sub_eb0241a7, sub_b4979f5f[address(arg1)] + sub_eb0241a7, msg.sender, sub_2706a341, arg1, sub_15b85d68Address
    else:
        require sub_efc08a62 * sub_b4979f5f[address(arg1)] / sub_b4979f5f[address(arg1)] == sub_efc08a62
        require sub_efc08a62 * sub_b4979f5f[address(arg1)] <= sub_9d4dcb83[uint8(stor19.field_0)]
        sub_9d4dcb83[uint8(stor19.field_0)] += -1 * sub_efc08a62 * sub_b4979f5f[address(arg1)]
        if block.number - sub_0fd16148[address(arg1)] > 250:
            sub_2706a341++
            emit 0x1430d4a0: sub_a28b5167, 0, 0, 0, 0, 0, 0, msg.sender, sub_2706a341 + 1, arg1, 0
            require (sub_efc08a62 * sub_b4979f5f[address(arg1)]) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
            sub_9d4dcb83[uint8(stor19.field_0)] += sub_efc08a62 * sub_b4979f5f[address(arg1)]
            sub_b4979f5f[address(arg1)] = 0
            stor29[address(arg1)] = 0
        else:
            require sub_b4979f5f[address(arg1)] + sub_eb0241a7 >= sub_eb0241a7
            require sub_b4979f5f[address(arg1)] + sub_eb0241a7
            if sha3(block.hash(sub_0fd16148[address(arg1)])) % sub_b4979f5f[address(arg1)] + sub_eb0241a7:
                if sha3(block.hash(sub_0fd16148[address(arg1)])) % sub_b4979f5f[address(arg1)] + sub_eb0241a7 <= sub_eb0241a7:
                    s = 0
                    idx = sub_1c64e4dd
                    while uint8(idx) <= sub_c0ad4133:
                        require (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[idx << 248].field_0 / 10000) + sub_9d4dcb83[idx << 248] >= sub_9d4dcb83[idx << 248]
                        mem[0] = uint8(idx)
                        mem[32] = 18
                        sub_9d4dcb83[idx << 248] += sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[idx << 248].field_0 / 10000
                        require uint8(idx) < 5
                        mem[(32 * uint8(idx)) + 160] = sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[idx << 248].field_0 / 10000
                        s = sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[idx << 248].field_0 / 10000
                        idx = idx + 1
                        continue 
                    if not referrer[address(arg1)]:
                        require (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] += sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000
                        sub_2706a341++
                        stor27++
                        emit 0x5ad30b1d: address(arg1), sub_efc08a62 * sub_b4979f5f[address(arg1)], mem[192], mem[224], mem[256], mem[288], sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000, 0, sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_2706a341, stor27
                    else:
                        require sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2 <= sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000
                        require (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + reward[stor33[address(arg1)]] >= reward[stor33[address(arg1)]]
                        reward[stor33[address(arg1)]] += sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2
                        require (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] += sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2
                        require (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] = (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_2706a341++
                        stor27++
                        emit 0x5ad30b1d: address(arg1), sub_efc08a62 * sub_b4979f5f[address(arg1)], mem[192], mem[224], mem[256], mem[288], (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2), Mask(255, 1, sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000), sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_2706a341, stor27
                    stor29[address(arg1)] = 0
                    call sub_15b85d68Address with:
                       value sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    sub_2706a341++
                    emit 0x1430d4a0: sub_a28b5167, 1, sub_eb0241a7, sub_15b85d68Address, sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_b4979f5f[address(arg1)] + sub_eb0241a7, sha3(block.hash(sub_0fd16148[address(arg1)])) % sub_b4979f5f[address(arg1)] + sub_eb0241a7, msg.sender, sub_2706a341, arg1, sub_15b85d68Address
                else:
                    sub_15b85d68Address = arg1
                    sub_eb0241a7 = sub_b4979f5f[address(arg1)]
                    s = 0
                    idx = sub_1c64e4dd
                    while uint8(idx) <= sub_c0ad4133:
                        require (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[idx << 248].field_0 / 10000) + sub_9d4dcb83[idx << 248] >= sub_9d4dcb83[idx << 248]
                        mem[0] = uint8(idx)
                        mem[32] = 18
                        sub_9d4dcb83[idx << 248] += sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[idx << 248].field_0 / 10000
                        require uint8(idx) < 5
                        mem[(32 * uint8(idx)) + 160] = sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[idx << 248].field_0 / 10000
                        s = sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[idx << 248].field_0 / 10000
                        idx = idx + 1
                        continue 
                    if not referrer[stor13]:
                        require (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] += sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000
                        sub_2706a341++
                        stor27++
                        emit 0x5ad30b1d: sub_15b85d68Address, sub_efc08a62 * sub_b4979f5f[address(arg1)], mem[192], mem[224], mem[256], mem[288], sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000, 0, sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_2706a341, stor27
                    else:
                        require sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2 <= sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000
                        require (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + reward[stor33[stor13]] >= reward[stor33[stor13]]
                        reward[stor33[stor13]] += sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2
                        require (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] += sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2
                        require (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] = (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_2706a341++
                        stor27++
                        emit 0x5ad30b1d: sub_15b85d68Address, sub_efc08a62 * sub_b4979f5f[address(arg1)], mem[192], mem[224], mem[256], mem[288], (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2), Mask(255, 1, sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000), sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_2706a341, stor27
                    stor29[address(arg1)] = 0
                    call arg1 with:
                       value sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    sub_2706a341++
                    emit 0x1430d4a0: sub_a28b5167, 1, sub_eb0241a7, address(arg1), sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_b4979f5f[address(arg1)] + sub_eb0241a7, sha3(block.hash(sub_0fd16148[address(arg1)])) % sub_b4979f5f[address(arg1)] + sub_eb0241a7, msg.sender, sub_2706a341, arg1, sub_15b85d68Address
            else:
                if sub_b4979f5f[address(arg1)] + sub_eb0241a7 <= sub_eb0241a7:
                    s = 0
                    idx = sub_1c64e4dd
                    while uint8(idx) <= sub_c0ad4133:
                        require (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[idx << 248].field_0 / 10000) + sub_9d4dcb83[idx << 248] >= sub_9d4dcb83[idx << 248]
                        mem[0] = uint8(idx)
                        mem[32] = 18
                        sub_9d4dcb83[idx << 248] += sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[idx << 248].field_0 / 10000
                        require uint8(idx) < 5
                        mem[(32 * uint8(idx)) + 160] = sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[idx << 248].field_0 / 10000
                        s = sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[idx << 248].field_0 / 10000
                        idx = idx + 1
                        continue 
                    if not referrer[address(arg1)]:
                        require (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] += sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000
                        sub_2706a341++
                        stor27++
                        emit 0x5ad30b1d: address(arg1), sub_efc08a62 * sub_b4979f5f[address(arg1)], mem[192], mem[224], mem[256], mem[288], sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000, 0, sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_2706a341, stor27
                    else:
                        require sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2 <= sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000
                        require (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + reward[stor33[address(arg1)]] >= reward[stor33[address(arg1)]]
                        reward[stor33[address(arg1)]] += sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2
                        require (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] += sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2
                        require (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] = (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_2706a341++
                        stor27++
                        emit 0x5ad30b1d: address(arg1), sub_efc08a62 * sub_b4979f5f[address(arg1)], mem[192], mem[224], mem[256], mem[288], (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2), Mask(255, 1, sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000), sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_2706a341, stor27
                    stor29[address(arg1)] = 0
                    call sub_15b85d68Address with:
                       value sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    sub_2706a341++
                    emit 0x1430d4a0: sub_a28b5167, 1, sub_eb0241a7, sub_15b85d68Address, sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_b4979f5f[address(arg1)] + sub_eb0241a7, sub_b4979f5f[address(arg1)] + sub_eb0241a7, msg.sender, sub_2706a341, arg1, sub_15b85d68Address
                else:
                    sub_15b85d68Address = arg1
                    sub_eb0241a7 = sub_b4979f5f[address(arg1)]
                    s = 0
                    idx = sub_1c64e4dd
                    while uint8(idx) <= sub_c0ad4133:
                        require (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[idx << 248].field_0 / 10000) + sub_9d4dcb83[idx << 248] >= sub_9d4dcb83[idx << 248]
                        mem[0] = uint8(idx)
                        mem[32] = 18
                        sub_9d4dcb83[idx << 248] += sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[idx << 248].field_0 / 10000
                        require uint8(idx) < 5
                        mem[(32 * uint8(idx)) + 160] = sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[idx << 248].field_0 / 10000
                        s = sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[idx << 248].field_0 / 10000
                        idx = idx + 1
                        continue 
                    if not referrer[stor13]:
                        require (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] += sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000
                        sub_2706a341++
                        stor27++
                        emit 0x5ad30b1d: sub_15b85d68Address, sub_efc08a62 * sub_b4979f5f[address(arg1)], mem[192], mem[224], mem[256], mem[288], sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000, 0, sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_2706a341, stor27
                    else:
                        require sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2 <= sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000
                        require (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + reward[stor33[stor13]] >= reward[stor33[stor13]]
                        reward[stor33[stor13]] += sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2
                        require (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] += sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2
                        require (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] = (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_2706a341++
                        stor27++
                        emit 0x5ad30b1d: sub_15b85d68Address, sub_efc08a62 * sub_b4979f5f[address(arg1)], mem[192], mem[224], mem[256], mem[288], (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2), Mask(255, 1, sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000), sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_2706a341, stor27
                    stor29[address(arg1)] = 0
                    call arg1 with:
                       value sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    sub_2706a341++
                    emit 0x1430d4a0: sub_a28b5167, 1, sub_eb0241a7, address(arg1), sub_efc08a62 * sub_b4979f5f[address(arg1)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_b4979f5f[address(arg1)] + sub_eb0241a7, sub_b4979f5f[address(arg1)] + sub_eb0241a7, msg.sender, sub_2706a341, arg1, sub_15b85d68Address
}

function sub_d2cbcdc5(?) {
    require stor29[address(msg.sender)]
    require sub_0fd16148[address(msg.sender)] < block.number
    sub_a28b5167++
    if not sub_b4979f5f[address(msg.sender)]:
        require 0 <= sub_9d4dcb83[uint8(stor19.field_0)]
        if block.number - sub_0fd16148[address(msg.sender)] > 250:
            sub_2706a341++
            emit 0x1430d4a0: sub_a28b5167, 0, 0, 0, 0, 0, 0, msg.sender, sub_2706a341 + 1, msg.sender, 0
            require sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
            sub_b4979f5f[address(msg.sender)] = 0
            stor29[address(msg.sender)] = 0
        else:
            require sub_b4979f5f[address(msg.sender)] + sub_eb0241a7 >= sub_eb0241a7
            require sub_b4979f5f[address(msg.sender)] + sub_eb0241a7
            if sha3(block.hash(sub_0fd16148[address(msg.sender)])) % sub_b4979f5f[address(msg.sender)] + sub_eb0241a7:
                if sha3(block.hash(sub_0fd16148[address(msg.sender)])) % sub_b4979f5f[address(msg.sender)] + sub_eb0241a7 <= sub_eb0241a7:
                    idx = sub_1c64e4dd
                    while uint8(idx) <= sub_c0ad4133:
                        require sub_9d4dcb83[idx << 248] >= sub_9d4dcb83[idx << 248]
                        mem[0] = uint8(idx)
                        mem[32] = 18
                        require uint8(idx) < 5
                        mem[(32 * uint8(idx)) + 160] = 0
                        idx = idx + 1
                        continue 
                    if referrer[address(msg.sender)]:
                        require reward[stor33[address(msg.sender)]] >= reward[stor33[address(msg.sender)]]
                        require sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                    require sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                    sub_2706a341++
                    stor27++
                    emit 0x5ad30b1d: msg.sender, 0, mem[192], mem[224], mem[256], mem[288], 0, 0, 0, sub_2706a341, stor27
                    stor29[address(msg.sender)] = 0
                    call sub_15b85d68Address with:
                         gas 2300 wei
                    require ext_call.success
                    sub_2706a341++
                    emit 0x1430d4a0: sub_a28b5167, 1, sub_eb0241a7, sub_15b85d68Address, 0, sub_b4979f5f[address(msg.sender)] + sub_eb0241a7, sha3(block.hash(sub_0fd16148[address(msg.sender)])) % sub_b4979f5f[address(msg.sender)] + sub_eb0241a7, msg.sender, sub_2706a341, msg.sender, sub_15b85d68Address
                else:
                    sub_15b85d68Address = msg.sender
                    sub_eb0241a7 = sub_b4979f5f[address(msg.sender)]
                    idx = sub_1c64e4dd
                    while uint8(idx) <= sub_c0ad4133:
                        require sub_9d4dcb83[idx << 248] >= sub_9d4dcb83[idx << 248]
                        mem[0] = uint8(idx)
                        mem[32] = 18
                        require uint8(idx) < 5
                        mem[(32 * uint8(idx)) + 160] = 0
                        idx = idx + 1
                        continue 
                    if referrer[stor13]:
                        require reward[stor33[stor13]] >= reward[stor33[stor13]]
                        require sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                    require sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                    sub_2706a341++
                    stor27++
                    emit 0x5ad30b1d: sub_15b85d68Address, 0, mem[192], mem[224], mem[256], mem[288], 0, 0, 0, sub_2706a341, stor27
                    stor29[address(msg.sender)] = 0
                    call msg.sender with:
                         gas 2300 wei
                    require ext_call.success
                    sub_2706a341++
                    emit 0x1430d4a0: sub_a28b5167, 1, sub_eb0241a7, msg.sender, 0, sub_b4979f5f[address(msg.sender)] + sub_eb0241a7, sha3(block.hash(sub_0fd16148[address(msg.sender)])) % sub_b4979f5f[address(msg.sender)] + sub_eb0241a7, msg.sender, sub_2706a341, msg.sender, sub_15b85d68Address
            else:
                if sub_b4979f5f[address(msg.sender)] + sub_eb0241a7 <= sub_eb0241a7:
                    idx = sub_1c64e4dd
                    while uint8(idx) <= sub_c0ad4133:
                        require sub_9d4dcb83[idx << 248] >= sub_9d4dcb83[idx << 248]
                        mem[0] = uint8(idx)
                        mem[32] = 18
                        require uint8(idx) < 5
                        mem[(32 * uint8(idx)) + 160] = 0
                        idx = idx + 1
                        continue 
                    if referrer[address(msg.sender)]:
                        require reward[stor33[address(msg.sender)]] >= reward[stor33[address(msg.sender)]]
                        require sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                    require sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                    sub_2706a341++
                    stor27++
                    emit 0x5ad30b1d: msg.sender, 0, mem[192], mem[224], mem[256], mem[288], 0, 0, 0, sub_2706a341, stor27
                    stor29[address(msg.sender)] = 0
                    call sub_15b85d68Address with:
                         gas 2300 wei
                    require ext_call.success
                    sub_2706a341++
                    emit 0x1430d4a0: sub_a28b5167, 1, sub_eb0241a7, sub_15b85d68Address, 0, sub_b4979f5f[address(msg.sender)] + sub_eb0241a7, sub_b4979f5f[address(msg.sender)] + sub_eb0241a7, msg.sender, sub_2706a341, msg.sender, sub_15b85d68Address
                else:
                    sub_15b85d68Address = msg.sender
                    sub_eb0241a7 = sub_b4979f5f[address(msg.sender)]
                    idx = sub_1c64e4dd
                    while uint8(idx) <= sub_c0ad4133:
                        require sub_9d4dcb83[idx << 248] >= sub_9d4dcb83[idx << 248]
                        mem[0] = uint8(idx)
                        mem[32] = 18
                        require uint8(idx) < 5
                        mem[(32 * uint8(idx)) + 160] = 0
                        idx = idx + 1
                        continue 
                    if referrer[stor13]:
                        require reward[stor33[stor13]] >= reward[stor33[stor13]]
                        require sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                    require sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                    sub_2706a341++
                    stor27++
                    emit 0x5ad30b1d: sub_15b85d68Address, 0, mem[192], mem[224], mem[256], mem[288], 0, 0, 0, sub_2706a341, stor27
                    stor29[address(msg.sender)] = 0
                    call msg.sender with:
                         gas 2300 wei
                    require ext_call.success
                    sub_2706a341++
                    emit 0x1430d4a0: sub_a28b5167, 1, sub_eb0241a7, msg.sender, 0, sub_b4979f5f[address(msg.sender)] + sub_eb0241a7, sub_b4979f5f[address(msg.sender)] + sub_eb0241a7, msg.sender, sub_2706a341, msg.sender, sub_15b85d68Address
    else:
        require sub_efc08a62 * sub_b4979f5f[address(msg.sender)] / sub_b4979f5f[address(msg.sender)] == sub_efc08a62
        require sub_efc08a62 * sub_b4979f5f[address(msg.sender)] <= sub_9d4dcb83[uint8(stor19.field_0)]
        sub_9d4dcb83[uint8(stor19.field_0)] += -1 * sub_efc08a62 * sub_b4979f5f[address(msg.sender)]
        if block.number - sub_0fd16148[address(msg.sender)] > 250:
            sub_2706a341++
            emit 0x1430d4a0: sub_a28b5167, 0, 0, 0, 0, 0, 0, msg.sender, sub_2706a341 + 1, msg.sender, 0
            require (sub_efc08a62 * sub_b4979f5f[address(msg.sender)]) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
            sub_9d4dcb83[uint8(stor19.field_0)] += sub_efc08a62 * sub_b4979f5f[address(msg.sender)]
            sub_b4979f5f[address(msg.sender)] = 0
            stor29[address(msg.sender)] = 0
        else:
            require sub_b4979f5f[address(msg.sender)] + sub_eb0241a7 >= sub_eb0241a7
            require sub_b4979f5f[address(msg.sender)] + sub_eb0241a7
            if sha3(block.hash(sub_0fd16148[address(msg.sender)])) % sub_b4979f5f[address(msg.sender)] + sub_eb0241a7:
                if sha3(block.hash(sub_0fd16148[address(msg.sender)])) % sub_b4979f5f[address(msg.sender)] + sub_eb0241a7 <= sub_eb0241a7:
                    s = 0
                    idx = sub_1c64e4dd
                    while uint8(idx) <= sub_c0ad4133:
                        require (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[idx << 248].field_0 / 10000) + sub_9d4dcb83[idx << 248] >= sub_9d4dcb83[idx << 248]
                        mem[0] = uint8(idx)
                        mem[32] = 18
                        sub_9d4dcb83[idx << 248] += sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[idx << 248].field_0 / 10000
                        require uint8(idx) < 5
                        mem[(32 * uint8(idx)) + 160] = sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[idx << 248].field_0 / 10000
                        s = sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[idx << 248].field_0 / 10000
                        idx = idx + 1
                        continue 
                    if not referrer[address(msg.sender)]:
                        require (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] += sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000
                        sub_2706a341++
                        stor27++
                        emit 0x5ad30b1d: msg.sender, sub_efc08a62 * sub_b4979f5f[address(msg.sender)], mem[192], mem[224], mem[256], mem[288], sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000, 0, sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_2706a341, stor27
                    else:
                        require sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2 <= sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000
                        require (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + reward[stor33[address(msg.sender)]] >= reward[stor33[address(msg.sender)]]
                        reward[stor33[address(msg.sender)]] += sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2
                        require (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] += sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2
                        require (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] = (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_2706a341++
                        stor27++
                        emit 0x5ad30b1d: msg.sender, sub_efc08a62 * sub_b4979f5f[address(msg.sender)], mem[192], mem[224], mem[256], mem[288], (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2), Mask(255, 1, sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000), sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_2706a341, stor27
                    stor29[address(msg.sender)] = 0
                    call sub_15b85d68Address with:
                       value sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    sub_2706a341++
                    emit 0x1430d4a0: sub_a28b5167, 1, sub_eb0241a7, sub_15b85d68Address, sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_b4979f5f[address(msg.sender)] + sub_eb0241a7, sha3(block.hash(sub_0fd16148[address(msg.sender)])) % sub_b4979f5f[address(msg.sender)] + sub_eb0241a7, msg.sender, sub_2706a341, msg.sender, sub_15b85d68Address
                else:
                    sub_15b85d68Address = msg.sender
                    sub_eb0241a7 = sub_b4979f5f[address(msg.sender)]
                    s = 0
                    idx = sub_1c64e4dd
                    while uint8(idx) <= sub_c0ad4133:
                        require (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[idx << 248].field_0 / 10000) + sub_9d4dcb83[idx << 248] >= sub_9d4dcb83[idx << 248]
                        mem[0] = uint8(idx)
                        mem[32] = 18
                        sub_9d4dcb83[idx << 248] += sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[idx << 248].field_0 / 10000
                        require uint8(idx) < 5
                        mem[(32 * uint8(idx)) + 160] = sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[idx << 248].field_0 / 10000
                        s = sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[idx << 248].field_0 / 10000
                        idx = idx + 1
                        continue 
                    if not referrer[stor13]:
                        require (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] += sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000
                        sub_2706a341++
                        stor27++
                        emit 0x5ad30b1d: sub_15b85d68Address, sub_efc08a62 * sub_b4979f5f[address(msg.sender)], mem[192], mem[224], mem[256], mem[288], sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000, 0, sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_2706a341, stor27
                    else:
                        require sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2 <= sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000
                        require (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + reward[stor33[stor13]] >= reward[stor33[stor13]]
                        reward[stor33[stor13]] += sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2
                        require (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] += sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2
                        require (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] = (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_2706a341++
                        stor27++
                        emit 0x5ad30b1d: sub_15b85d68Address, sub_efc08a62 * sub_b4979f5f[address(msg.sender)], mem[192], mem[224], mem[256], mem[288], (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2), Mask(255, 1, sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000), sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_2706a341, stor27
                    stor29[address(msg.sender)] = 0
                    call msg.sender with:
                       value sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    sub_2706a341++
                    emit 0x1430d4a0: sub_a28b5167, 1, sub_eb0241a7, msg.sender, sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_b4979f5f[address(msg.sender)] + sub_eb0241a7, sha3(block.hash(sub_0fd16148[address(msg.sender)])) % sub_b4979f5f[address(msg.sender)] + sub_eb0241a7, msg.sender, sub_2706a341, msg.sender, sub_15b85d68Address
            else:
                if sub_b4979f5f[address(msg.sender)] + sub_eb0241a7 <= sub_eb0241a7:
                    s = 0
                    idx = sub_1c64e4dd
                    while uint8(idx) <= sub_c0ad4133:
                        require (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[idx << 248].field_0 / 10000) + sub_9d4dcb83[idx << 248] >= sub_9d4dcb83[idx << 248]
                        mem[0] = uint8(idx)
                        mem[32] = 18
                        sub_9d4dcb83[idx << 248] += sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[idx << 248].field_0 / 10000
                        require uint8(idx) < 5
                        mem[(32 * uint8(idx)) + 160] = sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[idx << 248].field_0 / 10000
                        s = sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[idx << 248].field_0 / 10000
                        idx = idx + 1
                        continue 
                    if not referrer[address(msg.sender)]:
                        require (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] += sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000
                        sub_2706a341++
                        stor27++
                        emit 0x5ad30b1d: msg.sender, sub_efc08a62 * sub_b4979f5f[address(msg.sender)], mem[192], mem[224], mem[256], mem[288], sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000, 0, sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_2706a341, stor27
                    else:
                        require sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2 <= sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000
                        require (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + reward[stor33[address(msg.sender)]] >= reward[stor33[address(msg.sender)]]
                        reward[stor33[address(msg.sender)]] += sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2
                        require (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] += sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2
                        require (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] = (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_2706a341++
                        stor27++
                        emit 0x5ad30b1d: msg.sender, sub_efc08a62 * sub_b4979f5f[address(msg.sender)], mem[192], mem[224], mem[256], mem[288], (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2), Mask(255, 1, sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000), sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_2706a341, stor27
                    stor29[address(msg.sender)] = 0
                    call sub_15b85d68Address with:
                       value sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    sub_2706a341++
                    emit 0x1430d4a0: sub_a28b5167, 1, sub_eb0241a7, sub_15b85d68Address, sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_b4979f5f[address(msg.sender)] + sub_eb0241a7, sub_b4979f5f[address(msg.sender)] + sub_eb0241a7, msg.sender, sub_2706a341, msg.sender, sub_15b85d68Address
                else:
                    sub_15b85d68Address = msg.sender
                    sub_eb0241a7 = sub_b4979f5f[address(msg.sender)]
                    s = 0
                    idx = sub_1c64e4dd
                    while uint8(idx) <= sub_c0ad4133:
                        require (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[idx << 248].field_0 / 10000) + sub_9d4dcb83[idx << 248] >= sub_9d4dcb83[idx << 248]
                        mem[0] = uint8(idx)
                        mem[32] = 18
                        sub_9d4dcb83[idx << 248] += sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[idx << 248].field_0 / 10000
                        require uint8(idx) < 5
                        mem[(32 * uint8(idx)) + 160] = sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[idx << 248].field_0 / 10000
                        s = sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[idx << 248].field_0 / 10000
                        idx = idx + 1
                        continue 
                    if not referrer[stor13]:
                        require (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] += sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000
                        sub_2706a341++
                        stor27++
                        emit 0x5ad30b1d: sub_15b85d68Address, sub_efc08a62 * sub_b4979f5f[address(msg.sender)], mem[192], mem[224], mem[256], mem[288], sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000, 0, sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_2706a341, stor27
                    else:
                        require sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2 <= sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000
                        require (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + reward[stor33[stor13]] >= reward[stor33[stor13]]
                        reward[stor33[stor13]] += sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2
                        require (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] += sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2
                        require (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)] >= sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_9d4dcb83[uint8(stor19.field_0)] = (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2) + sub_9d4dcb83[uint8(stor19.field_0)]
                        sub_2706a341++
                        stor27++
                        emit 0x5ad30b1d: sub_15b85d68Address, sub_efc08a62 * sub_b4979f5f[address(msg.sender)], mem[192], mem[224], mem[256], mem[288], (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000) - (sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 / 2), Mask(255, 1, sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000), sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_2706a341, stor27
                    stor29[address(msg.sender)] = 0
                    call msg.sender with:
                       value sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000 wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    sub_2706a341++
                    emit 0x1430d4a0: sub_a28b5167, 1, sub_eb0241a7, msg.sender, sub_efc08a62 * sub_b4979f5f[address(msg.sender)] * rate[uint8(stor19.field_0)].field_0 / 10000, sub_b4979f5f[address(msg.sender)] + sub_eb0241a7, sub_b4979f5f[address(msg.sender)] + sub_eb0241a7, msg.sender, sub_2706a341, msg.sender, sub_15b85d68Address
}



}
