contract main {


// =======================  Init code  ======================


uint8 stor0;
uint256 stor0; offset 8
uint256 stor1;
uint256 stor2;
address stor3;

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    require not msg.value
    stor3 = msg.sender
    require stor3 == msg.sender
    Mask(248, 0, stor0.field_8) = 0
    uint8(stor0.field_0) = 0
    return code.data[221 len 2468]
}



// =====================  Runtime code  =====================


const name = 'Number One Dime'

const decimals = 0

const symbol = 'N1DIME'


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
uint256 totSupply;
uint256 totContribution;
address stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totSupply
}

function is_purchase_allowed() {
    return bool(uint8(stor0.field_0))
}

function is_transfer_allowed() {
    return bool(uint8(stor0.field_8))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function totSupply() {
    return totSupply
}

function totContribution() {
    return totContribution
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function get_balance(address arg1) {
    return eth.balance(arg1)
}

function get_stats() {
    require stor3 == msg.sender
    return totSupply, totContribution
}

function enablePurchase(bool arg1) {
    require stor3 == msg.sender
    uint8(stor0.field_0) = uint8(arg1)
    return arg1
}

function enableTransfer(bool arg1) {
    require stor3 == msg.sender
    Mask(248, 0, stor0.field_8) = Mask(248, 0, arg1)
    return arg1
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require uint8(stor0.field_8)
    if arg2 <= 0:
        return 0
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require uint8(stor0.field_0)
    if msg.value:
        totContribution += msg.value
        totSupply += msg.value
        call stor3 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        balanceOf[address(msg.sender)] += msg.value
        emit Transfer(msg.value, this.address, msg.sender);
}

function withdrawForeignTokens(address arg1) {
    require stor3 == msg.sender
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor3, ext_call.return_data[0]
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require uint8(stor0.field_8)
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
