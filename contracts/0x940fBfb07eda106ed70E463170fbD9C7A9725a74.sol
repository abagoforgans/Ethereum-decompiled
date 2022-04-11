contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint8 stor3;
uint256 stor4;

function _fallback() payable {
    stor0 = 0xa3f0a6203ec528535577ec9236242ab21fe8ecef
    require not msg.value
    stor3 = 0
    stor1 = msg.sender
    stor4 = 0
    return code.data[215 len 2175]
}



// =====================  Runtime code  =====================


const minRequired = 10^18

const maxLimit = 5 * 10^18


address ethFundDepositAddress;
address owner;
mapping of uint256 whiteList;
uint8 stor3;
uint256 totalSupply;
mapping of uint256 balances;

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function whiteList(address arg1) {
    return whiteList[arg1]
}

function isFinalized() {
    return bool(stor3)
}

function owner() {
    return owner
}

function ethFundDeposit() {
    return ethFundDepositAddress
}

function setWhiteList(address arg1) {
    require msg.sender == owner
    whiteList[address(arg1)] = 1
}

function removeWhiteList(address arg1) {
    require msg.sender == owner
    whiteList[address(arg1)] = 0
}

function finalize() {
    require msg.sender == owner
    require not stor3
    stor3 = 1
    call ethFundDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function _fallback() payable {
    require totalSupply + msg.value >= totalSupply
    require totalSupply + msg.value >= msg.value
    require msg.value >= 10^18
    require not stor3
    require totalSupply + msg.value <= 5 * 10^18
    require whiteList[address(msg.sender)] == 1
    require balances[address(msg.sender)] + msg.value >= balances[address(msg.sender)]
    require balances[address(msg.sender)] + msg.value >= msg.value
    balances[address(msg.sender)] += msg.value
    require totalSupply + msg.value >= totalSupply
    require totalSupply + msg.value >= msg.value
    totalSupply += msg.value
    emit Contribution(msg.value, msg.sender);
    call ethFundDepositAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
