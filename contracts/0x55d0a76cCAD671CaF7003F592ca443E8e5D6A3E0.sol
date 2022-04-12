contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint256 stor4;
mapping of uint256 stor5;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 11
    stor0.length.field_8 = 'ShuCoin 0.3' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 7
    stor1.length.field_8 = 'ShuCoin' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor2.length) = 0
    stor2.length.field_1 = 3
    stor2.length.field_8 = 'SHU' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor3 = 0
    stor4 = 10^6
    require not msg.value
    stor5[address(msg.sender)] = stor4
    return code.data[458 len 3195]
}



// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 sub_65c39ee7;
mapping of uint256 sub_33d8a15d;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_33d8a15d(?) {
    return sub_33d8a15d[arg1][arg2]
}

function standard() {
    return standard[0 len standard.length]
}

function sub_65c39ee7(?) {
    return sub_65c39ee7[arg1]
}

function balanceOf(address arg1) {
    return sub_65c39ee7[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return sub_33d8a15d[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    sub_33d8a15d[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1) {
    require sub_65c39ee7[address(msg.sender)] >= arg1
    sub_65c39ee7[address(msg.sender)] -= arg1
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require sub_65c39ee7[address(arg1)] >= arg2
    require arg2 <= sub_33d8a15d[address(arg1)][address(msg.sender)]
    sub_65c39ee7[address(arg1)] -= arg2
    totalSupply -= arg2
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require sub_65c39ee7[address(msg.sender)] >= arg2
    require sub_65c39ee7[address(arg1)] + arg2 >= sub_65c39ee7[address(arg1)]
    sub_65c39ee7[address(msg.sender)] -= arg2
    sub_65c39ee7[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    sub_33d8a15d[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2
    require sub_65c39ee7[address(arg1)] >= arg3
    require sub_65c39ee7[address(arg2)] + arg3 >= sub_65c39ee7[address(arg2)]
    require arg3 <= sub_33d8a15d[address(arg1)][address(msg.sender)]
    sub_65c39ee7[address(arg1)] -= arg3
    sub_65c39ee7[arg2] += arg3
    sub_33d8a15d[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
