contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
address stor3;
uint256 stor4;
uint256 stor6;
uint16 stor7; offset 160
address stor7;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
address stor17;

function _fallback() payable {
    uint16(stor7.field_160) = 0
    stor10 = 60
    stor11 = 30
    stor12 = 10
    stor13 = 700 * 10^18
    stor14 = 300 * 10^18
    stor15 = 10 * 10^18
    stor16 = 5 * 10^17
    require not msg.value
    require code.data[13215 len 32] >= block.timestamp
    require code.data[13247 len 32] >= code.data[13215 len 32]
    require code.data[13323 len 20]
    create contract with 0 wei
                    code: code.data[9483 len 3732]
    require create.new_address
    stor0 = address(create.new_address)
    stor1 = code.data[13215 len 32]
    stor2 = code.data[13247 len 32]
    stor4 = 1000
    stor3 = code.data[13323 len 20]
    require code.data[13279 len 32] > 0
    stor6 = code.data[13279 len 32]
    address(stor7.field_0) = msg.sender
    require code.data[13355 len 20]
    stor17 = code.data[13355 len 20]
    if code.data[13387 len 20]:
        stor0 = code.data[13387 len 20]
    return code.data[550 len 8933]
}



// =====================  Runtime code  =====================


address tokenAddress;
uint256 startTime;
uint256 endTime;
address walletAddress;
uint256 rate;
uint256 weiRaised;
uint256 cap;
uint8 stor7; offset 160
uint8 stor7; offset 168
address owner;
mapping of uint256 conditions;
mapping of address timelocksContracts;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
address stor17;

function rate() {
    return rate
}

function timelocksContracts(address arg1) {
    return timelocksContracts[arg1]
}

function endTime() {
    return endTime
}

function cap() {
    return cap
}

function weiRaised() {
    return weiRaised
}

function wallet() {
    return walletAddress
}

function paused() {
    return bool(uint8(stor7.field_168))
}

function startTime() {
    return startTime
}

function isFinalized() {
    return bool(uint8(stor7.field_160))
}

function owner() {
    return owner
}

function getTimelock(address arg1) {
    return timelocksContracts[address(arg1)]
}

function conditions(address arg1) {
    return conditions[arg1]
}

function token() {
    return tokenAddress
}

function hasEnded() {
    if block.timestamp > endTime:
        return (block.timestamp > endTime)
    return weiRaised >= cap
}

function unpause() {
    require owner == msg.sender
    require uint8(stor7.field_168)
    uint8(stor7.field_168) = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not uint8(stor7.field_168)
    uint8(stor7.field_168) = 1
    emit Pause()
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function addSpecialRateConditions(address arg1, uint256 arg2) {
    require owner == msg.sender
    require arg1
    require arg2 > 0
    conditions[address(arg1)] = arg2
    emit ConditionsAdded(arg2, arg1);
}

function getRateByTime() {
    if block.timestamp > startTime + (1848 * 24 * 3600):
        return 1000
    if block.timestamp > startTime + (1680 * 24 * 3600):
        return 1050
    if block.timestamp > startTime + (1512 * 24 * 3600):
        return 1100
    if block.timestamp > startTime + (1344 * 24 * 3600):
        return 1200
    if block.timestamp > startTime + (1008 * 24 * 3600):
        return 1350
    if block.timestamp > startTime + (672 * 24 * 3600):
        return 1400
    if block.timestamp <= startTime + (336 * 24 * 3600):
        return 1500
    return 1450
}

function finalize() {
    require owner == msg.sender
    require not uint8(stor7.field_160)
    if block.timestamp <= endTime:
        require weiRaised >= cap
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require stor11 * ext_call.return_data[0] / ext_call.return_data[0] == stor11
    require stor10
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining - 710 wei
    require ext_call.success
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require stor12 * ext_call.return_data[0] / ext_call.return_data[0] == stor12
    require stor10
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args walletAddress, stor11 * ext_call.return_data[0] / stor10
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args stor17, stor12 * ext_call.return_data[0] / stor10
    require ext_call.success
    emit Finalized()
    uint8(stor7.field_160) = 1
}

function buyTokens(address arg1) payable {
    require not uint8(stor7.field_168)
    require arg1
    require msg.value >= stor16
    require msg.value <= stor13
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
    if conditions[address(arg1)]:
        require msg.value >= stor14
        if timelocksContracts[address(arg1)]:
            if msg.value:
                require msg.value
                require conditions[address(arg1)] * msg.value / msg.value == conditions[address(arg1)]
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args timelocksContracts[address(arg1)], conditions[address(arg1)] * msg.value
        else:
            create contract with 0 wei
                            code: code.data[3925 len 1233], tokenAddress, address(arg1), endTime
            require create.new_address
            timelocksContracts[address(arg1)] = address(create.new_address)
            if msg.value:
                require msg.value
                require conditions[address(arg1)] * msg.value / msg.value == conditions[address(arg1)]
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(create.new_address), conditions[address(arg1)] * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, conditions[address(arg1)] * msg.value, msg.sender, arg1);
    else:
        if block.timestamp > startTime + (1848 * 24 * 3600):
            if timelocksContracts[address(arg1)]:
                if msg.value:
                    require msg.value
                    require 1000 * msg.value / msg.value == 1000
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args timelocksContracts[address(arg1)], 1000 * msg.value
            else:
                create contract with 0 wei
                                code: code.data[3925 len 1233], tokenAddress, address(arg1), endTime
                require create.new_address
                timelocksContracts[address(arg1)] = address(create.new_address)
                if msg.value:
                    require msg.value
                    require 1000 * msg.value / msg.value == 1000
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(create.new_address), 1000 * msg.value
            require ext_call.success
            emit TokenPurchase(msg.value, 1000 * msg.value, msg.sender, arg1);
        else:
            if block.timestamp > startTime + (1680 * 24 * 3600):
                if timelocksContracts[address(arg1)]:
                    if msg.value:
                        require msg.value
                        require 1050 * msg.value / msg.value == 1050
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args timelocksContracts[address(arg1)], 1050 * msg.value
                else:
                    create contract with 0 wei
                                    code: code.data[3925 len 1233], tokenAddress, address(arg1), endTime
                    require create.new_address
                    timelocksContracts[address(arg1)] = address(create.new_address)
                    if msg.value:
                        require msg.value
                        require 1050 * msg.value / msg.value == 1050
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(create.new_address), 1050 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 1050 * msg.value, msg.sender, arg1);
            else:
                if block.timestamp > startTime + (1512 * 24 * 3600):
                    if timelocksContracts[address(arg1)]:
                        if msg.value:
                            require msg.value
                            require 1100 * msg.value / msg.value == 1100
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args timelocksContracts[address(arg1)], 1100 * msg.value
                    else:
                        create contract with 0 wei
                                        code: code.data[3925 len 1233], tokenAddress, address(arg1), endTime
                        require create.new_address
                        timelocksContracts[address(arg1)] = address(create.new_address)
                        if msg.value:
                            require msg.value
                            require 1100 * msg.value / msg.value == 1100
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(create.new_address), 1100 * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, 1100 * msg.value, msg.sender, arg1);
                else:
                    if block.timestamp > startTime + (1344 * 24 * 3600):
                        if timelocksContracts[address(arg1)]:
                            if msg.value:
                                require msg.value
                                require 1200 * msg.value / msg.value == 1200
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args timelocksContracts[address(arg1)], 1200 * msg.value
                        else:
                            create contract with 0 wei
                                            code: code.data[3925 len 1233], tokenAddress, address(arg1), endTime
                            require create.new_address
                            timelocksContracts[address(arg1)] = address(create.new_address)
                            if msg.value:
                                require msg.value
                                require 1200 * msg.value / msg.value == 1200
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(create.new_address), 1200 * msg.value
                        require ext_call.success
                        emit TokenPurchase(msg.value, 1200 * msg.value, msg.sender, arg1);
                    else:
                        require msg.value >= stor15
                        if block.timestamp > startTime + (1008 * 24 * 3600):
                            if timelocksContracts[address(arg1)]:
                                if msg.value:
                                    require msg.value
                                    require 1350 * msg.value / msg.value == 1350
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args timelocksContracts[address(arg1)], 1350 * msg.value
                            else:
                                create contract with 0 wei
                                                code: code.data[3925 len 1233], tokenAddress, address(arg1), endTime
                                require create.new_address
                                timelocksContracts[address(arg1)] = address(create.new_address)
                                if msg.value:
                                    require msg.value
                                    require 1350 * msg.value / msg.value == 1350
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(create.new_address), 1350 * msg.value
                            require ext_call.success
                            emit TokenPurchase(msg.value, 1350 * msg.value, msg.sender, arg1);
                        else:
                            if block.timestamp > startTime + (672 * 24 * 3600):
                                if timelocksContracts[address(arg1)]:
                                    if msg.value:
                                        require msg.value
                                        require 1400 * msg.value / msg.value == 1400
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args timelocksContracts[address(arg1)], 1400 * msg.value
                                else:
                                    create contract with 0 wei
                                                    code: code.data[3925 len 1233], tokenAddress, address(arg1), endTime
                                    require create.new_address
                                    timelocksContracts[address(arg1)] = address(create.new_address)
                                    if msg.value:
                                        require msg.value
                                        require 1400 * msg.value / msg.value == 1400
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(create.new_address), 1400 * msg.value
                                require ext_call.success
                                emit TokenPurchase(msg.value, 1400 * msg.value, msg.sender, arg1);
                            else:
                                if block.timestamp <= startTime + (336 * 24 * 3600):
                                    if timelocksContracts[address(arg1)]:
                                        if msg.value:
                                            require msg.value
                                            require 1500 * msg.value / msg.value == 1500
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args timelocksContracts[address(arg1)], 1500 * msg.value
                                    else:
                                        create contract with 0 wei
                                                        code: code.data[3925 len 1233], tokenAddress, address(arg1), endTime
                                        require create.new_address
                                        timelocksContracts[address(arg1)] = address(create.new_address)
                                        if msg.value:
                                            require msg.value
                                            require 1500 * msg.value / msg.value == 1500
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(create.new_address), 1500 * msg.value
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 1500 * msg.value, msg.sender, arg1);
                                else:
                                    if timelocksContracts[address(arg1)]:
                                        if msg.value:
                                            require msg.value
                                            require 1450 * msg.value / msg.value == 1450
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args timelocksContracts[address(arg1)], 1450 * msg.value
                                    else:
                                        create contract with 0 wei
                                                        code: code.data[3925 len 1233], tokenAddress, address(arg1), endTime
                                        require create.new_address
                                        timelocksContracts[address(arg1)] = address(create.new_address)
                                        if msg.value:
                                            require msg.value
                                            require 1450 * msg.value / msg.value == 1450
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(create.new_address), 1450 * msg.value
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 1450 * msg.value, msg.sender, arg1);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}

function _fallback() payable {
    require not uint8(stor7.field_168)
    require msg.sender
    require msg.value >= stor16
    require msg.value <= stor13
    require msg.value + weiRaised >= weiRaised
    require block.timestamp >= startTime
    require block.timestamp <= endTime
    require msg.value
    require msg.value + weiRaised <= cap
    if conditions[address(msg.sender)]:
        require msg.value >= stor14
        if timelocksContracts[address(msg.sender)]:
            if msg.value:
                require msg.value
                require conditions[address(msg.sender)] * msg.value / msg.value == conditions[address(msg.sender)]
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args timelocksContracts[address(msg.sender)], conditions[address(msg.sender)] * msg.value
        else:
            create contract with 0 wei
                            code: code.data[3925 len 1233], tokenAddress, msg.sender, endTime
            require create.new_address
            timelocksContracts[address(msg.sender)] = address(create.new_address)
            if msg.value:
                require msg.value
                require conditions[address(msg.sender)] * msg.value / msg.value == conditions[address(msg.sender)]
            require msg.value + weiRaised >= weiRaised
            weiRaised += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(create.new_address), conditions[address(msg.sender)] * msg.value
        require ext_call.success
        emit TokenPurchase(msg.value, conditions[address(msg.sender)] * msg.value, msg.sender, msg.sender);
    else:
        if block.timestamp > startTime + (1848 * 24 * 3600):
            if timelocksContracts[address(msg.sender)]:
                if msg.value:
                    require msg.value
                    require 1000 * msg.value / msg.value == 1000
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args timelocksContracts[address(msg.sender)], 1000 * msg.value
            else:
                create contract with 0 wei
                                code: code.data[3925 len 1233], tokenAddress, msg.sender, endTime
                require create.new_address
                timelocksContracts[address(msg.sender)] = address(create.new_address)
                if msg.value:
                    require msg.value
                    require 1000 * msg.value / msg.value == 1000
                require msg.value + weiRaised >= weiRaised
                weiRaised += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(create.new_address), 1000 * msg.value
            require ext_call.success
            emit TokenPurchase(msg.value, 1000 * msg.value, msg.sender, msg.sender);
        else:
            if block.timestamp > startTime + (1680 * 24 * 3600):
                if timelocksContracts[address(msg.sender)]:
                    if msg.value:
                        require msg.value
                        require 1050 * msg.value / msg.value == 1050
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args timelocksContracts[address(msg.sender)], 1050 * msg.value
                else:
                    create contract with 0 wei
                                    code: code.data[3925 len 1233], tokenAddress, msg.sender, endTime
                    require create.new_address
                    timelocksContracts[address(msg.sender)] = address(create.new_address)
                    if msg.value:
                        require msg.value
                        require 1050 * msg.value / msg.value == 1050
                    require msg.value + weiRaised >= weiRaised
                    weiRaised += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(create.new_address), 1050 * msg.value
                require ext_call.success
                emit TokenPurchase(msg.value, 1050 * msg.value, msg.sender, msg.sender);
            else:
                if block.timestamp > startTime + (1512 * 24 * 3600):
                    if timelocksContracts[address(msg.sender)]:
                        if msg.value:
                            require msg.value
                            require 1100 * msg.value / msg.value == 1100
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args timelocksContracts[address(msg.sender)], 1100 * msg.value
                    else:
                        create contract with 0 wei
                                        code: code.data[3925 len 1233], tokenAddress, msg.sender, endTime
                        require create.new_address
                        timelocksContracts[address(msg.sender)] = address(create.new_address)
                        if msg.value:
                            require msg.value
                            require 1100 * msg.value / msg.value == 1100
                        require msg.value + weiRaised >= weiRaised
                        weiRaised += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(create.new_address), 1100 * msg.value
                    require ext_call.success
                    emit TokenPurchase(msg.value, 1100 * msg.value, msg.sender, msg.sender);
                else:
                    if block.timestamp > startTime + (1344 * 24 * 3600):
                        if timelocksContracts[address(msg.sender)]:
                            if msg.value:
                                require msg.value
                                require 1200 * msg.value / msg.value == 1200
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args timelocksContracts[address(msg.sender)], 1200 * msg.value
                        else:
                            create contract with 0 wei
                                            code: code.data[3925 len 1233], tokenAddress, msg.sender, endTime
                            require create.new_address
                            timelocksContracts[address(msg.sender)] = address(create.new_address)
                            if msg.value:
                                require msg.value
                                require 1200 * msg.value / msg.value == 1200
                            require msg.value + weiRaised >= weiRaised
                            weiRaised += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(create.new_address), 1200 * msg.value
                        require ext_call.success
                        emit TokenPurchase(msg.value, 1200 * msg.value, msg.sender, msg.sender);
                    else:
                        require msg.value >= stor15
                        if block.timestamp > startTime + (1008 * 24 * 3600):
                            if timelocksContracts[address(msg.sender)]:
                                if msg.value:
                                    require msg.value
                                    require 1350 * msg.value / msg.value == 1350
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args timelocksContracts[address(msg.sender)], 1350 * msg.value
                            else:
                                create contract with 0 wei
                                                code: code.data[3925 len 1233], tokenAddress, msg.sender, endTime
                                require create.new_address
                                timelocksContracts[address(msg.sender)] = address(create.new_address)
                                if msg.value:
                                    require msg.value
                                    require 1350 * msg.value / msg.value == 1350
                                require msg.value + weiRaised >= weiRaised
                                weiRaised += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(create.new_address), 1350 * msg.value
                            require ext_call.success
                            emit TokenPurchase(msg.value, 1350 * msg.value, msg.sender, msg.sender);
                        else:
                            if block.timestamp > startTime + (672 * 24 * 3600):
                                if timelocksContracts[address(msg.sender)]:
                                    if msg.value:
                                        require msg.value
                                        require 1400 * msg.value / msg.value == 1400
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args timelocksContracts[address(msg.sender)], 1400 * msg.value
                                else:
                                    create contract with 0 wei
                                                    code: code.data[3925 len 1233], tokenAddress, msg.sender, endTime
                                    require create.new_address
                                    timelocksContracts[address(msg.sender)] = address(create.new_address)
                                    if msg.value:
                                        require msg.value
                                        require 1400 * msg.value / msg.value == 1400
                                    require msg.value + weiRaised >= weiRaised
                                    weiRaised += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(create.new_address), 1400 * msg.value
                                require ext_call.success
                                emit TokenPurchase(msg.value, 1400 * msg.value, msg.sender, msg.sender);
                            else:
                                if block.timestamp <= startTime + (336 * 24 * 3600):
                                    if timelocksContracts[address(msg.sender)]:
                                        if msg.value:
                                            require msg.value
                                            require 1500 * msg.value / msg.value == 1500
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args timelocksContracts[address(msg.sender)], 1500 * msg.value
                                    else:
                                        create contract with 0 wei
                                                        code: code.data[3925 len 1233], tokenAddress, msg.sender, endTime
                                        require create.new_address
                                        timelocksContracts[address(msg.sender)] = address(create.new_address)
                                        if msg.value:
                                            require msg.value
                                            require 1500 * msg.value / msg.value == 1500
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(create.new_address), 1500 * msg.value
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 1500 * msg.value, msg.sender, msg.sender);
                                else:
                                    if timelocksContracts[address(msg.sender)]:
                                        if msg.value:
                                            require msg.value
                                            require 1450 * msg.value / msg.value == 1450
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args timelocksContracts[address(msg.sender)], 1450 * msg.value
                                    else:
                                        create contract with 0 wei
                                                        code: code.data[3925 len 1233], tokenAddress, msg.sender, endTime
                                        require create.new_address
                                        timelocksContracts[address(msg.sender)] = address(create.new_address)
                                        if msg.value:
                                            require msg.value
                                            require 1450 * msg.value / msg.value == 1450
                                        require msg.value + weiRaised >= weiRaised
                                        weiRaised += msg.value
                                        require ext_code.size(tokenAddress)
                                        call tokenAddress.0x40c10f19 with:
                                             gas gas_remaining - 710 wei
                                            args address(create.new_address), 1450 * msg.value
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, 1450 * msg.value, msg.sender, msg.sender);
    call walletAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
}



}
