contract main {


// =======================  Init code  ======================


uint128 stor0; offset 168
uint128 stor0; offset 160
address stor0;
mapping of uint256 stor1;
uint256 stor3;
uint256 stor4;

function _fallback() payable {
    address(stor0.field_0) = msg.sender
    Mask(96, 0, stor0.field_160) = 1
    Mask(88, 0, stor0.field_168) = 1
    stor3 = 500000
    stor4 = 750000
    require not msg.value
    stor1[address(stor0.field_0)] = stor3
    return code.data[265 len 4126]
}



// =====================  Runtime code  =====================


const name = 'Frikandel'

const decimals = 0

const symbol = 'FRKNDL'


uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address stor0;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
uint256 hardLimitICO;

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function hardLimitICO() {
    return hardLimitICO
}

function Enabled() {
    return bool(uint8(stor0.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function Destroy() {
    require msg.sender == address(stor0.field_0)
    if balanceOf[address(stor0.field_0)] <= 25000:
    if bool(uint8(stor0.field_168)) != 1:
    selfdestruct(address(stor0.field_0))
}

function enable() {
    require msg.sender == address(stor0.field_0)
    Mask(96, 0, stor0.field_160) = 1
}

function disable() {
    require msg.sender == address(stor0.field_0)
    Mask(96, 0, stor0.field_160) = 0
}

function DisableSuicide() {
    require msg.sender == address(stor0.field_0)
    Mask(88, 0, stor0.field_168) = 0
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size >= 68
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
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function _fallback() payable {
    require uint8(stor0.field_160)
    require balanceOf[address(msg.sender)] + (msg.value / 10^14) <= 30000
    require totalSupply + (msg.value / 10^14) <= hardLimitICO
    if msg.value:
        call address(stor0.field_0) with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        totalSupply += msg.value / 10^14
        balanceOf[address(msg.sender)] += msg.value / 10^14
        emit Transfer((msg.value / 10^14), this.address, msg.sender);
}



}
