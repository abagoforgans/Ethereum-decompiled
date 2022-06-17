contract main {




// =====================  Runtime code  =====================


uint256 lockRequestCount;
address custodianAddress;
mapping of address custodianChangeReqs;
address erc20ImplAddress;
mapping of address implChangeReqs;
address sub_93aa4e4eAddress;
mapping of address sub_8a6da061;
uint256 totalSupply;
uint256 createDate;
address foundationAddress;
address teamAddress;
address partnerAddress;
address sub_ecdd5335Address;
mapping of uint256 balances;
mapping of uint256 allowed;
mapping of uint256 sub_47fe6472;

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

function foundation() {
    return foundationAddress
}

function sub_47fe6472(?) {
    return sub_47fe6472[arg1]
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function team() {
    return teamAddress
}

function sub_8a6da061(?) {
    return sub_8a6da061[arg1]
}

function sub_93aa4e4e(?) {
    return sub_93aa4e4eAddress
}

function implChangeReqs(bytes32 arg1) {
    return implChangeReqs[arg1]
}

function partner() {
    return partnerAddress
}

function lockRequestCount() {
    return lockRequestCount
}

function custodianChangeReqs(bytes32 arg1) {
    return custodianChangeReqs[arg1]
}

function createDate() {
    return createDate
}

function sub_ecdd5335(?) {
    return sub_ecdd5335Address
}

function _fallback() payable {
    revert
}

function sub_c4362834(?) {
    require msg.sender == sub_93aa4e4eAddress
    sub_47fe6472[address(arg1)] -= arg2
}

function setTotalSupply(uint256 arg1) {
    if sub_93aa4e4eAddress != msg.sender:
        require msg.sender == erc20ImplAddress
    totalSupply = arg1
}

function setAllowance(address arg1, address arg2, uint256 arg3) {
    require msg.sender == erc20ImplAddress
    allowed[address(arg1)][address(arg2)] = arg3
}

function setBalance(address arg1, uint256 arg2) {
    if sub_93aa4e4eAddress != msg.sender:
        require msg.sender == erc20ImplAddress
    balances[address(arg1)] = arg2
}

function addBalance(address arg1, uint256 arg2) {
    if sub_93aa4e4eAddress != msg.sender:
        require msg.sender == erc20ImplAddress
    balances[address(arg1)] += arg2
}

function sub_485b32e6(?) {
    require msg.sender == custodianAddress
    require sub_8a6da061[arg1]
    sub_93aa4e4eAddress = sub_8a6da061[arg1]
    sub_8a6da061[arg1] = 0
    emit 0x5cb9700f: arg1, sub_93aa4e4eAddress
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

function sub_bcc9534f(?) {
    require arg1
    lockRequestCount++
    sub_8a6da061[block.hash(block.number - 1)][this.address][stor0 + 1] = arg1
    emit 0xb3ab4b58: sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1), msg.sender, arg1
    return sha3(block.hash(block.number - 1), this.address, lockRequestCount + 1)
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
