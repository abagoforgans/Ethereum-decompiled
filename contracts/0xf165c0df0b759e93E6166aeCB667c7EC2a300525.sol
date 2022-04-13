contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;
uint128 stor6; offset 160
address stor6;
address stor7;
address stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    stor2 = 0
    address(stor6.field_0) = msg.sender
    Mask(96, 0, stor6.field_160) = 0
    require not msg.value
    stor10 = block.timestamp
    stor9 = stor10 + (1080 * 24 * 3600)
    stor11 = stor9 + (720 * 24 * 3600)
    stor7 = address(stor6.field_0)
    stor8 = address(stor6.field_0)
    stor3[stor8] = 250000000 * 10^18
    emit LogTransaction(250000000 * 10^18, stor8);
    return code.data[606 len 6647]
}



// =====================  Runtime code  =====================


const name = 'General Advertising Token'

const decimals = 18

const gatFund = 250000000 * 10^18

const tokenExchangeRate = 9000

const tokenCreationCap = 1000000000 * 10^18

const symbol = 'GAT'

const tokenSellCap = 750000000 * 10^18

const tokenSaleMin = 17000000 * 10^18


uint256 totalContribution;
uint256 totalBonusTokensIssued;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 stor4;
mapping of uint256 allowance;
uint8 stor6; offset 160
uint128 stor6; offset 160
address stor6;
address ethFoundDepositAddress;
address gatFoundDepositAddress;
uint256 deadline;
uint256 startline;
uint256 refundDeadLine;
uint256 transactionCounter;
uint256 etherReceived;

function totalContribution() {
    return totalContribution
}

function transactionCounter() {
    return transactionCounter
}

function totalSupply() {
    return totalSupply
}

function startline() {
    return startline
}

function deadline() {
    return deadline
}

function etherReceived() {
    return etherReceived
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function ethFoundDeposit() {
    return ethFoundDepositAddress
}

function totalBonusTokensIssued() {
    return totalBonusTokensIssued
}

function gatFoundDeposit() {
    return gatFoundDepositAddress
}

function refundDeadLine() {
    return refundDeadLine
}

function purchasingAllowed() {
    return bool(uint8(stor6.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getStats() {
    return totalContribution, totalSupply, totalBonusTokensIssued, bool(uint8(stor6.field_160))
}

function disablePurchasing() {
    require msg.sender == address(stor6.field_0)
    require uint8(stor6.field_160)
    Mask(96, 0, stor6.field_160) = 0
}

function enablePurchasing() {
    require msg.sender == address(stor6.field_0)
    require not uint8(stor6.field_160)
    Mask(96, 0, stor6.field_160) = 1
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        if allowance[address(msg.sender)][address(arg1)]:
            return 0
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function withdrawEtherHomeLocal(address arg1) {
    require not uint8(stor6.field_160)
    require msg.sender == address(stor6.field_0)
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function withdrawEtherHomeExternal() {
    require not uint8(stor6.field_160)
    require msg.sender == address(stor6.field_0)
    call ethFoundDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 < 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sendSurplusTokens() {
    require not uint8(stor6.field_160)
    require msg.sender == address(stor6.field_0)
    require -totalSupply + 750000000 * 10^18 > 0
    balanceOf[stor8] = balanceOf[stor8] + -totalSupply + 750000000 * 10^18
    emit Transfer((-totalSupply + 750000000 * 10^18), this.address, gatFoundDepositAddress);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 < 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function refund() {
    require not uint8(stor6.field_160)
    require block.timestamp < refundDeadLine
    require totalSupply - totalBonusTokensIssued < 17000000 * 10^18
    require ethFoundDepositAddress != msg.sender
    require balanceOf[address(msg.sender)] > 0
    emit LogTransaction(stor4[address(msg.sender)], msg.sender);
    call msg.sender with:
       value stor4[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    totalContribution -= stor4[address(msg.sender)]
    stor4[address(msg.sender)] = 0
}

function _fallback() payable {
    require uint8(stor6.field_160)
    require -totalSupply + 750000000 * 10^18 > 0
    if msg.value:
        transactionCounter++
        totalContribution += msg.value
        if transactionCounter <= 0:
            totalSupply += 9000 * msg.value
            balanceOf[address(msg.sender)] += 9000 * msg.value
            stor4[address(msg.sender)] += msg.value
            emit Transfer((9000 * msg.value), this.address, msg.sender);
        else:
            if transactionCounter <= 1000:
                totalBonusTokensIssued += msg.value / 2
                totalSupply = totalSupply + (9000 * msg.value) + (9000 * msg.value / 2)
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (9000 * msg.value) + (9000 * msg.value / 2)
                stor4[address(msg.sender)] += msg.value
                emit Transfer(((9000 * msg.value) + (9000 * msg.value / 2)), this.address, msg.sender);
            else:
                if transactionCounter <= 2000:
                    totalBonusTokensIssued += msg.value / 5
                    totalSupply = totalSupply + (9000 * msg.value) + (9000 * msg.value / 5)
                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (9000 * msg.value) + (9000 * msg.value / 5)
                    stor4[address(msg.sender)] += msg.value
                    emit Transfer(((9000 * msg.value) + (9000 * msg.value / 5)), this.address, msg.sender);
                else:
                    if transactionCounter <= 3000:
                        totalBonusTokensIssued += msg.value / 10
                        totalSupply = totalSupply + (9000 * msg.value) + (9000 * msg.value / 10)
                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (9000 * msg.value) + (9000 * msg.value / 10)
                        stor4[address(msg.sender)] += msg.value
                        emit Transfer(((9000 * msg.value) + (9000 * msg.value / 10)), this.address, msg.sender);
                    else:
                        if transactionCounter > 5000:
                            totalSupply += 9000 * msg.value
                            balanceOf[address(msg.sender)] += 9000 * msg.value
                            stor4[address(msg.sender)] += msg.value
                            emit Transfer((9000 * msg.value), this.address, msg.sender);
                        else:
                            totalBonusTokensIssued += msg.value / 20
                            totalSupply = totalSupply + (9000 * msg.value) + (9000 * msg.value / 20)
                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] + (9000 * msg.value) + (9000 * msg.value / 20)
                            stor4[address(msg.sender)] += msg.value
                            emit Transfer(((9000 * msg.value) + (9000 * msg.value / 20)), this.address, msg.sender);
}



}
