contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


address stor0;
address tokenAddress;
uint256 preStartTime;
uint256 preEndTime;
uint256 iCOstartTime;
uint256 iCOEndTime;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 rate;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor24;
uint256 stor25;
uint256 publicSupply;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint8 stor33;
uint8 stor33; offset 8
uint8 stor33; offset 16
uint8 stor33; offset 24
uint256 cap;
uint8 stor35;
uint256 goal;
uint8 stor37;
address vaultAddress; offset 8

function getTokenAddress() {
    require stor0 == msg.sender
    return tokenAddress
}

function rate() {
    return rate
}

function cap() {
    return cap
}

function goal() {
    return goal
}

function preStartTime() {
    return preStartTime
}

function getVaultAddress() {
    require stor0 == msg.sender
    return vaultAddress
}

function getPublicSupply() {
    require stor0 == msg.sender
    return publicSupply
}

function preEndTime() {
    return preEndTime
}

function ICOEndTime() {
    return iCOEndTime
}

function ICOstartTime() {
    return iCOstartTime
}

function updateGoalCheck() {
    require stor0 == msg.sender
    stor37 = 1
}

function hasEnded() {
    if block.timestamp > iCOEndTime:
        return (block.timestamp > iCOEndTime)
    return stor13 >= cap
}

function goalReached() {
    if stor13 < goal:
        if not stor37:
            return 0
    else:
        stor37 = 1
    return 1
}

function transferOwnership(address arg1) {
    require stor0 == msg.sender
    require arg1
    emit OwnershipTransferred(stor0, arg1);
    stor0 = arg1
}

function claimRefund() {
    require stor35
    if stor13 >= goal:
        stor37 = 1
        revert
    require not stor37
    require ext_code.size(vaultAddress)
    call vaultAddress.refund(address rg1) with:
         gas gas_remaining - 710 wei
        args msg.sender
    require ext_call.success
}

function bountyFunds(address arg1, uint256 arg2) {
    require stor0 == msg.sender
    if arg2:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
    require stor28 >= 10^18 * arg2
    require 10^18 * arg2 <= stor28
    stor28 += -1 * 10^18 * arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), 10^18 * arg2
    require ext_call.success
}

function rewardsFunds(address arg1, uint256 arg2) {
    require stor0 == msg.sender
    if arg2:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
    require stor27 >= 10^18 * arg2
    require 10^18 * arg2 <= stor27
    stor27 += -1 * 10^18 * arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), 10^18 * arg2
    require ext_call.success
}

function burnToken() {
    require stor0 == msg.sender
    if block.timestamp <= iCOEndTime:
        require stor13 >= cap
    require not uint8(stor33.field_0)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x6d1b229d with:
         gas gas_remaining - 710 wei
        args publicSupply
    require ext_call.success
    require publicSupply <= stor18
    stor18 -= publicSupply
    publicSupply = 0
    uint8(stor33.field_0) = 1
    return 1
}

function transferToken(address arg1, uint256 arg2) {
    require stor0 == msg.sender
    require iCOEndTime > block.timestamp
    if arg2:
        require arg2
        require 10^18 * arg2 / arg2 == 10^18
    require publicSupply >= 10^18 * arg2
    require 10^18 * arg2 <= publicSupply
    publicSupply += -1 * 10^18 * arg2
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args address(arg1), 10^18 * arg2
    require ext_call.success
}

function finalize() {
    require stor0 == msg.sender
    require not stor35
    if block.timestamp <= iCOEndTime:
        require stor13 >= cap
    if stor13 < goal:
        require ext_code.size(vaultAddress)
        if not stor37:
            call vaultAddress.enableRefunds() with:
                 gas gas_remaining - 710 wei
        else:
            call vaultAddress.0x43d726d6 with:
                 gas gas_remaining - 710 wei
    else:
        stor37 = 1
        require ext_code.size(vaultAddress)
        call vaultAddress.0x43d726d6 with:
             gas gas_remaining - 710 wei
    require ext_call.success
    emit Finalized()
    stor35 = 1
}

function grantAdvisorToken() {
    require stor0 == msg.sender
    require not uint8(stor33.field_24)
    require block.timestamp > stor32
    require stor29 >= stor29 / 3
    uint8(stor33.field_24) = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xaa855f6d87d5d443eda49aa034fa99d9eeea0337, stor29 / 3
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x4b2e3e1bbeb117b781e71a10376a969860fbceb3, stor29 / 3
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xbb3b3799d1b31189b491c26b1d7c17307fb87f5d, stor29 / 3
    require ext_call.success
    stor29 = 0
}

function grantTeamToken() {
    require stor0 == msg.sender
    require not uint8(stor33.field_16)
    require block.timestamp > stor31
    require stor30 >= stor30 / 5
    uint8(stor33.field_16) = 1
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xbeb9e4057f953aabdf14dc4018056888c67e40b0, stor30 / 5
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x70fcd07629eb9b406223168aeb8de06e2564f558, stor30 / 5
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0xe562f12239c660627be186de6535c05983579e9, stor30 / 5
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x42e045f4d119212ac1cf5820488e69aa9164dc70, stor30 / 5
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0x40c10f19 with:
         gas gas_remaining - 710 wei
        args 0x2f53678a33c0fee8f30fc5cfac4e5e140397b40d, stor30 / 5
    require ext_call.success
    stor30 = 0
}

function buyTokens(address arg1) payable {
    require arg1
    require msg.value + stor13 >= stor13
    require block.timestamp >= preStartTime
    require block.timestamp <= iCOEndTime
    require msg.value
    require msg.value + stor13 <= cap
    require msg.value >= 5 * 10^16
    if block.timestamp < preStartTime:
        if block.timestamp < iCOstartTime:
            if block.timestamp > preEndTime:
                require block.timestamp >= iCOstartTime
            require msg.value + stor13 >= stor13
            stor13 += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), 0
            require ext_call.success
            emit TokenPurchase(msg.value, 0, msg.sender, arg1);
        else:
            if block.timestamp > iCOEndTime:
                if block.timestamp > preEndTime:
                    require block.timestamp >= iCOstartTime
                require msg.value + stor13 >= stor13
                stor13 += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
            else:
                if not uint8(stor33.field_8):
                    require stor24 + stor25 >= stor25
                    stor25 += stor24
                    uint8(stor33.field_8) = 1
                if block.timestamp <= stor14:
                    if msg.value:
                        require msg.value
                        require stor7 * msg.value / msg.value == stor7
                    require stor7 * msg.value >= 0
                    if msg.value:
                        require msg.value
                        require rate * msg.value / msg.value == rate
                    require (rate * msg.value) + (stor7 * msg.value) >= stor7 * msg.value
                    require (rate * msg.value) + (stor7 * msg.value) <= stor25
                    stor25 = stor25 - (rate * msg.value) - (stor7 * msg.value)
                    require (rate * msg.value) + (stor7 * msg.value) <= publicSupply
                    publicSupply = publicSupply - (rate * msg.value) - (stor7 * msg.value)
                    require msg.value + stor13 >= stor13
                    stor13 += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), (rate * msg.value) + (stor7 * msg.value)
                    require ext_call.success
                    emit TokenPurchase(msg.value, (rate * msg.value) + (stor7 * msg.value), msg.sender, arg1);
                else:
                    if block.timestamp <= stor15:
                        if msg.value:
                            require msg.value
                            require stor8 * msg.value / msg.value == stor8
                        require stor8 * msg.value >= 0
                        if msg.value:
                            require msg.value
                            require rate * msg.value / msg.value == rate
                        require (rate * msg.value) + (stor8 * msg.value) >= stor8 * msg.value
                        require (rate * msg.value) + (stor8 * msg.value) <= stor25
                        stor25 = stor25 - (rate * msg.value) - (stor8 * msg.value)
                        require (rate * msg.value) + (stor8 * msg.value) <= publicSupply
                        publicSupply = publicSupply - (rate * msg.value) - (stor8 * msg.value)
                        require msg.value + stor13 >= stor13
                        stor13 += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), (rate * msg.value) + (stor8 * msg.value)
                        require ext_call.success
                        emit TokenPurchase(msg.value, (rate * msg.value) + (stor8 * msg.value), msg.sender, arg1);
                    else:
                        if block.timestamp < stor16:
                            if msg.value:
                                require msg.value
                                require stor9 * msg.value / msg.value == stor9
                            require stor9 * msg.value >= 0
                            if msg.value:
                                require msg.value
                                require rate * msg.value / msg.value == rate
                            require (rate * msg.value) + (stor9 * msg.value) >= stor9 * msg.value
                            require (rate * msg.value) + (stor9 * msg.value) <= stor25
                            stor25 = stor25 - (rate * msg.value) - (stor9 * msg.value)
                            require (rate * msg.value) + (stor9 * msg.value) <= publicSupply
                            publicSupply = publicSupply - (rate * msg.value) - (stor9 * msg.value)
                            require msg.value + stor13 >= stor13
                            stor13 += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), (rate * msg.value) + (stor9 * msg.value)
                            require ext_call.success
                            emit TokenPurchase(msg.value, (rate * msg.value) + (stor9 * msg.value), msg.sender, arg1);
                        else:
                            if block.timestamp >= stor17:
                                if msg.value:
                                    require msg.value
                                    require rate * msg.value / msg.value == rate
                                require rate * msg.value >= 0
                                require rate * msg.value <= stor25
                                stor25 += -1 * rate * msg.value
                                require rate * msg.value <= publicSupply
                                publicSupply += -1 * rate * msg.value
                                require msg.value + stor13 >= stor13
                                stor13 += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), rate * msg.value
                                require ext_call.success
                                emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
                            else:
                                if msg.value:
                                    require msg.value
                                    require stor10 * msg.value / msg.value == stor10
                                require stor10 * msg.value >= 0
                                if msg.value:
                                    require msg.value
                                    require rate * msg.value / msg.value == rate
                                require (rate * msg.value) + (stor10 * msg.value) >= stor10 * msg.value
                                require (rate * msg.value) + (stor10 * msg.value) <= stor25
                                stor25 = stor25 - (rate * msg.value) - (stor10 * msg.value)
                                require (rate * msg.value) + (stor10 * msg.value) <= publicSupply
                                publicSupply = publicSupply - (rate * msg.value) - (stor10 * msg.value)
                                require msg.value + stor13 >= stor13
                                stor13 += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), (rate * msg.value) + (stor10 * msg.value)
                                require ext_call.success
                                emit TokenPurchase(msg.value, (rate * msg.value) + (stor10 * msg.value), msg.sender, arg1);
    else:
        if block.timestamp < preEndTime:
            require stor24 > 0
            if msg.value:
                require msg.value
                require stor6 * msg.value / msg.value == stor6
            require stor6 * msg.value >= 0
            if msg.value:
                require msg.value
                require rate * msg.value / msg.value == rate
            require (rate * msg.value) + (stor6 * msg.value) >= stor6 * msg.value
            require stor24 >= (rate * msg.value) + (stor6 * msg.value)
            require (rate * msg.value) + (stor6 * msg.value) <= stor24
            stor24 = stor24 - (rate * msg.value) - (stor6 * msg.value)
            require (rate * msg.value) + (stor6 * msg.value) <= publicSupply
            publicSupply = publicSupply - (rate * msg.value) - (stor6 * msg.value)
            require msg.value + stor13 >= stor13
            stor13 += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args address(arg1), (rate * msg.value) + (stor6 * msg.value)
            require ext_call.success
            emit TokenPurchase(msg.value, (rate * msg.value) + (stor6 * msg.value), msg.sender, arg1);
        else:
            if block.timestamp < iCOstartTime:
                if block.timestamp > preEndTime:
                    require block.timestamp >= iCOstartTime
                require msg.value + stor13 >= stor13
                stor13 += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args address(arg1), 0
                require ext_call.success
                emit TokenPurchase(msg.value, 0, msg.sender, arg1);
            else:
                if block.timestamp > iCOEndTime:
                    if block.timestamp > preEndTime:
                        require block.timestamp >= iCOstartTime
                    require msg.value + stor13 >= stor13
                    stor13 += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args address(arg1), 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, msg.sender, arg1);
                else:
                    if not uint8(stor33.field_8):
                        require stor24 + stor25 >= stor25
                        stor25 += stor24
                        uint8(stor33.field_8) = 1
                    if block.timestamp <= stor14:
                        if msg.value:
                            require msg.value
                            require stor7 * msg.value / msg.value == stor7
                        require stor7 * msg.value >= 0
                        if msg.value:
                            require msg.value
                            require rate * msg.value / msg.value == rate
                        require (rate * msg.value) + (stor7 * msg.value) >= stor7 * msg.value
                        require (rate * msg.value) + (stor7 * msg.value) <= stor25
                        stor25 = stor25 - (rate * msg.value) - (stor7 * msg.value)
                        require (rate * msg.value) + (stor7 * msg.value) <= publicSupply
                        publicSupply = publicSupply - (rate * msg.value) - (stor7 * msg.value)
                        require msg.value + stor13 >= stor13
                        stor13 += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args address(arg1), (rate * msg.value) + (stor7 * msg.value)
                        require ext_call.success
                        emit TokenPurchase(msg.value, (rate * msg.value) + (stor7 * msg.value), msg.sender, arg1);
                    else:
                        if block.timestamp <= stor15:
                            if msg.value:
                                require msg.value
                                require stor8 * msg.value / msg.value == stor8
                            require stor8 * msg.value >= 0
                            if msg.value:
                                require msg.value
                                require rate * msg.value / msg.value == rate
                            require (rate * msg.value) + (stor8 * msg.value) >= stor8 * msg.value
                            require (rate * msg.value) + (stor8 * msg.value) <= stor25
                            stor25 = stor25 - (rate * msg.value) - (stor8 * msg.value)
                            require (rate * msg.value) + (stor8 * msg.value) <= publicSupply
                            publicSupply = publicSupply - (rate * msg.value) - (stor8 * msg.value)
                            require msg.value + stor13 >= stor13
                            stor13 += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), (rate * msg.value) + (stor8 * msg.value)
                            require ext_call.success
                            emit TokenPurchase(msg.value, (rate * msg.value) + (stor8 * msg.value), msg.sender, arg1);
                        else:
                            if block.timestamp < stor16:
                                if msg.value:
                                    require msg.value
                                    require stor9 * msg.value / msg.value == stor9
                                require stor9 * msg.value >= 0
                                if msg.value:
                                    require msg.value
                                    require rate * msg.value / msg.value == rate
                                require (rate * msg.value) + (stor9 * msg.value) >= stor9 * msg.value
                                require (rate * msg.value) + (stor9 * msg.value) <= stor25
                                stor25 = stor25 - (rate * msg.value) - (stor9 * msg.value)
                                require (rate * msg.value) + (stor9 * msg.value) <= publicSupply
                                publicSupply = publicSupply - (rate * msg.value) - (stor9 * msg.value)
                                require msg.value + stor13 >= stor13
                                stor13 += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), (rate * msg.value) + (stor9 * msg.value)
                                require ext_call.success
                                emit TokenPurchase(msg.value, (rate * msg.value) + (stor9 * msg.value), msg.sender, arg1);
                            else:
                                if block.timestamp >= stor17:
                                    if msg.value:
                                        require msg.value
                                        require rate * msg.value / msg.value == rate
                                    require rate * msg.value >= 0
                                    require rate * msg.value <= stor25
                                    stor25 += -1 * rate * msg.value
                                    require rate * msg.value <= publicSupply
                                    publicSupply += -1 * rate * msg.value
                                    require msg.value + stor13 >= stor13
                                    stor13 += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), rate * msg.value
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, arg1);
                                else:
                                    if msg.value:
                                        require msg.value
                                        require stor10 * msg.value / msg.value == stor10
                                    require stor10 * msg.value >= 0
                                    if msg.value:
                                        require msg.value
                                        require rate * msg.value / msg.value == rate
                                    require (rate * msg.value) + (stor10 * msg.value) >= stor10 * msg.value
                                    require (rate * msg.value) + (stor10 * msg.value) <= stor25
                                    stor25 = stor25 - (rate * msg.value) - (stor10 * msg.value)
                                    require (rate * msg.value) + (stor10 * msg.value) <= publicSupply
                                    publicSupply = publicSupply - (rate * msg.value) - (stor10 * msg.value)
                                    require msg.value + stor13 >= stor13
                                    stor13 += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), (rate * msg.value) + (stor10 * msg.value)
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, (rate * msg.value) + (stor10 * msg.value), msg.sender, arg1);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}

function _fallback() payable {
    require msg.sender
    require msg.value + stor13 >= stor13
    require block.timestamp >= preStartTime
    require block.timestamp <= iCOEndTime
    require msg.value
    require msg.value + stor13 <= cap
    require msg.value >= 5 * 10^16
    if block.timestamp < preStartTime:
        if block.timestamp < iCOstartTime:
            if block.timestamp > preEndTime:
                require block.timestamp >= iCOstartTime
            require msg.value + stor13 >= stor13
            stor13 += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, 0
            require ext_call.success
            emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
        else:
            if block.timestamp > iCOEndTime:
                if block.timestamp > preEndTime:
                    require block.timestamp >= iCOstartTime
                require msg.value + stor13 >= stor13
                stor13 += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0
                require ext_call.success
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
            else:
                if not uint8(stor33.field_8):
                    require stor24 + stor25 >= stor25
                    stor25 += stor24
                    uint8(stor33.field_8) = 1
                if block.timestamp <= stor14:
                    if msg.value:
                        require msg.value
                        require stor7 * msg.value / msg.value == stor7
                    require stor7 * msg.value >= 0
                    if msg.value:
                        require msg.value
                        require rate * msg.value / msg.value == rate
                    require (rate * msg.value) + (stor7 * msg.value) >= stor7 * msg.value
                    require (rate * msg.value) + (stor7 * msg.value) <= stor25
                    stor25 = stor25 - (rate * msg.value) - (stor7 * msg.value)
                    require (rate * msg.value) + (stor7 * msg.value) <= publicSupply
                    publicSupply = publicSupply - (rate * msg.value) - (stor7 * msg.value)
                    require msg.value + stor13 >= stor13
                    stor13 += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (rate * msg.value) + (stor7 * msg.value)
                    require ext_call.success
                    emit TokenPurchase(msg.value, (rate * msg.value) + (stor7 * msg.value), msg.sender, msg.sender);
                else:
                    if block.timestamp <= stor15:
                        if msg.value:
                            require msg.value
                            require stor8 * msg.value / msg.value == stor8
                        require stor8 * msg.value >= 0
                        if msg.value:
                            require msg.value
                            require rate * msg.value / msg.value == rate
                        require (rate * msg.value) + (stor8 * msg.value) >= stor8 * msg.value
                        require (rate * msg.value) + (stor8 * msg.value) <= stor25
                        stor25 = stor25 - (rate * msg.value) - (stor8 * msg.value)
                        require (rate * msg.value) + (stor8 * msg.value) <= publicSupply
                        publicSupply = publicSupply - (rate * msg.value) - (stor8 * msg.value)
                        require msg.value + stor13 >= stor13
                        stor13 += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (rate * msg.value) + (stor8 * msg.value)
                        require ext_call.success
                        emit TokenPurchase(msg.value, (rate * msg.value) + (stor8 * msg.value), msg.sender, msg.sender);
                    else:
                        if block.timestamp < stor16:
                            if msg.value:
                                require msg.value
                                require stor9 * msg.value / msg.value == stor9
                            require stor9 * msg.value >= 0
                            if msg.value:
                                require msg.value
                                require rate * msg.value / msg.value == rate
                            require (rate * msg.value) + (stor9 * msg.value) >= stor9 * msg.value
                            require (rate * msg.value) + (stor9 * msg.value) <= stor25
                            stor25 = stor25 - (rate * msg.value) - (stor9 * msg.value)
                            require (rate * msg.value) + (stor9 * msg.value) <= publicSupply
                            publicSupply = publicSupply - (rate * msg.value) - (stor9 * msg.value)
                            require msg.value + stor13 >= stor13
                            stor13 += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (rate * msg.value) + (stor9 * msg.value)
                            require ext_call.success
                            emit TokenPurchase(msg.value, (rate * msg.value) + (stor9 * msg.value), msg.sender, msg.sender);
                        else:
                            if block.timestamp >= stor17:
                                if msg.value:
                                    require msg.value
                                    require rate * msg.value / msg.value == rate
                                require rate * msg.value >= 0
                                require rate * msg.value <= stor25
                                stor25 += -1 * rate * msg.value
                                require rate * msg.value <= publicSupply
                                publicSupply += -1 * rate * msg.value
                                require msg.value + stor13 >= stor13
                                stor13 += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, rate * msg.value
                                require ext_call.success
                                emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
                            else:
                                if msg.value:
                                    require msg.value
                                    require stor10 * msg.value / msg.value == stor10
                                require stor10 * msg.value >= 0
                                if msg.value:
                                    require msg.value
                                    require rate * msg.value / msg.value == rate
                                require (rate * msg.value) + (stor10 * msg.value) >= stor10 * msg.value
                                require (rate * msg.value) + (stor10 * msg.value) <= stor25
                                stor25 = stor25 - (rate * msg.value) - (stor10 * msg.value)
                                require (rate * msg.value) + (stor10 * msg.value) <= publicSupply
                                publicSupply = publicSupply - (rate * msg.value) - (stor10 * msg.value)
                                require msg.value + stor13 >= stor13
                                stor13 += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (rate * msg.value) + (stor10 * msg.value)
                                require ext_call.success
                                emit TokenPurchase(msg.value, (rate * msg.value) + (stor10 * msg.value), msg.sender, msg.sender);
    else:
        if block.timestamp < preEndTime:
            require stor24 > 0
            if msg.value:
                require msg.value
                require stor6 * msg.value / msg.value == stor6
            require stor6 * msg.value >= 0
            if msg.value:
                require msg.value
                require rate * msg.value / msg.value == rate
            require (rate * msg.value) + (stor6 * msg.value) >= stor6 * msg.value
            require stor24 >= (rate * msg.value) + (stor6 * msg.value)
            require (rate * msg.value) + (stor6 * msg.value) <= stor24
            stor24 = stor24 - (rate * msg.value) - (stor6 * msg.value)
            require (rate * msg.value) + (stor6 * msg.value) <= publicSupply
            publicSupply = publicSupply - (rate * msg.value) - (stor6 * msg.value)
            require msg.value + stor13 >= stor13
            stor13 += msg.value
            require ext_code.size(tokenAddress)
            call tokenAddress.0x40c10f19 with:
                 gas gas_remaining - 710 wei
                args msg.sender, (rate * msg.value) + (stor6 * msg.value)
            require ext_call.success
            emit TokenPurchase(msg.value, (rate * msg.value) + (stor6 * msg.value), msg.sender, msg.sender);
        else:
            if block.timestamp < iCOstartTime:
                if block.timestamp > preEndTime:
                    require block.timestamp >= iCOstartTime
                require msg.value + stor13 >= stor13
                stor13 += msg.value
                require ext_code.size(tokenAddress)
                call tokenAddress.0x40c10f19 with:
                     gas gas_remaining - 710 wei
                    args msg.sender, 0
                require ext_call.success
                emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
            else:
                if block.timestamp > iCOEndTime:
                    if block.timestamp > preEndTime:
                        require block.timestamp >= iCOstartTime
                    require msg.value + stor13 >= stor13
                    stor13 += msg.value
                    require ext_code.size(tokenAddress)
                    call tokenAddress.0x40c10f19 with:
                         gas gas_remaining - 710 wei
                        args msg.sender, 0
                    require ext_call.success
                    emit TokenPurchase(msg.value, 0, msg.sender, msg.sender);
                else:
                    if not uint8(stor33.field_8):
                        require stor24 + stor25 >= stor25
                        stor25 += stor24
                        uint8(stor33.field_8) = 1
                    if block.timestamp <= stor14:
                        if msg.value:
                            require msg.value
                            require stor7 * msg.value / msg.value == stor7
                        require stor7 * msg.value >= 0
                        if msg.value:
                            require msg.value
                            require rate * msg.value / msg.value == rate
                        require (rate * msg.value) + (stor7 * msg.value) >= stor7 * msg.value
                        require (rate * msg.value) + (stor7 * msg.value) <= stor25
                        stor25 = stor25 - (rate * msg.value) - (stor7 * msg.value)
                        require (rate * msg.value) + (stor7 * msg.value) <= publicSupply
                        publicSupply = publicSupply - (rate * msg.value) - (stor7 * msg.value)
                        require msg.value + stor13 >= stor13
                        stor13 += msg.value
                        require ext_code.size(tokenAddress)
                        call tokenAddress.0x40c10f19 with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (rate * msg.value) + (stor7 * msg.value)
                        require ext_call.success
                        emit TokenPurchase(msg.value, (rate * msg.value) + (stor7 * msg.value), msg.sender, msg.sender);
                    else:
                        if block.timestamp <= stor15:
                            if msg.value:
                                require msg.value
                                require stor8 * msg.value / msg.value == stor8
                            require stor8 * msg.value >= 0
                            if msg.value:
                                require msg.value
                                require rate * msg.value / msg.value == rate
                            require (rate * msg.value) + (stor8 * msg.value) >= stor8 * msg.value
                            require (rate * msg.value) + (stor8 * msg.value) <= stor25
                            stor25 = stor25 - (rate * msg.value) - (stor8 * msg.value)
                            require (rate * msg.value) + (stor8 * msg.value) <= publicSupply
                            publicSupply = publicSupply - (rate * msg.value) - (stor8 * msg.value)
                            require msg.value + stor13 >= stor13
                            stor13 += msg.value
                            require ext_code.size(tokenAddress)
                            call tokenAddress.0x40c10f19 with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (rate * msg.value) + (stor8 * msg.value)
                            require ext_call.success
                            emit TokenPurchase(msg.value, (rate * msg.value) + (stor8 * msg.value), msg.sender, msg.sender);
                        else:
                            if block.timestamp < stor16:
                                if msg.value:
                                    require msg.value
                                    require stor9 * msg.value / msg.value == stor9
                                require stor9 * msg.value >= 0
                                if msg.value:
                                    require msg.value
                                    require rate * msg.value / msg.value == rate
                                require (rate * msg.value) + (stor9 * msg.value) >= stor9 * msg.value
                                require (rate * msg.value) + (stor9 * msg.value) <= stor25
                                stor25 = stor25 - (rate * msg.value) - (stor9 * msg.value)
                                require (rate * msg.value) + (stor9 * msg.value) <= publicSupply
                                publicSupply = publicSupply - (rate * msg.value) - (stor9 * msg.value)
                                require msg.value + stor13 >= stor13
                                stor13 += msg.value
                                require ext_code.size(tokenAddress)
                                call tokenAddress.0x40c10f19 with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (rate * msg.value) + (stor9 * msg.value)
                                require ext_call.success
                                emit TokenPurchase(msg.value, (rate * msg.value) + (stor9 * msg.value), msg.sender, msg.sender);
                            else:
                                if block.timestamp >= stor17:
                                    if msg.value:
                                        require msg.value
                                        require rate * msg.value / msg.value == rate
                                    require rate * msg.value >= 0
                                    require rate * msg.value <= stor25
                                    stor25 += -1 * rate * msg.value
                                    require rate * msg.value <= publicSupply
                                    publicSupply += -1 * rate * msg.value
                                    require msg.value + stor13 >= stor13
                                    stor13 += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, rate * msg.value
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, rate * msg.value, msg.sender, msg.sender);
                                else:
                                    if msg.value:
                                        require msg.value
                                        require stor10 * msg.value / msg.value == stor10
                                    require stor10 * msg.value >= 0
                                    if msg.value:
                                        require msg.value
                                        require rate * msg.value / msg.value == rate
                                    require (rate * msg.value) + (stor10 * msg.value) >= stor10 * msg.value
                                    require (rate * msg.value) + (stor10 * msg.value) <= stor25
                                    stor25 = stor25 - (rate * msg.value) - (stor10 * msg.value)
                                    require (rate * msg.value) + (stor10 * msg.value) <= publicSupply
                                    publicSupply = publicSupply - (rate * msg.value) - (stor10 * msg.value)
                                    require msg.value + stor13 >= stor13
                                    stor13 += msg.value
                                    require ext_code.size(tokenAddress)
                                    call tokenAddress.0x40c10f19 with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (rate * msg.value) + (stor10 * msg.value)
                                    require ext_call.success
                                    emit TokenPurchase(msg.value, (rate * msg.value) + (stor10 * msg.value), msg.sender, msg.sender);
    require ext_code.size(vaultAddress)
    call vaultAddress.deposit(address rg1) with:
       value msg.value wei
         gas gas_remaining - 9710 wei
        args msg.sender
    require ext_call.success
}



}
