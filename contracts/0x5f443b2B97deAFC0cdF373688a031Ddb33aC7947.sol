contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
mapping of uint256 stor1;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    address(stor0.field_0) = msg.sender
    uint8(stor0.field_160) = 0
    stor4 = 0
    stor5 = 0
    stor6 = 1000000 * 10^18
    stor7 = 100000000 * 10^18
    require not msg.value
    stor1[address(msg.sender)] = code.data[3997 len 32]
    address(stor0.field_0) = msg.sender
    return code.data[174 len 3823]
}



// =====================  Runtime code  =====================


const name = 'Dimon Coin'

const decimals = 18

const symbol = 'FUD'


uint8 stor0; offset 160
address stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 startTimestamp;
uint256 totalContribution;
uint256 totalBonusTokensIssued;
uint256 totalSupply;
uint256 supplyCap;

function totalContribution() {
    return totalContribution
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function supplyCap() {
    return supplyCap
}

function totalBonusTokensIssued() {
    return totalBonusTokensIssued
}

function purchasingAllowed() {
    return bool(uint8(stor0.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function startTimestamp() {
    return startTimestamp
}

function checkGoalReached() {
    if totalSupply >= supplyCap:
        uint8(stor0.field_160) = 0
}

function sub_8fbe1b58(?) {
    require address(stor0.field_0) == msg.sender
    uint8(stor0.field_160) = 1
}

function disablePurchasing() {
    require address(stor0.field_0) == msg.sender
    uint8(stor0.field_160) = 0
}

function transferOwnership(address arg1) {
    require address(stor0.field_0) == msg.sender
    address(stor0.field_0) = arg1
}

function getStats() {
    return totalContribution, supplyCap, totalSupply, totalBonusTokensIssued, bool(uint8(stor0.field_160))
}

function enablePurchasing() {
    require address(stor0.field_0) == msg.sender
    startTimestamp = block.timestamp
    uint8(stor0.field_160) = 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if not arg2:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawForeignTokens(address arg1) {
    require address(stor0.field_0) == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(stor0.field_0), ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 68
    if not arg3:
        return 0
    if balanceOf[address(arg1)] > arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] > arg3:
        return 0
    if arg3 + balanceOf[address(arg2)] > balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require uint8(stor0.field_160)
    if msg.value:
        call address(stor0.field_0) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require msg.value + totalContribution >= totalContribution
        totalContribution += msg.value
        if msg.value:
            require msg.value
            require 100 * msg.value / msg.value == 100
        if msg.value < 10^16:
            require (100 * msg.value) + totalSupply >= totalSupply
            totalSupply += 100 * msg.value
            require (100 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] += 100 * msg.value
            emit Transfer((100 * msg.value), this.address, msg.sender);
        else:
            if block.timestamp > startTimestamp + (288 * 24 * 3600):
                if startTimestamp + 1814401 > block.timestamp:
                    if startTimestamp + 3369601 > block.timestamp:
                        require (100 * msg.value) + totalSupply >= totalSupply
                        totalSupply += 100 * msg.value
                        require (100 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 100 * msg.value
                        emit Transfer((100 * msg.value), this.address, msg.sender);
                    else:
                        if block.timestamp > startTimestamp + (984 * 24 * 3600):
                            require (100 * msg.value) + totalSupply >= totalSupply
                            totalSupply += 100 * msg.value
                            require (100 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 100 * msg.value
                            emit Transfer((100 * msg.value), this.address, msg.sender);
                        else:
                            if 100 * msg.value:
                                require 100 * msg.value
                                require 12000 * msg.value / 100 * msg.value == 120
                            require 100 * msg.value <= 12000 * msg.value / 100
                            require 12000 * msg.value / 100 >= 100 * msg.value
                            require (12000 * msg.value / 100) - (100 * msg.value) + totalBonusTokensIssued >= totalBonusTokensIssued
                            totalBonusTokensIssued = (12000 * msg.value / 100) - (100 * msg.value) + totalBonusTokensIssued
                            require (12000 * msg.value / 100) + totalSupply >= totalSupply
                            totalSupply += 12000 * msg.value / 100
                            require (12000 * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 12000 * msg.value / 100
                            emit Transfer((12000 * msg.value / 100), this.address, msg.sender);
                else:
                    if block.timestamp > startTimestamp + (792 * 24 * 3600):
                        if startTimestamp + 3369601 > block.timestamp:
                            require (100 * msg.value) + totalSupply >= totalSupply
                            totalSupply += 100 * msg.value
                            require (100 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 100 * msg.value
                            emit Transfer((100 * msg.value), this.address, msg.sender);
                        else:
                            if block.timestamp > startTimestamp + (984 * 24 * 3600):
                                require (100 * msg.value) + totalSupply >= totalSupply
                                totalSupply += 100 * msg.value
                                require (100 * msg.value) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 100 * msg.value
                                emit Transfer((100 * msg.value), this.address, msg.sender);
                            else:
                                if 100 * msg.value:
                                    require 100 * msg.value
                                    require 12000 * msg.value / 100 * msg.value == 120
                                require 100 * msg.value <= 12000 * msg.value / 100
                                require 12000 * msg.value / 100 >= 100 * msg.value
                                require (12000 * msg.value / 100) - (100 * msg.value) + totalBonusTokensIssued >= totalBonusTokensIssued
                                totalBonusTokensIssued = (12000 * msg.value / 100) - (100 * msg.value) + totalBonusTokensIssued
                                require (12000 * msg.value / 100) + totalSupply >= totalSupply
                                totalSupply += 12000 * msg.value / 100
                                require (12000 * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 12000 * msg.value / 100
                                emit Transfer((12000 * msg.value / 100), this.address, msg.sender);
                    else:
                        if 100 * msg.value:
                            require 100 * msg.value
                            require 15000 * msg.value / 100 * msg.value == 150
                        require 100 * msg.value <= 15000 * msg.value / 100
                        require 15000 * msg.value / 100 >= 100 * msg.value
                        require (15000 * msg.value / 100) - (100 * msg.value) + totalBonusTokensIssued >= totalBonusTokensIssued
                        totalBonusTokensIssued = (15000 * msg.value / 100) - (100 * msg.value) + totalBonusTokensIssued
                        if startTimestamp + 3369601 > block.timestamp:
                            require (15000 * msg.value / 100) + totalSupply >= totalSupply
                            totalSupply += 15000 * msg.value / 100
                            require (15000 * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 15000 * msg.value / 100
                            emit Transfer((15000 * msg.value / 100), this.address, msg.sender);
                        else:
                            if block.timestamp > startTimestamp + (984 * 24 * 3600):
                                require (15000 * msg.value / 100) + totalSupply >= totalSupply
                                totalSupply += 15000 * msg.value / 100
                                require (15000 * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 15000 * msg.value / 100
                                emit Transfer((15000 * msg.value / 100), this.address, msg.sender);
                            else:
                                if 15000 * msg.value / 100:
                                    require 15000 * msg.value / 100
                                    require 120 * 15000 * msg.value / 100 / 15000 * msg.value / 100 == 120
                                require 15000 * msg.value / 100 <= 120 * 15000 * msg.value / 100 / 100
                                require 120 * 15000 * msg.value / 100 / 100 >= 15000 * msg.value / 100
                                require (120 * 15000 * msg.value / 100 / 100) - (15000 * msg.value / 100) + totalBonusTokensIssued >= totalBonusTokensIssued
                                totalBonusTokensIssued = (120 * 15000 * msg.value / 100 / 100) - (15000 * msg.value / 100) + totalBonusTokensIssued
                                require (120 * 15000 * msg.value / 100 / 100) + totalSupply >= totalSupply
                                totalSupply += 120 * 15000 * msg.value / 100 / 100
                                require (120 * 15000 * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 120 * 15000 * msg.value / 100 / 100
                                emit Transfer((120 * 15000 * msg.value / 100 / 100), this.address, msg.sender);
            else:
                if 100 * msg.value:
                    require 100 * msg.value
                    require 20000 * msg.value / 100 * msg.value == 200
                require 100 * msg.value <= 20000 * msg.value / 100
                require 20000 * msg.value / 100 >= 100 * msg.value
                require (20000 * msg.value / 100) - (100 * msg.value) + totalBonusTokensIssued >= totalBonusTokensIssued
                totalBonusTokensIssued = (20000 * msg.value / 100) - (100 * msg.value) + totalBonusTokensIssued
                if startTimestamp + 1814401 > block.timestamp:
                    if startTimestamp + 3369601 > block.timestamp:
                        require (20000 * msg.value / 100) + totalSupply >= totalSupply
                        totalSupply += 20000 * msg.value / 100
                        require (20000 * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                        balanceOf[address(msg.sender)] += 20000 * msg.value / 100
                        emit Transfer((20000 * msg.value / 100), this.address, msg.sender);
                    else:
                        if block.timestamp > startTimestamp + (984 * 24 * 3600):
                            require (20000 * msg.value / 100) + totalSupply >= totalSupply
                            totalSupply += 20000 * msg.value / 100
                            require (20000 * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 20000 * msg.value / 100
                            emit Transfer((20000 * msg.value / 100), this.address, msg.sender);
                        else:
                            if 20000 * msg.value / 100:
                                require 20000 * msg.value / 100
                                require 120 * 20000 * msg.value / 100 / 20000 * msg.value / 100 == 120
                            require 20000 * msg.value / 100 <= 120 * 20000 * msg.value / 100 / 100
                            require 120 * 20000 * msg.value / 100 / 100 >= 20000 * msg.value / 100
                            require (120 * 20000 * msg.value / 100 / 100) - (20000 * msg.value / 100) + totalBonusTokensIssued >= totalBonusTokensIssued
                            totalBonusTokensIssued = (120 * 20000 * msg.value / 100 / 100) - (20000 * msg.value / 100) + totalBonusTokensIssued
                            require (120 * 20000 * msg.value / 100 / 100) + totalSupply >= totalSupply
                            totalSupply += 120 * 20000 * msg.value / 100 / 100
                            require (120 * 20000 * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 120 * 20000 * msg.value / 100 / 100
                            emit Transfer((120 * 20000 * msg.value / 100 / 100), this.address, msg.sender);
                else:
                    if block.timestamp > startTimestamp + (792 * 24 * 3600):
                        if startTimestamp + 3369601 > block.timestamp:
                            require (20000 * msg.value / 100) + totalSupply >= totalSupply
                            totalSupply += 20000 * msg.value / 100
                            require (20000 * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 20000 * msg.value / 100
                            emit Transfer((20000 * msg.value / 100), this.address, msg.sender);
                        else:
                            if block.timestamp > startTimestamp + (984 * 24 * 3600):
                                require (20000 * msg.value / 100) + totalSupply >= totalSupply
                                totalSupply += 20000 * msg.value / 100
                                require (20000 * msg.value / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 20000 * msg.value / 100
                                emit Transfer((20000 * msg.value / 100), this.address, msg.sender);
                            else:
                                if 20000 * msg.value / 100:
                                    require 20000 * msg.value / 100
                                    require 120 * 20000 * msg.value / 100 / 20000 * msg.value / 100 == 120
                                require 20000 * msg.value / 100 <= 120 * 20000 * msg.value / 100 / 100
                                require 120 * 20000 * msg.value / 100 / 100 >= 20000 * msg.value / 100
                                require (120 * 20000 * msg.value / 100 / 100) - (20000 * msg.value / 100) + totalBonusTokensIssued >= totalBonusTokensIssued
                                totalBonusTokensIssued = (120 * 20000 * msg.value / 100 / 100) - (20000 * msg.value / 100) + totalBonusTokensIssued
                                require (120 * 20000 * msg.value / 100 / 100) + totalSupply >= totalSupply
                                totalSupply += 120 * 20000 * msg.value / 100 / 100
                                require (120 * 20000 * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 120 * 20000 * msg.value / 100 / 100
                                emit Transfer((120 * 20000 * msg.value / 100 / 100), this.address, msg.sender);
                    else:
                        if 20000 * msg.value / 100:
                            require 20000 * msg.value / 100
                            require 150 * 20000 * msg.value / 100 / 20000 * msg.value / 100 == 150
                        require 20000 * msg.value / 100 <= 150 * 20000 * msg.value / 100 / 100
                        require 150 * 20000 * msg.value / 100 / 100 >= 20000 * msg.value / 100
                        require (150 * 20000 * msg.value / 100 / 100) - (20000 * msg.value / 100) + totalBonusTokensIssued >= totalBonusTokensIssued
                        totalBonusTokensIssued = (150 * 20000 * msg.value / 100 / 100) - (20000 * msg.value / 100) + totalBonusTokensIssued
                        if startTimestamp + 3369601 > block.timestamp:
                            require (150 * 20000 * msg.value / 100 / 100) + totalSupply >= totalSupply
                            totalSupply += 150 * 20000 * msg.value / 100 / 100
                            require (150 * 20000 * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                            balanceOf[address(msg.sender)] += 150 * 20000 * msg.value / 100 / 100
                            emit Transfer((150 * 20000 * msg.value / 100 / 100), this.address, msg.sender);
                        else:
                            if block.timestamp > startTimestamp + (984 * 24 * 3600):
                                require (150 * 20000 * msg.value / 100 / 100) + totalSupply >= totalSupply
                                totalSupply += 150 * 20000 * msg.value / 100 / 100
                                require (150 * 20000 * msg.value / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 150 * 20000 * msg.value / 100 / 100
                                emit Transfer((150 * 20000 * msg.value / 100 / 100), this.address, msg.sender);
                            else:
                                if 150 * 20000 * msg.value / 100 / 100:
                                    require 150 * 20000 * msg.value / 100 / 100
                                    require 120 * 150 * 20000 * msg.value / 100 / 100 / 150 * 20000 * msg.value / 100 / 100 == 120
                                require 150 * 20000 * msg.value / 100 / 100 <= 120 * 150 * 20000 * msg.value / 100 / 100 / 100
                                require 120 * 150 * 20000 * msg.value / 100 / 100 / 100 >= 150 * 20000 * msg.value / 100 / 100
                                require (120 * 150 * 20000 * msg.value / 100 / 100 / 100) - (150 * 20000 * msg.value / 100 / 100) + totalBonusTokensIssued >= totalBonusTokensIssued
                                totalBonusTokensIssued = (120 * 150 * 20000 * msg.value / 100 / 100 / 100) - (150 * 20000 * msg.value / 100 / 100) + totalBonusTokensIssued
                                require (120 * 150 * 20000 * msg.value / 100 / 100 / 100) + totalSupply >= totalSupply
                                totalSupply += 120 * 150 * 20000 * msg.value / 100 / 100 / 100
                                require (120 * 150 * 20000 * msg.value / 100 / 100 / 100) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                                balanceOf[address(msg.sender)] += 120 * 150 * 20000 * msg.value / 100 / 100 / 100
                                emit Transfer((120 * 150 * 20000 * msg.value / 100 / 100 / 100), this.address, msg.sender);
        if totalSupply >= supplyCap:
            uint8(stor0.field_160) = 0
}



}
