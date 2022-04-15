contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
bool stor3; offset 256
uint8 stor3; offset 160
address stor3;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 5
    stor0.length.field_8 = 'DTIME' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 12
    stor1.length.field_8 = 'Diamond time' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 65000
    address(stor3.field_0) = 0xf85d98f74ec26cecd2acff6b7ef06bb5b933923b
    uint8(stor3.field_160) = 0
    stor3.field_256 % 1 = 0
    require not msg.value
    address(stor3.field_0) = code.data[2819 len 20]
    return code.data[447 len 2360]
}



// =====================  Runtime code  =====================


const decimals = 18


array of uint256 symbol;
array of uint256 name;
uint256 totalSupply;
uint8 stor3; offset 160
address stor3;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
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

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    if balanceOf[address(arg1)] + arg2 <= balanceOf[address(arg1)]:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function SetupToken(string arg1, string arg2, uint256 arg3) {
    if address(stor3.field_0) == msg.sender:
        if not uint8(stor3.field_160):
            symbol[] = Array(len=arg2.length, data=arg2[all])
            name[] = Array(len=arg1.length, data=arg1[all])
            totalSupply = 10^18 * arg3
            balanceOf[address(stor3.field_0)] = 10^18 * arg3
            uint8(stor3.field_160) = 1
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
