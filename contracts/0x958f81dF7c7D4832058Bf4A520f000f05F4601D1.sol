contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
address stor2;
uint256 stor3;
address stor4;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[1096 len 20]
    stor2 = code.data[1128 len 20]
    stor3 = code.data[1148 len 32]
    stor4 = code.data[1192 len 20]
    return code.data[158 len 926]
}



// =====================  Runtime code  =====================


address owner;
address profitContainerAddress;
address companyWalletAddress;
uint256 etherRatioForOwner;
address multisigAddress;

function companyWalletAddress() {
    return companyWalletAddress
}

function profitContainerAddress() {
    return profitContainerAddress
}

function multisig() {
    return multisigAddress
}

function owner() {
    return owner
}

function etherRatioForOwner() {
    return etherRatioForOwner
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require multisigAddress == msg.sender
    owner = arg1
}

function changeMultiSig(address arg1) {
    require multisigAddress == msg.sender
    multisigAddress = arg1
}

function setEtherRatioForOwner(uint256 arg1) {
    require multisigAddress == msg.sender
    if arg1:
        etherRatioForOwner = arg1
}

function setCompanyWalletAddress(address arg1) {
    require multisigAddress == msg.sender
    if arg1:
        companyWalletAddress = arg1
}

function setProfitContainerAddress(address arg1) {
    require multisigAddress == msg.sender
    if arg1:
        profitContainerAddress = arg1
}



}
