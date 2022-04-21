contract main {


// =======================  Init code  ======================


address stor6;

function _fallback() {
    stor6 = msg.sender
    return code.data[62 len 3729]
}



// =====================  Runtime code  =====================


array of uint256 symbol;
array of uint256 name;
uint8 stor2;
uint256 decimals;
uint256 restrictUntil;
uint256 totalSupply;
address owner;
address restrictedAcctAddress;
mapping of uint256 balanceOf;
mapping of uint256 allowance;

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

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function restrictUntil() {
    return restrictUntil
}

function isLocked() {
    return bool(stor2)
}

function restrictedAcct() {
    return restrictedAcctAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function haraKiri() {
    require owner == msg.sender
    require not stor2
    selfdestruct(owner)
}

function lock() {
    require owner == msg.sender
    stor2 = 1
}

function _fallback() payable {
    emit PaymentEvent(msg.value, msg.sender);
}

function tokenValue() {
    require totalSupply
    return (eth.balance(this.address) / totalSupply)
}

function valueOf(address arg1) {
    require totalSupply
    return (eth.balance(this.address) * balanceOf[address(arg1)] / totalSupply)
}

function initTokenSupply(uint256 arg1) {
    require owner == msg.sender
    require not totalSupply
    totalSupply = arg1
    balanceOf[stor6] = arg1
}

function setRestrictedAcct(address arg1, uint256 arg2) {
    require owner == msg.sender
    require not stor2
    restrictedAcctAddress = arg1
    restrictUntil = arg2
}

function setName(string arg1, string arg2, uint256 arg3) {
    require owner == msg.sender
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    decimals = arg3
}

function approve(address arg1, uint256 arg2) {
    if restrictedAcctAddress == msg.sender:
        require block.timestamp >= restrictUntil
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit ApprovalEvent(arg2, msg.sender, arg1);
    return 1
}

function unPaidBurnTokens(uint256 arg1) {
    if restrictedAcctAddress == msg.sender:
        require block.timestamp >= restrictUntil
    if balanceOf[address(msg.sender)] >= arg1:
        if arg1 > 0:
            totalSupply -= arg1
            balanceOf[address(msg.sender)] -= arg1
            emit BurnEvent(arg1, 0, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    if restrictedAcctAddress == msg.sender:
        require block.timestamp >= restrictUntil
    if balanceOf[address(msg.sender)] < arg2:
        return 0
    if arg2 <= 0:
        return 0
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[arg1] += arg2
    emit TransferEvent(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if balanceOf[address(arg1)] < arg3:
        return 0
    if allowance[address(arg1)][address(msg.sender)] < arg3:
        return 0
    if arg3 <= 0:
        return 0
    balanceOf[address(arg1)] -= arg3
    balanceOf[arg2] += arg3
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit TransferEvent(arg3, arg1, arg2);
    return 1
}

function burnTokens(uint256 arg1) {
    if restrictedAcctAddress == msg.sender:
        require block.timestamp >= restrictUntil
    if balanceOf[address(msg.sender)] >= arg1:
        if arg1 > 0:
            require totalSupply
            totalSupply -= arg1
            balanceOf[address(msg.sender)] -= arg1
            call msg.sender with:
               value eth.balance(this.address) * arg1 / totalSupply wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit BurnEvent(arg1, eth.balance(this.address) * arg1 / totalSupply, msg.sender);
}



}
