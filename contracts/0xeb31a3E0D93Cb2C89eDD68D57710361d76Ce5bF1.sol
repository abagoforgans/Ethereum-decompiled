contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor6;
uint8 stor7; offset 160
address stor7;
uint256 stor8;
address stor9;
mapping of uint8 stor10;
mapping of uint256 stor11;
uint8 stor12;
uint256 stor13;
uint256 stor14;

function _fallback() payable {
    uint8(stor7.field_160) = 0
    stor12 = 0
    require not msg.value
    mem[96 len -11252] = code.data[12150 len -11252]
    mem[64] = -11156
    require mem[96] >= block.number
    require mem[160] >= mem[96]
    require mem[192] > 0
    require mem[236 len 20]
    create contract with 0 wei
                    code: code.data[9422 len 2728]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = mem[96]
    stor2 = mem[160]
    stor4 = mem[192]
    stor3 = mem[236 len 20]
    require mem[256] > 0
    stor6 = mem[256]
    address(stor7.field_0) = msg.sender
    require mem[352] > 0
    create contract with 0 wei
                    code: code.data[7860 len 1562], stor3
    require create.new_address
    stor9 = address(create.new_address)
    stor8 = mem[352]
    idx = 0
    while idx < mem[mem[384] + 96]:
        require idx < mem[mem[384] + 96]
        stor10[mem[(32 * idx) + mem[384] + 140 len 20]] = 1
        require idx < mem[mem[384] + 96]
        mem[0] = mem[(32 * idx) + mem[384] + 140 len 20]
        mem[32] = 11
        stor11[mem[(32 * idx) + mem[384] + 140 len 20]] = 0
        idx = idx + 1
        continue 
    stor13 = mem[128]
    stor14 = mem[288]
    require ext_code.size(stor0)
    call stor0.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor3, mem[320]
    require ext_call.success
    return code.data[898 len 6962]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startBlock;
uint256 endBlock;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint8 stor7; offset 160
address owner;
uint256 goal;
address vaultAddress;
mapping of uint8 stor10;
mapping of uint256 sub_40cc260c;
uint8 stor12;
uint256 icoStartTime;
uint256 tokenCap;

function endBlock() {
    return endBlock
}

function rate() {
    return rate
}

function cap() {
    return cap
}

function whiteList(address arg1) {
    return bool(stor10[arg1])
}

function goal() {
    return goal
}

function weiRaised() {
    return weiRaised
}

function sub_40cc260c(?) {
    return sub_40cc260c[arg1]
}

function startBlock() {
    return startBlock
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(stor12)
}

function isFinalized() {
    return bool(stor7)
}

function owner() {
    return owner
}

function icoStartTime() {
    return icoStartTime
}

function tokenCap() {
    return tokenCap
}

function vault() {
    return vaultAddress
}

function token() {
    return tokenAddress
}

function goalReached() {
    return weiRaised >= goal
}

function sub_8755f644(?) {
    return (1 == bool(stor10[address(arg1)]))
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function unpause() {
    require owner == msg.sender
    require stor12
    stor12 = 0
    emit Unpause()
    return 1
}

function pause() {
    require owner == msg.sender
    require not stor12
    stor12 = 1
    emit Pause()
    return 1
}

function claimRefund() {
    require stor7
    require weiRaised < goal
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function hasEnded() {
    if tokenCap / 100:
        require tokenCap / 100
        require 99 * tokenCap / 100 / tokenCap / 100 == 99
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if block.number > endBlock:
        return (block.number > endBlock)
    if weiRaised >= cap:
        return weiRaised >= cap
    return ext_call.return_data[0] >= 99 * tokenCap / 100
}

function getRate() {
    if block.timestamp <= icoStartTime:
        return 20000
    require icoStartTime + (168 * 24 * 3600) >= icoStartTime
    if block.timestamp <= icoStartTime + (168 * 24 * 3600):
        return 2900
    require icoStartTime + (336 * 24 * 3600) >= icoStartTime
    if block.timestamp <= icoStartTime + (336 * 24 * 3600):
        return 2600
    require icoStartTime + (504 * 24 * 3600) >= icoStartTime
    if block.timestamp > icoStartTime + (504 * 24 * 3600):
        return rate
    return 2300
}

function finalize() {
    require owner == msg.sender
    require not stor7
    if tokenCap / 100:
        require tokenCap / 100
        require 99 * tokenCap / 100 / tokenCap / 100 == 99
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if block.number <= endBlock:
        if weiRaised < cap:
            require ext_call.return_data[0] >= 99 * tokenCap / 100
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    require ext_call.return_data[0] <= tokenCap
    require ext_code.size(tokenAddress)
    if tokenCap - ext_call.return_data[0] > 0:
        call tokenAddress.0x40c10f19 with:
             gas gas_remaining - 710 wei
            args walletAddress, tokenCap - ext_call.return_data[0]
        require ext_call.success
    call tokenAddress.0xf2fde38b with:
         gas gas_remaining - 710 wei
        args walletAddress
    require ext_call.success
    require ext_code.size(vaultAddress)
    if weiRaised < goal:
        call vaultAddress.enableRefunds() with:
             gas gas_remaining - 710 wei
    else:
        call vaultAddress.0x43d726d6 with:
             gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    stor7 = 1
}

function buyTokens(address arg1) payable {
    require arg1
    if block.timestamp <= icoStartTime:
        if msg.value:
            require msg.value
            require 20000 * msg.value / msg.value == 20000
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require (20000 * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
        require msg.value + weiRaised >= weiRaised
        require block.number >= startBlock
        require block.number <= endBlock
        require msg.value
        require msg.value + weiRaised <= cap
        require (20000 * msg.value) + ext_call.return_data[0] <= tokenCap
    else:
        require icoStartTime + (168 * 24 * 3600) >= icoStartTime
        if block.timestamp <= icoStartTime + (168 * 24 * 3600):
            if msg.value:
                require msg.value
                require 2900 * msg.value / msg.value == 2900
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require (2900 * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
            require msg.value + weiRaised >= weiRaised
            require block.number >= startBlock
            require block.number <= endBlock
            require msg.value
            require msg.value + weiRaised <= cap
            require (2900 * msg.value) + ext_call.return_data[0] <= tokenCap
        else:
            require icoStartTime + (336 * 24 * 3600) >= icoStartTime
            if block.timestamp <= icoStartTime + (336 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 2600 * msg.value / msg.value == 2600
                require ext_code.size(tokenAddress)
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require (2600 * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
                require msg.value + weiRaised >= weiRaised
                require block.number >= startBlock
                require block.number <= endBlock
                require msg.value
                require msg.value + weiRaised <= cap
                require (2600 * msg.value) + ext_call.return_data[0] <= tokenCap
            else:
                require icoStartTime + (504 * 24 * 3600) >= icoStartTime
                if block.timestamp > icoStartTime + (504 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require rate * msg.value / msg.value == rate
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require (rate * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require msg.value + weiRaised >= weiRaised
                    require block.number >= startBlock
                    require block.number <= endBlock
                    require msg.value
                    require msg.value + weiRaised <= cap
                    require (rate * msg.value) + ext_call.return_data[0] <= tokenCap
                else:
                    if msg.value:
                        require msg.value
                        require 2300 * msg.value / msg.value == 2300
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require (2300 * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require msg.value + weiRaised >= weiRaised
                    require block.number >= startBlock
                    require block.number <= endBlock
                    require msg.value
                    require msg.value + weiRaised <= cap
                    require (2300 * msg.value) + ext_call.return_data[0] <= tokenCap
    if block.timestamp > icoStartTime:
        require icoStartTime + (168 * 24 * 3600) >= icoStartTime
        if block.timestamp <= icoStartTime + (168 * 24 * 3600):
            if msg.value:
                require msg.value
                require 2900 * msg.value / msg.value == 2900
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 2900 * msg.value
            require ext_call.success
            emit TokenPurchase(msg.value, 2900 * msg.value, msg.sender, arg1);
        else:
            require icoStartTime + (336 * 24 * 3600) >= icoStartTime
            if block.timestamp <= icoStartTime + (336 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 2600 * msg.value / msg.value == 2600
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 2600 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 2600 * msg.value, msg.sender, arg1);
            else:
                require icoStartTime + (504 * 24 * 3600) >= icoStartTime
                if block.timestamp > icoStartTime + (504 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require rate * msg.value / msg.value == rate
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), rate * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
                else:
                    if msg.value:
                        require msg.value
                        require 2300 * msg.value / msg.value == 2300
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 2300 * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, 2300 * msg.value, msg.sender, arg1);
    else:
        require 1 == bool(stor10[address(msg.sender)])
        if block.timestamp > icoStartTime:
            require icoStartTime + (168 * 24 * 3600) >= icoStartTime
            if block.timestamp <= icoStartTime + (168 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 2900 * msg.value / msg.value == 2900
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 2900 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 2900 * msg.value, msg.sender, arg1);
            else:
                require icoStartTime + (336 * 24 * 3600) >= icoStartTime
                if block.timestamp <= icoStartTime + (336 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require 2600 * msg.value / msg.value == 2600
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 2600 * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, 2600 * msg.value, msg.sender, arg1);
                else:
                    require icoStartTime + (504 * 24 * 3600) >= icoStartTime
                    if block.timestamp > icoStartTime + (504 * 24 * 3600):
                        if msg.value:
                            require msg.value
                            require rate * msg.value / msg.value == rate
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), rate * msg.value
                        require ext_call.success
                        emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
                    else:
                        if msg.value:
                            require msg.value
                            require 2300 * msg.value / msg.value == 2300
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 2300 * msg.value
                        require ext_call.success
                        emit TokenPurchase(msg.value, 2300 * msg.value, msg.sender, arg1);
        else:
            require msg.value + sub_40cc260c[address(msg.sender)] >= sub_40cc260c[address(msg.sender)]
            require msg.value + sub_40cc260c[address(msg.sender)] <= 125 * 10^17
            require msg.value + sub_40cc260c[address(msg.sender)] >= sub_40cc260c[address(msg.sender)]
            sub_40cc260c[address(msg.sender)] += msg.value
            if block.timestamp <= icoStartTime:
                if msg.value:
                    require msg.value
                    require 20000 * msg.value / msg.value == 20000
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 20000 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 20000 * msg.value, msg.sender, arg1);
            else:
                require icoStartTime + (168 * 24 * 3600) >= icoStartTime
                if block.timestamp <= icoStartTime + (168 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require 2900 * msg.value / msg.value == 2900
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 2900 * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, 2900 * msg.value, msg.sender, arg1);
                else:
                    require icoStartTime + (336 * 24 * 3600) >= icoStartTime
                    if block.timestamp <= icoStartTime + (336 * 24 * 3600):
                        if msg.value:
                            require msg.value
                            require 2600 * msg.value / msg.value == 2600
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), 2600 * msg.value
                        require ext_call.success
                        emit TokenPurchase(msg.value, 2600 * msg.value, msg.sender, arg1);
                    else:
                        require icoStartTime + (504 * 24 * 3600) >= icoStartTime
                        if block.timestamp > icoStartTime + (504 * 24 * 3600):
                            if msg.value:
                                require msg.value
                                require rate * msg.value / msg.value == rate
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), rate * msg.value
                            require ext_call.success
                            emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
                        else:
                            if msg.value:
                                require msg.value
                                require 2300 * msg.value / msg.value == 2300
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), 2300 * msg.value
                            require ext_call.success
                            emit TokenPurchase(msg.value, 2300 * msg.value, msg.sender, arg1);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    if block.timestamp <= icoStartTime:
        if msg.value:
            require msg.value
            require 20000 * msg.value / msg.value == 20000
        require ext_code.size(tokenAddress)
        call tokenAddress.0x18160ddd with:
             gas gas_remaining - 710 wei
        require ext_call.success
        require (20000 * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
        require msg.value + weiRaised >= weiRaised
        require block.number >= startBlock
        require block.number <= endBlock
        require msg.value
        require msg.value + weiRaised <= cap
        require (20000 * msg.value) + ext_call.return_data[0] <= tokenCap
    else:
        require icoStartTime + (168 * 24 * 3600) >= icoStartTime
        if block.timestamp <= icoStartTime + (168 * 24 * 3600):
            if msg.value:
                require msg.value
                require 2900 * msg.value / msg.value == 2900
            require ext_code.size(tokenAddress)
            call tokenAddress.0x18160ddd with:
                 gas gas_remaining - 710 wei
            require ext_call.success
            require (2900 * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
            require msg.value + weiRaised >= weiRaised
            require block.number >= startBlock
            require block.number <= endBlock
            require msg.value
            require msg.value + weiRaised <= cap
            require (2900 * msg.value) + ext_call.return_data[0] <= tokenCap
        else:
            require icoStartTime + (336 * 24 * 3600) >= icoStartTime
            if block.timestamp <= icoStartTime + (336 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 2600 * msg.value / msg.value == 2600
                require ext_code.size(tokenAddress)
                call tokenAddress.0x18160ddd with:
                     gas gas_remaining - 710 wei
                require ext_call.success
                require (2600 * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
                require msg.value + weiRaised >= weiRaised
                require block.number >= startBlock
                require block.number <= endBlock
                require msg.value
                require msg.value + weiRaised <= cap
                require (2600 * msg.value) + ext_call.return_data[0] <= tokenCap
            else:
                require icoStartTime + (504 * 24 * 3600) >= icoStartTime
                if block.timestamp > icoStartTime + (504 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require rate * msg.value / msg.value == rate
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require (rate * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require msg.value + weiRaised >= weiRaised
                    require block.number >= startBlock
                    require block.number <= endBlock
                    require msg.value
                    require msg.value + weiRaised <= cap
                    require (rate * msg.value) + ext_call.return_data[0] <= tokenCap
                else:
                    if msg.value:
                        require msg.value
                        require 2300 * msg.value / msg.value == 2300
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x18160ddd with:
                         gas gas_remaining - 710 wei
                    require ext_call.success
                    require (2300 * msg.value) + ext_call.return_data[0] >= ext_call.return_data[0]
                    require msg.value + weiRaised >= weiRaised
                    require block.number >= startBlock
                    require block.number <= endBlock
                    require msg.value
                    require msg.value + weiRaised <= cap
                    require (2300 * msg.value) + ext_call.return_data[0] <= tokenCap
    if block.timestamp > icoStartTime:
        require icoStartTime + (168 * 24 * 3600) >= icoStartTime
        if block.timestamp <= icoStartTime + (168 * 24 * 3600):
            if msg.value:
                require msg.value
                require 2900 * msg.value / msg.value == 2900
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 2900 * msg.value
            require ext_call.success
            emit TokenPurchase(msg.value, 2900 * msg.value, msg.sender, msg.sender);
        else:
            require icoStartTime + (336 * 24 * 3600) >= icoStartTime
            if block.timestamp <= icoStartTime + (336 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 2600 * msg.value / msg.value == 2600
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 2600 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 2600 * msg.value, msg.sender, msg.sender);
            else:
                require icoStartTime + (504 * 24 * 3600) >= icoStartTime
                if block.timestamp > icoStartTime + (504 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require rate * msg.value / msg.value == rate
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, rate * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require 2300 * msg.value / msg.value == 2300
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 2300 * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, 2300 * msg.value, msg.sender, msg.sender);
    else:
        require 1 == bool(stor10[address(msg.sender)])
        if block.timestamp > icoStartTime:
            require icoStartTime + (168 * 24 * 3600) >= icoStartTime
            if block.timestamp <= icoStartTime + (168 * 24 * 3600):
                if msg.value:
                    require msg.value
                    require 2900 * msg.value / msg.value == 2900
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 2900 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 2900 * msg.value, msg.sender, msg.sender);
            else:
                require icoStartTime + (336 * 24 * 3600) >= icoStartTime
                if block.timestamp <= icoStartTime + (336 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require 2600 * msg.value / msg.value == 2600
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 2600 * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, 2600 * msg.value, msg.sender, msg.sender);
                else:
                    require icoStartTime + (504 * 24 * 3600) >= icoStartTime
                    if block.timestamp > icoStartTime + (504 * 24 * 3600):
                        if msg.value:
                            require msg.value
                            require rate * msg.value / msg.value == rate
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, rate * msg.value
                        require ext_call.success
                        emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
                    else:
                        if msg.value:
                            require msg.value
                            require 2300 * msg.value / msg.value == 2300
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 2300 * msg.value
                        require ext_call.success
                        emit TokenPurchase(msg.value, 2300 * msg.value, msg.sender, msg.sender);
        else:
            require msg.value + sub_40cc260c[address(msg.sender)] >= sub_40cc260c[address(msg.sender)]
            require msg.value + sub_40cc260c[address(msg.sender)] <= 125 * 10^17
            require msg.value + sub_40cc260c[address(msg.sender)] >= sub_40cc260c[address(msg.sender)]
            sub_40cc260c[address(msg.sender)] += msg.value
            if block.timestamp <= icoStartTime:
                if msg.value:
                    require msg.value
                    require 20000 * msg.value / msg.value == 20000
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 20000 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 20000 * msg.value, msg.sender, msg.sender);
            else:
                require icoStartTime + (168 * 24 * 3600) >= icoStartTime
                if block.timestamp <= icoStartTime + (168 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require 2900 * msg.value / msg.value == 2900
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 2900 * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, 2900 * msg.value, msg.sender, msg.sender);
                else:
                    require icoStartTime + (336 * 24 * 3600) >= icoStartTime
                    if block.timestamp <= icoStartTime + (336 * 24 * 3600):
                        if msg.value:
                            require msg.value
                            require 2600 * msg.value / msg.value == 2600
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, 2600 * msg.value
                        require ext_call.success
                        emit TokenPurchase(msg.value, 2600 * msg.value, msg.sender, msg.sender);
                    else:
                        require icoStartTime + (504 * 24 * 3600) >= icoStartTime
                        if block.timestamp > icoStartTime + (504 * 24 * 3600):
                            if msg.value:
                                require msg.value
                                require rate * msg.value / msg.value == rate
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, rate * msg.value
                            require ext_call.success
                            emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
                        else:
                            if msg.value:
                                require msg.value
                                require 2300 * msg.value / msg.value == 2300
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, 2300 * msg.value
                            require ext_call.success
                            emit TokenPurchase(msg.value, 2300 * msg.value, msg.sender, msg.sender);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}



}
