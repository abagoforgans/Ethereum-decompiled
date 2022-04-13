contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 3
    stor0.length.field_8 = '1.0' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    require not msg.value
    return code.data[267 len 2587]
}



// =====================  Runtime code  =====================


array of uint256 standard;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
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

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function destroy() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function invest(uint256 arg1) {
    require owner == msg.sender
    require arg1 > 0
    stor6 += arg1
}

function approve(address arg1, uint256 arg2) {
    require arg2 > 0
    allowed[address(msg.sender)][address(arg1)] = arg2
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    require arg2 > 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
}

function Contract(uint256 arg1, string arg2, uint8 arg3, string arg4) {
    stor6 = arg1
    balanceOf[address(msg.sender)] = arg1
    name[] = Array(len=arg2.length, data=arg2[all])
    symbol[] = Array(len=arg4.length, data=arg4[all])
    decimals = arg3
    owner = msg.sender
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    require arg3 > 0
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowed[address(arg1)][address(msg.sender)] -= arg3
}



}
