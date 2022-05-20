contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 totalSupply;
uint256 fee;
address feeAccount;
uint256 sub_ad58ce1e;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor9;

function name() {
    return name[0 len name.length]
}

function getAllowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalSupply() {
    return totalSupply
}

function sub_2bac6a2d(?) {
    return sub_ad58ce1e
}

function decimals() {
    return decimals
}

function getFeeAccount() {
    return feeAccount
}

function feeAccount() {
    return feeAccount
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_ad58ce1e(?) {
    return sub_ad58ce1e
}

function frozenAccount(address arg1) {
    return bool(stor9[arg1])
}

function getFrozenAccount(address arg1) {
    return bool(stor9[address(arg1)])
}

function getFee() {
    return fee
}

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function fee() {
    return fee
}

function getBalance(address arg1) {
    return balanceOf[address(arg1)]
}

function _fallback() payable {
    revert
}

function setFee(uint256 arg1) {
    fee = arg1
}

function sub_dbe8e82c(?) {
    sub_ad58ce1e = arg1
}

function setFeeAccount(address arg1) {
    feeAccount = arg1
}

function setTotalSupply(uint256 arg1) {
    totalSupply = arg1
}

function setBalance(address arg1, uint256 arg2) {
    balanceOf[address(arg1)] = arg2
}

function emitTransfer(address arg1, address arg2, uint256 arg3) {
    emit Transfer(arg3, arg1, arg2);
}

function setAllowance(address arg1, address arg2, uint256 arg3) {
    allowance[address(arg1)][address(arg2)] = arg3
}

function setFrozenAccount(address arg1, bool arg2) {
    stor9[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}



}
