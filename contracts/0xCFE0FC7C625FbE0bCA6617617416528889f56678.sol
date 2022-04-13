contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint8 stor4; offset 8
mapping of uint256 stor5;
uint256 stor7;
uint256 stor8;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = 0
    uint8(stor4.field_8) = 1
    stor7 = 0
    stor8 = 0
    require not msg.value
    stor5[address(msg.sender)] = 10000000 * 10^18
    stor1 = 10000000 * 10^18
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'Coin' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 4
    stor3.length.field_8 = 'COIN' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    uint8(stor4.field_0) = 18
    return code.data[454 len 3158]
}



// =====================  Runtime code  =====================


address stor0;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 stor4; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalContribution;
uint256 totalBonusTokensIssued;

function name() {
    return name[0 len name.length]
}

function totalContribution() {
    return totalContribution
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function totalBonusTokensIssued() {
    return totalBonusTokensIssued
}

function purchasingAllowed() {
    return bool(stor4)
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function enablePurchasing() {
    require stor0 == msg.sender
    stor4 = 1
}

function disablePurchasing() {
    require stor0 == msg.sender
    stor4 = 0
}

function transferOwnership(address arg1) {
    require stor0 == msg.sender
    stor0 = arg1
}

function getStats() {
    return totalContribution, totalSupply, totalBonusTokensIssued, bool(stor4)
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
    require stor0 == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor0, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function _fallback() payable {
    require stor4
    if msg.value:
        call stor0 with:
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
