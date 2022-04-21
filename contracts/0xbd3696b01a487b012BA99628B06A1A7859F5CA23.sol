contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor2 = 18
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[3750 len 20]
    stor3 = code.data[3770 len 32]
    require stor0 == msg.sender
    if code.data[3802 len 32]:
        stor5 = code.data[3802 len 32]
    else:
        stor5 = block.timestamp
    stor4 = stor5 + (2016 * 24 * 3600)
    stor6 = 0
    stor7 = 0
    stor8 = 24500000 * 10^stor2
    return code.data[243 len 3495]
}



// =====================  Runtime code  =====================


const centToken = 20


address owner;
address tokenContractAddress;
uint256 decimals;
uint256 tokenValue;
uint256 endTime;
uint256 startTime;
uint256 totalSoldTokensWithBonus;
uint256 totalSoldTokensWithoutBonus;
uint256 remainingTokens;
mapping of address ambassador;
address updaterAddress;

function tokenValue() {
    return tokenValue
}

function decimals() {
    return decimals
}

function endTime() {
    return endTime
}

function tokenContract() {
    return tokenContractAddress
}

function totalSoldTokensWithBonus() {
    return totalSoldTokensWithBonus
}

function ambassadorAddressOf(address arg1) {
    return ambassador[arg1]
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function totalSoldTokensWithoutBonus() {
    return totalSoldTokensWithoutBonus
}

function remainingTokens() {
    return remainingTokens
}

function updater() {
    return updaterAddress
}

function updateUpdater(address arg1) {
    require owner == msg.sender
    updaterAddress = arg1
}

function updateTokenContract(address arg1) {
    require owner == msg.sender
    tokenContractAddress = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updateTime(uint256 arg1, uint256 arg2) {
    require owner == msg.sender
    if arg1:
        startTime = arg1
    if arg2:
        endTime = arg2
}

function updateValue(uint256 arg1) {
    if updaterAddress != msg.sender:
        require owner == msg.sender
    tokenValue = arg1
    emit UpdateValue(arg1);
}

function addMeByRC(address arg1) {
    require owner == tx.origin
    ambassador[address(msg.sender)] = arg1
    emit NewAmbassador(address(arg1), msg.sender);
}

function withdraw(address arg1, uint256 arg2) {
    require owner == msg.sender
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function startICO(uint256 arg1) {
    require owner == msg.sender
    if arg1:
        startTime = arg1
    else:
        startTime = block.timestamp
    endTime = startTime + (2016 * 24 * 3600)
}

function updateTimeRC(address arg1, uint256 arg2, uint256 arg3) {
    require owner == msg.sender
    require ext_code.size(arg1)
    call arg1.0x21f1b677 with:
         gas gas_remaining - 710 wei
        args arg2, arg3
    require ext_call.success
}

function euroRaised(uint256 arg1) {
    if not arg1:
        if 10^decimals:
            return (20 * arg1 / 100 / 10^decimals)
    else:
        if arg1:
            if 20 * arg1 / arg1 == 20:
                if 10^decimals:
                    return (20 * arg1 / 100 / 10^decimals)
    revert
}

function withdrawTokens(address arg1, uint256 arg2) {
    require owner == msg.sender
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function claimPremium(address arg1, uint256 arg2) {
    require ambassador[address(msg.sender)]
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function euroRaisedICO() {
    if not totalSoldTokensWithoutBonus:
        if 10^decimals:
            return (20 * totalSoldTokensWithoutBonus / 100 / 10^decimals)
    else:
        if totalSoldTokensWithoutBonus:
            if 20 * totalSoldTokensWithoutBonus / totalSoldTokensWithoutBonus == 20:
                if 10^decimals:
                    return (20 * totalSoldTokensWithoutBonus / 100 / 10^decimals)
    revert
}

function buy(address arg1) payable {
    require block.timestamp < endTime
    require remainingTokens > 0
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > remainingTokens
    if msg.value:
        require msg.value
        require 10^decimals * msg.value / msg.value == 10^decimals
    require tokenValue
    if ambassador[address(msg.sender)]:
        if remainingTokens >= 10^decimals * msg.value / tokenValue:
            require 10^decimals * msg.value / tokenValue <= remainingTokens
            remainingTokens -= 10^decimals * msg.value / tokenValue
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if 10^decimals * msg.value / tokenValue:
                require 10^decimals * msg.value / tokenValue
                require not 0 / 10^decimals * msg.value / tokenValue
            require 10^decimals * msg.value / tokenValue >= 10^decimals * msg.value / tokenValue
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), 10^decimals * msg.value / tokenValue
            require ext_call.success
            emit Buy(address(arg1), 10^decimals * msg.value / tokenValue, msg.sender);
            totalSoldTokensWithBonus += 10^decimals * msg.value / tokenValue
            totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
            return (10^decimals * msg.value / tokenValue)
        if (10^decimals * msg.value / tokenValue) - remainingTokens:
            require (10^decimals * msg.value / tokenValue) - remainingTokens
            require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
        require 10^decimals
        call owner with:
           value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        remainingTokens = 0
        call arg1 with:
           value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
             gas 2300 * is_zero(value) wei
        if remainingTokens:
            require remainingTokens
            require not 0 / remainingTokens
        require remainingTokens >= remainingTokens
        require ext_code.size(tokenContractAddress)
        call tokenContractAddress.0xa9059cbb with:
             gas gas_remaining - 710 wei
            args address(arg1), remainingTokens
        require ext_call.success
        emit Buy(address(arg1), remainingTokens, msg.sender);
        totalSoldTokensWithBonus += remainingTokens
    else:
        require block.timestamp > startTime
        if block.timestamp <= startTime + (168 * 24 * 3600):
            if remainingTokens >= 10^decimals * msg.value / tokenValue:
                require 10^decimals * msg.value / tokenValue <= remainingTokens
                remainingTokens -= 10^decimals * msg.value / tokenValue
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                if 10^decimals * msg.value / tokenValue:
                    require 10^decimals * msg.value / tokenValue
                    require 2000 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 2000
                require (2000 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (2000 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                require ext_call.success
                emit Buy(address rg1, uint256 rg2, address rg3):
                         address(arg1),
                         (2000 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                emit 0x0: address(arg1), (2000 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                totalSoldTokensWithBonus = totalSoldTokensWithBonus + (2000 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                return (10^decimals * msg.value / tokenValue)
            if (10^decimals * msg.value / tokenValue) - remainingTokens:
                require (10^decimals * msg.value / tokenValue) - remainingTokens
                require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
            require 10^decimals
            call owner with:
               value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            remainingTokens = 0
            call arg1 with:
               value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                 gas 2300 * is_zero(value) wei
            if remainingTokens:
                require remainingTokens
                require 2000 * remainingTokens / remainingTokens == 2000
            require (2000 * remainingTokens / 10000) + remainingTokens >= remainingTokens
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg1), (2000 * remainingTokens / 10000) + remainingTokens
            require ext_call.success
            emit Buy(address rg1, uint256 rg2, address rg3):
                     address(arg1),
                     (2000 * remainingTokens / 10000) + remainingTokens,
            emit 0x0: address(arg1), (2000 * remainingTokens / 10000) + remainingTokens
            totalSoldTokensWithBonus = totalSoldTokensWithBonus + (2000 * remainingTokens / 10000) + remainingTokens
        else:
            if block.timestamp <= startTime + (336 * 24 * 3600):
                if remainingTokens >= 10^decimals * msg.value / tokenValue:
                    require 10^decimals * msg.value / tokenValue <= remainingTokens
                    remainingTokens -= 10^decimals * msg.value / tokenValue
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if 10^decimals * msg.value / tokenValue:
                        require 10^decimals * msg.value / tokenValue
                        require 1833 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 1833
                    require (1833 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), (1833 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                    require ext_call.success
                    emit Buy(address rg1, uint256 rg2, address rg3):
                             address(arg1),
                             (1833 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                    emit 0x0: address(arg1), (1833 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                    totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1833 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                    totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                    return (10^decimals * msg.value / tokenValue)
                if (10^decimals * msg.value / tokenValue) - remainingTokens:
                    require (10^decimals * msg.value / tokenValue) - remainingTokens
                    require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                require 10^decimals
                call owner with:
                   value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                remainingTokens = 0
                call arg1 with:
                   value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                     gas 2300 * is_zero(value) wei
                if remainingTokens:
                    require remainingTokens
                    require 1833 * remainingTokens / remainingTokens == 1833
                require (1833 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args address(arg1), (1833 * remainingTokens / 10000) + remainingTokens
                require ext_call.success
                emit Buy(address rg1, uint256 rg2, address rg3):
                         address(arg1),
                         (1833 * remainingTokens / 10000) + remainingTokens,
                emit 0x0: address(arg1), (1833 * remainingTokens / 10000) + remainingTokens
                totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1833 * remainingTokens / 10000) + remainingTokens
            else:
                if block.timestamp <= startTime + (504 * 24 * 3600):
                    if remainingTokens >= 10^decimals * msg.value / tokenValue:
                        require 10^decimals * msg.value / tokenValue <= remainingTokens
                        remainingTokens -= 10^decimals * msg.value / tokenValue
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if 10^decimals * msg.value / tokenValue:
                            require 10^decimals * msg.value / tokenValue
                            require 1667 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 1667
                        require (1667 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), (1667 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                        require ext_call.success
                        emit Buy(address rg1, uint256 rg2, address rg3):
                                 address(arg1),
                                 (1667 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                        emit 0x0: address(arg1), (1667 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                        totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1667 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                        totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                        return (10^decimals * msg.value / tokenValue)
                    if (10^decimals * msg.value / tokenValue) - remainingTokens:
                        require (10^decimals * msg.value / tokenValue) - remainingTokens
                        require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                    require 10^decimals
                    call owner with:
                       value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    remainingTokens = 0
                    call arg1 with:
                       value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                         gas 2300 * is_zero(value) wei
                    if remainingTokens:
                        require remainingTokens
                        require 1667 * remainingTokens / remainingTokens == 1667
                    require (1667 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args address(arg1), (1667 * remainingTokens / 10000) + remainingTokens
                    require ext_call.success
                    emit Buy(address rg1, uint256 rg2, address rg3):
                             address(arg1),
                             (1667 * remainingTokens / 10000) + remainingTokens,
                    emit 0x0: address(arg1), (1667 * remainingTokens / 10000) + remainingTokens
                    totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1667 * remainingTokens / 10000) + remainingTokens
                else:
                    if block.timestamp <= startTime + (672 * 24 * 3600):
                        if remainingTokens >= 10^decimals * msg.value / tokenValue:
                            require 10^decimals * msg.value / tokenValue <= remainingTokens
                            remainingTokens -= 10^decimals * msg.value / tokenValue
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            if 10^decimals * msg.value / tokenValue:
                                require 10^decimals * msg.value / tokenValue
                                require 1500 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 1500
                            require (1500 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), (1500 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                            require ext_call.success
                            emit Buy(address rg1, uint256 rg2, address rg3):
                                     address(arg1),
                                     (1500 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                            emit 0x0: address(arg1), (1500 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                            totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1500 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                            totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                            return (10^decimals * msg.value / tokenValue)
                        if (10^decimals * msg.value / tokenValue) - remainingTokens:
                            require (10^decimals * msg.value / tokenValue) - remainingTokens
                            require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                        require 10^decimals
                        call owner with:
                           value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        remainingTokens = 0
                        call arg1 with:
                           value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                             gas 2300 * is_zero(value) wei
                        if remainingTokens:
                            require remainingTokens
                            require 1500 * remainingTokens / remainingTokens == 1500
                        require (1500 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args address(arg1), (1500 * remainingTokens / 10000) + remainingTokens
                        require ext_call.success
                        emit Buy(address rg1, uint256 rg2, address rg3):
                                 address(arg1),
                                 (1500 * remainingTokens / 10000) + remainingTokens,
                        emit 0x0: address(arg1), (1500 * remainingTokens / 10000) + remainingTokens
                        totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1500 * remainingTokens / 10000) + remainingTokens
                    else:
                        if block.timestamp <= startTime + (840 * 24 * 3600):
                            if remainingTokens >= 10^decimals * msg.value / tokenValue:
                                require 10^decimals * msg.value / tokenValue <= remainingTokens
                                remainingTokens -= 10^decimals * msg.value / tokenValue
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                if 10^decimals * msg.value / tokenValue:
                                    require 10^decimals * msg.value / tokenValue
                                    require 1333 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 1333
                                require (1333 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), (1333 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                require ext_call.success
                                emit Buy(address rg1, uint256 rg2, address rg3):
                                         address(arg1),
                                         (1333 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                                emit 0x0: address(arg1), (1333 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1333 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                                return (10^decimals * msg.value / tokenValue)
                            if (10^decimals * msg.value / tokenValue) - remainingTokens:
                                require (10^decimals * msg.value / tokenValue) - remainingTokens
                                require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                            require 10^decimals
                            call owner with:
                               value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            remainingTokens = 0
                            call arg1 with:
                               value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                                 gas 2300 * is_zero(value) wei
                            if remainingTokens:
                                require remainingTokens
                                require 1333 * remainingTokens / remainingTokens == 1333
                            require (1333 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args address(arg1), (1333 * remainingTokens / 10000) + remainingTokens
                            require ext_call.success
                            emit Buy(address rg1, uint256 rg2, address rg3):
                                     address(arg1),
                                     (1333 * remainingTokens / 10000) + remainingTokens,
                            emit 0x0: address(arg1), (1333 * remainingTokens / 10000) + remainingTokens
                            totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1333 * remainingTokens / 10000) + remainingTokens
                        else:
                            if block.timestamp <= startTime + (1008 * 24 * 3600):
                                if remainingTokens >= 10^decimals * msg.value / tokenValue:
                                    require 10^decimals * msg.value / tokenValue <= remainingTokens
                                    remainingTokens -= 10^decimals * msg.value / tokenValue
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    if 10^decimals * msg.value / tokenValue:
                                        require 10^decimals * msg.value / tokenValue
                                        require 1167 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 1167
                                    require (1167 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), (1167 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                    require ext_call.success
                                    emit Buy(address rg1, uint256 rg2, address rg3):
                                             address(arg1),
                                             (1167 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                                    emit 0x0: address(arg1), (1167 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                    totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1167 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                    totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                                    return (10^decimals * msg.value / tokenValue)
                                if (10^decimals * msg.value / tokenValue) - remainingTokens:
                                    require (10^decimals * msg.value / tokenValue) - remainingTokens
                                    require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                                require 10^decimals
                                call owner with:
                                   value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                remainingTokens = 0
                                call arg1 with:
                                   value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                                     gas 2300 * is_zero(value) wei
                                if remainingTokens:
                                    require remainingTokens
                                    require 1167 * remainingTokens / remainingTokens == 1167
                                require (1167 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args address(arg1), (1167 * remainingTokens / 10000) + remainingTokens
                                require ext_call.success
                                emit Buy(address rg1, uint256 rg2, address rg3):
                                         address(arg1),
                                         (1167 * remainingTokens / 10000) + remainingTokens,
                                emit 0x0: address(arg1), (1167 * remainingTokens / 10000) + remainingTokens
                                totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1167 * remainingTokens / 10000) + remainingTokens
                            else:
                                if block.timestamp <= startTime + (1176 * 24 * 3600):
                                    if remainingTokens >= 10^decimals * msg.value / tokenValue:
                                        require 10^decimals * msg.value / tokenValue <= remainingTokens
                                        remainingTokens -= 10^decimals * msg.value / tokenValue
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        if 10^decimals * msg.value / tokenValue:
                                            require 10^decimals * msg.value / tokenValue
                                            require 1000 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 1000
                                        require (1000 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), (1000 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                        require ext_call.success
                                        emit Buy(address rg1, uint256 rg2, address rg3):
                                                 address(arg1),
                                                 (1000 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                                        emit 0x0: address(arg1), (1000 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                        totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1000 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                        totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                                        return (10^decimals * msg.value / tokenValue)
                                    if (10^decimals * msg.value / tokenValue) - remainingTokens:
                                        require (10^decimals * msg.value / tokenValue) - remainingTokens
                                        require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                                    require 10^decimals
                                    call owner with:
                                       value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    remainingTokens = 0
                                    call arg1 with:
                                       value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                                         gas 2300 * is_zero(value) wei
                                    if remainingTokens:
                                        require remainingTokens
                                        require 1000 * remainingTokens / remainingTokens == 1000
                                    require (1000 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args address(arg1), (1000 * remainingTokens / 10000) + remainingTokens
                                    require ext_call.success
                                    emit Buy(address rg1, uint256 rg2, address rg3):
                                             address(arg1),
                                             (1000 * remainingTokens / 10000) + remainingTokens,
                                    emit 0x0: address(arg1), (1000 * remainingTokens / 10000) + remainingTokens
                                    totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1000 * remainingTokens / 10000) + remainingTokens
                                else:
                                    if block.timestamp <= startTime + (1344 * 24 * 3600):
                                        if remainingTokens >= 10^decimals * msg.value / tokenValue:
                                            require 10^decimals * msg.value / tokenValue <= remainingTokens
                                            remainingTokens -= 10^decimals * msg.value / tokenValue
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            if 10^decimals * msg.value / tokenValue:
                                                require 10^decimals * msg.value / tokenValue
                                                require 833 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 833
                                            require (833 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                                            require ext_code.size(tokenContractAddress)
                                            call tokenContractAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), (833 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                            require ext_call.success
                                            emit Buy(address rg1, uint256 rg2, address rg3):
                                                     address(arg1),
                                                     (833 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                                            emit 0x0: address(arg1), (833 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                            totalSoldTokensWithBonus = totalSoldTokensWithBonus + (833 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                            totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                                            return (10^decimals * msg.value / tokenValue)
                                        if (10^decimals * msg.value / tokenValue) - remainingTokens:
                                            require (10^decimals * msg.value / tokenValue) - remainingTokens
                                            require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                                        require 10^decimals
                                        call owner with:
                                           value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        remainingTokens = 0
                                        call arg1 with:
                                           value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                                             gas 2300 * is_zero(value) wei
                                        if remainingTokens:
                                            require remainingTokens
                                            require 833 * remainingTokens / remainingTokens == 833
                                        require (833 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args address(arg1), (833 * remainingTokens / 10000) + remainingTokens
                                        require ext_call.success
                                        emit Buy(address rg1, uint256 rg2, address rg3):
                                                 address(arg1),
                                                 (833 * remainingTokens / 10000) + remainingTokens,
                                        emit 0x0: address(arg1), (833 * remainingTokens / 10000) + remainingTokens
                                        totalSoldTokensWithBonus = totalSoldTokensWithBonus + (833 * remainingTokens / 10000) + remainingTokens
                                    else:
                                        if block.timestamp <= startTime + (1512 * 24 * 3600):
                                            if remainingTokens >= 10^decimals * msg.value / tokenValue:
                                                require 10^decimals * msg.value / tokenValue <= remainingTokens
                                                remainingTokens -= 10^decimals * msg.value / tokenValue
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                if 10^decimals * msg.value / tokenValue:
                                                    require 10^decimals * msg.value / tokenValue
                                                    require 667 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 667
                                                require (667 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                                                require ext_code.size(tokenContractAddress)
                                                call tokenContractAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), (667 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                require ext_call.success
                                                emit Buy(address rg1, uint256 rg2, address rg3):
                                                         address(arg1),
                                                         (667 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                                                emit 0x0: address(arg1), (667 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                totalSoldTokensWithBonus = totalSoldTokensWithBonus + (667 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                                                return (10^decimals * msg.value / tokenValue)
                                            if (10^decimals * msg.value / tokenValue) - remainingTokens:
                                                require (10^decimals * msg.value / tokenValue) - remainingTokens
                                                require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                                            require 10^decimals
                                            call owner with:
                                               value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            remainingTokens = 0
                                            call arg1 with:
                                               value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                                                 gas 2300 * is_zero(value) wei
                                            if remainingTokens:
                                                require remainingTokens
                                                require 667 * remainingTokens / remainingTokens == 667
                                            require (667 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                                            require ext_code.size(tokenContractAddress)
                                            call tokenContractAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args address(arg1), (667 * remainingTokens / 10000) + remainingTokens
                                            require ext_call.success
                                            emit Buy(address rg1, uint256 rg2, address rg3):
                                                     address(arg1),
                                                     (667 * remainingTokens / 10000) + remainingTokens,
                                            emit 0x0: address(arg1), (667 * remainingTokens / 10000) + remainingTokens
                                            totalSoldTokensWithBonus = totalSoldTokensWithBonus + (667 * remainingTokens / 10000) + remainingTokens
                                        else:
                                            if block.timestamp <= startTime + (1680 * 24 * 3600):
                                                if remainingTokens >= 10^decimals * msg.value / tokenValue:
                                                    require 10^decimals * msg.value / tokenValue <= remainingTokens
                                                    remainingTokens -= 10^decimals * msg.value / tokenValue
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    if 10^decimals * msg.value / tokenValue:
                                                        require 10^decimals * msg.value / tokenValue
                                                        require 500 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 500
                                                    require (500 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                                                    require ext_code.size(tokenContractAddress)
                                                    call tokenContractAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), (500 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                    require ext_call.success
                                                    emit Buy(address rg1, uint256 rg2, address rg3):
                                                             address(arg1),
                                                             (500 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                                                    emit 0x0: address(arg1), (500 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                    totalSoldTokensWithBonus = totalSoldTokensWithBonus + (500 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                    totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                                                    return (10^decimals * msg.value / tokenValue)
                                                if (10^decimals * msg.value / tokenValue) - remainingTokens:
                                                    require (10^decimals * msg.value / tokenValue) - remainingTokens
                                                    require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                                                require 10^decimals
                                                call owner with:
                                                   value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                remainingTokens = 0
                                                call arg1 with:
                                                   value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                                                     gas 2300 * is_zero(value) wei
                                                if remainingTokens:
                                                    require remainingTokens
                                                    require 500 * remainingTokens / remainingTokens == 500
                                                require (500 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                                                require ext_code.size(tokenContractAddress)
                                                call tokenContractAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args address(arg1), (500 * remainingTokens / 10000) + remainingTokens
                                                require ext_call.success
                                                emit Buy(address rg1, uint256 rg2, address rg3):
                                                         address(arg1),
                                                         (500 * remainingTokens / 10000) + remainingTokens,
                                                emit 0x0: address(arg1), (500 * remainingTokens / 10000) + remainingTokens
                                                totalSoldTokensWithBonus = totalSoldTokensWithBonus + (500 * remainingTokens / 10000) + remainingTokens
                                            else:
                                                if block.timestamp <= startTime + (1848 * 24 * 3600):
                                                    if remainingTokens >= 10^decimals * msg.value / tokenValue:
                                                        require 10^decimals * msg.value / tokenValue <= remainingTokens
                                                        remainingTokens -= 10^decimals * msg.value / tokenValue
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        if 10^decimals * msg.value / tokenValue:
                                                            require 10^decimals * msg.value / tokenValue
                                                            require 333 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 333
                                                        require (333 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                                                        require ext_code.size(tokenContractAddress)
                                                        call tokenContractAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), (333 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                        require ext_call.success
                                                        emit Buy(address rg1, uint256 rg2, address rg3):
                                                                 address(arg1),
                                                                 (333 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                                                        emit 0x0: address(arg1), (333 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                        totalSoldTokensWithBonus = totalSoldTokensWithBonus + (333 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                        totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                                                        return (10^decimals * msg.value / tokenValue)
                                                    if (10^decimals * msg.value / tokenValue) - remainingTokens:
                                                        require (10^decimals * msg.value / tokenValue) - remainingTokens
                                                        require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                                                    require 10^decimals
                                                    call owner with:
                                                       value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    remainingTokens = 0
                                                    call arg1 with:
                                                       value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                                                         gas 2300 * is_zero(value) wei
                                                    if remainingTokens:
                                                        require remainingTokens
                                                        require 333 * remainingTokens / remainingTokens == 333
                                                    require (333 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                                                    require ext_code.size(tokenContractAddress)
                                                    call tokenContractAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args address(arg1), (333 * remainingTokens / 10000) + remainingTokens
                                                    require ext_call.success
                                                    emit Buy(address rg1, uint256 rg2, address rg3):
                                                             address(arg1),
                                                             (333 * remainingTokens / 10000) + remainingTokens,
                                                    emit 0x0: address(arg1), (333 * remainingTokens / 10000) + remainingTokens
                                                    totalSoldTokensWithBonus = totalSoldTokensWithBonus + (333 * remainingTokens / 10000) + remainingTokens
                                                else:
                                                    if block.timestamp <= startTime + (2016 * 24 * 3600):
                                                        if remainingTokens >= 10^decimals * msg.value / tokenValue:
                                                            require 10^decimals * msg.value / tokenValue <= remainingTokens
                                                            remainingTokens -= 10^decimals * msg.value / tokenValue
                                                            call owner with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            if 10^decimals * msg.value / tokenValue:
                                                                require 10^decimals * msg.value / tokenValue
                                                                require 167 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 167
                                                            require (167 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                                                            require ext_code.size(tokenContractAddress)
                                                            call tokenContractAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(arg1), (167 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                            require ext_call.success
                                                            emit Buy(address rg1, uint256 rg2, address rg3):
                                                                     address(arg1),
                                                                     (167 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                                                            emit 0x0: address(arg1), (167 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                            totalSoldTokensWithBonus = totalSoldTokensWithBonus + (167 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                            totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                                                            return (10^decimals * msg.value / tokenValue)
                                                        if (10^decimals * msg.value / tokenValue) - remainingTokens:
                                                            require (10^decimals * msg.value / tokenValue) - remainingTokens
                                                            require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                                                        require 10^decimals
                                                        call owner with:
                                                           value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        remainingTokens = 0
                                                        call arg1 with:
                                                           value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                                                             gas 2300 * is_zero(value) wei
                                                        if remainingTokens:
                                                            require remainingTokens
                                                            require 167 * remainingTokens / remainingTokens == 167
                                                        require (167 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                                                        require ext_code.size(tokenContractAddress)
                                                        call tokenContractAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), (167 * remainingTokens / 10000) + remainingTokens
                                                        require ext_call.success
                                                        emit Buy(address rg1, uint256 rg2, address rg3):
                                                                 address(arg1),
                                                                 (167 * remainingTokens / 10000) + remainingTokens,
                                                        emit 0x0: address(arg1), (167 * remainingTokens / 10000) + remainingTokens
                                                        totalSoldTokensWithBonus = totalSoldTokensWithBonus + (167 * remainingTokens / 10000) + remainingTokens
                                                    else:
                                                        if remainingTokens >= 10^decimals * msg.value / tokenValue:
                                                            require 10^decimals * msg.value / tokenValue <= remainingTokens
                                                            remainingTokens -= 10^decimals * msg.value / tokenValue
                                                            call owner with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            if 10^decimals * msg.value / tokenValue:
                                                                require 10^decimals * msg.value / tokenValue
                                                                require not 0 / 10^decimals * msg.value / tokenValue
                                                            require 10^decimals * msg.value / tokenValue >= 10^decimals * msg.value / tokenValue
                                                            require ext_code.size(tokenContractAddress)
                                                            call tokenContractAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args address(arg1), 10^decimals * msg.value / tokenValue
                                                            require ext_call.success
                                                            emit Buy(address rg1, uint256 rg2, address rg3):
                                                                     address(arg1),
                                                                     10^decimals * msg.value / tokenValue,
                                                            emit 0x0: address(arg1), 10^decimals * msg.value / tokenValue
                                                            totalSoldTokensWithBonus += 10^decimals * msg.value / tokenValue
                                                            totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                                                            return (10^decimals * msg.value / tokenValue)
                                                        if (10^decimals * msg.value / tokenValue) - remainingTokens:
                                                            require (10^decimals * msg.value / tokenValue) - remainingTokens
                                                            require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                                                        require 10^decimals
                                                        call owner with:
                                                           value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        remainingTokens = 0
                                                        call arg1 with:
                                                           value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                                                             gas 2300 * is_zero(value) wei
                                                        if remainingTokens:
                                                            require remainingTokens
                                                            require not 0 / remainingTokens
                                                        require remainingTokens >= remainingTokens
                                                        require ext_code.size(tokenContractAddress)
                                                        call tokenContractAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args address(arg1), remainingTokens
                                                        require ext_call.success
                                                        emit Buy(address rg1, uint256 rg2, address rg3):
                                                                 address(arg1),
                                                                 remainingTokens,
                                                        emit 0x0: address(arg1), remainingTokens
                                                        totalSoldTokensWithBonus += remainingTokens
    totalSoldTokensWithoutBonus += remainingTokens
    return remainingTokens
}

function _fallback() payable {
    require block.timestamp < endTime
    require remainingTokens > 0
    require ext_code.size(tokenContractAddress)
    call tokenContractAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_call.return_data[0] > remainingTokens
    if msg.value:
        require msg.value
        require 10^decimals * msg.value / msg.value == 10^decimals
    require tokenValue
    if ambassador[address(msg.sender)]:
        if remainingTokens >= 10^decimals * msg.value / tokenValue:
            require 10^decimals * msg.value / tokenValue <= remainingTokens
            remainingTokens -= 10^decimals * msg.value / tokenValue
            call owner with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            if 10^decimals * msg.value / tokenValue:
                require 10^decimals * msg.value / tokenValue
                require not 0 / 10^decimals * msg.value / tokenValue
            require 10^decimals * msg.value / tokenValue >= 10^decimals * msg.value / tokenValue
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, 10^decimals * msg.value / tokenValue
            require ext_call.success
            emit Buy(msg.sender, 10^decimals * msg.value / tokenValue, msg.sender);
            totalSoldTokensWithBonus += 10^decimals * msg.value / tokenValue
            totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
        else:
            if (10^decimals * msg.value / tokenValue) - remainingTokens:
                require (10^decimals * msg.value / tokenValue) - remainingTokens
                require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
            require 10^decimals
            call owner with:
               value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            remainingTokens = 0
            call msg.sender with:
               value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                 gas 2300 * is_zero(value) wei
            if remainingTokens:
                require remainingTokens
                require not 0 / remainingTokens
            require remainingTokens >= remainingTokens
            require ext_code.size(tokenContractAddress)
            call tokenContractAddress.0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args msg.sender, remainingTokens
            require ext_call.success
            emit Buy(msg.sender, remainingTokens, msg.sender);
            totalSoldTokensWithBonus += remainingTokens
            totalSoldTokensWithoutBonus += remainingTokens
    else:
        require block.timestamp > startTime
        if block.timestamp <= startTime + (168 * 24 * 3600):
            if remainingTokens >= 10^decimals * msg.value / tokenValue:
                require 10^decimals * msg.value / tokenValue <= remainingTokens
                remainingTokens -= 10^decimals * msg.value / tokenValue
                call owner with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                if 10^decimals * msg.value / tokenValue:
                    require 10^decimals * msg.value / tokenValue
                    require 2000 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 2000
                require (2000 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (2000 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                require ext_call.success
                emit Buy(address rg1, uint256 rg2, address rg3):
                         msg.sender,
                         (2000 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                emit 0x0: msg.sender, (2000 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                totalSoldTokensWithBonus = totalSoldTokensWithBonus + (2000 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
            else:
                if (10^decimals * msg.value / tokenValue) - remainingTokens:
                    require (10^decimals * msg.value / tokenValue) - remainingTokens
                    require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                require 10^decimals
                call owner with:
                   value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                remainingTokens = 0
                call msg.sender with:
                   value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                     gas 2300 * is_zero(value) wei
                if remainingTokens:
                    require remainingTokens
                    require 2000 * remainingTokens / remainingTokens == 2000
                require (2000 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                require ext_code.size(tokenContractAddress)
                call tokenContractAddress.0xa9059cbb with:
                     gas gas_remaining - 710 wei
                    args msg.sender, (2000 * remainingTokens / 10000) + remainingTokens
                require ext_call.success
                emit Buy(address rg1, uint256 rg2, address rg3):
                         msg.sender,
                         (2000 * remainingTokens / 10000) + remainingTokens,
                emit 0x0: msg.sender, (2000 * remainingTokens / 10000) + remainingTokens
                totalSoldTokensWithBonus = totalSoldTokensWithBonus + (2000 * remainingTokens / 10000) + remainingTokens
                totalSoldTokensWithoutBonus += remainingTokens
        else:
            if block.timestamp <= startTime + (336 * 24 * 3600):
                if remainingTokens >= 10^decimals * msg.value / tokenValue:
                    require 10^decimals * msg.value / tokenValue <= remainingTokens
                    remainingTokens -= 10^decimals * msg.value / tokenValue
                    call owner with:
                       value msg.value wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    if 10^decimals * msg.value / tokenValue:
                        require 10^decimals * msg.value / tokenValue
                        require 1833 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 1833
                    require (1833 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (1833 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                    require ext_call.success
                    emit Buy(address rg1, uint256 rg2, address rg3):
                             msg.sender,
                             (1833 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                    emit 0x0: msg.sender, (1833 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                    totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1833 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                    totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                else:
                    if (10^decimals * msg.value / tokenValue) - remainingTokens:
                        require (10^decimals * msg.value / tokenValue) - remainingTokens
                        require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                    require 10^decimals
                    call owner with:
                       value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                         gas 2300 * is_zero(value) wei
                    require ext_call.success
                    remainingTokens = 0
                    call msg.sender with:
                       value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                         gas 2300 * is_zero(value) wei
                    if remainingTokens:
                        require remainingTokens
                        require 1833 * remainingTokens / remainingTokens == 1833
                    require (1833 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                    require ext_code.size(tokenContractAddress)
                    call tokenContractAddress.0xa9059cbb with:
                         gas gas_remaining - 710 wei
                        args msg.sender, (1833 * remainingTokens / 10000) + remainingTokens
                    require ext_call.success
                    emit Buy(address rg1, uint256 rg2, address rg3):
                             msg.sender,
                             (1833 * remainingTokens / 10000) + remainingTokens,
                    emit 0x0: msg.sender, (1833 * remainingTokens / 10000) + remainingTokens
                    totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1833 * remainingTokens / 10000) + remainingTokens
                    totalSoldTokensWithoutBonus += remainingTokens
            else:
                if block.timestamp <= startTime + (504 * 24 * 3600):
                    if remainingTokens >= 10^decimals * msg.value / tokenValue:
                        require 10^decimals * msg.value / tokenValue <= remainingTokens
                        remainingTokens -= 10^decimals * msg.value / tokenValue
                        call owner with:
                           value msg.value wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        if 10^decimals * msg.value / tokenValue:
                            require 10^decimals * msg.value / tokenValue
                            require 1667 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 1667
                        require (1667 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (1667 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                        require ext_call.success
                        emit Buy(address rg1, uint256 rg2, address rg3):
                                 msg.sender,
                                 (1667 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                        emit 0x0: msg.sender, (1667 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                        totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1667 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                        totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                    else:
                        if (10^decimals * msg.value / tokenValue) - remainingTokens:
                            require (10^decimals * msg.value / tokenValue) - remainingTokens
                            require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                        require 10^decimals
                        call owner with:
                           value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                             gas 2300 * is_zero(value) wei
                        require ext_call.success
                        remainingTokens = 0
                        call msg.sender with:
                           value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                             gas 2300 * is_zero(value) wei
                        if remainingTokens:
                            require remainingTokens
                            require 1667 * remainingTokens / remainingTokens == 1667
                        require (1667 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                        require ext_code.size(tokenContractAddress)
                        call tokenContractAddress.0xa9059cbb with:
                             gas gas_remaining - 710 wei
                            args msg.sender, (1667 * remainingTokens / 10000) + remainingTokens
                        require ext_call.success
                        emit Buy(address rg1, uint256 rg2, address rg3):
                                 msg.sender,
                                 (1667 * remainingTokens / 10000) + remainingTokens,
                        emit 0x0: msg.sender, (1667 * remainingTokens / 10000) + remainingTokens
                        totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1667 * remainingTokens / 10000) + remainingTokens
                        totalSoldTokensWithoutBonus += remainingTokens
                else:
                    if block.timestamp <= startTime + (672 * 24 * 3600):
                        if remainingTokens >= 10^decimals * msg.value / tokenValue:
                            require 10^decimals * msg.value / tokenValue <= remainingTokens
                            remainingTokens -= 10^decimals * msg.value / tokenValue
                            call owner with:
                               value msg.value wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            if 10^decimals * msg.value / tokenValue:
                                require 10^decimals * msg.value / tokenValue
                                require 1500 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 1500
                            require (1500 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (1500 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                            require ext_call.success
                            emit Buy(address rg1, uint256 rg2, address rg3):
                                     msg.sender,
                                     (1500 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                            emit 0x0: msg.sender, (1500 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                            totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1500 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                            totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                        else:
                            if (10^decimals * msg.value / tokenValue) - remainingTokens:
                                require (10^decimals * msg.value / tokenValue) - remainingTokens
                                require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                            require 10^decimals
                            call owner with:
                               value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                                 gas 2300 * is_zero(value) wei
                            require ext_call.success
                            remainingTokens = 0
                            call msg.sender with:
                               value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                                 gas 2300 * is_zero(value) wei
                            if remainingTokens:
                                require remainingTokens
                                require 1500 * remainingTokens / remainingTokens == 1500
                            require (1500 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                            require ext_code.size(tokenContractAddress)
                            call tokenContractAddress.0xa9059cbb with:
                                 gas gas_remaining - 710 wei
                                args msg.sender, (1500 * remainingTokens / 10000) + remainingTokens
                            require ext_call.success
                            emit Buy(address rg1, uint256 rg2, address rg3):
                                     msg.sender,
                                     (1500 * remainingTokens / 10000) + remainingTokens,
                            emit 0x0: msg.sender, (1500 * remainingTokens / 10000) + remainingTokens
                            totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1500 * remainingTokens / 10000) + remainingTokens
                            totalSoldTokensWithoutBonus += remainingTokens
                    else:
                        if block.timestamp <= startTime + (840 * 24 * 3600):
                            if remainingTokens >= 10^decimals * msg.value / tokenValue:
                                require 10^decimals * msg.value / tokenValue <= remainingTokens
                                remainingTokens -= 10^decimals * msg.value / tokenValue
                                call owner with:
                                   value msg.value wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                if 10^decimals * msg.value / tokenValue:
                                    require 10^decimals * msg.value / tokenValue
                                    require 1333 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 1333
                                require (1333 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (1333 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                require ext_call.success
                                emit Buy(address rg1, uint256 rg2, address rg3):
                                         msg.sender,
                                         (1333 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                                emit 0x0: msg.sender, (1333 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1333 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                            else:
                                if (10^decimals * msg.value / tokenValue) - remainingTokens:
                                    require (10^decimals * msg.value / tokenValue) - remainingTokens
                                    require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                                require 10^decimals
                                call owner with:
                                   value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                                     gas 2300 * is_zero(value) wei
                                require ext_call.success
                                remainingTokens = 0
                                call msg.sender with:
                                   value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                                     gas 2300 * is_zero(value) wei
                                if remainingTokens:
                                    require remainingTokens
                                    require 1333 * remainingTokens / remainingTokens == 1333
                                require (1333 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                                require ext_code.size(tokenContractAddress)
                                call tokenContractAddress.0xa9059cbb with:
                                     gas gas_remaining - 710 wei
                                    args msg.sender, (1333 * remainingTokens / 10000) + remainingTokens
                                require ext_call.success
                                emit Buy(address rg1, uint256 rg2, address rg3):
                                         msg.sender,
                                         (1333 * remainingTokens / 10000) + remainingTokens,
                                emit 0x0: msg.sender, (1333 * remainingTokens / 10000) + remainingTokens
                                totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1333 * remainingTokens / 10000) + remainingTokens
                                totalSoldTokensWithoutBonus += remainingTokens
                        else:
                            if block.timestamp <= startTime + (1008 * 24 * 3600):
                                if remainingTokens >= 10^decimals * msg.value / tokenValue:
                                    require 10^decimals * msg.value / tokenValue <= remainingTokens
                                    remainingTokens -= 10^decimals * msg.value / tokenValue
                                    call owner with:
                                       value msg.value wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    if 10^decimals * msg.value / tokenValue:
                                        require 10^decimals * msg.value / tokenValue
                                        require 1167 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 1167
                                    require (1167 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (1167 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                    require ext_call.success
                                    emit Buy(address rg1, uint256 rg2, address rg3):
                                             msg.sender,
                                             (1167 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                                    emit 0x0: msg.sender, (1167 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                    totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1167 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                    totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                                else:
                                    if (10^decimals * msg.value / tokenValue) - remainingTokens:
                                        require (10^decimals * msg.value / tokenValue) - remainingTokens
                                        require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                                    require 10^decimals
                                    call owner with:
                                       value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                                         gas 2300 * is_zero(value) wei
                                    require ext_call.success
                                    remainingTokens = 0
                                    call msg.sender with:
                                       value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                                         gas 2300 * is_zero(value) wei
                                    if remainingTokens:
                                        require remainingTokens
                                        require 1167 * remainingTokens / remainingTokens == 1167
                                    require (1167 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                                    require ext_code.size(tokenContractAddress)
                                    call tokenContractAddress.0xa9059cbb with:
                                         gas gas_remaining - 710 wei
                                        args msg.sender, (1167 * remainingTokens / 10000) + remainingTokens
                                    require ext_call.success
                                    emit Buy(address rg1, uint256 rg2, address rg3):
                                             msg.sender,
                                             (1167 * remainingTokens / 10000) + remainingTokens,
                                    emit 0x0: msg.sender, (1167 * remainingTokens / 10000) + remainingTokens
                                    totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1167 * remainingTokens / 10000) + remainingTokens
                                    totalSoldTokensWithoutBonus += remainingTokens
                            else:
                                if block.timestamp <= startTime + (1176 * 24 * 3600):
                                    if remainingTokens >= 10^decimals * msg.value / tokenValue:
                                        require 10^decimals * msg.value / tokenValue <= remainingTokens
                                        remainingTokens -= 10^decimals * msg.value / tokenValue
                                        call owner with:
                                           value msg.value wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        if 10^decimals * msg.value / tokenValue:
                                            require 10^decimals * msg.value / tokenValue
                                            require 1000 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 1000
                                        require (1000 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (1000 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                        require ext_call.success
                                        emit Buy(address rg1, uint256 rg2, address rg3):
                                                 msg.sender,
                                                 (1000 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                                        emit 0x0: msg.sender, (1000 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                        totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1000 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                        totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                                    else:
                                        if (10^decimals * msg.value / tokenValue) - remainingTokens:
                                            require (10^decimals * msg.value / tokenValue) - remainingTokens
                                            require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                                        require 10^decimals
                                        call owner with:
                                           value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                                             gas 2300 * is_zero(value) wei
                                        require ext_call.success
                                        remainingTokens = 0
                                        call msg.sender with:
                                           value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                                             gas 2300 * is_zero(value) wei
                                        if remainingTokens:
                                            require remainingTokens
                                            require 1000 * remainingTokens / remainingTokens == 1000
                                        require (1000 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                                        require ext_code.size(tokenContractAddress)
                                        call tokenContractAddress.0xa9059cbb with:
                                             gas gas_remaining - 710 wei
                                            args msg.sender, (1000 * remainingTokens / 10000) + remainingTokens
                                        require ext_call.success
                                        emit Buy(address rg1, uint256 rg2, address rg3):
                                                 msg.sender,
                                                 (1000 * remainingTokens / 10000) + remainingTokens,
                                        emit 0x0: msg.sender, (1000 * remainingTokens / 10000) + remainingTokens
                                        totalSoldTokensWithBonus = totalSoldTokensWithBonus + (1000 * remainingTokens / 10000) + remainingTokens
                                        totalSoldTokensWithoutBonus += remainingTokens
                                else:
                                    if block.timestamp <= startTime + (1344 * 24 * 3600):
                                        if remainingTokens >= 10^decimals * msg.value / tokenValue:
                                            require 10^decimals * msg.value / tokenValue <= remainingTokens
                                            remainingTokens -= 10^decimals * msg.value / tokenValue
                                            call owner with:
                                               value msg.value wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            if 10^decimals * msg.value / tokenValue:
                                                require 10^decimals * msg.value / tokenValue
                                                require 833 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 833
                                            require (833 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                                            require ext_code.size(tokenContractAddress)
                                            call tokenContractAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (833 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                            require ext_call.success
                                            emit Buy(address rg1, uint256 rg2, address rg3):
                                                     msg.sender,
                                                     (833 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                                            emit 0x0: msg.sender, (833 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                            totalSoldTokensWithBonus = totalSoldTokensWithBonus + (833 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                            totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                                        else:
                                            if (10^decimals * msg.value / tokenValue) - remainingTokens:
                                                require (10^decimals * msg.value / tokenValue) - remainingTokens
                                                require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                                            require 10^decimals
                                            call owner with:
                                               value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                                                 gas 2300 * is_zero(value) wei
                                            require ext_call.success
                                            remainingTokens = 0
                                            call msg.sender with:
                                               value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                                                 gas 2300 * is_zero(value) wei
                                            if remainingTokens:
                                                require remainingTokens
                                                require 833 * remainingTokens / remainingTokens == 833
                                            require (833 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                                            require ext_code.size(tokenContractAddress)
                                            call tokenContractAddress.0xa9059cbb with:
                                                 gas gas_remaining - 710 wei
                                                args msg.sender, (833 * remainingTokens / 10000) + remainingTokens
                                            require ext_call.success
                                            emit Buy(address rg1, uint256 rg2, address rg3):
                                                     msg.sender,
                                                     (833 * remainingTokens / 10000) + remainingTokens,
                                            emit 0x0: msg.sender, (833 * remainingTokens / 10000) + remainingTokens
                                            totalSoldTokensWithBonus = totalSoldTokensWithBonus + (833 * remainingTokens / 10000) + remainingTokens
                                            totalSoldTokensWithoutBonus += remainingTokens
                                    else:
                                        if block.timestamp <= startTime + (1512 * 24 * 3600):
                                            if remainingTokens >= 10^decimals * msg.value / tokenValue:
                                                require 10^decimals * msg.value / tokenValue <= remainingTokens
                                                remainingTokens -= 10^decimals * msg.value / tokenValue
                                                call owner with:
                                                   value msg.value wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                if 10^decimals * msg.value / tokenValue:
                                                    require 10^decimals * msg.value / tokenValue
                                                    require 667 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 667
                                                require (667 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                                                require ext_code.size(tokenContractAddress)
                                                call tokenContractAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (667 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                require ext_call.success
                                                emit Buy(address rg1, uint256 rg2, address rg3):
                                                         msg.sender,
                                                         (667 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                                                emit 0x0: msg.sender, (667 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                totalSoldTokensWithBonus = totalSoldTokensWithBonus + (667 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                                            else:
                                                if (10^decimals * msg.value / tokenValue) - remainingTokens:
                                                    require (10^decimals * msg.value / tokenValue) - remainingTokens
                                                    require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                                                require 10^decimals
                                                call owner with:
                                                   value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                                                     gas 2300 * is_zero(value) wei
                                                require ext_call.success
                                                remainingTokens = 0
                                                call msg.sender with:
                                                   value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                                                     gas 2300 * is_zero(value) wei
                                                if remainingTokens:
                                                    require remainingTokens
                                                    require 667 * remainingTokens / remainingTokens == 667
                                                require (667 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                                                require ext_code.size(tokenContractAddress)
                                                call tokenContractAddress.0xa9059cbb with:
                                                     gas gas_remaining - 710 wei
                                                    args msg.sender, (667 * remainingTokens / 10000) + remainingTokens
                                                require ext_call.success
                                                emit Buy(address rg1, uint256 rg2, address rg3):
                                                         msg.sender,
                                                         (667 * remainingTokens / 10000) + remainingTokens,
                                                emit 0x0: msg.sender, (667 * remainingTokens / 10000) + remainingTokens
                                                totalSoldTokensWithBonus = totalSoldTokensWithBonus + (667 * remainingTokens / 10000) + remainingTokens
                                                totalSoldTokensWithoutBonus += remainingTokens
                                        else:
                                            if block.timestamp <= startTime + (1680 * 24 * 3600):
                                                if remainingTokens >= 10^decimals * msg.value / tokenValue:
                                                    require 10^decimals * msg.value / tokenValue <= remainingTokens
                                                    remainingTokens -= 10^decimals * msg.value / tokenValue
                                                    call owner with:
                                                       value msg.value wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    if 10^decimals * msg.value / tokenValue:
                                                        require 10^decimals * msg.value / tokenValue
                                                        require 500 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 500
                                                    require (500 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                                                    require ext_code.size(tokenContractAddress)
                                                    call tokenContractAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, (500 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                    require ext_call.success
                                                    emit Buy(address rg1, uint256 rg2, address rg3):
                                                             msg.sender,
                                                             (500 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                                                    emit 0x0: msg.sender, (500 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                    totalSoldTokensWithBonus = totalSoldTokensWithBonus + (500 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                    totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                                                else:
                                                    if (10^decimals * msg.value / tokenValue) - remainingTokens:
                                                        require (10^decimals * msg.value / tokenValue) - remainingTokens
                                                        require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                                                    require 10^decimals
                                                    call owner with:
                                                       value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                                                         gas 2300 * is_zero(value) wei
                                                    require ext_call.success
                                                    remainingTokens = 0
                                                    call msg.sender with:
                                                       value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                                                         gas 2300 * is_zero(value) wei
                                                    if remainingTokens:
                                                        require remainingTokens
                                                        require 500 * remainingTokens / remainingTokens == 500
                                                    require (500 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                                                    require ext_code.size(tokenContractAddress)
                                                    call tokenContractAddress.0xa9059cbb with:
                                                         gas gas_remaining - 710 wei
                                                        args msg.sender, (500 * remainingTokens / 10000) + remainingTokens
                                                    require ext_call.success
                                                    emit Buy(address rg1, uint256 rg2, address rg3):
                                                             msg.sender,
                                                             (500 * remainingTokens / 10000) + remainingTokens,
                                                    emit 0x0: msg.sender, (500 * remainingTokens / 10000) + remainingTokens
                                                    totalSoldTokensWithBonus = totalSoldTokensWithBonus + (500 * remainingTokens / 10000) + remainingTokens
                                                    totalSoldTokensWithoutBonus += remainingTokens
                                            else:
                                                if block.timestamp <= startTime + (1848 * 24 * 3600):
                                                    if remainingTokens >= 10^decimals * msg.value / tokenValue:
                                                        require 10^decimals * msg.value / tokenValue <= remainingTokens
                                                        remainingTokens -= 10^decimals * msg.value / tokenValue
                                                        call owner with:
                                                           value msg.value wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        if 10^decimals * msg.value / tokenValue:
                                                            require 10^decimals * msg.value / tokenValue
                                                            require 333 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 333
                                                        require (333 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                                                        require ext_code.size(tokenContractAddress)
                                                        call tokenContractAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, (333 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                        require ext_call.success
                                                        emit Buy(address rg1, uint256 rg2, address rg3):
                                                                 msg.sender,
                                                                 (333 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                                                        emit 0x0: msg.sender, (333 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                        totalSoldTokensWithBonus = totalSoldTokensWithBonus + (333 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                        totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                                                    else:
                                                        if (10^decimals * msg.value / tokenValue) - remainingTokens:
                                                            require (10^decimals * msg.value / tokenValue) - remainingTokens
                                                            require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                                                        require 10^decimals
                                                        call owner with:
                                                           value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                                                             gas 2300 * is_zero(value) wei
                                                        require ext_call.success
                                                        remainingTokens = 0
                                                        call msg.sender with:
                                                           value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                                                             gas 2300 * is_zero(value) wei
                                                        if remainingTokens:
                                                            require remainingTokens
                                                            require 333 * remainingTokens / remainingTokens == 333
                                                        require (333 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                                                        require ext_code.size(tokenContractAddress)
                                                        call tokenContractAddress.0xa9059cbb with:
                                                             gas gas_remaining - 710 wei
                                                            args msg.sender, (333 * remainingTokens / 10000) + remainingTokens
                                                        require ext_call.success
                                                        emit Buy(address rg1, uint256 rg2, address rg3):
                                                                 msg.sender,
                                                                 (333 * remainingTokens / 10000) + remainingTokens,
                                                        emit 0x0: msg.sender, (333 * remainingTokens / 10000) + remainingTokens
                                                        totalSoldTokensWithBonus = totalSoldTokensWithBonus + (333 * remainingTokens / 10000) + remainingTokens
                                                        totalSoldTokensWithoutBonus += remainingTokens
                                                else:
                                                    if block.timestamp <= startTime + (2016 * 24 * 3600):
                                                        if remainingTokens >= 10^decimals * msg.value / tokenValue:
                                                            require 10^decimals * msg.value / tokenValue <= remainingTokens
                                                            remainingTokens -= 10^decimals * msg.value / tokenValue
                                                            call owner with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            if 10^decimals * msg.value / tokenValue:
                                                                require 10^decimals * msg.value / tokenValue
                                                                require 167 * 10^decimals * msg.value / tokenValue / 10^decimals * msg.value / tokenValue == 167
                                                            require (167 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue) >= 10^decimals * msg.value / tokenValue
                                                            require ext_code.size(tokenContractAddress)
                                                            call tokenContractAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, (167 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                            require ext_call.success
                                                            emit Buy(address rg1, uint256 rg2, address rg3):
                                                                     msg.sender,
                                                                     (167 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue),
                                                            emit 0x0: msg.sender, (167 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                            totalSoldTokensWithBonus = totalSoldTokensWithBonus + (167 * 10^decimals * msg.value / tokenValue / 10000) + (10^decimals * msg.value / tokenValue)
                                                            totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                                                        else:
                                                            if (10^decimals * msg.value / tokenValue) - remainingTokens:
                                                                require (10^decimals * msg.value / tokenValue) - remainingTokens
                                                                require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                                                            require 10^decimals
                                                            call owner with:
                                                               value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            remainingTokens = 0
                                                            call msg.sender with:
                                                               value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if remainingTokens:
                                                                require remainingTokens
                                                                require 167 * remainingTokens / remainingTokens == 167
                                                            require (167 * remainingTokens / 10000) + remainingTokens >= remainingTokens
                                                            require ext_code.size(tokenContractAddress)
                                                            call tokenContractAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, (167 * remainingTokens / 10000) + remainingTokens
                                                            require ext_call.success
                                                            emit Buy(address rg1, uint256 rg2, address rg3):
                                                                     msg.sender,
                                                                     (167 * remainingTokens / 10000) + remainingTokens,
                                                            emit 0x0: msg.sender, (167 * remainingTokens / 10000) + remainingTokens
                                                            totalSoldTokensWithBonus = totalSoldTokensWithBonus + (167 * remainingTokens / 10000) + remainingTokens
                                                            totalSoldTokensWithoutBonus += remainingTokens
                                                    else:
                                                        if remainingTokens >= 10^decimals * msg.value / tokenValue:
                                                            require 10^decimals * msg.value / tokenValue <= remainingTokens
                                                            remainingTokens -= 10^decimals * msg.value / tokenValue
                                                            call owner with:
                                                               value msg.value wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            if 10^decimals * msg.value / tokenValue:
                                                                require 10^decimals * msg.value / tokenValue
                                                                require not 0 / 10^decimals * msg.value / tokenValue
                                                            require 10^decimals * msg.value / tokenValue >= 10^decimals * msg.value / tokenValue
                                                            require ext_code.size(tokenContractAddress)
                                                            call tokenContractAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, 10^decimals * msg.value / tokenValue
                                                            require ext_call.success
                                                            emit Buy(address rg1, uint256 rg2, address rg3):
                                                                     msg.sender,
                                                                     10^decimals * msg.value / tokenValue,
                                                            emit 0x0: msg.sender, 10^decimals * msg.value / tokenValue
                                                            totalSoldTokensWithBonus += 10^decimals * msg.value / tokenValue
                                                            totalSoldTokensWithoutBonus += 10^decimals * msg.value / tokenValue
                                                        else:
                                                            if (10^decimals * msg.value / tokenValue) - remainingTokens:
                                                                require (10^decimals * msg.value / tokenValue) - remainingTokens
                                                                require (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / (10^decimals * msg.value / tokenValue) - remainingTokens == tokenValue
                                                            require 10^decimals
                                                            call owner with:
                                                               value msg.value - ((10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals) wei
                                                                 gas 2300 * is_zero(value) wei
                                                            require ext_call.success
                                                            remainingTokens = 0
                                                            call msg.sender with:
                                                               value (10^decimals * msg.value / tokenValue * tokenValue) - (remainingTokens * tokenValue) / 10^decimals wei
                                                                 gas 2300 * is_zero(value) wei
                                                            if remainingTokens:
                                                                require remainingTokens
                                                                require not 0 / remainingTokens
                                                            require remainingTokens >= remainingTokens
                                                            require ext_code.size(tokenContractAddress)
                                                            call tokenContractAddress.0xa9059cbb with:
                                                                 gas gas_remaining - 710 wei
                                                                args msg.sender, remainingTokens
                                                            require ext_call.success
                                                            emit Buy(address rg1, uint256 rg2, address rg3):
                                                                     msg.sender,
                                                                     remainingTokens,
                                                            emit 0x0: msg.sender, remainingTokens
                                                            totalSoldTokensWithBonus += remainingTokens
                                                            totalSoldTokensWithoutBonus += remainingTokens
}



}
