contract main {


// =======================  Init code  ======================


mapping of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
uint8 stor3; offset 168
address stor3; offset 8
array of uint256 stor4;

function _fallback() {
    mem[96 len -2579] = code.data[3034 len -2579]
    mem[64] = -2483
    stor0[address(msg.sender)] = mem[96]
    stor1[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    uint8(stor3.field_0) = mem[191 len 1]
    address(stor3.field_8) = msg.sender
    uint8(stor3.field_168) = 8
    uint8(stor4.length) = 12
    stor4.length.field_8 = 0
    stor4.length.field_208 = 252597779146635
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    return code.data[455 len 2579]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint8 sub_4bb6a03d; offset 168
address minterAddress; offset 8
array of uint256 info;
array of uint256 sub_1dd63e73;

function name() {
    return name[0 len name.length]
}

function minter() {
    return minterAddress
}

function sub_1dd63e73(?) {
    return sub_1dd63e73[arg1][0 len sub_1dd63e73[arg1].length]
}

function decimals() {
    return decimals
}

function info() {
    return info[0 len info.length]
}

function sub_4bb6a03d(?) {
    return sub_4bb6a03d
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function _fallback() payable {
    revert
}

function set(uint8 arg1) {
    if minterAddress == msg.sender:
        sub_4bb6a03d = arg1
}

function sub_b9b9fd72(?) {
    if minterAddress == msg.sender:
        balanceOf[address(arg1)] = arg2
}

function sub_39a95316(?) {
    sub_1dd63e73[address(msg.sender)][] = Array(len=arg1.length, data=arg1[all])
}

function mint(uint256 arg1) {
    if minterAddress == msg.sender:
        balanceOf[address(msg.sender)] += arg1
}

function sub_6520ae8c(?) {
    if minterAddress == msg.sender:
        info[] = Array(len=arg1.length, data=arg1[all])
}

function transfer(address arg1, uint256 arg2) {
    if 8 == sub_4bb6a03d:
        if balanceOf[address(msg.sender)] >= arg2:
            if balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]:
                balanceOf[address(msg.sender)] -= arg2
                balanceOf[arg1] += arg2
                emit Transfer(arg2, msg.sender, arg1);
}



}
