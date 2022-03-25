contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    require msg.value <= 0
    return code.data[48 len 1436]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
mapping of struct certifierStatus;
array of address certifierAtIndex;
array of address stor29102676481673041902632991033461445430619272659676223336789171408008386403021;

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
    return address(owner)
}

function _fallback() payable {
    revert 
}

function fixBalance() {
    call address(owner) with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    return 1
}

function setOwner(address arg1) {
    require address(owner) == msg.sender
    require arg1 != 0
    if arg1 != address(owner):
        emit LogOwnerChanged(address(owner), arg1);
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function addCertifier(address arg1) {
    require address(owner) == msg.sender
    require arg1 != 0
    if not certifierStatus[address(arg1)].field_0:
        certifierStatus[address(arg1)].field_0 = 1
        certifierStatus[address(arg1)].field_256 = certifierAtIndex.length
        certifierAtIndex.length++
        if not certifierAtIndex.length <= certifierAtIndex.length + 1:
            idx = certifierAtIndex.length + 1
            while certifierAtIndex.length > idx:
                uint256(certifierAtIndex[idx]) = 0
                idx = idx + 1
                continue 
        uint256(certifierAtIndex[certifierAtIndex.length]) = arg1 or Mask(96, 160, uint256(certifierAtIndex[certifierAtIndex.length]))
        emit LogCertifierAdded(arg1);
    return 1
}

function removeCertifier(address arg1) {
    require address(owner) == msg.sender
    require certifierStatus[address(arg1)].field_0
    require certifierAtIndex.length - 1 < certifierAtIndex.length
    require certifierStatus[address(arg1)].field_256 < certifierAtIndex.length
    address(certifierAtIndex[stor1[address(arg1)].field_256]) = stor4057[stor2.length]
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
