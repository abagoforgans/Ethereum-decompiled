contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
address stor2; offset 8
uint256 stor3;
mapping of uint256 stor4;

function _fallback() {
    mem[96 len -3923] = code.data[4518 len -3923]
    mem[64] = -3827
    stor4[address(msg.sender)] = mem[96]
    stor3 = mem[96]
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor1[] = Array(len=mem[mem[192] + 96], data=mem[mem[192] + 128 len mem[mem[192] + 96]])
    uint8(stor2.field_0) = mem[191 len 1]
    address(stor2.field_8) = msg.sender
    return code.data[595 len 3923]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address creatorAddress; offset 8
uint256 totalMinted;
mapping of uint256 queryBalance;

function creator() {
    return creatorAddress
}

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function queryBalance(address arg1) {
    return queryBalance[address(arg1)]
}

function balanceOf(address arg1) {
    return queryBalance[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function totalMinted() {
    return totalMinted
}

function _fallback() {
    revert 
}

function changeDecimals(uint8 arg1) {
    if creatorAddress != msg.sender:
        return 0
    decimals = arg1
    return 1
}

function changeName(string arg1) {
    if creatorAddress != msg.sender:
        return 0
    name[] = Array(len=arg1.length, data=arg1[all])
    return 1
}

function changeSymbol(string arg1) {
    if creatorAddress != msg.sender:
        return 0
    symbol[] = Array(len=arg1.length, data=arg1[all])
    return 1
}

function mint(address arg1, uint256 arg2) {
    if msg.sender == creatorAddress:
        require queryBalance[address(arg1)] + arg2 >= queryBalance[address(arg1)]
        require totalMinted + arg2 >= totalMinted
        queryBalance[address(arg1)] += arg2
        totalMinted += arg2
}

function transfer(address arg1, uint256 arg2) {
    require queryBalance[address(msg.sender)] >= arg2
    require queryBalance[address(arg1)] + arg2 >= queryBalance[address(arg1)]
    queryBalance[address(msg.sender)] -= arg2
    queryBalance[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if creatorAddress != msg.sender:
        return 0
    require queryBalance[address(arg1)] >= arg3
    require queryBalance[address(arg2)] + arg3 >= queryBalance[address(arg2)]
    queryBalance[address(arg1)] -= arg3
    queryBalance[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
