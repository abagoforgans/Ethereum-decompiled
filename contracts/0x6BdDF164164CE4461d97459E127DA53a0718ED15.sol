contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 3
    stor0.length.field_8 = 'WJT' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 11
    stor1.length.field_8 = 'Wojak Token' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 0
    stor3 = 438288 * 24 * 3600
    stor4 = 320000 * 10^18
    stor5 = stor4
    stor6 = 0
    require not msg.value
    return code.data[390 len 3662]
}



// =====================  Runtime code  =====================


const decimals = 18


array of uint256 symbol;
array of uint256 name;
uint256 totalSupply;
uint256 sub_a3d67cb6;
uint256 sub_77edc72e;
uint256 stor5; offset 1
uint256 sub_4c431dbd;
uint256 sub_074422fe;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function sub_074422fe(?) {
    return sub_074422fe
}

function totalSupply() {
    return totalSupply
}

function sub_4c431dbd(?) {
    return sub_4c431dbd
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_77edc72e(?) {
    return sub_77edc72e
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a3d67cb6(?) {
    return sub_a3d67cb6
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function Mint() {
    if block.timestamp > sub_a3d67cb6:
        sub_4c431dbd = stor5
        sub_a3d67cb6 += 8760 * 24 * 3600
    balanceOf[address(msg.sender)] += sub_4c431dbd
    totalSupply += sub_4c431dbd
    emit Transfer(sub_4c431dbd, this.address, msg.sender);
    sub_074422fe++
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
