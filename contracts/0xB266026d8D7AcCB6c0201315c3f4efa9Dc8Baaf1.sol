contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint128 stor2; offset 160
address stor2;
mapping of uint256 stor3;

function _fallback() payable {
    stor0 = 10^15
    stor1 = 300000
    Mask(96, 0, stor2.field_160) = 0
    require not msg.value
    address(stor2.field_0) = msg.sender
    stor3[address(stor2.field_0)] = stor0
    return code.data[247 len 4530]
}



// =====================  Runtime code  =====================


const name = 'API Heaven clouds'

const decimals = 0

const symbol = ''


uint256 totalSupply;
uint256 cloudsPerEth;
uint8 stor2; offset 160
uint128 stor2; offset 160
address owner;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function totalSupply() {
    return totalSupply
}

function selling() {
    return bool(uint8(stor2.field_160))
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function cloudsPerEth() {
    return cloudsPerEth
}

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function changeCloudsPerEth(uint256 arg1) {
    require msg.sender == owner
    cloudsPerEth = arg1
}

function changeSale(bool arg1) {
    require msg.sender == owner
    Mask(96, 0, stor2.field_160) = Mask(96, 0, arg1)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    balanceOf[address(arg1)] = balanceOf[address(stor2.field_0)]
    balanceOf[address(stor2.field_0)] = 0
    owner = arg1
}

function sale() payable {
    require uint8(stor2.field_160)
    require balanceOf[address(stor2.field_0)] >= msg.value / 10^15 * cloudsPerEth
    balanceOf[address(msg.sender)] += msg.value / 10^15 * cloudsPerEth
    balanceOf[address(stor2.field_0)] += -1 * msg.value / 10^15 * cloudsPerEth
    emit Transfer((msg.value / 10^15 * cloudsPerEth), owner, msg.sender);
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



}
