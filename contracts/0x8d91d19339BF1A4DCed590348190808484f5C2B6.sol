contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowed;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
address stor6;
uint256 fundingEnd;
uint8 discountMultiplier;
uint8 discountDecimal; offset 8
array of uint256 version;

function name() {
    return name[0 len name.length]
}

function fundingEnd() {
    return fundingEnd
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function decimals() {
    return decimals
}

function version() {
    return version[0 len version.length]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function discountDecimal() {
    return discountDecimal
}

function balanceOf(address arg1) {
    return balances[address(arg1)]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function discountMultiplier() {
    return discountMultiplier
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function kill() {
    require msg.sender == stor6
    selfdestruct(stor6)
}

function _fallback() payable {
  stop
}

function isFundingOpen() {
    return (block.timestamp < fundingEnd)
}

function endFunding(uint256 arg1) {
    require msg.sender == stor6
    require block.timestamp < fundingEnd
    fundingEnd = arg1
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function distribute(address arg1, uint256 arg2) {
    require msg.sender == stor6
    require block.timestamp < fundingEnd
    totalSupply += arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, stor6, arg1);
}

function transfer(address arg1, uint256 arg2) {
    require balances[address(msg.sender)] >= arg2
    balances[address(msg.sender)] -= arg2
    balances[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function withdraw() {
    require msg.sender == stor6
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require balances[address(arg1)] >= arg3
    require allowed[address(arg1)][address(msg.sender)] >= arg3
    balances[address(arg2)] += arg3
    balances[address(arg1)] -= arg3
    if allowed[address(arg1)][address(msg.sender)] < -1:
        allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
