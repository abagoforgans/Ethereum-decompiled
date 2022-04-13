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
    return code.data[106 len 3030]
}



// =====================  Runtime code  =====================


const name = 'CoinCoin'

const decimals = 18

const symbol = 'COIN'


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

function transferOwnership(address arg1) {
    require address(stor0.field_0) == msg.sender
    address(stor0.field_0) = arg1
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
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 >= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
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

function _fallback() payable {
    require uint8(stor0.field_160)
    if msg.value:
        call address(stor0.field_0) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        if totalContribution >= 500 * 10^18:
            totalSupply += 100000 * msg.value
            balanceOf[address(msg.sender)] += 100000 * msg.value
            totalContribution += msg.value
            emit Transfer((100000 * msg.value), this.address, msg.sender);
        else:
            if msg.value < 10^17:
                totalSupply += 100000 * msg.value
                balanceOf[address(msg.sender)] += 100000 * msg.value
                totalContribution += msg.value
                emit Transfer((100000 * msg.value), this.address, msg.sender);
            else:
                if msg.value < 10^18:
                    totalBonusTokensIssued += 100000 * msg.value / 20
                    totalSupply = (100000 * msg.value / 20) + (100000 * msg.value) + totalSupply
                    balanceOf[address(msg.sender)] = (100000 * msg.value / 20) + (100000 * msg.value) + balanceOf[address(msg.sender)]
                    totalContribution += msg.value
                    emit Transfer(((100000 * msg.value / 20) + (100000 * msg.value)), this.address, msg.sender);
                else:
                    if msg.value >= 2 * 10^18:
                        totalBonusTokensIssued += 100000 * msg.value / 5
                        totalSupply = (100000 * msg.value / 5) + (100000 * msg.value) + totalSupply
                        balanceOf[address(msg.sender)] = (100000 * msg.value / 5) + (100000 * msg.value) + balanceOf[address(msg.sender)]
                        totalContribution += msg.value
                        emit Transfer(((100000 * msg.value / 5) + (100000 * msg.value)), this.address, msg.sender);
                    else:
                        totalBonusTokensIssued += 100000 * msg.value / 10
                        totalSupply = (100000 * msg.value / 10) + (100000 * msg.value) + totalSupply
                        balanceOf[address(msg.sender)] = (100000 * msg.value / 10) + (100000 * msg.value) + balanceOf[address(msg.sender)]
                        totalContribution += msg.value
                        emit Transfer(((100000 * msg.value / 10) + (100000 * msg.value)), this.address, msg.sender);
}



}
