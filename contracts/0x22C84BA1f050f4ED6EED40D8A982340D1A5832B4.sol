contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    address(stor0.field_0) = msg.sender
    uint8(stor0.field_160) = 1
    stor3 = 0
    stor4 = 0
    stor5 = 0
    require not msg.value
    return code.data[103 len 2473]
}



// =====================  Runtime code  =====================


const name = 'CollegeCoin'

const decimals = 18

const symbol = 'COC'


uint8 stor0; offset 160
address stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalContribution;
uint256 totalBonusTokensIssued;
uint256 totalSupply;

function totalContribution() {
    return totalContribution
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
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

function enablePurchasing() {
    require address(stor0.field_0) == msg.sender
    uint8(stor0.field_160) = 1
}

function disablePurchasing() {
    require address(stor0.field_0) == msg.sender
    uint8(stor0.field_160) = 0
}

function getStats() {
    return totalContribution, totalSupply, totalBonusTokensIssued, bool(uint8(stor0.field_160))
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

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    if not arg3:
        return 0
    if balanceOf[address(arg1)] > arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] > arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[arg1] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require uint8(stor0.field_160)
    require totalContribution < 1250 * 10^18
    if msg.value:
        call address(stor0.field_0) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        totalContribution += msg.value
        if msg.value < 15 * 10^16:
            totalSupply += 1000 * msg.value
            balanceOf[address(msg.sender)] += 1000 * msg.value
            emit Transfer((1000 * msg.value), this.address, msg.sender);
        else:
            totalBonusTokensIssued += 100 * msg.value
            totalSupply = (1100 * msg.value) + totalContribution + totalSupply
            balanceOf[address(msg.sender)] = (1100 * msg.value) + totalContribution + balanceOf[address(msg.sender)]
            emit Transfer(((1100 * msg.value) + totalContribution), this.address, msg.sender);
}



}
