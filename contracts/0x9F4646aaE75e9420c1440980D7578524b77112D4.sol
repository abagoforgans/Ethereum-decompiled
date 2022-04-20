contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint16 stor14;
uint256 stor14; offset 16
uint256 stor15;
mapping of uint256 stor16;

function _fallback() payable {
    bool(stor1.length) = 0
    stor1.length.field_1 = 9
    stor1.length.field_8 = 'Token 0.1' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    stor4 = 3
    stor16[address(msg.sender)] = 11 * 10^9
    stor5 = 2 * 10^10
    bool(stor2.length) = 0
    stor2.length.field_1 = 10
    stor2.length.field_8 = 'Zero Token' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 3
    stor3.length.field_8 = 'ZRT' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor6 = 1509723000
    stor7 = 1509724500
    stor9 = 500000
    stor8 = 10^9
    stor10 = 0
    stor11 = 419368 * 3600
    stor12 = 1509726600
    uint16(stor14.field_0) = uint16(1000 * uint8(10 * stor4))
    Mask(240, 0, stor14.field_16) = 0
    stor13 = stor5
    stor15 = 0
    return code.data[750 len 5232]
}



// =====================  Runtime code  =====================


#
#  - buy()
#
address owner;
array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 sub_0466e1be;
uint256 sub_57a316e0;
uint256 sub_e06bf280;
uint256 sub_2efc427e;
uint256 sub_d7d4ab4a;
uint256 sub_5096a9c6;
uint256 sub_b323526b;
uint256 sub_88f9cc0a;
uint256 sub_a7230c00;
uint256 sub_078c2b2f;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function sub_0466e1be(?) {
    return sub_0466e1be
}

function name() {
    return name[0 len name.length]
}

function sub_078c2b2f(?) {
    return sub_078c2b2f
}

function totalSupply() {
    return totalSupply
}

function sub_2efc427e(?) {
    return sub_2efc427e
}

function decimals() {
    return decimals
}

function sub_5096a9c6(?) {
    return sub_5096a9c6
}

function sub_57a316e0(?) {
    return sub_57a316e0
}

function standard() {
    return standard[0 len standard.length]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_88f9cc0a(?) {
    return sub_88f9cc0a
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a7230c00(?) {
    return sub_a7230c00
}

function sub_b323526b(?) {
    return sub_b323526b
}

function Owner() {
    return owner
}

function sub_d7d4ab4a(?) {
    return sub_d7d4ab4a
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function sub_e06bf280(?) {
    return sub_e06bf280
}

function _fallback() payable {
    revert
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require balanceOf[address(arg1)] >= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[address(arg2)] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function safeWithdrawal(uint256 arg1) {
    require msg.sender == owner
    require eth.balance(this.address) >= arg1
    if block.timestamp <= sub_57a316e0:
        if block.timestamp > sub_b323526b:
            call owner with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit Transfer(arg1, this.address, msg.sender);
    else:
        if block.timestamp < sub_5096a9c6:
            call owner with:
               value arg1 wei
                 gas 2300 * is_zero(value) wei
            if ext_call.success:
                emit Transfer(arg1, this.address, msg.sender);
        else:
            if block.timestamp > sub_b323526b:
                call owner with:
                   value arg1 wei
                     gas 2300 * is_zero(value) wei
                if ext_call.success:
                    emit Transfer(arg1, this.address, msg.sender);
}



}
