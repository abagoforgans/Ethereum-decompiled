contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
address stor3;
uint8 stor4; offset 160

function _fallback() payable {
    stor4 = 0
    require not msg.value
    stor0[address(msg.sender)] = 2 * 10^9
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'TokenTest' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 2
    stor2.length.field_8 = 'TT' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = msg.sender
    return code.data[414 len 2155]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
address stor3;
uint8 stor4; offset 160
uint128 stor4; offset 160
address stor4;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function close() {
    require stor3 == msg.sender
    selfdestruct(stor3)
}

function setContract(address arg1) {
    require stor3 == msg.sender
    address(stor4.field_0) = arg1
}

function sub_11c57059(?) {
    require stor3 == msg.sender
    Mask(96, 0, stor4.field_160) = Mask(96, 0, arg1)
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    return 1
}

function _fallback() payable {
    call stor3 with:
       value 9 * msg.value / 10 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function mintToken(address arg1, uint256 arg2) {
    require address(stor4.field_0) == msg.sender
    if bool(uint8(stor4.field_160)) != 1:
        balanceOf[address(arg1)] += arg2
}

function transfer(address arg1, uint256 arg2) {
    if bool(uint8(stor4.field_160)) != 1:
        if balanceOf[address(msg.sender)] >= arg2:
            if balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]:
                balanceOf[address(msg.sender)] -= arg2
                balanceOf[arg1] += arg2
                emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        return 0
    if arg3 > allowance[address(arg1)][address(msg.sender)]:
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
