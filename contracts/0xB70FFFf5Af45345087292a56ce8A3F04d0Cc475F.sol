contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor3;
uint256 stor5;

function _fallback() {
    stor0 = 0
    stor1 = code.data[4638 len 20]
    stor3 = 0
    stor5 = 0
    return code.data[209 len 4417]
}



// =====================  Runtime code  =====================


uint256 sub_486cefbb;
address custodianAddress;
mapping of address sub_2bfa6ac7;
address sub_46f08fc0Address;
mapping of address sub_6d905442;
uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 allowed;

function totalSupply() {
    return totalSupply
}

function balances(address arg1) {
    return balances[arg1]
}

function sub_2bfa6ac7(?) {
    return sub_2bfa6ac7[arg1]
}

function custodian() {
    return custodianAddress
}

function sub_46f08fc0(?) {
    return sub_46f08fc0Address
}

function sub_486cefbb(?) {
    return sub_486cefbb
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function sub_6d905442(?) {
    return sub_6d905442[arg1]
}

function _fallback() payable {
    revert
}

function setTotalSupply(uint256 arg1) {
    require msg.sender == sub_46f08fc0Address
    totalSupply = arg1
}

function setBalance(address arg1, uint256 arg2) {
    require msg.sender == sub_46f08fc0Address
    balances[address(arg1)] = arg2
}

function addBalance(address arg1, uint256 arg2) {
    require msg.sender == sub_46f08fc0Address
    balances[address(arg1)] += arg2
}

function setAllowance(address arg1, address arg2, uint256 arg3) {
    require msg.sender == sub_46f08fc0Address
    allowed[address(arg1)][address(arg2)] = arg3
}

function sub_fe895afa(?) {
    require msg.sender == custodianAddress
    require sub_6d905442[arg1]
    sub_46f08fc0Address = sub_6d905442[arg1]
    sub_6d905442[arg1] = 0
    emit 0x9a2c44e2: arg1, sub_46f08fc0Address
}

function confirmCustodianChange(bytes32 arg1) {
    require msg.sender == custodianAddress
    require sub_2bfa6ac7[arg1]
    custodianAddress = sub_2bfa6ac7[arg1]
    sub_2bfa6ac7[arg1] = 0
    emit CustodianChangeConfirmed(arg1, custodianAddress);
}

function sub_bd4fce01(?) {
    require arg1
    sub_486cefbb++
    sub_6d905442[block.hash(block.number - 1)][this.address][stor0 + 1] = arg1
    emit 0x3d48cb58: sha3(block.hash(block.number - 1), this.address, sub_486cefbb + 1), msg.sender, arg1
    return sha3(block.hash(block.number - 1), this.address, sub_486cefbb + 1)
}

function requestCustodianChange(address arg1) {
    require arg1
    sub_486cefbb++
    sub_2bfa6ac7[block.hash(block.number - 1)][this.address][stor0 + 1] = arg1
    emit CustodianChangeRequested(sha3(block.hash(block.number - 1), this.address, sub_486cefbb + 1), msg.sender, arg1);
    return sha3(block.hash(block.number - 1), this.address, sub_486cefbb + 1)
}



}
