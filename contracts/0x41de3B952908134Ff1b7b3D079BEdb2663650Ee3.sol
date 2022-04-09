contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor2; offset 184
uint64 stor2; offset 192
uint128 stor2;
uint128 stor2; offset 80
address stor2;
uint256 stor2;
uint256 stor3;
mapping of uint256 stor4;

function _fallback() payable {
    Mask(184, 0, stor2.field_0) = Mask(184, 0, 'WOW')
    address(stor2.field_0) = address('Wow Coin')
    Mask(80, 0, stor2.field_0) = Mask(80, 0, 'Token 0.1')
    Mask(104, 0, stor2.field_80) = 0
    uint8(stor2.field_184) = 2
    uint64(stor2.field_192) = Mask(64, 192, 'WOW') >> 192
    uint64(stor2.field_192) = 'Wow Coin'
    uint64(stor2.field_192) = Mask(64, 192, 'Token 0.1') >> 192
    require not msg.value
    stor4[address(msg.sender)] = code.data[1607 len 32]
    stor3 = code.data[1607 len 32]
    stor0 = msg.sender
    return code.data[233 len 1374]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 sub_92b1f8e5;
uint8 decimals; offset 184
uint128 standard;
uint128 symbol; offset 160
uint256 name; offset 80
uint256 totalSupply;
mapping of uint256 balanceOf;

function name() {
    return (name << 176)
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function standard() {
    return Mask(80, 176, standard)
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_92b1f8e5(?) {
    return sub_92b1f8e5[arg1][arg2]
}

function symbol() {
    return (symbol << 232)
}

function _fallback() payable {
    revert
}

function sub_8dcd69c1(?) {
    require stor0 == msg.sender
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    sub_92b1f8e5[address(arg1)][arg3] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function sub_8f878ca8(?) {
    require sub_92b1f8e5[address(msg.sender)][arg1] >= arg3
    require balanceOf[address(msg.sender)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(msg.sender)] -= arg3
    balanceOf[arg2] += arg3
    sub_92b1f8e5[address(msg.sender)][arg1] -= arg3
    sub_92b1f8e5[address(arg2)][arg1] += arg3
    emit Transfer(arg3, msg.sender, arg2);
}



}
