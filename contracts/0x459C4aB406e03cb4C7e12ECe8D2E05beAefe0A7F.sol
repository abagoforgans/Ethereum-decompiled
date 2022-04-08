contract main {


// =======================  Init code  ======================


address stor0;
address stor1;

function _fallback() payable {
    stor0 = msg.sender
    stor1 = msg.sender
    return code.data[65 len 3670]
}



// =====================  Runtime code  =====================


#
#  - create(string arg1, string arg2, string arg3, address arg4)
#
address owner;
address hammerAddress;
array of address lastContract;
address beneficiaryAddress;
uint256 buildingCostWei;
array of uint256 securityCheckURI;

function beneficiary() {
    return beneficiaryAddress
}

function hammer() {
    return hammerAddress
}

function buildingCostWei() {
    return buildingCostWei
}

function owner() {
    return owner
}

function getLastContract() {
    require uint256(lastContract[address(msg.sender)]) - 1 < uint256(lastContract[address(msg.sender)])
    return address(lastContract[address(msg.sender)][uint256(lastContract[address(msg.sender)])])
}

function getContractsOf(address arg1, uint256 arg2) {
    require arg2 < uint256(lastContract[arg1])
    return address(lastContract[arg1][arg2])
}

function securityCheckURI() {
    return securityCheckURI[0 len securityCheckURI.length]
}

function destroy() {
    require hammerAddress == msg.sender
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function setOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setCost(uint256 arg1) {
    require owner == msg.sender
    buildingCostWei = arg1
}

function setHammer(address arg1) {
    require hammerAddress == msg.sender
    hammerAddress = arg1
}

function setBeneficiary(address arg1) {
    require owner == msg.sender
    beneficiaryAddress = arg1
}

function setSecurityCheck(string arg1) {
    require owner == msg.sender
    securityCheckURI[] = Array(len=arg1.length, data=arg1[all])
}



}
