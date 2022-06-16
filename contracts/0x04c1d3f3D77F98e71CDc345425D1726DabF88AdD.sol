contract main {




// =====================  Runtime code  =====================


uint256 lockRequestCount;
address custodianAddress;
mapping of address custodianChangeReqs;
address erc20ImplAddress;
mapping of address implChangeReqs;
uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowed;

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function custodian() {
    return custodianAddress
}

function erc20Impl() {
    return erc20ImplAddress
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function implChangeReqs(bytes32 arg1) {
    return implChangeReqs[arg1]
}

function lockRequestCount() {
    return lockRequestCount
}

function custodianChangeReqs(bytes32 arg1) {
    return custodianChangeReqs[arg1]
}

function _fallback() payable {
    revert
}

function setTotalSupply(uint256 arg1) {
    require msg.sender == erc20ImplAddress
    totalSupply = arg1
}

function setBalance(address arg1, uint256 arg2) {
    require msg.sender == erc20ImplAddress
    balances[address(arg1)] = arg2
}

function addBalance(address arg1, uint256 arg2) {
    require msg.sender == erc20ImplAddress
    balances[address(arg1)] += arg2
}

function setAllowance(address arg1, address arg2, uint256 arg3) {
    require msg.sender == erc20ImplAddress
    allowed[address(arg1)][address(arg2)] = arg3
}

function confirmImplChange(bytes32 arg1) {
    require msg.sender == custodianAddress
    require implChangeReqs[arg1]
    erc20ImplAddress = implChangeReqs[arg1]
    implChangeReqs[arg1] = 0
    emit ImplChangeConfirmed(arg1, erc20ImplAddress);
}

function confirmCustodianChange(bytes32 arg1) {
    require msg.sender == custodianAddress
    require custodianChangeReqs[arg1]
    custodianAddress = custodianChangeReqs[arg1]
    custodianChangeReqs[arg1] = 0
    emit CustodianChangeConfirmed(arg1, custodianAddress);
}

function requestImplChange(address arg1) {
    require arg1
    lockRequestCount++
    implChangeReqs[block.hash(block.number - 1)][this.address][stor0 + 1] = arg1
    emit ImplChangeRequested(sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1), msg.sender, arg1);
    return sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1)
}

function requestCustodianChange(address arg1) {
    require arg1
    lockRequestCount++
    custodianChangeReqs[block.hash(block.number - 1)][this.address][stor0 + 1] = arg1
    emit CustodianChangeRequested(sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1), msg.sender, arg1);
    return sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1)
}



}
