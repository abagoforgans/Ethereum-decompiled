contract main {


// =======================  Init code  ======================


uint32 stor0; offset 160
address stor0;
address stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor5;
address stor6;
uint256 stor7;

function _fallback() payable {
    stor0.field_160 % 16777216 = 0
    stor2 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    address(stor0.field_0) = code.data[13896 len 20]
    require address(stor0.field_0)
    create contract with 0 wei
                    code: code.data[9960 len 3924]
    require create.new_address
    stor3 = address(create.new_address)
    stor4 = 1510711004
    stor5 = 420624 * 24 * 3600
    stor7 = 3000
    stor6 = address(stor0.field_0)
    create contract with 0 wei
                    code: code.data[8333 len 1627], address(stor0.field_0)
    stor1 = address(create.new_address)
    return code.data[407 len 7926]
}



// =====================  Runtime code  =====================


const sub_030a9697(?) = (420000 * 24 * 3600)

const cap = 10000 * 10^18

const goal = 100 * 10^18

const endICO = (420624 * 24 * 3600)

const startPreSale = 1510711004

const startICO = (419904 * 24 * 3600)

const sub_84e3752a(?) = (420216 * 24 * 3600)

const sub_86e7e8d7(?) = (419928 * 24 * 3600)

const sub_985d5f3a(?) = 3000

const sub_9fd06e0b(?) = 2 * 10^6


uint8 paused; offset 160
uint8 stor0; offset 168
uint8 isFinalized; offset 176
address owner;
address vaultAddress;
uint256 stor2;
address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;

function rate() {
    return rate
}

function endTime() {
    return endTime
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(paused)
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(isFinalized)
}

function owner() {
    return owner
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function goalReached() {
    return weiRaised >= 100 * 10^18
}

function unpause() {
    require owner == msg.sender
    require paused
    paused = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not paused
    paused = 1
    emit Pause()
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= 10000 * 10^18
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function claimRefund() {
    require not stor0
    stor0 = 1
    require not True or bool(isFinalized)
    require weiRaised < 100 * 10^18
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
    stor0 = 0
}

function finalize() {
    require owner == msg.sender
    require not isFinalized
    require block.timestamp > endTime
    require ext_code.size(vaultAddress)
    if weiRaised < 100 * 10^18:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        call vaultAddress.close() with:
             gas gas_remaining - 710 wei
    require ext_call.success
    isFinalized = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.finishMinting() with:
         gas gas_remaining - 710 wei
    require ext_call.success
}

function _fallback() payable {
    require not stor0
    stor0 = 1
    require True and not paused
    require not isFinalized
    require block.timestamp <= endTime
    require msg.sender
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= 10000 * 10^18
    if block.timestamp < 1510711004:
        require msg.value >= 0
    else:
        if block.timestamp < 419904 * 24 * 3600:
            require msg.value >= 30 * 10^18
        else:
            if block.timestamp >= 420624 * 24 * 3600:
                require msg.value >= 0
            else:
                require msg.value >= 3 * 10^17
    if block.timestamp < 1510711004:
        if not msg.value:
            if block.timestamp >= 1510711004:
                if block.timestamp < 419904 * 24 * 3600:
                    require stor2 >= stor2
                    require stor2 <= 2 * 10^6
                    require stor2 >= stor2
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args owner, 0
        else:
            require rate * msg.value / msg.value == rate
            if block.timestamp >= 1510711004:
                if block.timestamp < 419904 * 24 * 3600:
                    require (rate * msg.value) + stor2 >= stor2
                    require (rate * msg.value) + stor2 <= 2 * 10^6
                    require (rate * msg.value) + stor2 >= stor2
                    stor2 += rate * msg.value
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args msg.sender, rate * msg.value
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args owner, rate * msg.value
    else:
        if block.timestamp < 419904 * 24 * 3600:
            if not rate:
                if msg.value:
                    require not 0 / msg.value
                if block.timestamp >= 1510711004:
                    if block.timestamp < 419904 * 24 * 3600:
                        require stor2 >= stor2
                        require stor2 <= 2 * 10^6
                        require stor2 >= stor2
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args owner, 0
            else:
                require 135 * rate / rate == 135
                if not msg.value:
                    if block.timestamp >= 1510711004:
                        if block.timestamp < 419904 * 24 * 3600:
                            require stor2 >= stor2
                            require stor2 <= 2 * 10^6
                            require stor2 >= stor2
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args owner, 0
                else:
                    require 135 * rate / 100 * msg.value / msg.value == 135 * rate / 100
                    if block.timestamp >= 1510711004:
                        if block.timestamp < 419904 * 24 * 3600:
                            require (135 * rate / 100 * msg.value) + stor2 >= stor2
                            require (135 * rate / 100 * msg.value) + stor2 <= 2 * 10^6
                            require (135 * rate / 100 * msg.value) + stor2 >= stor2
                            stor2 += 135 * rate / 100 * msg.value
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 135 * rate / 100 * msg.value
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args owner, 135 * rate / 100 * msg.value
        else:
            if block.timestamp < 419928 * 24 * 3600:
                if not rate:
                    if msg.value:
                        require not 0 / msg.value
                    if block.timestamp >= 1510711004:
                        if block.timestamp < 419904 * 24 * 3600:
                            require stor2 >= stor2
                            require stor2 <= 2 * 10^6
                            require stor2 >= stor2
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args owner, 0
                else:
                    require 120 * rate / rate == 120
                    if not msg.value:
                        if block.timestamp >= 1510711004:
                            if block.timestamp < 419904 * 24 * 3600:
                                require stor2 >= stor2
                                require stor2 <= 2 * 10^6
                                require stor2 >= stor2
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args owner, 0
                    else:
                        require 120 * rate / 100 * msg.value / msg.value == 120 * rate / 100
                        if block.timestamp >= 1510711004:
                            if block.timestamp < 419904 * 24 * 3600:
                                require (120 * rate / 100 * msg.value) + stor2 >= stor2
                                require (120 * rate / 100 * msg.value) + stor2 <= 2 * 10^6
                                require (120 * rate / 100 * msg.value) + stor2 >= stor2
                                stor2 += 120 * rate / 100 * msg.value
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 120 * rate / 100 * msg.value
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args owner, 120 * rate / 100 * msg.value
            else:
                if block.timestamp < 420000 * 24 * 3600:
                    if not rate:
                        if msg.value:
                            require not 0 / msg.value
                        if block.timestamp >= 1510711004:
                            if block.timestamp < 419904 * 24 * 3600:
                                require stor2 >= stor2
                                require stor2 <= 2 * 10^6
                                require stor2 >= stor2
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 0
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args owner, 0
                    else:
                        require 110 * rate / rate == 110
                        if not msg.value:
                            if block.timestamp >= 1510711004:
                                if block.timestamp < 419904 * 24 * 3600:
                                    require stor2 >= stor2
                                    require stor2 <= 2 * 10^6
                                    require stor2 >= stor2
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args owner, 0
                        else:
                            require 110 * rate / 100 * msg.value / msg.value == 110 * rate / 100
                            if block.timestamp >= 1510711004:
                                if block.timestamp < 419904 * 24 * 3600:
                                    require (110 * rate / 100 * msg.value) + stor2 >= stor2
                                    require (110 * rate / 100 * msg.value) + stor2 <= 2 * 10^6
                                    require (110 * rate / 100 * msg.value) + stor2 >= stor2
                                    stor2 += 110 * rate / 100 * msg.value
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 110 * rate / 100 * msg.value
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args owner, 110 * rate / 100 * msg.value
                else:
                    if block.timestamp >= 420216 * 24 * 3600:
                        if not msg.value:
                            if block.timestamp >= 1510711004:
                                if block.timestamp < 419904 * 24 * 3600:
                                    require stor2 >= stor2
                                    require stor2 <= 2 * 10^6
                                    require stor2 >= stor2
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args owner, 0
                        else:
                            require rate * msg.value / msg.value == rate
                            if block.timestamp >= 1510711004:
                                if block.timestamp < 419904 * 24 * 3600:
                                    require (rate * msg.value) + stor2 >= stor2
                                    require (rate * msg.value) + stor2 <= 2 * 10^6
                                    require (rate * msg.value) + stor2 >= stor2
                                    stor2 += rate * msg.value
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, rate * msg.value
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args owner, rate * msg.value
                    else:
                        if not rate:
                            if msg.value:
                                require not 0 / msg.value
                            if block.timestamp >= 1510711004:
                                if block.timestamp < 419904 * 24 * 3600:
                                    require stor2 >= stor2
                                    require stor2 <= 2 * 10^6
                                    require stor2 >= stor2
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 0
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args owner, 0
                        else:
                            require 105 * rate / rate == 105
                            if not msg.value:
                                if block.timestamp >= 1510711004:
                                    if block.timestamp < 419904 * 24 * 3600:
                                        require stor2 >= stor2
                                        require stor2 <= 2 * 10^6
                                        require stor2 >= stor2
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 0
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args owner, 0
                            else:
                                require 105 * rate / 100 * msg.value / msg.value == 105 * rate / 100
                                if block.timestamp >= 1510711004:
                                    if block.timestamp < 419904 * 24 * 3600:
                                        require (105 * rate / 100 * msg.value) + stor2 >= stor2
                                        require (105 * rate / 100 * msg.value) + stor2 <= 2 * 10^6
                                        require (105 * rate / 100 * msg.value) + stor2 >= stor2
                                        stor2 += 105 * rate / 100 * msg.value
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, 105 * rate / 100 * msg.value
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args owner, 105 * rate / 100 * msg.value
    require ext_call.success
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
    stor0 = 0
}

function buyTokens(address arg1) payable {
    require not stor0
    stor0 = 1
    require True and not paused
    require not isFinalized
    require block.timestamp <= endTime
    require arg1
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= 10000 * 10^18
    if block.timestamp < 1510711004:
        require msg.value >= 0
    else:
        if block.timestamp < 419904 * 24 * 3600:
            require msg.value >= 30 * 10^18
        else:
            if block.timestamp >= 420624 * 24 * 3600:
                require msg.value >= 0
            else:
                require msg.value >= 3 * 10^17
    if block.timestamp < 1510711004:
        if not msg.value:
            if block.timestamp >= 1510711004:
                if block.timestamp < 419904 * 24 * 3600:
                    require stor2 >= stor2
                    require stor2 <= 2 * 10^6
                    require stor2 >= stor2
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), 0
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args owner, 0
        else:
            require rate * msg.value / msg.value == rate
            if block.timestamp >= 1510711004:
                if block.timestamp < 419904 * 24 * 3600:
                    require (rate * msg.value) + stor2 >= stor2
                    require (rate * msg.value) + stor2 <= 2 * 10^6
                    require (rate * msg.value) + stor2 >= stor2
                    stor2 += rate * msg.value
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args address(arg1), rate * msg.value
            require ext_call.success
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address rg1, uint256 rg2) with:
                 gas gas_remaining - 710 wei
                args owner, rate * msg.value
    else:
        if block.timestamp < 419904 * 24 * 3600:
            if not rate:
                if msg.value:
                    require not 0 / msg.value
                if block.timestamp >= 1510711004:
                    if block.timestamp < 419904 * 24 * 3600:
                        require stor2 >= stor2
                        require stor2 <= 2 * 10^6
                        require stor2 >= stor2
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                require ext_code.size(tokenAddress)
                call tokenAddress.mint(address rg1, uint256 rg2) with:
                     gas gas_remaining - 710 wei
                    args owner, 0
            else:
                require 135 * rate / rate == 135
                if not msg.value:
                    if block.timestamp >= 1510711004:
                        if block.timestamp < 419904 * 24 * 3600:
                            require stor2 >= stor2
                            require stor2 <= 2 * 10^6
                            require stor2 >= stor2
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args owner, 0
                else:
                    require 135 * rate / 100 * msg.value / msg.value == 135 * rate / 100
                    if block.timestamp >= 1510711004:
                        if block.timestamp < 419904 * 24 * 3600:
                            require (135 * rate / 100 * msg.value) + stor2 >= stor2
                            require (135 * rate / 100 * msg.value) + stor2 <= 2 * 10^6
                            require (135 * rate / 100 * msg.value) + stor2 >= stor2
                            stor2 += 135 * rate / 100 * msg.value
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 135 * rate / 100 * msg.value
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args owner, 135 * rate / 100 * msg.value
        else:
            if block.timestamp < 419928 * 24 * 3600:
                if not rate:
                    if msg.value:
                        require not 0 / msg.value
                    if block.timestamp >= 1510711004:
                        if block.timestamp < 419904 * 24 * 3600:
                            require stor2 >= stor2
                            require stor2 <= 2 * 10^6
                            require stor2 >= stor2
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                    require ext_call.success
                    require ext_code.size(tokenAddress)
                    call tokenAddress.mint(address rg1, uint256 rg2) with:
                         gas gas_remaining - 710 wei
                        args owner, 0
                else:
                    require 120 * rate / rate == 120
                    if not msg.value:
                        if block.timestamp >= 1510711004:
                            if block.timestamp < 419904 * 24 * 3600:
                                require stor2 >= stor2
                                require stor2 <= 2 * 10^6
                                require stor2 >= stor2
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 0
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args owner, 0
                    else:
                        require 120 * rate / 100 * msg.value / msg.value == 120 * rate / 100
                        if block.timestamp >= 1510711004:
                            if block.timestamp < 419904 * 24 * 3600:
                                require (120 * rate / 100 * msg.value) + stor2 >= stor2
                                require (120 * rate / 100 * msg.value) + stor2 <= 2 * 10^6
                                require (120 * rate / 100 * msg.value) + stor2 >= stor2
                                stor2 += 120 * rate / 100 * msg.value
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 120 * rate / 100 * msg.value
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args owner, 120 * rate / 100 * msg.value
            else:
                if block.timestamp < 420000 * 24 * 3600:
                    if not rate:
                        if msg.value:
                            require not 0 / msg.value
                        if block.timestamp >= 1510711004:
                            if block.timestamp < 419904 * 24 * 3600:
                                require stor2 >= stor2
                                require stor2 <= 2 * 10^6
                                require stor2 >= stor2
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 0
                        require ext_call.success
                        require ext_code.size(tokenAddress)
                        call tokenAddress.mint(address rg1, uint256 rg2) with:
                             gas gas_remaining - 710 wei
                            args owner, 0
                    else:
                        require 110 * rate / rate == 110
                        if not msg.value:
                            if block.timestamp >= 1510711004:
                                if block.timestamp < 419904 * 24 * 3600:
                                    require stor2 >= stor2
                                    require stor2 <= 2 * 10^6
                                    require stor2 >= stor2
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 0
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args owner, 0
                        else:
                            require 110 * rate / 100 * msg.value / msg.value == 110 * rate / 100
                            if block.timestamp >= 1510711004:
                                if block.timestamp < 419904 * 24 * 3600:
                                    require (110 * rate / 100 * msg.value) + stor2 >= stor2
                                    require (110 * rate / 100 * msg.value) + stor2 <= 2 * 10^6
                                    require (110 * rate / 100 * msg.value) + stor2 >= stor2
                                    stor2 += 110 * rate / 100 * msg.value
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 110 * rate / 100 * msg.value
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args owner, 110 * rate / 100 * msg.value
                else:
                    if block.timestamp >= 420216 * 24 * 3600:
                        if not msg.value:
                            if block.timestamp >= 1510711004:
                                if block.timestamp < 419904 * 24 * 3600:
                                    require stor2 >= stor2
                                    require stor2 <= 2 * 10^6
                                    require stor2 >= stor2
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 0
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args owner, 0
                        else:
                            require rate * msg.value / msg.value == rate
                            if block.timestamp >= 1510711004:
                                if block.timestamp < 419904 * 24 * 3600:
                                    require (rate * msg.value) + stor2 >= stor2
                                    require (rate * msg.value) + stor2 <= 2 * 10^6
                                    require (rate * msg.value) + stor2 >= stor2
                                    stor2 += rate * msg.value
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), rate * msg.value
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args owner, rate * msg.value
                    else:
                        if not rate:
                            if msg.value:
                                require not 0 / msg.value
                            if block.timestamp >= 1510711004:
                                if block.timestamp < 419904 * 24 * 3600:
                                    require stor2 >= stor2
                                    require stor2 <= 2 * 10^6
                                    require stor2 >= stor2
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 0
                            require ext_call.success
                            require ext_code.size(tokenAddress)
                            call tokenAddress.mint(address rg1, uint256 rg2) with:
                                 gas gas_remaining - 710 wei
                                args owner, 0
                        else:
                            require 105 * rate / rate == 105
                            if not msg.value:
                                if block.timestamp >= 1510711004:
                                    if block.timestamp < 419904 * 24 * 3600:
                                        require stor2 >= stor2
                                        require stor2 <= 2 * 10^6
                                        require stor2 >= stor2
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 0
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args owner, 0
                            else:
                                require 105 * rate / 100 * msg.value / msg.value == 105 * rate / 100
                                if block.timestamp >= 1510711004:
                                    if block.timestamp < 419904 * 24 * 3600:
                                        require (105 * rate / 100 * msg.value) + stor2 >= stor2
                                        require (105 * rate / 100 * msg.value) + stor2 <= 2 * 10^6
                                        require (105 * rate / 100 * msg.value) + stor2 >= stor2
                                        stor2 += 105 * rate / 100 * msg.value
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), 105 * rate / 100 * msg.value
                                require ext_call.success
                                require ext_code.size(tokenAddress)
                                call tokenAddress.mint(address rg1, uint256 rg2) with:
                                     gas gas_remaining - 710 wei
                                    args owner, 105 * rate / 100 * msg.value
    require ext_call.success
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
    stor0 = 0
}



}
