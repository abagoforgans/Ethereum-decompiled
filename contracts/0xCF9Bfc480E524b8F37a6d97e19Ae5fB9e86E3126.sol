contract main {




// =====================  Runtime code  =====================


address owner;
address stor1;
address ownerWallet;
uint256 startTime;
uint256 endTime;
uint256 totalEtherRaised;
uint256 minDepositAmount;
uint256 maxDepositAmount;
uint256 sub_1cd5baa9;
uint256 hardCapEther;
mapping of uint256 stor10;

function sub_1cd5baa9(?) {
    return sub_1cd5baa9
}

function endTime() {
    return endTime
}

function minDepositAmount() {
    return minDepositAmount
}

function totalEtherRaised() {
    return totalEtherRaised
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function maxDepositAmount() {
    return maxDepositAmount
}

function ownerWallet() {
    return ownerWallet
}

function hardCapEther() {
    return hardCapEther
}

function changeMaxDepositAmount(uint256 arg1) {
    require msg.sender == owner
    maxDepositAmount = arg1
}

function changeMinDepositAmount(uint256 arg1) {
    require msg.sender == owner
    minDepositAmount = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function getRefundAmount(address arg1) {
    if totalEtherRaised < sub_1cd5baa9:
        return stor10[address(arg1)]
    else:
        return 0
}

function isCrowdsaleFinished() {
    if totalEtherRaised >= hardCapEther:
        return totalEtherRaised >= hardCapEther
    return (block.timestamp > endTime)
}

function getRate() {
    if block.timestamp <= 1559378760:
        return 2400
    if block.timestamp <= 1567327560:
        return 2100
    if block.timestamp <= 1575189960:
        return 1800
    if block.timestamp > 1583052360:
        return 1200
    return 1500
}

function tokensLeft() {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function refund(address arg1) {
    require totalEtherRaised < sub_1cd5baa9
    require block.timestamp > endTime
    stor10[address(arg1)] = 0
    call arg1 with:
       value stor10[address(arg1)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getTokenAmount(uint256 arg1) {
    if not arg1:
        return 0
    if block.timestamp <= 1559378760:
        if 2400 * arg1 / arg1 == 2400:
            return (2400 * arg1)
    else:
        if block.timestamp <= 1567327560:
            if 2100 * arg1 / arg1 == 2100:
                return (2100 * arg1)
        else:
            if block.timestamp <= 1575189960:
                if 1800 * arg1 / arg1 == 1800:
                    return (1800 * arg1)
            else:
                if block.timestamp > 1583052360:
                    if 1200 * arg1 / arg1 == 1200:
                        return (1200 * arg1)
                else:
                    if 1500 * arg1 / arg1 == 1500:
                        return (1500 * arg1)
    revert
}

function getSettings() {
    require ext_code.size(stor1)
    call stor1.0x70a08231 with:
         gas gas_remaining wei
        args 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= 1559378760:
        return startTime, endTime, 2400, totalEtherRaised, minDepositAmount, maxDepositAmount, ext_call.return_data[0]
    if block.timestamp <= 1567327560:
        return startTime, endTime, 2100, totalEtherRaised, minDepositAmount, maxDepositAmount, ext_call.return_data[0]
    if block.timestamp <= 1575189960:
        return startTime, endTime, 1800, totalEtherRaised, minDepositAmount, maxDepositAmount, ext_call.return_data[0]
    if block.timestamp > 1583052360:
        return startTime, endTime, 1200, totalEtherRaised, minDepositAmount, maxDepositAmount, ext_call.return_data[0]
    return startTime, endTime, 1500, totalEtherRaised, minDepositAmount, maxDepositAmount, ext_call.return_data[0]
}

function _fallback() payable {
    require msg.sender
    require startTime < block.timestamp
    require block.timestamp < endTime
    require msg.value > minDepositAmount
    require msg.value < maxDepositAmount
    require msg.value + totalEtherRaised < hardCapEther
    if block.timestamp <= 1559378760:
        if not msg.value:
            require msg.value + totalEtherRaised >= totalEtherRaised
            totalEtherRaised += msg.value
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining wei
                args 0, msg.sender, 0
        else:
            require 2400 * msg.value / msg.value == 2400
            require msg.value + totalEtherRaised >= totalEtherRaised
            totalEtherRaised += msg.value
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining wei
                args 0, msg.sender, 2400 * msg.value
    else:
        if block.timestamp <= 1567327560:
            if not msg.value:
                require msg.value + totalEtherRaised >= totalEtherRaised
                totalEtherRaised += msg.value
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args 0, msg.sender, 0
            else:
                require 2100 * msg.value / msg.value == 2100
                require msg.value + totalEtherRaised >= totalEtherRaised
                totalEtherRaised += msg.value
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args 0, msg.sender, 2100 * msg.value
        else:
            if block.timestamp <= 1575189960:
                if not msg.value:
                    require msg.value + totalEtherRaised >= totalEtherRaised
                    totalEtherRaised += msg.value
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args 0, msg.sender, 0
                else:
                    require 1800 * msg.value / msg.value == 1800
                    require msg.value + totalEtherRaised >= totalEtherRaised
                    totalEtherRaised += msg.value
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args 0, msg.sender, 1800 * msg.value
            else:
                if block.timestamp > 1583052360:
                    if not msg.value:
                        require msg.value + totalEtherRaised >= totalEtherRaised
                        totalEtherRaised += msg.value
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args 0, msg.sender, 0
                    else:
                        require 1200 * msg.value / msg.value == 1200
                        require msg.value + totalEtherRaised >= totalEtherRaised
                        totalEtherRaised += msg.value
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args 0, msg.sender, 1200 * msg.value
                else:
                    if not msg.value:
                        require msg.value + totalEtherRaised >= totalEtherRaised
                        totalEtherRaised += msg.value
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args 0, msg.sender, 0
                    else:
                        require 1500 * msg.value / msg.value == 1500
                        require msg.value + totalEtherRaised >= totalEtherRaised
                        totalEtherRaised += msg.value
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args 0, msg.sender, 1500 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalEtherRaised < sub_1cd5baa9:
        require msg.value + stor10[address(msg.sender)] >= stor10[address(msg.sender)]
        stor10[address(msg.sender)] += msg.value
    else:
        call ownerWallet with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function buy(address arg1) payable {
    require arg1
    require startTime < block.timestamp
    require block.timestamp < endTime
    require msg.value > minDepositAmount
    require msg.value < maxDepositAmount
    require msg.value + totalEtherRaised < hardCapEther
    if block.timestamp <= 1559378760:
        if not msg.value:
            require msg.value + totalEtherRaised >= totalEtherRaised
            totalEtherRaised += msg.value
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining wei
                args 0, address(arg1), 0
        else:
            require 2400 * msg.value / msg.value == 2400
            require msg.value + totalEtherRaised >= totalEtherRaised
            totalEtherRaised += msg.value
            require ext_code.size(stor1)
            call stor1.0x23b872dd with:
                 gas gas_remaining wei
                args 0, address(arg1), 2400 * msg.value
    else:
        if block.timestamp <= 1567327560:
            if not msg.value:
                require msg.value + totalEtherRaised >= totalEtherRaised
                totalEtherRaised += msg.value
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args 0, address(arg1), 0
            else:
                require 2100 * msg.value / msg.value == 2100
                require msg.value + totalEtherRaised >= totalEtherRaised
                totalEtherRaised += msg.value
                require ext_code.size(stor1)
                call stor1.0x23b872dd with:
                     gas gas_remaining wei
                    args 0, address(arg1), 2100 * msg.value
        else:
            if block.timestamp <= 1575189960:
                if not msg.value:
                    require msg.value + totalEtherRaised >= totalEtherRaised
                    totalEtherRaised += msg.value
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args 0, address(arg1), 0
                else:
                    require 1800 * msg.value / msg.value == 1800
                    require msg.value + totalEtherRaised >= totalEtherRaised
                    totalEtherRaised += msg.value
                    require ext_code.size(stor1)
                    call stor1.0x23b872dd with:
                         gas gas_remaining wei
                        args 0, address(arg1), 1800 * msg.value
            else:
                if block.timestamp > 1583052360:
                    if not msg.value:
                        require msg.value + totalEtherRaised >= totalEtherRaised
                        totalEtherRaised += msg.value
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args 0, address(arg1), 0
                    else:
                        require 1200 * msg.value / msg.value == 1200
                        require msg.value + totalEtherRaised >= totalEtherRaised
                        totalEtherRaised += msg.value
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args 0, address(arg1), 1200 * msg.value
                else:
                    if not msg.value:
                        require msg.value + totalEtherRaised >= totalEtherRaised
                        totalEtherRaised += msg.value
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args 0, address(arg1), 0
                    else:
                        require 1500 * msg.value / msg.value == 1500
                        require msg.value + totalEtherRaised >= totalEtherRaised
                        totalEtherRaised += msg.value
                        require ext_code.size(stor1)
                        call stor1.0x23b872dd with:
                             gas gas_remaining wei
                            args 0, address(arg1), 1500 * msg.value
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if totalEtherRaised < sub_1cd5baa9:
        require msg.value + stor10[address(arg1)] >= stor10[address(arg1)]
        stor10[address(arg1)] += msg.value
    else:
        call ownerWallet with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}



}
