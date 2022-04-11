contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;
address stor3; offset 8
mapping of uint256 stor4;
uint256 stor6;

function _fallback() payable {
    mem[128] = '1.0'
    bool(stor0.length) = 0
    stor0.length.field_1 = 3
    stor0.length.field_8 = '1.0' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    mem[160 len -2012] = code.data[2448 len -2012]
    stor6 = mem[160]
    stor4[address(msg.sender)] = mem[160]
    stor1[] = Array(len=mem[mem[192] + 160], data=mem[mem[192] + 192 len mem[mem[192] + 160]])
    stor2[] = Array(len=mem[mem[256] + 160], data=mem[mem[256] + 192 len mem[mem[256] + 160]])
    uint8(stor3.field_0) = mem[255 len 1]
    address(stor3.field_8) = msg.sender
    return code.data[436 len 2012]
}



// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address stor3; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowed;
uint256 stor6;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function standard() {
    return standard[0 len standard.length]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function destroy() {
    require stor3 == msg.sender
    selfdestruct(stor3)
}

function _fallback() payable {
    revert
}

function invest(uint256 arg1) {
    require stor3 == msg.sender
    stor6 += arg1
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
}

function transfer(address arg1, uint256 arg2) {
    if balanceOf[address(msg.sender)] >= arg2:
        require arg2 <= 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] >= arg3:
        require arg3 <= 0
    require allowed[address(arg1)][address(msg.sender)] < arg3
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowed[address(arg1)][address(msg.sender)] -= arg3
}



}
