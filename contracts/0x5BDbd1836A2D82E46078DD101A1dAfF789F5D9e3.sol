contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
mapping of uint256 balanceOf;
address beneficiaryAddress;
uint256 tokenCreationRate;
mapping of uint256 balance;
mapping of uint8 stor10;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function beneficiary() {
    return beneficiaryAddress
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function tokenCreationRate() {
    return tokenCreationRate
}

function balance(address arg1) {
    return balance[arg1]
}

function blacklist(address arg1) {
    return bool(stor10[arg1])
}

function transfer(address arg1, uint256 arg2) {
    balanceOf[address(msg.sender)] -= arg2
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function _fallback() payable {
    if msg.value:
        totalSupply += msg.value * tokenCreationRate
        balanceOf[address(msg.sender)] += msg.value * tokenCreationRate
        emit Transfer((msg.value * tokenCreationRate), this.address, msg.sender);
    emit FundTransfer(msg.sender, msg.value * tokenCreationRate, 1);
}

function safeWithdrawal(uint256 arg1) {
    if beneficiaryAddress == msg.sender:
        call beneficiaryAddress with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        emit FundTransfer(beneficiaryAddress, arg1, 0);
}



}
