contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor2;
array of uint256 stor3;
uint8 stor4;
uint256 stor5;
uint256 stor6;
address stor7;
mapping of uint256 stor9;

function _fallback() {
    stor0 = msg.sender
    bool(stor2.length) = 0
    stor2.length.field_1 = 4
    stor2.length.field_8 = 'LIRA' / 256
    idx = 0
    while stor2.length + 31 / 32 > idx:
        stor2[idx].field_0 = 0
        idx = idx + 1
        continue 
    bool(stor3.length) = 0
    stor3.length.field_1 = 7
    stor3.length.field_8 = 'BitLIRA' / 256
    idx = 0
    while stor3.length + 31 / 32 > idx:
        stor3[idx].field_0 = 0
        idx = idx + 1
        continue 
    stor4 = 0
    stor6 = 1161
    stor5 = 35682500000 * 3600
    stor9[address(msg.sender)] = stor5
    stor7 = msg.sender
    emit Transfer(stor5, 0, msg.sender);
    return code.data[722 len 6548]
}



// =====================  Runtime code  =====================


address owner;
address newOwner;
array of uint256 symbol;
array of uint256 name;
uint8 decimals;
uint256 _totalSupply;
uint256 _rate;
address stor7;
uint256 weiRaised;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

function name() {
    return name[0 len name.length]
}

function decimals() {
    return decimals
}

function _totalSupply() {
    return _totalSupply
}

function weiRaised() {
    return weiRaised
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function _rate() {
    return _rate
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function newOwner() {
    return newOwner
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalSupply() {
    return (_totalSupply - balanceOf[0])
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    newOwner = arg1
}

function safeSub(uint256 arg1, uint256 arg2) {
    require arg2 <= arg1
    return (arg1 - arg2)
}

function safeAdd(uint256 arg1, uint256 arg2) {
    require arg1 + arg2 >= arg1
    return (arg1 + arg2)
}

function safeDiv(uint256 arg1, uint256 arg2) {
    require arg2 > 0
    require arg2
    return (arg1 / arg2)
}

function safeMul(uint256 arg1, uint256 arg2) {
    if arg1:
        require arg1
        require arg1 * arg2 / arg1 == arg2
    return (arg1 * arg2)
}

function acceptOwnership() {
    require msg.sender == newOwner
    emit OwnershipTransferred(owner, newOwner);
    owner = newOwner
    newOwner = 0
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferAnyERC20Token(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor7, arg2
    require ext_call.success
    return bool(ext_call.return_data[0])
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address rg1, uint256 rg2, address rg3, bytes rg4) with:
         gas gas_remaining - 710 wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    require ext_call.success
    return 1
}

function buyTokens(address arg1) payable {
    require arg1
    if msg.value >= 10^15:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        if msg.value / 10^15:
            require msg.value / 10^15
            require msg.value / 10^15 * _rate / msg.value / 10^15 == _rate
        require msg.value / 10^15 * _rate <= balanceOf[stor7]
        balanceOf[stor7] += -1 * msg.value / 10^15 * _rate
        require balanceOf[address(arg1)] + (msg.value / 10^15 * _rate) >= balanceOf[address(arg1)]
        balanceOf[address(arg1)] += msg.value / 10^15 * _rate
        emit Transfer((msg.value / 10^15 * _rate), stor7, arg1);
        call stor7 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function _fallback() payable {
    require msg.sender
    if msg.value >= 10^15:
        require weiRaised + msg.value >= weiRaised
        weiRaised += msg.value
        if msg.value / 10^15:
            require msg.value / 10^15
            require msg.value / 10^15 * _rate / msg.value / 10^15 == _rate
        require msg.value / 10^15 * _rate <= balanceOf[stor7]
        balanceOf[stor7] += -1 * msg.value / 10^15 * _rate
        require balanceOf[address(msg.sender)] + (msg.value / 10^15 * _rate) >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] += msg.value / 10^15 * _rate
        emit Transfer((msg.value / 10^15 * _rate), stor7, msg.sender);
        call stor7 with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}



}
