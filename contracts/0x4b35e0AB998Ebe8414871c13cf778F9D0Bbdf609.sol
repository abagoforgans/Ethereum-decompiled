contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
address stor4;
uint128 stor5; offset 160
address stor5;
uint256 stor6;
uint256 stor7;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = '1.0' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    Mask(96, 0, stor5.field_160) = 0
    stor4 = code.data[5230 len 20]
    address(stor5.field_0) = code.data[5262 len 20]
    stor6 = code.data[5282 len 32]
    stor7 = code.data[5314 len 32]
    stor0 = 75000000 * 10^18
    stor1[address(stor5.field_0)] = 75000000 * 10^18
    emit CreateSWP(75000000 * 10^18, address(stor5.field_0));
    return code.data[775 len 4443]
}



// =====================  Runtime code  =====================


const name = 'SWAP'

const decimals = 18

const tokenCreationCap = 150000000 * 10^18

const swpFund = 75000000 * 10^18

const symbol = 'SWP'


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 version;
address ethFundDepositAddress;
uint8 stor5; offset 160
uint128 stor5; offset 160
address swpFundDepositAddress;
uint256 fundingStartBlock;
uint256 fundingEndBlock;

function totalSupply() {
    return totalSupply
}

function version() {
    return version[0 len version.length]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function isFinalized() {
    return bool(uint8(stor5.field_160))
}

function fundingEndBlock() {
    return fundingEndBlock
}

function ethFundDeposit() {
    return ethFundDepositAddress
}

function fundingStartBlock() {
    return fundingStartBlock
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function swpFundDeposit() {
    return swpFundDepositAddress
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function tokenRate() {
    if block.number < fundingStartBlock:
        return 2200
    if block.number < fundingStartBlock + (48 * 24 * 3600):
        return 3500
    if block.number < fundingStartBlock:
        return 2200
    if block.number >= fundingStartBlock + (120 * 24 * 3600):
        return 2200
    return 2700
}

function finalize() {
    require not uint8(stor5.field_160)
    require msg.sender == ethFundDepositAddress
    if block.number <= fundingEndBlock:
        require totalSupply == 150000000 * 10^18
    Mask(96, 0, stor5.field_160) = 1
    call ethFundDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require not uint8(stor5.field_160)
    require block.number >= fundingStartBlock
    require block.number <= fundingEndBlock
    require msg.value
    if block.number < fundingStartBlock:
        if msg.value:
            require msg.value
            require 2200 * msg.value / msg.value == 2200
        require totalSupply + (2200 * msg.value) >= totalSupply
        require totalSupply + (2200 * msg.value) >= 2200 * msg.value
        require 150000000 * 10^18 >= totalSupply + (2200 * msg.value)
        totalSupply += 2200 * msg.value
        balanceOf[address(msg.sender)] += 2200 * msg.value
        emit CreateSWP((2200 * msg.value), msg.sender);
    else:
        if block.number < fundingStartBlock + (48 * 24 * 3600):
            if msg.value:
                require msg.value
                require 3500 * msg.value / msg.value == 3500
            require totalSupply + (3500 * msg.value) >= totalSupply
            require totalSupply + (3500 * msg.value) >= 3500 * msg.value
            require 150000000 * 10^18 >= totalSupply + (3500 * msg.value)
            totalSupply += 3500 * msg.value
            balanceOf[address(msg.sender)] += 3500 * msg.value
            emit CreateSWP((3500 * msg.value), msg.sender);
        else:
            if block.number < fundingStartBlock:
                if msg.value:
                    require msg.value
                    require 2200 * msg.value / msg.value == 2200
                require totalSupply + (2200 * msg.value) >= totalSupply
                require totalSupply + (2200 * msg.value) >= 2200 * msg.value
                require 150000000 * 10^18 >= totalSupply + (2200 * msg.value)
                totalSupply += 2200 * msg.value
                balanceOf[address(msg.sender)] += 2200 * msg.value
                emit CreateSWP((2200 * msg.value), msg.sender);
            else:
                if block.number >= fundingStartBlock + (120 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require 2200 * msg.value / msg.value == 2200
                    require totalSupply + (2200 * msg.value) >= totalSupply
                    require totalSupply + (2200 * msg.value) >= 2200 * msg.value
                    require 150000000 * 10^18 >= totalSupply + (2200 * msg.value)
                    totalSupply += 2200 * msg.value
                    balanceOf[address(msg.sender)] += 2200 * msg.value
                    emit CreateSWP((2200 * msg.value), msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require 2700 * msg.value / msg.value == 2700
                    require totalSupply + (2700 * msg.value) >= totalSupply
                    require totalSupply + (2700 * msg.value) >= 2700 * msg.value
                    require 150000000 * 10^18 >= totalSupply + (2700 * msg.value)
                    totalSupply += 2700 * msg.value
                    balanceOf[address(msg.sender)] += 2700 * msg.value
                    emit CreateSWP((2700 * msg.value), msg.sender);
}

function makeTokens() payable {
    require not uint8(stor5.field_160)
    require block.number >= fundingStartBlock
    require block.number <= fundingEndBlock
    require msg.value
    if block.number < fundingStartBlock:
        if msg.value:
            require msg.value
            require 2200 * msg.value / msg.value == 2200
        require totalSupply + (2200 * msg.value) >= totalSupply
        require totalSupply + (2200 * msg.value) >= 2200 * msg.value
        require 150000000 * 10^18 >= totalSupply + (2200 * msg.value)
        totalSupply += 2200 * msg.value
        balanceOf[address(msg.sender)] += 2200 * msg.value
        emit CreateSWP((2200 * msg.value), msg.sender);
    else:
        if block.number < fundingStartBlock + (48 * 24 * 3600):
            if msg.value:
                require msg.value
                require 3500 * msg.value / msg.value == 3500
            require totalSupply + (3500 * msg.value) >= totalSupply
            require totalSupply + (3500 * msg.value) >= 3500 * msg.value
            require 150000000 * 10^18 >= totalSupply + (3500 * msg.value)
            totalSupply += 3500 * msg.value
            balanceOf[address(msg.sender)] += 3500 * msg.value
            emit CreateSWP((3500 * msg.value), msg.sender);
        else:
            if block.number < fundingStartBlock:
                if msg.value:
                    require msg.value
                    require 2200 * msg.value / msg.value == 2200
                require totalSupply + (2200 * msg.value) >= totalSupply
                require totalSupply + (2200 * msg.value) >= 2200 * msg.value
                require 150000000 * 10^18 >= totalSupply + (2200 * msg.value)
                totalSupply += 2200 * msg.value
                balanceOf[address(msg.sender)] += 2200 * msg.value
                emit CreateSWP((2200 * msg.value), msg.sender);
            else:
                if block.number >= fundingStartBlock + (120 * 24 * 3600):
                    if msg.value:
                        require msg.value
                        require 2200 * msg.value / msg.value == 2200
                    require totalSupply + (2200 * msg.value) >= totalSupply
                    require totalSupply + (2200 * msg.value) >= 2200 * msg.value
                    require 150000000 * 10^18 >= totalSupply + (2200 * msg.value)
                    totalSupply += 2200 * msg.value
                    balanceOf[address(msg.sender)] += 2200 * msg.value
                    emit CreateSWP((2200 * msg.value), msg.sender);
                else:
                    if msg.value:
                        require msg.value
                        require 2700 * msg.value / msg.value == 2700
                    require totalSupply + (2700 * msg.value) >= totalSupply
                    require totalSupply + (2700 * msg.value) >= 2700 * msg.value
                    require 150000000 * 10^18 >= totalSupply + (2700 * msg.value)
                    totalSupply += 2700 * msg.value
                    balanceOf[address(msg.sender)] += 2700 * msg.value
                    emit CreateSWP((2700 * msg.value), msg.sender);
}



}
