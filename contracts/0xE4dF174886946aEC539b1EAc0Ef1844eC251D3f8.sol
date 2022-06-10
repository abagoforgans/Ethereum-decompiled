contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint8 stor2;
uint256 stor3;
uint256 stor4;
address stor6;
mapping of uint256 stor7;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 4
    stor0.length.field_8 = 'Dope' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 4
    stor1.length.field_8 = 'DPTK' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 8
    stor4 = 10^18
    require not msg.value
    stor3 = stor4
    stor7[address(msg.sender)] = stor3
    stor6 = msg.sender
    return code.data[536 len 2581]
}



// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 bestEtherSupply;
uint256 price;
address creatorAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function creator() {
    return creatorAddress
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function BestEtherSupply() {
    return bestEtherSupply
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function price() {
    return price
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require balanceOf[address(msg.sender)] >= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function _fallback() payable {
    if price >= 0:
        require balanceOf[stor6] >= 975 * 10^15
        require msg.value < 25 * 10^13 * 3600
        balanceOf[address(msg.sender)] += 5 * 10^13
        balanceOf[stor6] -= 5 * 10^13
        emit Transfer(5 * 10^13, creatorAddress, msg.sender);
        call creatorAddress with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
