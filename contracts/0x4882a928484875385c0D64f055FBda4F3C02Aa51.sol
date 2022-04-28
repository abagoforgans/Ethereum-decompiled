contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[56 len 1696]
}



// =====================  Runtime code  =====================


address owner;
mapping of struct certifierStatus;
array of address certifierAtIndex;

function getCertifierStatus(address arg1) {
    return bool(certifierStatus[address(arg1)].field_0), certifierStatus[address(arg1)].field_256
}

function isCertifier(address arg1) {
    return bool(certifierStatus[address(arg1)].field_0)
}

function getCertifierAtIndex(uint256 arg1) {
    require arg1 < certifierAtIndex.length
    return address(certifierAtIndex[arg1])
}

function getCertifiersCount() {
    return certifierAtIndex.length
}

function getOwner() {
    return owner
}

function _fallback() payable {
    revert 
}

function fixBalance() {
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function setOwner(address arg1) {
    require owner == msg.sender
    require arg1
    if owner != arg1:
        emit LogOwnerChanged(owner, arg1);
        owner = arg1
    return 1
}

function addCertifier(address arg1) {
    require owner == msg.sender
    require arg1
    if not certifierStatus[address(arg1)].field_0:
        certifierStatus[address(arg1)].field_0 = 1
        certifierStatus[address(arg1)].field_256 = certifierAtIndex.length
        certifierAtIndex.length++
        address(certifierAtIndex[certifierAtIndex.length]) = arg1
        emit LogCertifierAdded(arg1);
    return 1
}

function removeCertifier(address arg1) {
    require owner == msg.sender
    require certifierStatus[address(arg1)].field_0
    require certifierAtIndex.length - 1 < certifierAtIndex.length
    require certifierStatus[address(arg1)].field_256 < certifierAtIndex.length
    address(certifierAtIndex[stor1[address(arg1)].field_256]) = address(certifierAtIndex[certifierAtIndex.length])
    certifierStatus[address(stor2[certifierStatus[address(arg1)].field_256])].field_256 = certifierStatus[address(arg1)].field_256
    certifierAtIndex.length--
    if not certifierAtIndex.length <= certifierAtIndex.length - 1:
        idx = certifierAtIndex.length - 1
        while certifierAtIndex.length > idx:
            uint256(certifierAtIndex[idx]) = 0
            idx = idx + 1
            continue 
    certifierStatus[address(arg1)].field_0 = 0
    certifierStatus[address(arg1)].field_256 = 0
    emit LogCertifierRemoved(arg1);
    return 1
}



}
