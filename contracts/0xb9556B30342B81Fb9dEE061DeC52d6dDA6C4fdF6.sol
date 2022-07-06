contract main {


// =======================  Init code  ======================


uint256 stor0;
mapping of uint256 stor1;
array of uint256 stor3;
array of uint256 stor4;
uint256 stor5;

function _fallback() payable {
    bool(stor3.length) = 0
    stor3.length.field_1 = 10
    stor3.length.field_8 = 'ECHO CHAIN' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor4.length) = 0
    stor4.length.field_1 = 4
    stor4.length.field_8 = 'ECHO' / 256
    idx = 0
    while stor4.length + 31 / 32 > idx:
        stor4[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor5 = 18
    require not msg.value
    stor1[address(msg.sender)] = 125000 * 10^18 * 3600
    stor0 = 125000 * 10^18 * 3600
    require 125000 * 10^18 * 3600 <= stor1[address(msg.sender)]
    stor1[address(msg.sender)] -= 125000 * 10^18 * 3600
    require stor1[0x8aea876a94936e11fd165cc1cd641d3e9beb76fd] + (125000 * 10^18 * 3600) >= stor1[0x8aea876a94936e11fd165cc1cd641d3e9beb76fd]
    stor1[0x8aea876a94936e11fd165cc1cd641d3e9beb76fd] += 125000 * 10^18 * 3600
    emit Transfer((125000 * 10^18 * 3600), msg.sender, 0x8aea876a94936e11fd165cc1cd641d3e9beb76fd);
    return code.data[1114 len 3368]
}



// =====================  Runtime code  =====================


const sub_2a09b05b(?) = 0x8aea876a94936e11fd165cc1cd641d3e9beb76fd

const TOTAL_SUPPLY = (125000 * 10^18 * 3600)


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
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
    require arg1
    require arg2 > 0
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
