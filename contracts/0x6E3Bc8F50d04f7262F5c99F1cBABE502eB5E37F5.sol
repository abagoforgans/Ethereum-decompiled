contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
address stor6;
array of uint256 stor7;
uint16 stor8;
uint256 stor9;

function _fallback() payable {
    stor8 = 0
    stor9 = 0
    require not msg.value
    require code.data[5340 len 32] >= block.timestamp
    require code.data[5372 len 32] >= code.data[5340 len 32]
    require code.data[5416 len 20]
    stor1 = code.data[5340 len 32]
    stor2 = code.data[5372 len 32]
    stor4 = 1
    stor3 = code.data[5416 len 20]
    stor6 = msg.sender
    stor0 = code.data[5320 len 20]
    bool(stor7.length) = 0
    stor7.length.field_1 = 31
    stor7.length.field_8 = 'https://tokensale.gameflip.com/'
    idx = 0
    while stor7.length + 31 / 32 > idx:
        stor7[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[591 len 4717]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
address owner;
array of uint256 contactInformation;
uint8 stor8;
uint8 stor8; offset 8
uint256 tokensSold;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function contactInformation() {
    return contactInformation[0 len contactInformation.length]
}

function weiRaised() {
    return weiRaised
}

function tokensSold() {
    return tokensSold
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(uint8(stor8.field_0))
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(uint8(stor8.field_8))
}

function owner() {
    return owner
}

function token() {
    return tokenAddress
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
    revert
}

function setWallet(address arg1) {
    require owner == msg.sender
    require arg1
    walletAddress = arg1
}

function unpause() {
    require owner == msg.sender
    require uint8(stor8.field_0)
    uint8(stor8.field_0) = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not uint8(stor8.field_0)
    uint8(stor8.field_0) = 1
    emit Pause()
}

function setContactInformation(string arg1) {
    require owner == msg.sender
    contactInformation[] = Array(len=arg1.length, data=arg1[all])
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1 != this.address
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function reclaimContract(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args owner
    require ext_call.success
}

function tokensRemaining() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.TOTAL_TOKENS() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    return 0
}

function reclaimToken(address arg1) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, ext_call.return_data[0]
    require ext_call.success
    require ext_call.return_data[0]
}

function setEndTime(uint256 arg1) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.TOTAL_TOKENS() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] > ext_call.return_data[0]
    revert
}

function hasEnded() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.TOTAL_TOKENS() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return not 0
}

function tokenTransferOwnership(address arg1) {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.TOTAL_TOKENS() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(tokenAddress)
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args arg1
    require ext_call.success
}

function finalize() {
    require owner == msg.sender
    require not uint8(stor8.field_8)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.TOTAL_TOKENS() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= ext_call.return_data[0]
    if tokenAddress:
        require ext_code.size(tokenAddress)
        call tokenAddress.0x8da5cb5b with:
             gas gas_remaining - 710 wei
        require ext_call.success
        if ext_call.return_data[12 len 20] == this.address:
            if owner:
                require ext_code.size(tokenAddress)
                call tokenAddress.0xf2fde38b with:
                     gas gas_remaining - 710 wei
                    args owner
                require ext_call.success
    emit Finalized()
    uint8(stor8.field_8) = 1
}

function buyTokens(address arg1) payable {
    require not uint8(stor8.field_0)
    require arg1
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value >= 10^17
    require startTime <= endTime
    require (endTime - startTime / 4) + startTime >= startTime
    if block.timestamp < (endTime - startTime / 4) + startTime:
        if msg.value:
            require msg.value
            require 250 * msg.value / msg.value == 250
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.TOTAL_TOKENS() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require 0 >= 250 * msg.value
        require 250 * msg.value <= 0
        if -250 * msg.value >= 25 * 10^18:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require (250 * msg.value) + tokensSold >= tokensSold
            tokensSold += 250 * msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 250 * msg.value
            require ext_call.success
            emit TokenPurchase(msg.value, 250 * msg.value, msg.sender, arg1);
        else:
            require 0 >= 250 * msg.value
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require tokensSold >= tokensSold
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 0
            require ext_call.success
            emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    else:
        require (endTime - startTime / 4) + startTime >= startTime
        require Mask(254, 2, endTime - startTime) >> 1 >= endTime - startTime / 4
        if block.timestamp < (Mask(254, 2, endTime - startTime) >> 1) + startTime:
            if msg.value:
                require msg.value
                require 230 * msg.value / msg.value == 230
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.TOTAL_TOKENS() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] <= ext_call.return_data[0]
            require 0 >= 230 * msg.value
            require 230 * msg.value <= 0
            if -230 * msg.value >= 23 * 10^18:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require (230 * msg.value) + tokensSold >= tokensSold
                tokensSold += 230 * msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 230 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 230 * msg.value, msg.sender, arg1);
            else:
                require 0 >= 230 * msg.value
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require tokensSold >= tokensSold
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
        else:
            require (endTime - startTime / 4) + startTime >= startTime
            require Mask(254, 2, endTime - startTime) >> 1 >= endTime - startTime / 4
            require 3 * endTime - startTime / 4 >= Mask(254, 2, endTime - startTime) >> 1
            if block.timestamp >= (3 * endTime - startTime / 4) + startTime:
                if msg.value:
                    require msg.value
                    require 200 * msg.value / msg.value == 200
                require ext_code.size(tokenAddress)
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.TOTAL_TOKENS() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_call.return_data[0] <= ext_call.return_data[0]
                require 0 >= 200 * msg.value
                require 200 * msg.value <= 0
                if -200 * msg.value >= 20 * 10^18:
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require (200 * msg.value) + tokensSold >= tokensSold
                    tokensSold += 200 * msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 200 * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, 200 * msg.value, msg.sender, arg1);
                else:
                    require 0 >= 200 * msg.value
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require tokensSold >= tokensSold
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
            else:
                if msg.value:
                    require msg.value
                    require 220 * msg.value / msg.value == 220
                require ext_code.size(tokenAddress)
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.TOTAL_TOKENS() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_call.return_data[0] <= ext_call.return_data[0]
                require 0 >= 220 * msg.value
                require 220 * msg.value <= 0
                if -220 * msg.value >= 22 * 10^18:
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require (220 * msg.value) + tokensSold >= tokensSold
                    tokensSold += 220 * msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 220 * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, 220 * msg.value, msg.sender, arg1);
                else:
                    require 0 >= 220 * msg.value
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require tokensSold >= tokensSold
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require not uint8(stor8.field_0)
    require msg.sender
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value >= 10^17
    require startTime <= endTime
    require (endTime - startTime / 4) + startTime >= startTime
    if block.timestamp < (endTime - startTime / 4) + startTime:
        if msg.value:
            require msg.value
            require 250 * msg.value / msg.value == 250
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_code.size(tokenAddress)
        call tokenAddress.TOTAL_TOKENS() with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require ext_call.return_data[0] <= ext_call.return_data[0]
        require 0 >= 250 * msg.value
        require 250 * msg.value <= 0
        if -250 * msg.value >= 25 * 10^18:
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require (250 * msg.value) + tokensSold >= tokensSold
            tokensSold += 250 * msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 250 * msg.value
            require ext_call.success
            emit TokenPurchase(msg.value, 250 * msg.value, msg.sender, msg.sender);
        else:
            require 0 >= 250 * msg.value
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require tokensSold >= tokensSold
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0
            require ext_call.success
            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    else:
        require (endTime - startTime / 4) + startTime >= startTime
        require Mask(254, 2, endTime - startTime) >> 1 >= endTime - startTime / 4
        if block.timestamp < (Mask(254, 2, endTime - startTime) >> 1) + startTime:
            if msg.value:
                require msg.value
                require 230 * msg.value / msg.value == 230
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.TOTAL_TOKENS() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_call.return_data[0] <= ext_call.return_data[0]
            require 0 >= 230 * msg.value
            require 230 * msg.value <= 0
            if -230 * msg.value >= 23 * 10^18:
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require (230 * msg.value) + tokensSold >= tokensSold
                tokensSold += 230 * msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 230 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 230 * msg.value, msg.sender, msg.sender);
            else:
                require 0 >= 230 * msg.value
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require tokensSold >= tokensSold
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0
                require ext_call.success
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
        else:
            require (endTime - startTime / 4) + startTime >= startTime
            require Mask(254, 2, endTime - startTime) >> 1 >= endTime - startTime / 4
            require 3 * endTime - startTime / 4 >= Mask(254, 2, endTime - startTime) >> 1
            if block.timestamp >= (3 * endTime - startTime / 4) + startTime:
                if msg.value:
                    require msg.value
                    require 200 * msg.value / msg.value == 200
                require ext_code.size(tokenAddress)
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.TOTAL_TOKENS() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_call.return_data[0] <= ext_call.return_data[0]
                require 0 >= 200 * msg.value
                require 200 * msg.value <= 0
                if -200 * msg.value >= 20 * 10^18:
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require (200 * msg.value) + tokensSold >= tokensSold
                    tokensSold += 200 * msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 200 * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, 200 * msg.value, msg.sender, msg.sender);
                else:
                    require 0 >= 200 * msg.value
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require tokensSold >= tokensSold
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
            else:
                if msg.value:
                    require msg.value
                    require 220 * msg.value / msg.value == 220
                require ext_code.size(tokenAddress)
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.TOTAL_TOKENS() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_call.return_data[0] <= ext_call.return_data[0]
                require 0 >= 220 * msg.value
                require 220 * msg.value <= 0
                if -220 * msg.value >= 22 * 10^18:
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require (220 * msg.value) + tokensSold >= tokensSold
                    tokensSold += 220 * msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 220 * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, 220 * msg.value, msg.sender, msg.sender);
                else:
                    require 0 >= 220 * msg.value
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require tokensSold >= tokensSold
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
