contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint8 stor5;
address stor5; offset 8
mapping of uint256 stor6;

function _fallback() payable {
    bool(stor0.length) = 0
    stor0.length.field_1 = 5
    stor0.length.field_8 = 'KCFOB' / 256
    idx = 0
    while stor0.length + 31 / 32 > idx:
        stor0[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor1.length) = 0
    stor1.length.field_1 = 16
    stor1.length.field_8 = 'KC19700 OP TOKEN' / 256
    idx = 0
    while stor1.length + 31 / 32 > idx:
        stor1[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor2 = 10000000 * 10^18
    stor3 = 38000000 * 10^18
    stor4 = 0
    uint8(stor5.field_0) = 1
    require not msg.value
    address(stor5.field_8) = msg.sender
    stor6[address(msg.sender)] = stor2
    return code.data[567 len 5780]
}



// =====================  Runtime code  =====================


const decimals = 18

const tokensPerEther = 3500


array of uint256 symbol;
array of uint256 name;
uint256 _totalSupply;
uint256 _maxSupply;
uint256 totalContribution;
uint8 stor5;
address owner; offset 8
mapping of uint256 balanceOf;
mapping of uint256 allowed;

function name() {
    return name[0 len name.length]
}

function totalContribution() {
    return totalContribution
}

function totalSupply() {
    return _totalSupply
}

function _maxSupply() {
    return _maxSupply
}

function getStats2() {
    return bool(stor5)
}

function _totalSupply() {
    return _totalSupply
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function purchasingAllowed() {
    return bool(stor5)
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function enablePurchasing() {
    require msg.sender == owner
    stor5 = 1
}

function disablePurchasing() {
    require msg.sender == owner
    stor5 = 0
}

function getStats() {
    return totalContribution, _totalSupply, bool(stor5)
}

function withdraw() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function approve(address arg1, uint256 arg2) {
    if arg2:
        require not allowed[address(msg.sender)][address(arg1)]
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require balanceOf[address(msg.sender)] >= arg2
    require arg2 > 0
    require arg1
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    require calldata.size >= 68
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function _fallback() payable {
    require msg.value > 0
    require stor5
    require _totalSupply < _maxSupply
    if msg.value:
        require msg.value
        require 3500 * msg.value / msg.value == 3500
    require balanceOf[address(msg.sender)] + (3500 * msg.value) >= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += 3500 * msg.value
    call owner with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require totalContribution + msg.value >= totalContribution
    totalContribution += msg.value
    require _totalSupply + (3500 * msg.value) >= _totalSupply
    _totalSupply += 3500 * msg.value
    emit Transfer((3500 * msg.value), this.address, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require allowed[address(arg1)][address(msg.sender)] >= arg3
    require balanceOf[address(arg1)] >= arg3
    require arg3 > 0
    require arg2
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    require calldata.size >= 68
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    require arg3 <= allowed[address(arg1)][address(msg.sender)]
    allowed[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}



}
