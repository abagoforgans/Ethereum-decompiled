contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[81 len 3356]
}



// =====================  Runtime code  =====================


uint8 stor0; offset 160
address owner;
uint256 buyPrice;
uint256 sub_b1c7a623;
uint256 totalSupply;
address sub_49fc06beAddress;
mapping of uint256 balanceOf;
uint256 stor6;

function totalSupply() {
    return totalSupply
}

function sub_2c51302a(?) {
    return bool(uint8(stor0.field_160))
}

function sub_49fc06be(?) {
    return sub_49fc06beAddress
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function buyPrice() {
    return buyPrice
}

function owner() {
    return owner
}

function sub_b1c7a623(?) {
    return sub_b1c7a623
}

function _fallback() payable {
  stop
}

function sub_9c243f14(?) {
    require msg.sender == owner
    sub_b1c7a623 = arg1
}

function sub_545743a8(?) {
    require msg.sender == owner
    sub_49fc06beAddress = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setMinBalance(uint256 arg1) {
    require msg.sender == owner
    stor6 = 10^15 * arg1
}

function sub_9dda87ac(?) {
    require msg.sender == owner
    uint8(stor0.field_160) = arg1
    buyPrice = arg2
}

function sub_4a501381(?) {
    if eth.balance(msg.sender) >= stor6:
    call msg.sender with:
       value stor6 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg2)] += arg3
    balanceOf[address(arg1)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    if eth.balance(msg.sender) >= stor6:
        return 1
    call msg.sender with:
       value stor6 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function buy() payable {
    if not uint8(stor0.field_160):
        call sub_49fc06beAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    require sub_b1c7a623
    call owner with:
       value msg.value / sub_b1c7a623 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require sub_b1c7a623
    call sub_49fc06beAddress with:
       value msg.value - (msg.value / sub_b1c7a623) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require buyPrice
    balanceOf[address(msg.sender)] += msg.value / buyPrice
    require sub_b1c7a623
    balanceOf[address(stor0.field_0)] += msg.value / buyPrice / sub_b1c7a623
    totalSupply += msg.value / buyPrice
    emit Transfer((msg.value / buyPrice), this.address, msg.sender);
    emit Transfer((msg.value / buyPrice / sub_b1c7a623), this.address, owner);
}



}
