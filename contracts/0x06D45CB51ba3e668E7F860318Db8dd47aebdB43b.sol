contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 sub_a13c3ecb;
uint256 airDropNum;
mapping of uint256 stor5;
mapping of uint8 stor6;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return sub_a13c3ecb
}

function airDropNum() {
    return airDropNum
}

function decimals() {
    return decimals
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a13c3ecb(?) {
    return sub_a13c3ecb
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit 0xf75aeebf: arg2, msg.sender, arg1
    return 1
}

function airDrop(address arg1) {
    if not stor6[address(arg1)]:
        stor6[address(arg1)] = 1
        require stor5[address(arg1)] + airDropNum >= stor5[address(arg1)]
        stor5[address(arg1)] += airDropNum
        emit 0xcb5bca34: arg1
    return 1
}

function balanceOf(address arg1) {
    if not stor6[address(arg1)]:
        stor6[address(arg1)] = 1
        require stor5[address(arg1)] + airDropNum >= stor5[address(arg1)]
        stor5[address(arg1)] += airDropNum
        emit 0xcb5bca34: arg1
    return stor5[address(arg1)]
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= stor5[address(msg.sender)]
    require arg1
    require arg2 <= stor5[address(msg.sender)]
    stor5[address(msg.sender)] -= arg2
    require stor5[address(arg1)] + arg2 >= stor5[address(arg1)]
    stor5[address(arg1)] += arg2
    emit 0x64af04e5: arg2, msg.sender, arg1
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= stor5[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require arg2
    require arg3 <= stor5[address(arg1)]
    stor5[address(arg1)] -= arg3
    require stor5[address(arg2)] + arg3 >= stor5[address(arg2)]
    stor5[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit 0x64af04e5: arg3, arg1, arg2
    return 1
}



}
