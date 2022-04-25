contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
address stor3;
address stor4;
uint256 stor5;
uint256 stor6;
uint8 stor8;
uint256 stor8; offset 24
uint256 stor8; offset 16
uint256 stor8; offset 8
uint256 stor9;

function _fallback() payable {
    stor5 = 420420 * 3600
    stor6 = 423132 * 3600
    uint8(stor8.field_0) = 0
    Mask(248, 0, stor8.field_8) = 0
    Mask(240, 0, stor8.field_16) = 0
    Mask(232, 0, stor8.field_24) = 0
    require not msg.value
    stor0 = msg.sender
    require code.data[11983 len 20]
    require code.data[12015 len 20]
    require code.data[12047 len 20]
    stor1 = code.data[12047 len 20]
    stor9 = code.data[12067 len 32]
    stor2 = code.data[11983 len 20]
    create contract with 0 wei
                    code: code.data[7231 len 3134], code.data[12015 len 20]
    require create.new_address
    stor3 = address(create.new_address)
    create contract with 0 wei
                    code: code.data[10365 len 1606]
    stor4 = address(create.new_address)
    return code.data[889 len 6342]
}



// =====================  Runtime code  =====================


const USD_CAP = 12 * 10^6

const USD_GOAL = 4 * 10^6

const MIN_SALE_AMOUNT = 5 * 10^17


address owner;
address escrowAddress;
address tokenAddress;
address vaultAddress;
address bonusesAddress;
uint256 stor5;
uint256 stor6;
uint256 weiRaised;
uint8 stor8;
uint8 stor8; offset 8
uint8 stor8; offset 16
uint8 stor8; offset 24
uint256 stor8; offset 24
uint256 stor8; offset 16
uint256 stor8; offset 8
uint256 ETHUSD;

function weiRaised() {
    return weiRaised
}

function paused() {
    return bool(uint8(stor8.field_8))
}

function ETHUSD() {
    return ETHUSD
}

function isFinalized() {
    return bool(uint8(stor8.field_0))
}

function owner() {
    return owner
}

function bonuses() {
    return bonusesAddress
}

function isMinCapReached() {
    return bool(uint8(stor8.field_24))
}

function escrow() {
    return escrowAddress
}

function refunding() {
    return bool(uint8(stor8.field_16))
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function kill() {
    require msg.sender == owner
    require uint8(stor8.field_8)
    selfdestruct(owner)
}

function updateExchangeRate(uint256 arg1) {
    require msg.sender == escrowAddress
    ETHUSD = arg1
}

function unpause() {
    require msg.sender == owner
    require uint8(stor8.field_8)
    Mask(248, 0, stor8.field_8) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor8.field_8)
    Mask(248, 0, stor8.field_8) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function hasEnded() {
    if block.timestamp > stor6:
        return (block.timestamp > stor6)
    if weiRaised:
        require weiRaised
        require weiRaised * ETHUSD / weiRaised == ETHUSD
    return weiRaised * ETHUSD / 100 * 10^18 >= 12 * 10^6
}

function goalReached() {
    if uint8(stor8.field_24):
        return bool(uint8(stor8.field_24))
    if weiRaised:
        require weiRaised
        require weiRaised * ETHUSD / weiRaised == ETHUSD
    return weiRaised * ETHUSD / 100 * 10^18 >= 4 * 10^6
}

function claimRefund() {
    require uint8(stor8.field_0)
    require uint8(stor8.field_16)
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function addRate(address arg1, uint8 arg2) {
    require msg.sender == owner
    require arg1
    require ext_code.size(bonusesAddress)
    call bonusesAddress.0x87e854d3 with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
}

function getConversionRate() {
    if block.timestamp >= stor5 + (2544 * 24 * 3600):
        return 650
    if block.timestamp >= stor5 + (2376 * 24 * 3600):
        return 676
    if block.timestamp >= stor5 + (2208 * 24 * 3600):
        return 715
    if block.timestamp >= stor5 + (2040 * 24 * 3600):
        return 780
    if block.timestamp < stor5:
        return 0
    return 845
}

function unholdFunds() {
    require msg.sender == owner
    if not uint8(stor8.field_24):
        if weiRaised:
            require weiRaised
            require weiRaised * ETHUSD / weiRaised == ETHUSD
        require weiRaised * ETHUSD / 100 * 10^18 >= 4 * 10^6
    Mask(232, 0, stor8.field_24) = 1
    require ext_code.size(vaultAddress)
    call vaultAddress.unhold() with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function finalize() {
    require msg.sender == owner
    require not uint8(stor8.field_0)
    if block.timestamp <= stor6:
        if weiRaised:
            require weiRaised
            require weiRaised * ETHUSD / weiRaised == ETHUSD
        require weiRaised * ETHUSD / 100 * 10^18 >= 12 * 10^6
    if uint8(stor8.field_24):
        require ext_code.size(vaultAddress)
        call vaultAddress.0x43d726d6 with:
             gas gas_remaining - 710 wei
    else:
        if weiRaised:
            require weiRaised
            require weiRaised * ETHUSD / weiRaised == ETHUSD
        if weiRaised * ETHUSD / 100 * 10^18 >= 4 * 10^6:
            require ext_code.size(vaultAddress)
            call vaultAddress.0x43d726d6 with:
                 gas gas_remaining - 710 wei
        else:
            Mask(240, 0, stor8.field_16) = 1
            require ext_code.size(vaultAddress)
            call vaultAddress.enableRefunds() with:
                 gas gas_remaining - 710 wei
    require ext_call.success
    uint8(stor8.field_0) = 1
    emit Finalized()
}

function buyTokens(address arg1) payable {
    require not uint8(stor8.field_8)
    require arg1
    require weiRaised + msg.value >= weiRaised
    if weiRaised + msg.value:
        require weiRaised + msg.value
        require (weiRaised * ETHUSD) + (msg.value * ETHUSD) / weiRaised + msg.value == ETHUSD
    require msg.value
    if block.timestamp < stor5:
        require block.timestamp >= stor5
    else:
        require block.timestamp <= stor6
    require (weiRaised * ETHUSD) + (msg.value * ETHUSD) / 100 * 10^18 < 12 * 10^6
    require msg.value >= 5 * 10^17
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    if block.timestamp >= stor5 + (2544 * 24 * 3600):
        if msg.value:
            require msg.value
            require 650 * msg.value / msg.value == 650
        require ext_code.size(bonusesAddress)
        call bonusesAddress.collectRate(address rg1) with:
             gas gas_remaining - 710 wei
            args arg1
        require ext_call.success
        if not ext_call.return_data[31 len 1]:
            require ext_code.size(tokenAddress)
            call tokenAddress.tokensWallet() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args address(ext_call.return_data[0]), address(arg1), 650 * msg.value
            require ext_call.success
            require ext_call.return_data[0]
            emit TokenPurchase(msg.value, 650 * msg.value, msg.sender, arg1);
        else:
            if 650 * msg.value:
                require 650 * msg.value
                require 650 * msg.value * ext_call.return_data[31 len 1] / 650 * msg.value == ext_call.return_data[31 len 1]
            require ext_code.size(tokenAddress)
            call tokenAddress.tokensWallet() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args address(ext_call.return_data[0]), address(arg1), 650 * msg.value * uint8(ext_call.return_data[0]) / 100
            require ext_call.success
            require ext_call.return_data[0]
            emit TokenPurchase(msg.value, 650 * msg.value * uint8(ext_call.return_data[0]) / 100, msg.sender, arg1);
    else:
        if block.timestamp >= stor5 + (2376 * 24 * 3600):
            if msg.value:
                require msg.value
                require 676 * msg.value / msg.value == 676
            require ext_code.size(bonusesAddress)
            call bonusesAddress.collectRate(address rg1) with:
                 gas gas_remaining - 710 wei
                args arg1
            require ext_call.success
            if not ext_call.return_data[31 len 1]:
                require ext_code.size(tokenAddress)
                call tokenAddress.tokensWallet() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0]), address(arg1), 676 * msg.value
                require ext_call.success
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, 676 * msg.value, msg.sender, arg1);
            else:
                if 676 * msg.value:
                    require 676 * msg.value
                    require 676 * msg.value * ext_call.return_data[31 len 1] / 676 * msg.value == ext_call.return_data[31 len 1]
                require ext_code.size(tokenAddress)
                call tokenAddress.tokensWallet() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0]), address(arg1), 676 * msg.value * uint8(ext_call.return_data[0]) / 100
                require ext_call.success
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, 676 * msg.value * uint8(ext_call.return_data[0]) / 100, msg.sender, arg1);
        else:
            if block.timestamp >= stor5 + (2208 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 715 * msg.value / msg.value == 715
                require ext_code.size(bonusesAddress)
                call bonusesAddress.collectRate(address rg1) with:
                     gas gas_remaining - 710 wei
                    args arg1
                require ext_call.success
                if not ext_call.return_data[31 len 1]:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.tokensWallet() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0]), address(arg1), 715 * msg.value
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 715 * msg.value, msg.sender, arg1);
                else:
                    if 715 * msg.value:
                        require 715 * msg.value
                        require 715 * msg.value * ext_call.return_data[31 len 1] / 715 * msg.value == ext_call.return_data[31 len 1]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.tokensWallet() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0]), address(arg1), 715 * msg.value * uint8(ext_call.return_data[0]) / 100
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 715 * msg.value * uint8(ext_call.return_data[0]) / 100, msg.sender, arg1);
            else:
                if block.timestamp >= stor5 + (2040 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require 780 * msg.value / msg.value == 780
                    require ext_code.size(bonusesAddress)
                    call bonusesAddress.collectRate(address rg1) with:
                         gas gas_remaining - 710 wei
                        args arg1
                    require ext_call.success
                    if not ext_call.return_data[31 len 1]:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.tokensWallet() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), address(arg1), 780 * msg.value
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, 780 * msg.value, msg.sender, arg1);
                    else:
                        if 780 * msg.value:
                            require 780 * msg.value
                            require 780 * msg.value * ext_call.return_data[31 len 1] / 780 * msg.value == ext_call.return_data[31 len 1]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.tokensWallet() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), address(arg1), 780 * msg.value * uint8(ext_call.return_data[0]) / 100
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, 780 * msg.value * uint8(ext_call.return_data[0]) / 100, msg.sender, arg1);
                else:
                    if block.timestamp < stor5:
                        if msg.value:
                            require msg.value
                            require not 0 / msg.value
                        require ext_code.size(bonusesAddress)
                        call bonusesAddress.collectRate(address rg1) with:
                             gas gas_remaining - 710 wei
                            args arg1
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.tokensWallet() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), address(arg1), 0
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                    else:
                        if msg.value:
                            require msg.value
                            require 845 * msg.value / msg.value == 845
                        require ext_code.size(bonusesAddress)
                        call bonusesAddress.collectRate(address rg1) with:
                             gas gas_remaining - 710 wei
                            args arg1
                        require ext_call.success
                        if not ext_call.return_data[31 len 1]:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.tokensWallet() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), address(arg1), 845 * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, 845 * msg.value, msg.sender, arg1);
                        else:
                            if 845 * msg.value:
                                require 845 * msg.value
                                require 845 * msg.value * ext_call.return_data[31 len 1] / 845 * msg.value == ext_call.return_data[31 len 1]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.tokensWallet() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), address(arg1), 845 * msg.value * uint8(ext_call.return_data[0]) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, 845 * msg.value * uint8(ext_call.return_data[0]) / 100, msg.sender, arg1);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}

function _fallback() payable {
    require not uint8(stor8.field_8)
    require msg.sender
    require weiRaised + msg.value >= weiRaised
    if weiRaised + msg.value:
        require weiRaised + msg.value
        require (weiRaised * ETHUSD) + (msg.value * ETHUSD) / weiRaised + msg.value == ETHUSD
    require msg.value
    if block.timestamp < stor5:
        require block.timestamp >= stor5
    else:
        require block.timestamp <= stor6
    require (weiRaised * ETHUSD) + (msg.value * ETHUSD) / 100 * 10^18 < 12 * 10^6
    require msg.value >= 5 * 10^17
    require weiRaised + msg.value >= weiRaised
    weiRaised += msg.value
    if block.timestamp >= stor5 + (2544 * 24 * 3600):
        if msg.value:
            require msg.value
            require 650 * msg.value / msg.value == 650
        require ext_code.size(bonusesAddress)
        call bonusesAddress.collectRate(address rg1) with:
             gas gas_remaining - 710 wei
            args msg.sender
        require ext_call.success
        if not ext_call.return_data[31 len 1]:
            require ext_code.size(tokenAddress)
            call tokenAddress.tokensWallet() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args address(ext_call.return_data[0]), msg.sender, 650 * msg.value
            require ext_call.success
            require ext_call.return_data[0]
            emit TokenPurchase(msg.value, 650 * msg.value, msg.sender, msg.sender);
        else:
            if 650 * msg.value:
                require 650 * msg.value
                require 650 * msg.value * ext_call.return_data[31 len 1] / 650 * msg.value == ext_call.return_data[31 len 1]
            require ext_code.size(tokenAddress)
            call tokenAddress.tokensWallet() with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args address(ext_call.return_data[0]), msg.sender, 650 * msg.value * uint8(ext_call.return_data[0]) / 100
            require ext_call.success
            require ext_call.return_data[0]
            emit TokenPurchase(msg.value, 650 * msg.value * uint8(ext_call.return_data[0]) / 100, msg.sender, msg.sender);
    else:
        if block.timestamp >= stor5 + (2376 * 24 * 3600):
            if msg.value:
                require msg.value
                require 676 * msg.value / msg.value == 676
            require ext_code.size(bonusesAddress)
            call bonusesAddress.collectRate(address rg1) with:
                 gas gas_remaining - 710 wei
                args msg.sender
            require ext_call.success
            if not ext_call.return_data[31 len 1]:
                require ext_code.size(tokenAddress)
                call tokenAddress.tokensWallet() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0]), msg.sender, 676 * msg.value
                require ext_call.success
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, 676 * msg.value, msg.sender, msg.sender);
            else:
                if 676 * msg.value:
                    require 676 * msg.value
                    require 676 * msg.value * ext_call.return_data[31 len 1] / 676 * msg.value == ext_call.return_data[31 len 1]
                require ext_code.size(tokenAddress)
                call tokenAddress.tokensWallet() with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args address(ext_call.return_data[0]), msg.sender, 676 * msg.value * uint8(ext_call.return_data[0]) / 100
                require ext_call.success
                require ext_call.return_data[0]
                emit TokenPurchase(msg.value, 676 * msg.value * uint8(ext_call.return_data[0]) / 100, msg.sender, msg.sender);
        else:
            if block.timestamp >= stor5 + (2208 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 715 * msg.value / msg.value == 715
                require ext_code.size(bonusesAddress)
                call bonusesAddress.collectRate(address rg1) with:
                     gas gas_remaining - 710 wei
                    args msg.sender
                require ext_call.success
                if not ext_call.return_data[31 len 1]:
                    require ext_code.size(tokenAddress)
                    call tokenAddress.tokensWallet() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0]), msg.sender, 715 * msg.value
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 715 * msg.value, msg.sender, msg.sender);
                else:
                    if 715 * msg.value:
                        require 715 * msg.value
                        require 715 * msg.value * ext_call.return_data[31 len 1] / 715 * msg.value == ext_call.return_data[31 len 1]
                    require ext_code.size(tokenAddress)
                    call tokenAddress.tokensWallet() with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x23b872dd with:
                         gas gas_remaining - 710 wei
                        args address(ext_call.return_data[0]), msg.sender, 715 * msg.value * uint8(ext_call.return_data[0]) / 100
                    require ext_call.success
                    require ext_call.return_data[0]
                    emit TokenPurchase(msg.value, 715 * msg.value * uint8(ext_call.return_data[0]) / 100, msg.sender, msg.sender);
            else:
                if block.timestamp >= stor5 + (2040 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require 780 * msg.value / msg.value == 780
                    require ext_code.size(bonusesAddress)
                    call bonusesAddress.collectRate(address rg1) with:
                         gas gas_remaining - 710 wei
                        args msg.sender
                    require ext_call.success
                    if not ext_call.return_data[31 len 1]:
                        require ext_code.size(tokenAddress)
                        call tokenAddress.tokensWallet() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), msg.sender, 780 * msg.value
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, 780 * msg.value, msg.sender, msg.sender);
                    else:
                        if 780 * msg.value:
                            require 780 * msg.value
                            require 780 * msg.value * ext_call.return_data[31 len 1] / 780 * msg.value == ext_call.return_data[31 len 1]
                        require ext_code.size(tokenAddress)
                        call tokenAddress.tokensWallet() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), msg.sender, 780 * msg.value * uint8(ext_call.return_data[0]) / 100
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, 780 * msg.value * uint8(ext_call.return_data[0]) / 100, msg.sender, msg.sender);
                else:
                    if block.timestamp < stor5:
                        if msg.value:
                            require msg.value
                            require not 0 / msg.value
                        require ext_code.size(bonusesAddress)
                        call bonusesAddress.collectRate(address rg1) with:
                             gas gas_remaining - 710 wei
                            args msg.sender
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.tokensWallet() with:
                             gas gas_remaining - 710 wei
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x23b872dd with:
                             gas gas_remaining - 710 wei
                            args address(ext_call.return_data[0]), msg.sender, 0
                        require ext_call.success
                        require ext_call.return_data[0]
                        emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                    else:
                        if msg.value:
                            require msg.value
                            require 845 * msg.value / msg.value == 845
                        require ext_code.size(bonusesAddress)
                        call bonusesAddress.collectRate(address rg1) with:
                             gas gas_remaining - 710 wei
                            args msg.sender
                        require ext_call.success
                        if not ext_call.return_data[31 len 1]:
                            require ext_code.size(tokenAddress)
                            call tokenAddress.tokensWallet() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 845 * msg.value
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, 845 * msg.value, msg.sender, msg.sender);
                        else:
                            if 845 * msg.value:
                                require 845 * msg.value
                                require 845 * msg.value * ext_call.return_data[31 len 1] / 845 * msg.value == ext_call.return_data[31 len 1]
                            require ext_code.size(tokenAddress)
                            call tokenAddress.tokensWallet() with:
                                 gas gas_remaining - 710 wei
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x23b872dd with:
                                 gas gas_remaining - 710 wei
                                args address(ext_call.return_data[0]), msg.sender, 845 * msg.value * uint8(ext_call.return_data[0]) / 100
                            require ext_call.success
                            require ext_call.return_data[0]
                            emit TokenPurchase(msg.value, 845 * msg.value * uint8(ext_call.return_data[0]) / 100, msg.sender, msg.sender);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}



}
