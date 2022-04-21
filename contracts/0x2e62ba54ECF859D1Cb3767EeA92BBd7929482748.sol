contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
mapping of uint256 stor3;

function _fallback() {
    stor0 = msg.sender
    stor3[code.data[4577 len 20]] = 10^18 * code.data[4597 len 32]
    stor1 += 10^18 * code.data[4597 len 32]
    return code.data[237 len 4328]
}



// =====================  Runtime code  =====================


address rootAddress;
uint256 totalSupply;
mapping of uint8 stor2;
mapping of uint256 balances;
mapping of uint256 allowance;

function getAllowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function modules(address arg1) {
    return bool(stor2[arg1])
}

function getModule(address arg1) {
    return bool(stor2[address(arg1)])
}

function getTotalSupply() {
    return totalSupply
}

function root() {
    return rootAddress
}

function getBalance(address arg1) {
    return balances[address(arg1)]
}

function kill() {
    require rootAddress == msg.sender
    selfdestruct(rootAddress)
}

function _fallback() payable {
    revert
}

function transferRoot(address arg1) {
    require rootAddress == msg.sender
    rootAddress = arg1
}

function decTotalSupply(uint256 arg1) {
    require bool(stor2[address(msg.sender)]) == 1
    totalSupply -= arg1
    return 1
}

function incTotalSupply(uint256 arg1) {
    require bool(stor2[address(msg.sender)]) == 1
    totalSupply += arg1
    return 1
}

function setApprove(address arg1, address arg2, uint256 arg3) {
    require bool(stor2[address(msg.sender)]) == 1
    allowance[address(arg1)][address(arg2)] = arg3
    return 1
}

function decApprove(address arg1, address arg2, uint256 arg3) {
    require bool(stor2[address(msg.sender)]) == 1
    allowance[address(arg1)][address(arg2)] -= arg3
    return 1
}

function setModule(address arg1, bool arg2) {
    require rootAddress == msg.sender
    stor2[address(arg1)] = uint8(arg2)
    emit ModuleSet(arg1, arg2);
    return 1, address(arg1), arg2
}

function sub_486581ea(?) {
    require rootAddress == msg.sender
    call arg1 with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function incBalance(address arg1, uint256 arg2) {
    require bool(stor2[address(msg.sender)]) == 1
    balances[address(arg1)] += arg2
    emit BalanceAdj(arg2, Array(len=1, data='+'), msg.sender, arg1);
    return 1
}

function decBalance(address arg1, uint256 arg2) {
    require bool(stor2[address(msg.sender)]) == 1
    balances[address(arg1)] -= arg2
    emit BalanceAdj(arg2, Array(len=1, data='-'), msg.sender, arg1);
    return 1
}



}
