contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor3;
uint256 stor4;
address stor5;
uint256 stor6;
uint256 stor7;
address stor8;
uint256 stor9;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor3 = 12 * 10^6
    stor4 = 100 * 10^18
    require code.data[15905 len 32] >= block.number
    require code.data[15937 len 32] >= code.data[15905 len 32]
    require code.data[16109 len 20]
    stor6 = code.data[15905 len 32]
    stor7 = code.data[15937 len 32]
    stor9 = 380
    stor13 = 10^18
    stor8 = code.data[16109 len 20]
    require code.data[15905 len 32] < code.data[15969 len 32]
    require code.data[15969 len 32] < code.data[16001 len 32]
    require code.data[16001 len 32] < code.data[15937 len 32]
    stor15 = code.data[15969 len 32]
    stor16 = code.data[16001 len 32]
    create contract with 0 wei
                    code: code.data[6915 len 8990], code.data[16033 len 32], code.data[16065 len 32]
    require create.new_address
    stor5 = address(create.new_address)
    require ext_code.size(address(create.new_address))
    call address(create.new_address).mint(address rg1, uint256 rg2) with:
         gas gas_remaining - 710 wei
        args code.data[16109 len 20], 13100000 * 10^18
    require ext_call.success
    require ext_code.size(stor5)
    call stor5.mintTimelocked(address rg1, uint256 rg2, uint256 rg3) with:
         gas gas_remaining - 710 wei
        args address(code.data[16097 len 32]), 4250000 * 10^18, 421238 * 3600
    require ext_call.success
    stor17 = ext_call.return_data[12 len 20] or Mask(96, 160, stor17)
    require ext_code.size(stor5)
    call stor5.mintVested(address rg1, uint256 rg2, uint256 rg3, uint256 rg4) with:
         gas gas_remaining - 710 wei
        args address(code.data[16097 len 32]), 80750000 * 10^18, 421238 * 3600, 175200 * 24 * 3600
    require ext_call.success
    stor18 = ext_call.return_data[12 len 20] or Mask(96, 160, stor18)
    require ext_code.size(stor5)
    call stor5.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= 100000000 * 10^18
    stor14 = -ext_call.return_data[0] + 100000000 * 10^18
    require 1900000 * 10^18 == -ext_call.return_data[0] + 100000000 * 10^18
    emit 0xba3de3bc: stor6, stor7, stor8
    return code.data[1379 len 5536]
}



// =====================  Runtime code  =====================


const sub_38a25caf(?) = 1900000 * 10^18

const sub_45f65a47(?) = 100000000 * 10^18

const sub_5a6c04ef(?) = 12 * 10^6

const sub_692845b5(?) = 10^18

const sub_77f34fe3(?) = 80750000 * 10^18

const sub_86eb5330(?) = 100 * 10^18

const sub_af6c0d0e(?) = 456

const sub_ce0d07ca(?) = 532

const sub_f0a11e1d(?) = 4250000 * 10^18

const RESERVED_SUPPLY = 13100000 * 10^18

const VESTING_DURATION = (175200 * 24 * 3600)

const RATE = 380

const VESTING_START_TIME = (421238 * 3600)


uint8 stor0; offset 160
address owner;
mapping of uint8 stor1;
uint256 whitelistLength;
uint256 sub_1ff8faa2;
uint256 sub_050e1f66;
address tokenAddress;
uint256 startBlock;
uint256 endBlock;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 soldTokens;
mapping of uint256 balanceOf;
uint256 sub_a9f667ab;
uint256 tokenCap;
uint256 sub_02587546;
uint256 sub_48a0bd05;
address timelockAddress;
address vestingAddress;
mapping of uint8 stor19;

function sub_02587546(?) {
    return sub_02587546
}

function sub_050e1f66(?) {
    return sub_050e1f66
}

function endBlock() {
    return endBlock
}

function sub_1ff8faa2(?) {
    return sub_1ff8faa2
}

function rate() {
    return rate
}

function isWhitelisted(address arg1) {
    return bool(stor1[address(arg1)])
}

function weiRaised() {
    return weiRaised
}

function vesting() {
    return vestingAddress
}

function sub_48a0bd05(?) {
    return sub_48a0bd05
}

function startBlock() {
    return startBlock
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(stor0)
}

function soldTokens() {
    return soldTokens
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function getWhitelistLength() {
    return whitelistLength
}

function sub_a9f667ab(?) {
    return sub_a9f667ab
}

function claimed(address arg1) {
    return bool(stor19[arg1])
}

function timelock() {
    return timelockAddress
}

function tokenCap() {
    return tokenCap
}

function token() {
    return tokenAddress
}

function isWhitelistEnabled() {
    return (sub_1ff8faa2 > 0)
}

function unpause() {
    require owner == msg.sender
    require stor0
    stor0 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor0
    stor0 = 1
    emit Pause()
}

function isAllowedWhitelist(uint256 arg1, uint256 arg2) {
    if arg1 > 0:
        return (arg1 > 0)
    return (arg2 > 0)
}

function hasEnded() {
    if block.number > endBlock:
        return (block.number > endBlock)
    return soldTokens >= tokenCap
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_8c273460(?) {
    require owner == msg.sender
    require arg1 > 0
    require arg1 < sub_a9f667ab
    sub_a9f667ab = arg1
    emit 0x68997e44: arg1
}

function sub_51ce73e8(?) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0xb8eeb660 with:
         gas gas_remaining - 710 wei
        args vestingAddress
    require ext_call.success
}

function sub_b6ababf4(?) {
    require owner == msg.sender
    if sub_1ff8faa2 <= 0:
        require arg1 > 0
    if whitelistLength:
        require arg1 > sub_050e1f66
    sub_050e1f66 = arg1
    emit 0x297af10d: arg1, msg.sender
}

function setMaxWhitelistLength(uint256 arg1) {
    require owner == msg.sender
    if arg1 <= 0:
        require sub_050e1f66 > 0
    require arg1 != sub_1ff8faa2
    sub_1ff8faa2 = arg1
    emit LogMaxWhitelistLengthChanged(arg1, msg.sender);
}

function sub_8f80b392(?) {
    if arg2 < sub_a9f667ab:
        return arg2 >= sub_a9f667ab
    if sub_1ff8faa2 <= 0:
        return sub_1ff8faa2 <= 0
    if arg2 <= sub_050e1f66:
        return arg2 <= sub_050e1f66
    return bool(stor1[address(arg1)])
}

function releaseVestedTokens() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.releaseVested(address rg1) with:
         gas gas_remaining - 710 wei
        args vestingAddress
    require ext_call.success
}

function removeFromWhitelist(address arg1) {
    require owner == msg.sender
    require arg1
    require stor1[address(arg1)]
    require whitelistLength > 0
    whitelistLength--
    stor1[address(arg1)] = 0
    emit LogWhitelistAddressRemoved(arg1, msg.sender);
}

function addToWhitelist(address arg1) {
    require owner == msg.sender
    require arg1
    require not stor1[address(arg1)]
    require whitelistLength < sub_1ff8faa2
    whitelistLength++
    stor1[address(arg1)] = 1
    emit LogWhitelistAddressAdded(arg1, msg.sender);
}

function buyTokens(address arg1) payable {
    require not stor0
    require arg1
    if block.number <= sub_02587546:
        if msg.value:
            require msg.value
            require 532 * msg.value / msg.value == 532
        require (532 * msg.value) + soldTokens >= soldTokens
        require (532 * msg.value) + soldTokens <= tokenCap
    else:
        if block.number <= sub_48a0bd05:
            if msg.value:
                require msg.value
                require 456 * msg.value / msg.value == 456
            require (456 * msg.value) + soldTokens >= soldTokens
            require (456 * msg.value) + soldTokens <= tokenCap
        else:
            if msg.value:
                require msg.value
                require rate * msg.value / msg.value == rate
            require (rate * msg.value) + soldTokens >= soldTokens
            require (rate * msg.value) + soldTokens <= tokenCap
    require msg.value + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    if startBlock > block.number:
        require startBlock <= block.number
        require msg.value
        if msg.value + balanceOf[address(arg1)] < sub_a9f667ab:
            require msg.value + balanceOf[address(arg1)] >= sub_a9f667ab
        else:
            if sub_1ff8faa2 <= 0:
                require sub_1ff8faa2 <= 0
            else:
                if msg.value + balanceOf[address(arg1)] <= sub_050e1f66:
                    require msg.value + balanceOf[address(arg1)] <= sub_050e1f66
                else:
                    require stor1[address(arg1)]
    else:
        require block.number <= endBlock
        require msg.value
        if msg.value + balanceOf[address(arg1)] < sub_a9f667ab:
            require msg.value + balanceOf[address(arg1)] >= sub_a9f667ab
        else:
            if sub_1ff8faa2 <= 0:
                require sub_1ff8faa2 <= 0
            else:
                if msg.value + balanceOf[address(arg1)] <= sub_050e1f66:
                    require msg.value + balanceOf[address(arg1)] <= sub_050e1f66
                else:
                    require stor1[address(arg1)]
    require msg.value + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += msg.value
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    if block.number <= sub_02587546:
        if msg.value:
            require msg.value
            require 532 * msg.value / msg.value == 532
        require (532 * msg.value) + soldTokens >= soldTokens
        soldTokens += 532 * msg.value
        require ext_code.size(tokenAddress)
        if block.number > sub_02587546:
            call tokenAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), 532 * msg.value
        else:
            call tokenAddress.mintLocked(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), 532 * msg.value
        require ext_call.success
        emit LogTokenPurchase((532 * msg.value), msg.sender, arg1, msg.value);
    else:
        if block.number <= sub_48a0bd05:
            if msg.value:
                require msg.value
                require 456 * msg.value / msg.value == 456
            require (456 * msg.value) + soldTokens >= soldTokens
            soldTokens += 456 * msg.value
            require ext_code.size(tokenAddress)
            if block.number > sub_02587546:
                call tokenAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 456 * msg.value
            else:
                call tokenAddress.mintLocked(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 456 * msg.value
            require ext_call.success
            emit LogTokenPurchase((456 * msg.value), msg.sender, arg1, msg.value);
        else:
            if msg.value:
                require msg.value
                require rate * msg.value / msg.value == rate
            require (rate * msg.value) + soldTokens >= soldTokens
            soldTokens += rate * msg.value
            require ext_code.size(tokenAddress)
            if block.number > sub_02587546:
                call tokenAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), rate * msg.value
            else:
                call tokenAddress.mintLocked(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), rate * msg.value
            require ext_call.success
            emit LogTokenPurchase((rate * msg.value), msg.sender, arg1, msg.value);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require not stor0
    require msg.sender
    if block.number <= sub_02587546:
        if msg.value:
            require msg.value
            require 532 * msg.value / msg.value == 532
        require (532 * msg.value) + soldTokens >= soldTokens
        require (532 * msg.value) + soldTokens <= tokenCap
    else:
        if block.number <= sub_48a0bd05:
            if msg.value:
                require msg.value
                require 456 * msg.value / msg.value == 456
            require (456 * msg.value) + soldTokens >= soldTokens
            require (456 * msg.value) + soldTokens <= tokenCap
        else:
            if msg.value:
                require msg.value
                require rate * msg.value / msg.value == rate
            require (rate * msg.value) + soldTokens >= soldTokens
            require (rate * msg.value) + soldTokens <= tokenCap
    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    if startBlock > block.number:
        require startBlock <= block.number
        require msg.value
        if msg.value + balanceOf[address(msg.sender)] < sub_a9f667ab:
            require msg.value + balanceOf[address(msg.sender)] >= sub_a9f667ab
        else:
            if sub_1ff8faa2 <= 0:
                require sub_1ff8faa2 <= 0
            else:
                if msg.value + balanceOf[address(msg.sender)] <= sub_050e1f66:
                    require msg.value + balanceOf[address(msg.sender)] <= sub_050e1f66
                else:
                    require stor1[address(msg.sender)]
    else:
        require block.number <= endBlock
        require msg.value
        if msg.value + balanceOf[address(msg.sender)] < sub_a9f667ab:
            require msg.value + balanceOf[address(msg.sender)] >= sub_a9f667ab
        else:
            if sub_1ff8faa2 <= 0:
                require sub_1ff8faa2 <= 0
            else:
                if msg.value + balanceOf[address(msg.sender)] <= sub_050e1f66:
                    require msg.value + balanceOf[address(msg.sender)] <= sub_050e1f66
                else:
                    require stor1[address(msg.sender)]
    require msg.value + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += msg.value
    require msg.value + weiRaised >= weiRaised
    weiRaised += msg.value
    if block.number <= sub_02587546:
        if msg.value:
            require msg.value
            require 532 * msg.value / msg.value == 532
        require (532 * msg.value) + soldTokens >= soldTokens
        soldTokens += 532 * msg.value
        require ext_code.size(tokenAddress)
        if block.number > sub_02587546:
            call tokenAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 532 * msg.value
        else:
            call tokenAddress.mintLocked(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 532 * msg.value
        require ext_call.success
        emit LogTokenPurchase((532 * msg.value), msg.sender, msg.sender, msg.value);
    else:
        if block.number <= sub_48a0bd05:
            if msg.value:
                require msg.value
                require 456 * msg.value / msg.value == 456
            require (456 * msg.value) + soldTokens >= soldTokens
            soldTokens += 456 * msg.value
            require ext_code.size(tokenAddress)
            if block.number > sub_02587546:
                call tokenAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 456 * msg.value
            else:
                call tokenAddress.mintLocked(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 456 * msg.value
            require ext_call.success
            emit LogTokenPurchase((456 * msg.value), msg.sender, msg.sender, msg.value);
        else:
            if msg.value:
                require msg.value
                require rate * msg.value / msg.value == rate
            require (rate * msg.value) + soldTokens >= soldTokens
            soldTokens += rate * msg.value
            require ext_code.size(tokenAddress)
            if block.number > sub_02587546:
                call tokenAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, rate * msg.value
            else:
                call tokenAddress.mintLocked(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, rate * msg.value
            require ext_call.success
            emit LogTokenPurchase((rate * msg.value), msg.sender, msg.sender, msg.value);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
