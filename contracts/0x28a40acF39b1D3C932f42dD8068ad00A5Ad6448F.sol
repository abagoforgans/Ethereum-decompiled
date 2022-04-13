contract main {


// =======================  Init code  ======================


address stor3;
address stor4;
address stor5;
uint8 stor6; offset 160
address stor6;

function _fallback() {
    stor3 = code.data[3829 len 20]
    stor4 = code.data[3861 len 20]
    stor5 = code.data[3893 len 20]
    address(stor6.field_0) = code.data[3925 len 20]
    uint8(stor6.field_160) = 0
    return code.data[160 len 3657]
}



// =====================  Runtime code  =====================


const maximumSupply = 100000000 * 10^18

const name = 'Ludum'

const decimals = 18

const crowdsaleEnd = (418428 * 3600)

const symbol = 'LDM'

const crowdsaleStart = (417756 * 3600)

const marketingPercent = 5

const teamPercent = 10

const operationsPercent = 10


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address ethDepositAddress;
address teamFundAddress;
address operationsFundAddress;
uint8 stor6; offset 160
address marketingFundAddress;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function teamFundAddress() {
    return teamFundAddress
}

function isFinalized() {
    return bool(uint8(stor6.field_160))
}

function operationsFundAddress() {
    return operationsFundAddress
}

function ethDepositAddress() {
    return ethDepositAddress
}

function marketingFundAddress() {
    return marketingFundAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function ludumTokensPerEther() {
    if block.timestamp < 417756 * 3600:
        return 0
    if block.timestamp > 418428 * 3600:
        return 0
    if block.timestamp < 417780 * 3600:
        return 15000
    if block.timestamp < 417924 * 3600:
        return 13000
    if block.timestamp >= 418092 * 3600:
        return 10000
    return 11000
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    require arg2 > 0
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 > balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function finalizeCrowdsale() {
    require not uint8(stor6.field_160)
    require ethDepositAddress == msg.sender
    if block.timestamp < 418428 * 3600:
        require totalSupply == 100000000 * 10^18
    uint8(stor6.field_160) = 1
    call ethDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    require arg3 > 0
    require balanceOf[address(arg1)] >= arg3
    require allowance[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require not uint8(stor6.field_160)
    require block.timestamp >= 417756 * 3600
    require block.timestamp < 418428 * 3600
    require msg.value >= 10^16
    if block.timestamp < 417756 * 3600:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        require totalSupply >= totalSupply
        require totalSupply >= 0
        require totalSupply >= totalSupply
        require totalSupply >= 0
        require totalSupply >= totalSupply
        require totalSupply >= 0
        require totalSupply >= totalSupply
        require totalSupply >= 0
        require 100000000 * 10^18 >= totalSupply
        emit CreateLudumTokens(0, msg.sender);
        emit CreateLudumTokens(0, teamFundAddress);
        emit CreateLudumTokens(0, operationsFundAddress);
        emit CreateLudumTokens(0, marketingFundAddress);
    else:
        if block.timestamp > 418428 * 3600:
            if msg.value:
                require msg.value
                require not 0 / msg.value
            require totalSupply >= totalSupply
            require totalSupply >= 0
            require totalSupply >= totalSupply
            require totalSupply >= 0
            require totalSupply >= totalSupply
            require totalSupply >= 0
            require totalSupply >= totalSupply
            require totalSupply >= 0
            require 100000000 * 10^18 >= totalSupply
            emit CreateLudumTokens(0, msg.sender);
            emit CreateLudumTokens(0, teamFundAddress);
            emit CreateLudumTokens(0, operationsFundAddress);
            emit CreateLudumTokens(0, marketingFundAddress);
        else:
            if block.timestamp < 417780 * 3600:
                if msg.value:
                    require msg.value
                    require 15000 * msg.value / msg.value == 15000
                if 15000 * msg.value:
                    require 15000 * msg.value
                    require 150000 * msg.value / 15000 * msg.value == 10
                require 150000 * msg.value == (100 * 150000 * msg.value / 100) + (150000 * msg.value % 100)
                if 15000 * msg.value:
                    require 15000 * msg.value
                    require 150000 * msg.value / 15000 * msg.value == 10
                require 150000 * msg.value == (100 * 150000 * msg.value / 100) + (150000 * msg.value % 100)
                if 15000 * msg.value:
                    require 15000 * msg.value
                    require 75000 * msg.value / 15000 * msg.value == 5
                require 75000 * msg.value == (100 * 75000 * msg.value / 100) + (75000 * msg.value % 100)
                require (15000 * msg.value) + totalSupply >= totalSupply
                require (15000 * msg.value) + totalSupply >= 15000 * msg.value
                require 150000 * msg.value / 100 >= 0
                require (150000 * msg.value / 100) + (15000 * msg.value) + totalSupply >= 150000 * msg.value / 100
                require 2 * 150000 * msg.value / 100 >= 150000 * msg.value / 100
                require (2 * 150000 * msg.value / 100) + (15000 * msg.value) + totalSupply >= 150000 * msg.value / 100
                require 75000 * msg.value / 100 >= 0
                require (75000 * msg.value / 100) + (2 * 150000 * msg.value / 100) + (15000 * msg.value) + totalSupply >= 75000 * msg.value / 100
                require 100000000 * 10^18 >= (75000 * msg.value / 100) + (2 * 150000 * msg.value / 100) + (15000 * msg.value) + totalSupply
                totalSupply = (75000 * msg.value / 100) + (2 * 150000 * msg.value / 100) + (15000 * msg.value) + totalSupply
                balanceOf[address(msg.sender)] += 15000 * msg.value
                emit CreateLudumTokens((15000 * msg.value), msg.sender);
                balanceOf[stor4] += 150000 * msg.value / 100
                emit CreateLudumTokens((150000 * msg.value / 100), teamFundAddress);
                balanceOf[stor5] += 150000 * msg.value / 100
                emit CreateLudumTokens((150000 * msg.value / 100), operationsFundAddress);
                balanceOf[address(stor6.field_0)] += 75000 * msg.value / 100
                emit CreateLudumTokens((75000 * msg.value / 100), marketingFundAddress);
            else:
                if block.timestamp < 417924 * 3600:
                    if msg.value:
                        require msg.value
                        require 13000 * msg.value / msg.value == 13000
                    if 13000 * msg.value:
                        require 13000 * msg.value
                        require 130000 * msg.value / 13000 * msg.value == 10
                    require 130000 * msg.value == (100 * 130000 * msg.value / 100) + (130000 * msg.value % 100)
                    if 13000 * msg.value:
                        require 13000 * msg.value
                        require 130000 * msg.value / 13000 * msg.value == 10
                    require 130000 * msg.value == (100 * 130000 * msg.value / 100) + (130000 * msg.value % 100)
                    if 13000 * msg.value:
                        require 13000 * msg.value
                        require 65000 * msg.value / 13000 * msg.value == 5
                    require 65000 * msg.value == (100 * 65000 * msg.value / 100) + (65000 * msg.value % 100)
                    require (13000 * msg.value) + totalSupply >= totalSupply
                    require (13000 * msg.value) + totalSupply >= 13000 * msg.value
                    require 130000 * msg.value / 100 >= 0
                    require (130000 * msg.value / 100) + (13000 * msg.value) + totalSupply >= 130000 * msg.value / 100
                    require 2 * 130000 * msg.value / 100 >= 130000 * msg.value / 100
                    require (2 * 130000 * msg.value / 100) + (13000 * msg.value) + totalSupply >= 130000 * msg.value / 100
                    require 65000 * msg.value / 100 >= 0
                    require (65000 * msg.value / 100) + (2 * 130000 * msg.value / 100) + (13000 * msg.value) + totalSupply >= 65000 * msg.value / 100
                    require 100000000 * 10^18 >= (65000 * msg.value / 100) + (2 * 130000 * msg.value / 100) + (13000 * msg.value) + totalSupply
                    totalSupply = (65000 * msg.value / 100) + (2 * 130000 * msg.value / 100) + (13000 * msg.value) + totalSupply
                    balanceOf[address(msg.sender)] += 13000 * msg.value
                    emit CreateLudumTokens((13000 * msg.value), msg.sender);
                    balanceOf[stor4] += 130000 * msg.value / 100
                    emit CreateLudumTokens((130000 * msg.value / 100), teamFundAddress);
                    balanceOf[stor5] += 130000 * msg.value / 100
                    emit CreateLudumTokens((130000 * msg.value / 100), operationsFundAddress);
                    balanceOf[address(stor6.field_0)] += 65000 * msg.value / 100
                    emit CreateLudumTokens((65000 * msg.value / 100), marketingFundAddress);
                else:
                    if block.timestamp >= 418092 * 3600:
                        if msg.value:
                            require msg.value
                            require 10000 * msg.value / msg.value == 10000
                        if 10000 * msg.value:
                            require 10000 * msg.value
                            require 100000 * msg.value / 10000 * msg.value == 10
                        require 100000 * msg.value == (100 * 100000 * msg.value / 100) + (100000 * msg.value % 100)
                        if 10000 * msg.value:
                            require 10000 * msg.value
                            require 100000 * msg.value / 10000 * msg.value == 10
                        require 100000 * msg.value == (100 * 100000 * msg.value / 100) + (100000 * msg.value % 100)
                        if 10000 * msg.value:
                            require 10000 * msg.value
                            require 50000 * msg.value / 10000 * msg.value == 5
                        require 50000 * msg.value == (100 * 50000 * msg.value / 100) + (50000 * msg.value % 100)
                        require (10000 * msg.value) + totalSupply >= totalSupply
                        require (10000 * msg.value) + totalSupply >= 10000 * msg.value
                        require 100000 * msg.value / 100 >= 0
                        require (100000 * msg.value / 100) + (10000 * msg.value) + totalSupply >= 100000 * msg.value / 100
                        require 2 * 100000 * msg.value / 100 >= 100000 * msg.value / 100
                        require (2 * 100000 * msg.value / 100) + (10000 * msg.value) + totalSupply >= 100000 * msg.value / 100
                        require 50000 * msg.value / 100 >= 0
                        require (50000 * msg.value / 100) + (2 * 100000 * msg.value / 100) + (10000 * msg.value) + totalSupply >= 50000 * msg.value / 100
                        require 100000000 * 10^18 >= (50000 * msg.value / 100) + (2 * 100000 * msg.value / 100) + (10000 * msg.value) + totalSupply
                        totalSupply = (50000 * msg.value / 100) + (2 * 100000 * msg.value / 100) + (10000 * msg.value) + totalSupply
                        balanceOf[address(msg.sender)] += 10000 * msg.value
                        emit CreateLudumTokens((10000 * msg.value), msg.sender);
                        balanceOf[stor4] += 100000 * msg.value / 100
                        emit CreateLudumTokens((100000 * msg.value / 100), teamFundAddress);
                        balanceOf[stor5] += 100000 * msg.value / 100
                        emit CreateLudumTokens((100000 * msg.value / 100), operationsFundAddress);
                        balanceOf[address(stor6.field_0)] += 50000 * msg.value / 100
                        emit CreateLudumTokens((50000 * msg.value / 100), marketingFundAddress);
                    else:
                        if msg.value:
                            require msg.value
                            require 11000 * msg.value / msg.value == 11000
                        if 11000 * msg.value:
                            require 11000 * msg.value
                            require 110000 * msg.value / 11000 * msg.value == 10
                        require 110000 * msg.value == (100 * 110000 * msg.value / 100) + (110000 * msg.value % 100)
                        if 11000 * msg.value:
                            require 11000 * msg.value
                            require 110000 * msg.value / 11000 * msg.value == 10
                        require 110000 * msg.value == (100 * 110000 * msg.value / 100) + (110000 * msg.value % 100)
                        if 11000 * msg.value:
                            require 11000 * msg.value
                            require 55000 * msg.value / 11000 * msg.value == 5
                        require 55000 * msg.value == (100 * 55000 * msg.value / 100) + (55000 * msg.value % 100)
                        require (11000 * msg.value) + totalSupply >= totalSupply
                        require (11000 * msg.value) + totalSupply >= 11000 * msg.value
                        require 110000 * msg.value / 100 >= 0
                        require (110000 * msg.value / 100) + (11000 * msg.value) + totalSupply >= 110000 * msg.value / 100
                        require 2 * 110000 * msg.value / 100 >= 110000 * msg.value / 100
                        require (2 * 110000 * msg.value / 100) + (11000 * msg.value) + totalSupply >= 110000 * msg.value / 100
                        require 55000 * msg.value / 100 >= 0
                        require (55000 * msg.value / 100) + (2 * 110000 * msg.value / 100) + (11000 * msg.value) + totalSupply >= 55000 * msg.value / 100
                        require 100000000 * 10^18 >= (55000 * msg.value / 100) + (2 * 110000 * msg.value / 100) + (11000 * msg.value) + totalSupply
                        totalSupply = (55000 * msg.value / 100) + (2 * 110000 * msg.value / 100) + (11000 * msg.value) + totalSupply
                        balanceOf[address(msg.sender)] += 11000 * msg.value
                        emit CreateLudumTokens((11000 * msg.value), msg.sender);
                        balanceOf[stor4] += 110000 * msg.value / 100
                        emit CreateLudumTokens((110000 * msg.value / 100), teamFundAddress);
                        balanceOf[stor5] += 110000 * msg.value / 100
                        emit CreateLudumTokens((110000 * msg.value / 100), operationsFundAddress);
                        balanceOf[address(stor6.field_0)] += 55000 * msg.value / 100
                        emit CreateLudumTokens((55000 * msg.value / 100), marketingFundAddress);
}

function makeTokens() payable {
    require not uint8(stor6.field_160)
    require block.timestamp >= 417756 * 3600
    require block.timestamp < 418428 * 3600
    require msg.value >= 10^16
    if block.timestamp < 417756 * 3600:
        if msg.value:
            require msg.value
            require not 0 / msg.value
        require totalSupply >= totalSupply
        require totalSupply >= 0
        require totalSupply >= totalSupply
        require totalSupply >= 0
        require totalSupply >= totalSupply
        require totalSupply >= 0
        require totalSupply >= totalSupply
        require totalSupply >= 0
        require 100000000 * 10^18 >= totalSupply
        emit CreateLudumTokens(0, msg.sender);
        emit CreateLudumTokens(0, teamFundAddress);
        emit CreateLudumTokens(0, operationsFundAddress);
        emit CreateLudumTokens(0, marketingFundAddress);
    else:
        if block.timestamp > 418428 * 3600:
            if msg.value:
                require msg.value
                require not 0 / msg.value
            require totalSupply >= totalSupply
            require totalSupply >= 0
            require totalSupply >= totalSupply
            require totalSupply >= 0
            require totalSupply >= totalSupply
            require totalSupply >= 0
            require totalSupply >= totalSupply
            require totalSupply >= 0
            require 100000000 * 10^18 >= totalSupply
            emit CreateLudumTokens(0, msg.sender);
            emit CreateLudumTokens(0, teamFundAddress);
            emit CreateLudumTokens(0, operationsFundAddress);
            emit CreateLudumTokens(0, marketingFundAddress);
        else:
            if block.timestamp < 417780 * 3600:
                if msg.value:
                    require msg.value
                    require 15000 * msg.value / msg.value == 15000
                if 15000 * msg.value:
                    require 15000 * msg.value
                    require 150000 * msg.value / 15000 * msg.value == 10
                require 150000 * msg.value == (100 * 150000 * msg.value / 100) + (150000 * msg.value % 100)
                if 15000 * msg.value:
                    require 15000 * msg.value
                    require 150000 * msg.value / 15000 * msg.value == 10
                require 150000 * msg.value == (100 * 150000 * msg.value / 100) + (150000 * msg.value % 100)
                if 15000 * msg.value:
                    require 15000 * msg.value
                    require 75000 * msg.value / 15000 * msg.value == 5
                require 75000 * msg.value == (100 * 75000 * msg.value / 100) + (75000 * msg.value % 100)
                require (15000 * msg.value) + totalSupply >= totalSupply
                require (15000 * msg.value) + totalSupply >= 15000 * msg.value
                require 150000 * msg.value / 100 >= 0
                require (150000 * msg.value / 100) + (15000 * msg.value) + totalSupply >= 150000 * msg.value / 100
                require 2 * 150000 * msg.value / 100 >= 150000 * msg.value / 100
                require (2 * 150000 * msg.value / 100) + (15000 * msg.value) + totalSupply >= 150000 * msg.value / 100
                require 75000 * msg.value / 100 >= 0
                require (75000 * msg.value / 100) + (2 * 150000 * msg.value / 100) + (15000 * msg.value) + totalSupply >= 75000 * msg.value / 100
                require 100000000 * 10^18 >= (75000 * msg.value / 100) + (2 * 150000 * msg.value / 100) + (15000 * msg.value) + totalSupply
                totalSupply = (75000 * msg.value / 100) + (2 * 150000 * msg.value / 100) + (15000 * msg.value) + totalSupply
                balanceOf[address(msg.sender)] += 15000 * msg.value
                emit CreateLudumTokens((15000 * msg.value), msg.sender);
                balanceOf[stor4] += 150000 * msg.value / 100
                emit CreateLudumTokens((150000 * msg.value / 100), teamFundAddress);
                balanceOf[stor5] += 150000 * msg.value / 100
                emit CreateLudumTokens((150000 * msg.value / 100), operationsFundAddress);
                balanceOf[address(stor6.field_0)] += 75000 * msg.value / 100
                emit CreateLudumTokens((75000 * msg.value / 100), marketingFundAddress);
            else:
                if block.timestamp < 417924 * 3600:
                    if msg.value:
                        require msg.value
                        require 13000 * msg.value / msg.value == 13000
                    if 13000 * msg.value:
                        require 13000 * msg.value
                        require 130000 * msg.value / 13000 * msg.value == 10
                    require 130000 * msg.value == (100 * 130000 * msg.value / 100) + (130000 * msg.value % 100)
                    if 13000 * msg.value:
                        require 13000 * msg.value
                        require 130000 * msg.value / 13000 * msg.value == 10
                    require 130000 * msg.value == (100 * 130000 * msg.value / 100) + (130000 * msg.value % 100)
                    if 13000 * msg.value:
                        require 13000 * msg.value
                        require 65000 * msg.value / 13000 * msg.value == 5
                    require 65000 * msg.value == (100 * 65000 * msg.value / 100) + (65000 * msg.value % 100)
                    require (13000 * msg.value) + totalSupply >= totalSupply
                    require (13000 * msg.value) + totalSupply >= 13000 * msg.value
                    require 130000 * msg.value / 100 >= 0
                    require (130000 * msg.value / 100) + (13000 * msg.value) + totalSupply >= 130000 * msg.value / 100
                    require 2 * 130000 * msg.value / 100 >= 130000 * msg.value / 100
                    require (2 * 130000 * msg.value / 100) + (13000 * msg.value) + totalSupply >= 130000 * msg.value / 100
                    require 65000 * msg.value / 100 >= 0
                    require (65000 * msg.value / 100) + (2 * 130000 * msg.value / 100) + (13000 * msg.value) + totalSupply >= 65000 * msg.value / 100
                    require 100000000 * 10^18 >= (65000 * msg.value / 100) + (2 * 130000 * msg.value / 100) + (13000 * msg.value) + totalSupply
                    totalSupply = (65000 * msg.value / 100) + (2 * 130000 * msg.value / 100) + (13000 * msg.value) + totalSupply
                    balanceOf[address(msg.sender)] += 13000 * msg.value
                    emit CreateLudumTokens((13000 * msg.value), msg.sender);
                    balanceOf[stor4] += 130000 * msg.value / 100
                    emit CreateLudumTokens((130000 * msg.value / 100), teamFundAddress);
                    balanceOf[stor5] += 130000 * msg.value / 100
                    emit CreateLudumTokens((130000 * msg.value / 100), operationsFundAddress);
                    balanceOf[address(stor6.field_0)] += 65000 * msg.value / 100
                    emit CreateLudumTokens((65000 * msg.value / 100), marketingFundAddress);
                else:
                    if block.timestamp >= 418092 * 3600:
                        if msg.value:
                            require msg.value
                            require 10000 * msg.value / msg.value == 10000
                        if 10000 * msg.value:
                            require 10000 * msg.value
                            require 100000 * msg.value / 10000 * msg.value == 10
                        require 100000 * msg.value == (100 * 100000 * msg.value / 100) + (100000 * msg.value % 100)
                        if 10000 * msg.value:
                            require 10000 * msg.value
                            require 100000 * msg.value / 10000 * msg.value == 10
                        require 100000 * msg.value == (100 * 100000 * msg.value / 100) + (100000 * msg.value % 100)
                        if 10000 * msg.value:
                            require 10000 * msg.value
                            require 50000 * msg.value / 10000 * msg.value == 5
                        require 50000 * msg.value == (100 * 50000 * msg.value / 100) + (50000 * msg.value % 100)
                        require (10000 * msg.value) + totalSupply >= totalSupply
                        require (10000 * msg.value) + totalSupply >= 10000 * msg.value
                        require 100000 * msg.value / 100 >= 0
                        require (100000 * msg.value / 100) + (10000 * msg.value) + totalSupply >= 100000 * msg.value / 100
                        require 2 * 100000 * msg.value / 100 >= 100000 * msg.value / 100
                        require (2 * 100000 * msg.value / 100) + (10000 * msg.value) + totalSupply >= 100000 * msg.value / 100
                        require 50000 * msg.value / 100 >= 0
                        require (50000 * msg.value / 100) + (2 * 100000 * msg.value / 100) + (10000 * msg.value) + totalSupply >= 50000 * msg.value / 100
                        require 100000000 * 10^18 >= (50000 * msg.value / 100) + (2 * 100000 * msg.value / 100) + (10000 * msg.value) + totalSupply
                        totalSupply = (50000 * msg.value / 100) + (2 * 100000 * msg.value / 100) + (10000 * msg.value) + totalSupply
                        balanceOf[address(msg.sender)] += 10000 * msg.value
                        emit CreateLudumTokens((10000 * msg.value), msg.sender);
                        balanceOf[stor4] += 100000 * msg.value / 100
                        emit CreateLudumTokens((100000 * msg.value / 100), teamFundAddress);
                        balanceOf[stor5] += 100000 * msg.value / 100
                        emit CreateLudumTokens((100000 * msg.value / 100), operationsFundAddress);
                        balanceOf[address(stor6.field_0)] += 50000 * msg.value / 100
                        emit CreateLudumTokens((50000 * msg.value / 100), marketingFundAddress);
                    else:
                        if msg.value:
                            require msg.value
                            require 11000 * msg.value / msg.value == 11000
                        if 11000 * msg.value:
                            require 11000 * msg.value
                            require 110000 * msg.value / 11000 * msg.value == 10
                        require 110000 * msg.value == (100 * 110000 * msg.value / 100) + (110000 * msg.value % 100)
                        if 11000 * msg.value:
                            require 11000 * msg.value
                            require 110000 * msg.value / 11000 * msg.value == 10
                        require 110000 * msg.value == (100 * 110000 * msg.value / 100) + (110000 * msg.value % 100)
                        if 11000 * msg.value:
                            require 11000 * msg.value
                            require 55000 * msg.value / 11000 * msg.value == 5
                        require 55000 * msg.value == (100 * 55000 * msg.value / 100) + (55000 * msg.value % 100)
                        require (11000 * msg.value) + totalSupply >= totalSupply
                        require (11000 * msg.value) + totalSupply >= 11000 * msg.value
                        require 110000 * msg.value / 100 >= 0
                        require (110000 * msg.value / 100) + (11000 * msg.value) + totalSupply >= 110000 * msg.value / 100
                        require 2 * 110000 * msg.value / 100 >= 110000 * msg.value / 100
                        require (2 * 110000 * msg.value / 100) + (11000 * msg.value) + totalSupply >= 110000 * msg.value / 100
                        require 55000 * msg.value / 100 >= 0
                        require (55000 * msg.value / 100) + (2 * 110000 * msg.value / 100) + (11000 * msg.value) + totalSupply >= 55000 * msg.value / 100
                        require 100000000 * 10^18 >= (55000 * msg.value / 100) + (2 * 110000 * msg.value / 100) + (11000 * msg.value) + totalSupply
                        totalSupply = (55000 * msg.value / 100) + (2 * 110000 * msg.value / 100) + (11000 * msg.value) + totalSupply
                        balanceOf[address(msg.sender)] += 11000 * msg.value
                        emit CreateLudumTokens((11000 * msg.value), msg.sender);
                        balanceOf[stor4] += 110000 * msg.value / 100
                        emit CreateLudumTokens((110000 * msg.value / 100), teamFundAddress);
                        balanceOf[stor5] += 110000 * msg.value / 100
                        emit CreateLudumTokens((110000 * msg.value / 100), operationsFundAddress);
                        balanceOf[address(stor6.field_0)] += 55000 * msg.value / 100
                        emit CreateLudumTokens((55000 * msg.value / 100), marketingFundAddress);
}



}
