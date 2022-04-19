contract main {


// =======================  Init code  ======================


uint128 stor0; offset 160
address stor0;
uint256 stor3;
uint256 stor4;
uint256 stor5;

function _fallback() payable {
    address(stor0.field_0) = msg.sender
    Mask(96, 0, stor0.field_160) = 0
    stor3 = 0
    stor4 = 0
    stor5 = 0
    require not msg.value
    return code.data[135 len 4651]
}



// =====================  Runtime code  =====================


const name = 'Just another useless ICO'

const decimals = 18

const symbol = 'JaICO'


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;
mapping of uint256 stor1;
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
    require msg.sender == address(stor0.field_0)
    Mask(96, 0, stor0.field_160) = 1
}

function disablePurchasing() {
    require msg.sender == address(stor0.field_0)
    Mask(96, 0, stor0.field_160) = 0
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
    if stor1[address(msg.sender)] < arg2:
        return 0
    if stor1[address(arg1)] + arg2 < stor1[address(arg1)]:
        return 0
    stor1[address(msg.sender)] -= arg2
    stor1[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require uint8(stor0.field_160)
    if msg.value:
        call address(stor0.field_0) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        totalContribution += msg.value
        totalSupply += 1000 * msg.value
        stor1[address(msg.sender)] += 1000 * msg.value
        emit Transfer((1000 * msg.value), this.address, msg.sender);
}

function withdrawForeignTokens(address arg1) {
    require msg.sender == address(stor0.field_0)
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 50 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 50 wei
        args address(stor0.field_0), ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size >= 100
    if not arg3:
        return 0
    if stor1[address(arg1)] > arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] > arg3:
        return 0
    if stor1[address(arg2)] + arg3 > stor1[address(arg2)]:
        return 0
    stor1[address(arg2)] += arg3
    stor1[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
