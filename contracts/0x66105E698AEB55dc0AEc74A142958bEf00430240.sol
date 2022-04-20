contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint8 stor6; offset 160
address stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
address stor11;
address stor12;
address stor13;
address stor14;
address stor15;
uint8 stor16; offset 160

function _fallback() payable {
    uint8(stor6.field_160) = 0
    require not msg.value
    require code.data[13995 len 32] >= block.timestamp
    require code.data[14091 len 32] >= code.data[13995 len 32]
    require code.data[13931 len 32] > 0
    require code.data[13975 len 20]
    create contract with 0 wei
                    code: code.data[10647 len 3284], 0, 0
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[13995 len 32]
    stor2 = code.data[14091 len 32]
    stor4 = code.data[13931 len 32]
    stor3 = code.data[13975 len 20]
    address(stor6.field_0) = msg.sender
    stor7 = code.data[13995 len 32]
    stor8 = code.data[14027 len 32]
    stor9 = code.data[14059 len 32]
    stor10 = code.data[14091 len 32]
    stor11 = code.data[14135 len 20]
    stor12 = code.data[14167 len 20]
    stor13 = code.data[14199 len 20]
    stor15 = code.data[14231 len 20]
    stor14 = this.address
    require stor7 > 0
    require stor8 > 0
    require stor9 > 0
    require stor10 > 0
    require stor11
    require stor12
    require stor13
    stor16 = 1
    require ext_code.size(stor0)
    call stor0.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor11, 100 * 10^6 * 10^ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor12, 25 * 10^6 * 10^ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor13, 275 * 10^6 * 10^ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor14, 97 * 10^6 * 10^ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x313ce567 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor15, 3 * 10^6 * 10^ext_call.return_data[0]
    require ext_call.success
    require ext_code.size(stor0)
    call stor0.0x7d64bcb4 with:
         gas gas_remaining - 710 wei
    require ext_call.success
    stor16 = 2
    return code.data[2301 len 8346]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint8 stor6; offset 160
address owner;
uint256 CROWDSALE_PHASE_1_START;
uint256 CROWDSALE_PHASE_2_START;
uint256 CROWDSALE_PHASE_3_START;
uint256 POSTSALE_START;
address FOUNDER_WALLETAddress;
address BOUNTY_WALLETAddress;
address FUTURE_WALLETAddress;
address CROWDSALE_WALLETAddress;
address PRESALE_WALLETAddress;
uint8 currentStage; offset 160

function POSTSALE_START() {
    return POSTSALE_START
}

function CROWDSALE_WALLET() {
    return CROWDSALE_WALLETAddress
}

function FOUNDER_WALLET() {
    return FOUNDER_WALLETAddress
}

function CROWDSALE_PHASE_1_START() {
    return CROWDSALE_PHASE_1_START
}

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function PRESALE_WALLET() {
    return PRESALE_WALLETAddress
}

function FUTURE_WALLET() {
    return FUTURE_WALLETAddress
}

function wallet() {
    return walletAddress
}

function currentStage() {
    require currentStage <= 6
    return currentStage
}

function paused() {
    return bool(stor6)
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function CROWDSALE_PHASE_2_START() {
    return CROWDSALE_PHASE_2_START
}

function CROWDSALE_PHASE_3_START() {
    return CROWDSALE_PHASE_3_START
}

function BOUNTY_WALLET() {
    return BOUNTY_WALLETAddress
}

function token() {
    return tokenAddress
}

function hasEnded() {
    return (block.timestamp > endTime)
}

function unpause() {
    require owner == msg.sender
    require stor6
    stor6 = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not stor6
    stor6 = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function retrieveFunds() {
    require owner == msg.sender
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function getCurrentRate() {
    require currentStage <= 6
    if currentStage == 3:
        return 1150
    require currentStage <= 6
    if currentStage == 4:
        return 1100
    require currentStage <= 6
    if currentStage != 5:
        return 0
    return 1050
}

function setCurrentStage() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.mintingFinished() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        if block.timestamp < CROWDSALE_PHASE_1_START:
            currentStage = 2
        else:
            if block.timestamp < CROWDSALE_PHASE_2_START:
                currentStage = 3
            else:
                if block.timestamp < CROWDSALE_PHASE_3_START:
                    currentStage = 4
                else:
                    if block.timestamp >= POSTSALE_START:
                        currentStage = 6
                    else:
                        currentStage = 5
    return 1
}

function retrieveRemainingCoinsPostSale() {
    require owner == msg.sender
    require ext_code.size(tokenAddress)
    call tokenAddress.mintingFinished() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        if block.timestamp < CROWDSALE_PHASE_1_START:
            currentStage = 2
        else:
            if block.timestamp < CROWDSALE_PHASE_2_START:
                currentStage = 3
            else:
                if block.timestamp < CROWDSALE_PHASE_3_START:
                    currentStage = 4
                else:
                    if block.timestamp >= POSTSALE_START:
                        currentStage = 6
                    else:
                        currentStage = 5
    require currentStage <= 6
    require currentStage == 6
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args CROWDSALE_WALLETAddress
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args FUTURE_WALLETAddress, ext_call.return_data[0]
    require ext_call.success
    emit CoinsRetrieved(ext_call.return_data[0], FUTURE_WALLETAddress);
}

function buyTokens(address arg1) payable {
    require not stor6
    require ext_code.size(tokenAddress)
    call tokenAddress.mintingFinished() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        if block.timestamp < CROWDSALE_PHASE_1_START:
            currentStage = 2
        else:
            if block.timestamp < CROWDSALE_PHASE_2_START:
                currentStage = 3
            else:
                if block.timestamp < CROWDSALE_PHASE_3_START:
                    currentStage = 4
                else:
                    if block.timestamp >= POSTSALE_START:
                        currentStage = 6
                    else:
                        currentStage = 5
    require arg1
    require currentStage <= 6
    require currentStage >= 3
    require currentStage <= 6
    require currentStage <= 5
    require msg.value > 10^16
    require currentStage <= 6
    if currentStage == 3:
        if msg.value:
            require msg.value
            require 1150 * msg.value / msg.value == 1150
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), 1150 * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, 1150 * msg.value, msg.sender, arg1);
    else:
        require currentStage <= 6
        if currentStage == 4:
            if msg.value:
                require msg.value
                require 1100 * msg.value / msg.value == 1100
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), 1100 * msg.value
            require ext_call.success
            emit TokenPurchase(msg.value, 1100 * msg.value, msg.sender, arg1);
        else:
            require currentStage <= 6
            if currentStage != 5:
                if msg.value:
                    require msg.value
                    require not 0 / msg.value
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
            else:
                if msg.value:
                    require msg.value
                    require 1050 * msg.value / msg.value == 1050
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 1050 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 1050 * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require not stor6
    require ext_code.size(tokenAddress)
    call tokenAddress.mintingFinished() with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        if block.timestamp < CROWDSALE_PHASE_1_START:
            currentStage = 2
        else:
            if block.timestamp < CROWDSALE_PHASE_2_START:
                currentStage = 3
            else:
                if block.timestamp < CROWDSALE_PHASE_3_START:
                    currentStage = 4
                else:
                    if block.timestamp >= POSTSALE_START:
                        currentStage = 6
                    else:
                        currentStage = 5
    require msg.sender
    require currentStage <= 6
    require currentStage >= 3
    require currentStage <= 6
    require currentStage <= 5
    require msg.value > 10^16
    require currentStage <= 6
    if currentStage == 3:
        if msg.value:
            require msg.value
            require 1150 * msg.value / msg.value == 1150
        require msg.value + weiRaised >= weiRaised
        weiRaised += msg.value
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, 1150 * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, 1150 * msg.value, msg.sender, msg.sender);
    else:
        require currentStage <= 6
        if currentStage == 4:
            if msg.value:
                require msg.value
                require 1100 * msg.value / msg.value == 1100
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 1100 * msg.value
            require ext_call.success
            emit TokenPurchase(msg.value, 1100 * msg.value, msg.sender, msg.sender);
        else:
            require currentStage <= 6
            if currentStage != 5:
                if msg.value:
                    require msg.value
                    require not 0 / msg.value
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0
                require ext_call.success
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
            else:
                if msg.value:
                    require msg.value
                    require 1050 * msg.value / msg.value == 1050
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 1050 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 1050 * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
