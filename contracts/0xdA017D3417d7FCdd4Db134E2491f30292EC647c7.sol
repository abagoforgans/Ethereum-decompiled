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
    stor5 = 129698113 * 10^12
    require not msg.value
    return code.data[143 len 4810]
}



// =====================  Runtime code  =====================


const name = 'Mexicoin'

const decimals = 18

const symbol = 'MEX'


uint8 stor0; offset 160
uint128 stor0; offset 160
address stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalContribution;
uint256 totalSupply;
uint256 totalEtherCap;

function totalContribution() {
    return totalContribution
}

function totalSupply() {
    return totalSupply
}

function totalEtherCap() {
    return totalEtherCap
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function purchasingAllowed() {
    return bool(uint8(stor0.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function getStatistics() {
    return totalContribution, totalSupply, bool(uint8(stor0.field_160))
}

function enablePurchasing() {
    require msg.sender == address(stor0.field_0)
    Mask(96, 0, stor0.field_160) = 1
}

function disablePurchasing() {
    require msg.sender == address(stor0.field_0)
    Mask(96, 0, stor0.field_160) = 0
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
    if calldata.size < 68:
        return 0
    if not arg2:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdrawNotATokens(address arg1) {
    require msg.sender == address(stor0.field_0)
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
        require totalContribution + msg.value <= totalEtherCap
        call address(stor0.field_0) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        totalContribution += msg.value
        totalSupply += 10^6 * msg.value
        balanceOf[address(msg.sender)] += 10^6 * msg.value
        emit Transfer((10^6 * msg.value), this.address, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if calldata.size < 100:
        return 0
    if not arg3:
        return 0
    if balanceOf[address(arg1)] > arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] > arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 > balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
