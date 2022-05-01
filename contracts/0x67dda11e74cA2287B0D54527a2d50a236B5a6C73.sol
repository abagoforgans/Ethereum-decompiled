contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor0 = 3000 * 10^18
    stor2 = msg.sender
    stor6 = 480 * 24 * 3600
    stor9 = 120000
    stor10 = 100000
    stor11 = 80000
    require not msg.value
    stor1 = code.data[1372 len 20]
    stor3 = code.data[1328 len 32]
    stor7 = stor6 + code.data[1328 len 32]
    stor8 = (2 * stor6) + code.data[1328 len 32]
    stor4 = (3 * stor6) + code.data[1328 len 32]
    return code.data[185 len 1143]
}



// =====================  Runtime code  =====================


uint256 hardCap;
address stor1;
address stor2;
uint256 startTime;
uint256 endTime;
uint256 ethRaised;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function endTime() {
    return endTime
}

function startTime() {
    return startTime
}

function hardCap() {
    return hardCap
}

function ethRaised() {
    return ethRaised
}

function hasEnded() {
    return (block.timestamp > endTime)
}

function hasStarted() {
    return block.timestamp >= startTime
}

function getRate() {
    if block.timestamp < stor7:
        return stor9
    if block.timestamp >= stor8:
        return stor11
    return stor10
}

function withdraw(uint256 arg1) {
    require stor2 == msg.sender
    require arg1 <= eth.balance(this.address)
    call stor2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawAll() {
    require stor2 == msg.sender
    require eth.balance(this.address) <= eth.balance(this.address)
    call stor2 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function buyTokens(address arg1) payable {
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require ethRaised < hardCap
    if block.timestamp < stor7:
        if not msg.value:
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args stor2, address(arg1), 0
            require ext_call.success
            require msg.value + ethRaised >= ethRaised
            ethRaised += msg.value
            emit TokenPurchase(msg.value, 0, msg.sender, arg1);
        else:
            require stor9 * msg.value / msg.value == stor9
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args stor2, address(arg1), stor9 * msg.value
            require ext_call.success
            require msg.value + ethRaised >= ethRaised
            ethRaised += msg.value
            emit TokenPurchase(msg.value, stor9 * msg.value, msg.sender, arg1);
    else:
        if block.timestamp >= stor8:
            if not msg.value:
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args stor2, address(arg1), 0
                require ext_call.success
                require msg.value + ethRaised >= ethRaised
                ethRaised += msg.value
                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
            else:
                require stor11 * msg.value / msg.value == stor11
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args stor2, address(arg1), stor11 * msg.value
                require ext_call.success
                require msg.value + ethRaised >= ethRaised
                ethRaised += msg.value
                emit TokenPurchase(msg.value, stor11 * msg.value, msg.sender, arg1);
        else:
            if not msg.value:
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args stor2, address(arg1), 0
                require ext_call.success
                require msg.value + ethRaised >= ethRaised
                ethRaised += msg.value
                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
            else:
                require stor10 * msg.value / msg.value == stor10
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args stor2, address(arg1), stor10 * msg.value
                require ext_call.success
                require msg.value + ethRaised >= ethRaised
                ethRaised += msg.value
                emit TokenPurchase(msg.value, stor10 * msg.value, msg.sender, arg1);
}

function _fallback() payable {
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require ethRaised < hardCap
    if block.timestamp < stor7:
        if not msg.value:
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args stor2, msg.sender, 0
            require ext_call.success
            require msg.value + ethRaised >= ethRaised
            ethRaised += msg.value
            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
        else:
            require stor9 * msg.value / msg.value == stor9
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining - 710 wei
                args stor2, msg.sender, stor9 * msg.value
            require ext_call.success
            require msg.value + ethRaised >= ethRaised
            ethRaised += msg.value
            emit TokenPurchase(msg.value, stor9 * msg.value, msg.sender, msg.sender);
    else:
        if block.timestamp >= stor8:
            if not msg.value:
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args stor2, msg.sender, 0
                require ext_call.success
                require msg.value + ethRaised >= ethRaised
                ethRaised += msg.value
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
            else:
                require stor11 * msg.value / msg.value == stor11
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args stor2, msg.sender, stor11 * msg.value
                require ext_call.success
                require msg.value + ethRaised >= ethRaised
                ethRaised += msg.value
                emit TokenPurchase(msg.value, stor11 * msg.value, msg.sender, msg.sender);
        else:
            if not msg.value:
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args stor2, msg.sender, 0
                require ext_call.success
                require msg.value + ethRaised >= ethRaised
                ethRaised += msg.value
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
            else:
                require stor10 * msg.value / msg.value == stor10
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining - 710 wei
                    args stor2, msg.sender, stor10 * msg.value
                require ext_call.success
                require msg.value + ethRaised >= ethRaised
                ethRaised += msg.value
                emit TokenPurchase(msg.value, stor10 * msg.value, msg.sender, msg.sender);
}



}
