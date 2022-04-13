contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;
uint256 stor3;
uint8 stor5;

function _fallback() {
    stor0 = msg.sender
    stor5 = 1
    stor3 = 0
    stor2 = 0
    stor1 = 0xa82ee9c06b39bde11653aeb5671fb97b2267d3cd
    return code.data[225 len 2880]
}



// =====================  Runtime code  =====================


address owner;
address sub_2eccd877Address;
uint256 sub_4ecc365f;
uint256 cost;
uint256 stor4;
uint8 stor5;

function cost() {
    return cost
}

function enabled() {
    return bool(stor5)
}

function responder() {
    return sub_2eccd877Address
}

function sub_2eccd877(?) {
    return sub_2eccd877Address
}

function sub_4708e04f(?) {
    return sub_4ecc365f
}

function sub_4ecc365f(?) {
    return sub_4ecc365f
}

function isEnabled() {
    return bool(stor5)
}

function owner() {
    return owner
}

function getCost() {
    return cost
}

function kill() {
    require msg.sender == owner
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function sub_c71ce36f(?) {
    require msg.sender == owner
    sub_2eccd877Address = arg1
}

function disableContract(bool arg1) {
    require msg.sender == owner
    stor5 = uint8(arg1)
}

function sub_0cec5b93(?) {
    if owner != msg.sender:
        require msg.sender == sub_2eccd877Address
    cost = arg1
    sub_4ecc365f = arg2
}

function sub_33f6cfb2(?) payable {
    require msg.value == cost
    require stor5
    call sub_2eccd877Address with:
       value cost wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor4++
    emit 0x6cf9e4a5: stor4, Array(len=arg1.length, data=arg1[all]), arg1.length + 160, arg1.length + arg2.length + 192
    return stor4
}

function sub_3d81e455(?) payable {
    require msg.value == sub_4ecc365f
    require stor5
    call sub_2eccd877Address with:
       value sub_4ecc365f wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor4++
    emit 0x2c6d1ac6: stor4, Array(len=arg1.length, data=arg1[all]), arg1.length + 224, arg1.length + arg2.length + 256, arg1.length + arg2.length + arg3.length + 288, address(arg4)
    return stor4
}



}
