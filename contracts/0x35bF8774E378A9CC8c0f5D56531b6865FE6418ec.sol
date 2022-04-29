contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint8 stor3;
uint256 stor3; offset 8
uint256 stor4;
address stor15;
address stor16;
address stor17;
uint256 stor18;
uint256 stor19;

function _fallback() payable {
    stor2 = 0
    uint8(stor3.field_0) = 0
    Mask(248, 0, stor3.field_8) = 0
    stor4 = 0
    mem[96] = 3125 * 10^18 * 3600
    mem[128] = 3125 * 10^18 * 3600
    mem[160] = 3125 * 10^18 * 3600
    mem[192] = 3125 * 10^18 * 3600
    mem[224] = 3125 * 10^18 * 3600
    mem[256] = 3125 * 10^18 * 3600
    mem[288] = 3125 * 10^18 * 3600
    mem[320] = 3125 * 10^18 * 3600
    s = 5
    idx = 96
    while 352 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 13
    while 13 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    mem[352] = 10000000 * 10^18
    mem[384] = 10000000 * 10^18
    s = 13
    idx = 352
    while 416 > idx:
        stor[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 15
    while 15 > idx:
        stor[idx] = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    require code.data[15532 len 32] >= block.timestamp
    require code.data[15608 len 20]
    require code.data[15640 len 20]
    require code.data[15672 len 20]
    stor1 = code.data[15576 len 20]
    stor15 = code.data[15608 len 20]
    stor16 = code.data[15640 len 20]
    stor17 = code.data[15672 len 20]
    stor18 = code.data[15532 len 32]
    stor19 = code.data[15532 len 32] + (672 * 24 * 3600)
    return code.data[1057 len 14475]
}



// =====================  Runtime code  =====================


#
#  - withdrawTokenToFounders()
#
const min_investment_eth = 10^14

const tokensForSale = 250000000 * 10^18

const min_investment_presale_eth = 10^15

const presaleLimit = 10^16

const liquidityPool = 25000000 * 10^18

const token_per_wei = 10000

const preicoAndAdvisors = 25000000 * 10^18

const softCap = 10^15

const bountyReward = 10000000 * 10^18

const futureDevelopment = 100000000 * 10^18

const teamAndFounders = (25000 * 10^18 * 3600)

const max_investment_eth = 10^17

const hardCap = 2 * 10^16

const TOTAL_NUM_TOKENS = 500000000 * 10^18


address owner;
address tokenAddress;
uint256 totalEthers;
uint8 presaleLimitReached;
uint8 refundAllowed; offset 8
uint256 stor3; offset 8
uint256 leftOverTokens;
array of uint256 founderAmounts;
array of uint256 preicoAndAdvisorsAmounts;
uint256 stor14;
address walletAddress;
address foundersWalletAddress;
address sub_8eae449fAddress;
uint256 startTime;
uint256 endTime;
mapping of uint256 whitelist;
mapping of uint256 etherBalances;

function preicoAndAdvisorsAmounts(uint256 arg1) {
    require arg1 < 2
    return preicoAndAdvisorsAmounts[arg1]
}

function totalEthers() {
    return totalEthers
}

function presaleLimitReached() {
    return bool(presaleLimitReached)
}

function foundersWallet() {
    return foundersWalletAddress
}

function endTime() {
    return endTime
}

function refundAllowed() {
    return bool(refundAllowed)
}

function wallet() {
    return walletAddress
}

function leftOverTokens() {
    return leftOverTokens
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function sub_8eae449f(?) {
    return sub_8eae449fAddress
}

function etherBalances(address arg1) {
    return etherBalances[arg1]
}

function whitelist(address arg1) {
    return whitelist[arg1]
}

function token() {
    return tokenAddress
}

function founderAmounts(uint256 arg1) {
    require arg1 < 8
    return founderAmounts[arg1]
}

function softCapReached() {
    return totalEthers >= 10^15
}

function hasStarted() {
    return block.timestamp >= startTime
}

function hardCapReached() {
    return 555 * 10^10 * 24 * 3600 <= totalEthers
}

function checkWhitelist(address arg1, uint256 arg2) {
    require arg1
    require arg2 > 0
    return whitelist[address(arg1)] >= arg2
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOf(address arg1) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
    return ext_call.return_data[0]
}

function withdraw() {
    require msg.sender == owner
    require totalEthers >= 10^15
    require eth.balance(this.address) > 0
    call walletAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    return (ext_call.return_data[0] == 500000000 * 10^18)
}

function addWhitelist(address arg1, uint256 arg2) {
    require msg.sender == owner
    require block.timestamp <= endTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] != 500000000 * 10^18
    require arg1
    require arg2 > 0
    emit Whitelist(arg2, arg1);
    whitelist[address(arg1)] = arg2
    return 1
}

function withdrawTokensToAdvisors() {
    require msg.sender == owner
    require totalEthers >= 10^15
    if block.timestamp <= endTime:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] == 500000000 * 10^18
    if block.timestamp > startTime + (4320 * 24 * 3600):
        if stor14:
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args sub_8eae449fAddress, stor14
            require ext_call.success
            stor14 = 0
    if block.timestamp > startTime + (2160 * 24 * 3600):
        if preicoAndAdvisorsAmounts.length:
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args sub_8eae449fAddress, preicoAndAdvisorsAmounts.length
            require ext_call.success
            preicoAndAdvisorsAmounts.length = 0
}

function refund() {
    require refundAllowed
    if block.timestamp <= endTime:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] == 500000000 * 10^18
    require totalEthers < 10^15
    require etherBalances[address(msg.sender)] > 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0] > 0
    etherBalances[address(msg.sender)] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(this.address), ext_call.return_data[0]
    require ext_call.success
    call msg.sender with:
       value etherBalances[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
}

function addWhitelists(address[] arg1, uint256[] arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    require msg.sender == owner
    require block.timestamp <= endTime
    mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0] != 500000000 * 10^18
    require arg1.length == arg2.length
    idx = 0
    s = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        _29 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _31 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require msg.sender == owner
        require block.timestamp <= endTime
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = 0
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] != 500000000 * 10^18
        require address(_29)
        require _31 > 0
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = _31
        emit Whitelist(_31, address(_29));
        mem[0] = address(_29)
        mem[32] = 20
        whitelist[address(_29)] = _31
        idx = idx + 1
        s = _31
        s = _29
        continue 
    return 1
}

function finishCrowdsale() {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.mintingFinished() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require not ext_call.return_data[0]
    if block.timestamp <= endTime:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[0] != 500000000 * 10^18:
            require 555 * 10^10 * 24 * 3600 <= totalEthers
    if totalEthers < 10^15:
        stor3 = 1
        require ext_code.size(tokenAddress)
        call tokenAddress.0xfa2d63b7 with:
             gas gas_remaining - 710 wei
            args 0
        require ext_call.success
        return 0
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args walletAddress, 10000000 * 10^18
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args sub_8eae449fAddress, 5000000 * 10^18
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args walletAddress, 25000000 * 10^18
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args walletAddress, 100000000 * 10^18
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(this.address), 25000 * 10^18 * 3600
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(this.address), 20000000 * 10^18
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= 500000000 * 10^18
    leftOverTokens = -ext_call.return_data[0] + 500000000 * 10^18
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args walletAddress, leftOverTokens
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xfa2d63b7 with:
         gas gas_remaining - 710 wei
        args 1
    require ext_call.success
    return 1
}

function buyTokens(address arg1) payable {
    require block.timestamp <= endTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] != 500000000 * 10^18
    if block.timestamp < startTime:
        require block.timestamp >= startTime
        if msg.value < 10^14:
            require msg.value >= 10^14
        else:
            require msg.value <= 10^17
    else:
        require block.timestamp <= endTime
        if msg.value < 10^14:
            require msg.value >= 10^14
        else:
            require msg.value <= 10^17
    require arg1
    require msg.value > 0
    require whitelist[address(arg1)] >= msg.value
    require block.timestamp <= endTime
    if totalEthers >= 10^16:
        if msg.value:
            require msg.value
            require 10000 * msg.value / msg.value == 10000
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] + (10000 * msg.value) <= 500000000 * 10^18
        require msg.value <= whitelist[address(arg1)]
        whitelist[address(arg1)] -= msg.value
        require etherBalances[address(arg1)] + msg.value >= etherBalances[address(arg1)]
        etherBalances[address(arg1)] += msg.value
        require totalEthers + msg.value >= totalEthers
        totalEthers += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args address(arg1), 10000 * msg.value
        require ext_call.success
        require totalEthers <= 2 * 10^16
        emit TokenPurchase(msg.value, 10000 * msg.value, 0, arg1);
    else:
        if startTime + (336 * 24 * 3600) < block.timestamp:
            if msg.value:
                require msg.value
                require 10000 * msg.value / msg.value == 10000
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] + (10000 * msg.value) <= 500000000 * 10^18
            require msg.value <= whitelist[address(arg1)]
            whitelist[address(arg1)] -= msg.value
            require etherBalances[address(arg1)] + msg.value >= etherBalances[address(arg1)]
            etherBalances[address(arg1)] += msg.value
            require totalEthers + msg.value >= totalEthers
            totalEthers += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 10000 * msg.value
            require ext_call.success
            require totalEthers <= 2 * 10^16
            emit TokenPurchase(msg.value, 10000 * msg.value, 0, arg1);
        else:
            require msg.value >= 10^15
            if block.timestamp <= startTime + (168 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 10^6 * msg.value / msg.value == 10^6
                require ext_code.size(tokenAddress)
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_call.return_data[0] + (10^6 * msg.value / 80) <= 500000000 * 10^18
                require msg.value <= whitelist[address(arg1)]
                whitelist[address(arg1)] -= msg.value
                require etherBalances[address(arg1)] + msg.value >= etherBalances[address(arg1)]
                etherBalances[address(arg1)] += msg.value
                require totalEthers + msg.value >= totalEthers
                totalEthers += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 10^6 * msg.value / 80
                require ext_call.success
                require totalEthers <= 2 * 10^16
                emit TokenPurchase(msg.value, 10^6 * msg.value / 80, 0, arg1);
            else:
                if startTime + (168 * 24 * 3600) >= block.timestamp:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_call.return_data[0] <= 500000000 * 10^18
                    require msg.value <= whitelist[address(arg1)]
                    whitelist[address(arg1)] -= msg.value
                    require etherBalances[address(arg1)] + msg.value >= etherBalances[address(arg1)]
                    etherBalances[address(arg1)] += msg.value
                    require totalEthers + msg.value >= totalEthers
                    totalEthers += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                    require ext_call.success
                    require totalEthers <= 2 * 10^16
                    emit TokenPurchase(msg.value, 0, 0, arg1);
                else:
                    if block.timestamp > startTime + (336 * 24 * 3600):
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] <= 500000000 * 10^18
                        require msg.value <= whitelist[address(arg1)]
                        whitelist[address(arg1)] -= msg.value
                        require etherBalances[address(arg1)] + msg.value >= etherBalances[address(arg1)]
                        etherBalances[address(arg1)] += msg.value
                        require totalEthers + msg.value >= totalEthers
                        totalEthers += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 0
                        require ext_call.success
                        require totalEthers <= 2 * 10^16
                        emit TokenPurchase(msg.value, 0, 0, arg1);
                    else:
                        if msg.value:
                            require msg.value
                            require 10^6 * msg.value / msg.value == 10^6
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] + (10^6 * msg.value / 85) <= 500000000 * 10^18
                        require msg.value <= whitelist[address(arg1)]
                        whitelist[address(arg1)] -= msg.value
                        require etherBalances[address(arg1)] + msg.value >= etherBalances[address(arg1)]
                        etherBalances[address(arg1)] += msg.value
                        require totalEthers + msg.value >= totalEthers
                        totalEthers += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 10^6 * msg.value / 85
                        require ext_call.success
                        require totalEthers <= 2 * 10^16
                        emit TokenPurchase(msg.value, 10^6 * msg.value / 85, 0, arg1);
}

function _fallback() payable {
    require block.timestamp <= endTime
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] != 500000000 * 10^18
    if block.timestamp < startTime:
        require block.timestamp >= startTime
        if msg.value < 10^14:
            require msg.value >= 10^14
        else:
            require msg.value <= 10^17
    else:
        require block.timestamp <= endTime
        if msg.value < 10^14:
            require msg.value >= 10^14
        else:
            require msg.value <= 10^17
    require msg.sender
    require msg.value > 0
    require whitelist[address(msg.sender)] >= msg.value
    require block.timestamp <= endTime
    if totalEthers >= 10^16:
        if msg.value:
            require msg.value
            require 10000 * msg.value / msg.value == 10000
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] + (10000 * msg.value) <= 500000000 * 10^18
        require msg.value <= whitelist[address(msg.sender)]
        whitelist[address(msg.sender)] -= msg.value
        require etherBalances[address(msg.sender)] + msg.value >= etherBalances[address(msg.sender)]
        etherBalances[address(msg.sender)] += msg.value
        require totalEthers + msg.value >= totalEthers
        totalEthers += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args msg.sender, 10000 * msg.value
        require ext_call.success
        require totalEthers <= 2 * 10^16
        emit TokenPurchase(msg.value, 10000 * msg.value, 0, msg.sender);
    else:
        if startTime + (336 * 24 * 3600) < block.timestamp:
            if msg.value:
                require msg.value
                require 10000 * msg.value / msg.value == 10000
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] + (10000 * msg.value) <= 500000000 * 10^18
            require msg.value <= whitelist[address(msg.sender)]
            whitelist[address(msg.sender)] -= msg.value
            require etherBalances[address(msg.sender)] + msg.value >= etherBalances[address(msg.sender)]
            etherBalances[address(msg.sender)] += msg.value
            require totalEthers + msg.value >= totalEthers
            totalEthers += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 10000 * msg.value
            require ext_call.success
            require totalEthers <= 2 * 10^16
            emit TokenPurchase(msg.value, 10000 * msg.value, 0, msg.sender);
        else:
            require msg.value >= 10^15
            if block.timestamp <= startTime + (168 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 10^6 * msg.value / msg.value == 10^6
                require ext_code.size(tokenAddress)
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_call.return_data[0] + (10^6 * msg.value / 80) <= 500000000 * 10^18
                require msg.value <= whitelist[address(msg.sender)]
                whitelist[address(msg.sender)] -= msg.value
                require etherBalances[address(msg.sender)] + msg.value >= etherBalances[address(msg.sender)]
                etherBalances[address(msg.sender)] += msg.value
                require totalEthers + msg.value >= totalEthers
                totalEthers += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 10^6 * msg.value / 80
                require ext_call.success
                require totalEthers <= 2 * 10^16
                emit TokenPurchase(msg.value, 10^6 * msg.value / 80, 0, msg.sender);
            else:
                if startTime + (168 * 24 * 3600) >= block.timestamp:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_call.return_data[0] <= 500000000 * 10^18
                    require msg.value <= whitelist[address(msg.sender)]
                    whitelist[address(msg.sender)] -= msg.value
                    require etherBalances[address(msg.sender)] + msg.value >= etherBalances[address(msg.sender)]
                    etherBalances[address(msg.sender)] += msg.value
                    require totalEthers + msg.value >= totalEthers
                    totalEthers += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0
                    require ext_call.success
                    require totalEthers <= 2 * 10^16
                    emit TokenPurchase(msg.value, 0, 0, msg.sender);
                else:
                    if block.timestamp > startTime + (336 * 24 * 3600):
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] <= 500000000 * 10^18
                        require msg.value <= whitelist[address(msg.sender)]
                        whitelist[address(msg.sender)] -= msg.value
                        require etherBalances[address(msg.sender)] + msg.value >= etherBalances[address(msg.sender)]
                        etherBalances[address(msg.sender)] += msg.value
                        require totalEthers + msg.value >= totalEthers
                        totalEthers += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        require totalEthers <= 2 * 10^16
                        emit TokenPurchase(msg.value, 0, 0, msg.sender);
                    else:
                        if msg.value:
                            require msg.value
                            require 10^6 * msg.value / msg.value == 10^6
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x18160ddd with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_call.return_data[0] + (10^6 * msg.value / 85) <= 500000000 * 10^18
                        require msg.value <= whitelist[address(msg.sender)]
                        whitelist[address(msg.sender)] -= msg.value
                        require etherBalances[address(msg.sender)] + msg.value >= etherBalances[address(msg.sender)]
                        etherBalances[address(msg.sender)] += msg.value
                        require totalEthers + msg.value >= totalEthers
                        totalEthers += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 10^6 * msg.value / 85
                        require ext_call.success
                        require totalEthers <= 2 * 10^16
                        emit TokenPurchase(msg.value, 10^6 * msg.value / 85, 0, msg.sender);
}



}
