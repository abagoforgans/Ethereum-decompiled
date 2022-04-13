contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;

function _fallback() payable {
    stor2 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[65 len 951]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct accountInformation;
uint256 indexAccount;
address swapContractAddress;

function accountsHolding(uint256 arg1) {
    return accountInformation[arg1].field_0, accountInformation[arg1].field_256, accountInformation[arg1].field_512
}

function indexAccount() {
    return indexAccount
}

function owner() {
    return owner
}

function swapContract() {
    return swapContractAddress
}

function getAccountInformation(uint256 arg1) {
    return accountInformation[arg1].field_256, accountInformation[arg1].field_0, accountInformation[arg1].field_512
}

function _fallback() payable {
    revert
}

function setHolderInformation(address arg1) {
    if owner == msg.sender:
        swapContractAddress = arg1
}

function setSendGodz(uint256 arg1) {
    if owner == msg.sender:
        accountInformation[arg1].field_512 = 1
}

function SaveAccountBuyingGodz(address arg1, uint256 arg2) {
    if swapContractAddress != msg.sender:
        return 0
    indexAccount++
    accountInformation[stor2 + 1].field_256 = arg1
    accountInformation[stor2].field_0 = arg2
    accountInformation[stor2].field_512 = 0
    return 1
}



}
