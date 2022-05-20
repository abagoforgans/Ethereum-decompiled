contract main {




// =====================  Runtime code  =====================


const name = 'Adrian Token'

const decimals = 18

const symbol = 'ADRN'


uint256 totalSupply;
uint8 stor1; offset 160
uint128 stor1; offset 160
address owner;
uint256 sub_5c02bb8c;
uint256 sub_464db88c;
uint256 sub_1787d9b1;
uint8 stor5;
uint256 sub_7ab29416;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function sub_1787d9b1(?) {
    return sub_1787d9b1
}

function totalSupply() {
    return totalSupply
}

function sub_3dbf9221(?) {
    return bool(stor5)
}

function sub_464db88c(?) {
    return sub_464db88c
}

function sub_5c02bb8c(?) {
    return sub_5c02bb8c
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_7ab29416(?) {
    return sub_7ab29416
}

function owner() {
    return owner
}

function excessTokensBurnt() {
    return bool(uint8(stor1.field_160))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    if msg.value > 0:
        call owner with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function burnExcess(uint256 arg1) {
    require balanceOf[address(msg.sender)] >= arg1
    require msg.sender == owner
    require not uint8(stor1.field_160)
    balanceOf[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    sub_7ab29416 = totalSupply / 10
    Mask(96, 0, stor1.field_160) = 1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    if balanceOf[address(arg2)] + arg3 <= balanceOf[address(arg2)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_915ca3c4(?) {
    require msg.sender == owner
    require uint8(stor1.field_160)
    require arg1 > sub_5c02bb8c
    require not stor5
    if arg1 * sub_464db88c > sub_7ab29416:
        if sub_1787d9b1 >= sub_7ab29416:
            return 0
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - sub_7ab29416 + sub_1787d9b1
        totalSupply = totalSupply - sub_7ab29416 + sub_1787d9b1
        emit Burn((sub_7ab29416 - sub_1787d9b1), msg.sender);
        sub_1787d9b1 = sub_7ab29416
        sub_5c02bb8c = arg1
        stor5 = 1
    else:
        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg1 * sub_464db88c) + (sub_5c02bb8c * sub_464db88c)
        totalSupply = totalSupply - (arg1 * sub_464db88c) + (sub_5c02bb8c * sub_464db88c)
        emit Burn(((arg1 * sub_464db88c) - (sub_5c02bb8c * sub_464db88c)), msg.sender);
        sub_1787d9b1 = sub_1787d9b1 + (arg1 * sub_464db88c) - (sub_5c02bb8c * sub_464db88c)
        sub_5c02bb8c = arg1
        if sub_1787d9b1 == sub_7ab29416:
            stor5 = 1
    return 1
}



}
