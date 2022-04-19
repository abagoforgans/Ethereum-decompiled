contract main {


// =======================  Init code  ======================


address stor0;
address stor2;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor8;
uint256 stor13;
uint256 stor14;
uint8 stor16;
uint256 stor16; offset 8
uint256 stor18;

function _fallback() payable {
    stor8 = 0
    stor18 = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[8759 len 20]
    stor2 = code.data[8727 len 20]
    stor3 = 419253 * 3600
    stor4 = 1512334860
    stor5 = code.data[8759 len 20]
    stor13 = 20 * 10^6
    stor14 = 308 * 10^12
    uint8(stor16.field_0) = 0
    Mask(248, 0, stor16.field_8) = 0
    return code.data[416 len 8299]
}



// =====================  Runtime code  =====================


address owner;
array of uint256 stor1;
address tokenAddress;
uint256 start;
uint256 deadline;
address walletAddress;
uint256 weiRaised;
uint256 tokensSold;
uint256 sub_0b4b984c;
array of struct buyers;
mapping of uint256 balances;
mapping of uint8 stor12;
uint256 tokensForSale;
uint256 sub_5dabb20e;
uint256 sub_77b651d6;
uint8 sub_de2af4b0;
uint8 sub_d850c844; offset 8
uint256 stor16; offset 8
array of address senders;
uint256 stor18;

function sub_0b4b984c(?) {
    return sub_0b4b984c
}

function tokensForSale() {
    return tokensForSale
}

function balances(address arg1) {
    return balances[arg1]
}

function deadline() {
    return deadline
}

function weiRaised() {
    return weiRaised
}

function manager() {
    return address(stor1.length)
}

function tokensSold() {
    return tokensSold
}

function wallet() {
    return walletAddress
}

function sub_5dabb20e(?) {
    return sub_5dabb20e
}

function sub_77b651d6(?) {
    return sub_77b651d6
}

function owner() {
    return owner
}

function senders(uint256 arg1) {
    require arg1 < senders.length
    return address(senders[arg1])
}

function sub_a88661f4(?) {
    return buyers.length
}

function start() {
    return start
}

function sub_d850c844(?) {
    return bool(sub_d850c844)
}

function sub_de2af4b0(?) {
    return bool(sub_de2af4b0)
}

function sub_e10ca2b9(?) {
    return bool(stor12[arg1])
}

function buyers(uint256 arg1) {
    require arg1 < buyers.length
    return buyers[arg1].field_0, uint256(buyers[arg1].field_256)
}

function token() {
    return tokenAddress
}

function hasStarted() {
    return (block.timestamp > start)
}

function hasEnded() {
    return (block.timestamp > deadline)
}

function setManager(address arg1) {
    require msg.sender == owner
    address(stor1.length) = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function setMinPrice(uint256 arg1) {
    if owner != msg.sender:
        require msg.sender == address(stor1.length)
    sub_5dabb20e = arg1
}

function sub_20369b3f(?) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function setNewTokenOwner(address arg1) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function transferTokens(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require msg.sender == address(stor1.length)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] >= arg2 + 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require sub_0b4b984c + arg2 >= sub_0b4b984c
    sub_0b4b984c += arg2
}

function calculatePrice() {
    require block.timestamp > deadline
    if owner != msg.sender:
        require msg.sender == address(stor1.length)
    require not sub_de2af4b0
    if tokensForSale:
        require tokensForSale
        require 100 * 10^6 * tokensForSale / tokensForSale == 100 * 10^6
    require (100 * 10^6 * tokensForSale) - sub_0b4b984c
    sub_77b651d6 = weiRaised / (100 * 10^6 * tokensForSale) - sub_0b4b984c
    if sub_77b651d6:
        require sub_77b651d6
        require 100 * 10^6 * sub_77b651d6 / sub_77b651d6 == 100 * 10^6
    sub_77b651d6 = 100 * 10^6 * sub_77b651d6
    if sub_77b651d6 < sub_5dabb20e:
        sub_77b651d6 = sub_5dabb20e
    sub_de2af4b0 = 1
}

function _fallback() payable {
    require block.timestamp <= deadline
    require block.timestamp > start
    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
    balances[address(msg.sender)] += msg.value
    senders.length++
    if not senders.length <= senders.length + 1:
        idx = senders.length + 1
        while senders.length > idx:
            uint256(senders[idx]) = 0
            idx = idx + 1
            continue 
    address(senders[senders.length]) = msg.sender
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function tokenReward() payable {
    mem[64] = 96
    require not msg.value
    require block.timestamp > deadline
    if msg.sender == owner:
        require sub_de2af4b0
        require not sub_d850c844
        s = 0
        idx = 0
        while idx < senders.length:
            mem[0] = address(senders[idx])
            mem[32] = 11
            if balances[address(stor17[idx])] <= 0:
                s = s
                idx = idx + 1
                continue 
            require idx < senders.length
            mem[0] = address(senders[idx])
            mem[32] = 12
            if stor12[address(stor17[idx])]:
                s = s
                idx = idx + 1
                continue 
            require idx < senders.length
            mem[32] = 11
            require sub_77b651d6
            if not balances[address(stor17[idx])] / sub_77b651d6:
                require idx < senders.length
                mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(senders[idx])
                mem[mem[64] + 36] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(senders[idx]), 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                require ext_call.success
                require idx < senders.length
                mem[0] = 17
                _103 = mem[64]
                mem[64] = mem[64] + 64
                mem[_103] = address(senders[idx])
                mem[_103 + 32] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
            else:
                require balances[address(stor17[idx])] / sub_77b651d6
                require 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6 / balances[address(stor17[idx])] / sub_77b651d6 == 100 * 10^6
                require idx < senders.length
                mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(senders[idx])
                mem[mem[64] + 36] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(senders[idx]), 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                require ext_call.success
                require idx < senders.length
                mem[0] = 17
                _107 = mem[64]
                mem[64] = mem[64] + 64
                mem[_107] = address(senders[idx])
                mem[_107 + 32] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
            buyers.length++
            if not buyers.length <= buyers.length + 1:
                s = sha3(9) + (2 * buyers.length + 1)
                while sha3(9) + (2 * buyers.length) > s:
                    stor[s] = 0
                    uint256(stor1[s]) = 0
                    s = s + 2
                    continue 
            buyers[buyers.length].field_0 = address(senders[idx])
            uint256(buyers[buyers.length].field_256) = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
            require tokensSold + (100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6) >= tokensSold
            tokensSold += 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
            require idx < senders.length
            mem[0] = address(senders[idx])
            mem[32] = 12
            stor12[address(stor17[idx])] = 1
            s = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
            idx = idx + 1
            continue 
    else:
        require msg.sender == address(stor1.length)
        require sub_de2af4b0
        require not sub_d850c844
        s = 0
        idx = 0
        while idx < senders.length:
            mem[0] = address(senders[idx])
            mem[32] = 11
            if balances[address(stor17[idx])] <= 0:
                s = s
                idx = idx + 1
                continue 
            require idx < senders.length
            mem[0] = address(senders[idx])
            mem[32] = 12
            if stor12[address(stor17[idx])]:
                s = s
                idx = idx + 1
                continue 
            require idx < senders.length
            mem[32] = 11
            require sub_77b651d6
            if not balances[address(stor17[idx])] / sub_77b651d6:
                require idx < senders.length
                mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(senders[idx])
                mem[mem[64] + 36] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(senders[idx]), 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                require ext_call.success
                require idx < senders.length
                mem[0] = 17
                _105 = mem[64]
                mem[64] = mem[64] + 64
                mem[_105] = address(senders[idx])
                mem[_105 + 32] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
            else:
                require balances[address(stor17[idx])] / sub_77b651d6
                require 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6 / balances[address(stor17[idx])] / sub_77b651d6 == 100 * 10^6
                require idx < senders.length
                mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(senders[idx])
                mem[mem[64] + 36] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(senders[idx]), 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                require ext_call.success
                require idx < senders.length
                mem[0] = 17
                _108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_108] = address(senders[idx])
                mem[_108 + 32] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
            buyers.length++
            if not buyers.length <= buyers.length + 1:
                s = sha3(9) + (2 * buyers.length + 1)
                while sha3(9) + (2 * buyers.length) > s:
                    stor[s] = 0
                    uint256(stor1[s]) = 0
                    s = s + 2
                    continue 
            buyers[buyers.length].field_0 = address(senders[idx])
            uint256(buyers[buyers.length].field_256) = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
            require tokensSold + (100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6) >= tokensSold
            tokensSold += 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
            require idx < senders.length
            mem[0] = address(senders[idx])
            mem[32] = 12
            stor12[address(stor17[idx])] = 1
            s = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
            idx = idx + 1
            continue 
    stor16 = 1
}

function sub_cee3dd90(?) payable {
    mem[64] = 96
    require not msg.value
    require block.timestamp > deadline
    if msg.sender == owner:
        require sub_de2af4b0
        require stor18 + arg1 >= stor18
        if stor18 + arg1 <= senders.length:
            s = 0
            idx = stor18
            while idx < stor18 + arg1:
                require idx < senders.length
                mem[0] = address(senders[idx])
                mem[32] = 11
                if balances[address(stor17[idx])] <= 0:
                    s = s
                    idx = idx + 1
                    continue 
                require idx < senders.length
                mem[0] = address(senders[idx])
                mem[32] = 12
                if stor12[address(stor17[idx])]:
                    s = s
                    idx = idx + 1
                    continue 
                require idx < senders.length
                mem[32] = 11
                require sub_77b651d6
                if not balances[address(stor17[idx])] / sub_77b651d6:
                    require idx < senders.length
                    mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(senders[idx])
                    mem[mem[64] + 36] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(senders[idx]), 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                    require ext_call.success
                    require idx < senders.length
                    mem[0] = 17
                    _205 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_205] = address(senders[idx])
                    mem[_205 + 32] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                else:
                    require balances[address(stor17[idx])] / sub_77b651d6
                    require 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6 / balances[address(stor17[idx])] / sub_77b651d6 == 100 * 10^6
                    require idx < senders.length
                    mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(senders[idx])
                    mem[mem[64] + 36] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(senders[idx]), 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                    require ext_call.success
                    require idx < senders.length
                    mem[0] = 17
                    _213 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_213] = address(senders[idx])
                    mem[_213 + 32] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                buyers.length++
                if not buyers.length <= buyers.length + 1:
                    s = sha3(9) + (2 * buyers.length + 1)
                    while sha3(9) + (2 * buyers.length) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        s = s + 2
                        continue 
                buyers[buyers.length].field_0 = address(senders[idx])
                uint256(buyers[buyers.length].field_256) = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                require tokensSold + (100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6) >= tokensSold
                tokensSold += 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                require idx < senders.length
                mem[0] = address(senders[idx])
                mem[32] = 12
                stor12[address(stor17[idx])] = 1
                s = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                idx = idx + 1
                continue 
            stor18 += arg1
        else:
            s = 0
            idx = stor18
            while idx < senders.length:
                mem[0] = address(senders[idx])
                mem[32] = 11
                if balances[address(stor17[idx])] <= 0:
                    s = s
                    idx = idx + 1
                    continue 
                require idx < senders.length
                mem[0] = address(senders[idx])
                mem[32] = 12
                if stor12[address(stor17[idx])]:
                    s = s
                    idx = idx + 1
                    continue 
                require idx < senders.length
                mem[32] = 11
                require sub_77b651d6
                if not balances[address(stor17[idx])] / sub_77b651d6:
                    require idx < senders.length
                    mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(senders[idx])
                    mem[mem[64] + 36] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(senders[idx]), 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                    require ext_call.success
                    require idx < senders.length
                    mem[0] = 17
                    _207 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_207] = address(senders[idx])
                    mem[_207 + 32] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                else:
                    require balances[address(stor17[idx])] / sub_77b651d6
                    require 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6 / balances[address(stor17[idx])] / sub_77b651d6 == 100 * 10^6
                    require idx < senders.length
                    mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(senders[idx])
                    mem[mem[64] + 36] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(senders[idx]), 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                    require ext_call.success
                    require idx < senders.length
                    mem[0] = 17
                    _214 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_214] = address(senders[idx])
                    mem[_214 + 32] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                buyers.length++
                if not buyers.length <= buyers.length + 1:
                    s = sha3(9) + (2 * buyers.length + 1)
                    while sha3(9) + (2 * buyers.length) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        s = s + 2
                        continue 
                buyers[buyers.length].field_0 = address(senders[idx])
                uint256(buyers[buyers.length].field_256) = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                require tokensSold + (100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6) >= tokensSold
                tokensSold += 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                require idx < senders.length
                mem[0] = address(senders[idx])
                mem[32] = 12
                stor12[address(stor17[idx])] = 1
                s = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                idx = idx + 1
                continue 
            stor18 = senders.length
    else:
        require msg.sender == address(stor1.length)
        require sub_de2af4b0
        require stor18 + arg1 >= stor18
        if stor18 + arg1 <= senders.length:
            s = 0
            idx = stor18
            while idx < stor18 + arg1:
                require idx < senders.length
                mem[0] = address(senders[idx])
                mem[32] = 11
                if balances[address(stor17[idx])] <= 0:
                    s = s
                    idx = idx + 1
                    continue 
                require idx < senders.length
                mem[0] = address(senders[idx])
                mem[32] = 12
                if stor12[address(stor17[idx])]:
                    s = s
                    idx = idx + 1
                    continue 
                require idx < senders.length
                mem[32] = 11
                require sub_77b651d6
                if not balances[address(stor17[idx])] / sub_77b651d6:
                    require idx < senders.length
                    mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(senders[idx])
                    mem[mem[64] + 36] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(senders[idx]), 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                    require ext_call.success
                    require idx < senders.length
                    mem[0] = 17
                    _209 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_209] = address(senders[idx])
                    mem[_209 + 32] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                else:
                    require balances[address(stor17[idx])] / sub_77b651d6
                    require 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6 / balances[address(stor17[idx])] / sub_77b651d6 == 100 * 10^6
                    require idx < senders.length
                    mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(senders[idx])
                    mem[mem[64] + 36] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(senders[idx]), 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                    require ext_call.success
                    require idx < senders.length
                    mem[0] = 17
                    _215 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_215] = address(senders[idx])
                    mem[_215 + 32] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                buyers.length++
                if not buyers.length <= buyers.length + 1:
                    s = sha3(9) + (2 * buyers.length + 1)
                    while sha3(9) + (2 * buyers.length) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        s = s + 2
                        continue 
                buyers[buyers.length].field_0 = address(senders[idx])
                uint256(buyers[buyers.length].field_256) = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                require tokensSold + (100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6) >= tokensSold
                tokensSold += 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                require idx < senders.length
                mem[0] = address(senders[idx])
                mem[32] = 12
                stor12[address(stor17[idx])] = 1
                s = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                idx = idx + 1
                continue 
            stor18 += arg1
        else:
            s = 0
            idx = stor18
            while idx < senders.length:
                mem[0] = address(senders[idx])
                mem[32] = 11
                if balances[address(stor17[idx])] <= 0:
                    s = s
                    idx = idx + 1
                    continue 
                require idx < senders.length
                mem[0] = address(senders[idx])
                mem[32] = 12
                if stor12[address(stor17[idx])]:
                    s = s
                    idx = idx + 1
                    continue 
                require idx < senders.length
                mem[32] = 11
                require sub_77b651d6
                if not balances[address(stor17[idx])] / sub_77b651d6:
                    require idx < senders.length
                    mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(senders[idx])
                    mem[mem[64] + 36] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(senders[idx]), 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                    require ext_call.success
                    require idx < senders.length
                    mem[0] = 17
                    _211 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_211] = address(senders[idx])
                    mem[_211 + 32] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                else:
                    require balances[address(stor17[idx])] / sub_77b651d6
                    require 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6 / balances[address(stor17[idx])] / sub_77b651d6 == 100 * 10^6
                    require idx < senders.length
                    mem[mem[64]] = 0xa9059cbb00000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = address(senders[idx])
                    mem[mem[64] + 36] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(senders[idx]), 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                    require ext_call.success
                    require idx < senders.length
                    mem[0] = 17
                    _216 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_216] = address(senders[idx])
                    mem[_216 + 32] = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                buyers.length++
                if not buyers.length <= buyers.length + 1:
                    s = sha3(9) + (2 * buyers.length + 1)
                    while sha3(9) + (2 * buyers.length) > s:
                        stor[s] = 0
                        uint256(stor1[s]) = 0
                        s = s + 2
                        continue 
                buyers[buyers.length].field_0 = address(senders[idx])
                uint256(buyers[buyers.length].field_256) = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                require tokensSold + (100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6) >= tokensSold
                tokensSold += 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                require idx < senders.length
                mem[0] = address(senders[idx])
                mem[32] = 12
                stor12[address(stor17[idx])] = 1
                s = 100 * 10^6 * balances[address(stor17[idx])] / sub_77b651d6
                idx = idx + 1
                continue 
            stor18 = senders.length
}



}
