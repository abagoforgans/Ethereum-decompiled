contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor1;
uint256 stor2;
mapping of uint256 stor3;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    require code.data[2269 len 20] != 0
    uint256(stor1) = code.data[2257 len 32]
    if msg.value > 0:
        stor2 += msg.value
        stor3[address(stor1)] += msg.value
        emit LogPaymentReceived(msg.value, address(stor1));
    if 0 < eth.balance(this.address):
        if eth.balance(this.address) > 0:
            stor2 += eth.balance(this.address)
            stor3[address(msg.sender)] += eth.balance(this.address)
            emit LogPaymentReceived(eth.balance(this.address), msg.sender);
    require msg.value <= 0
    return code.data[283 len 1974]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address beneficiaryAddress;
uint256 stor1;
uint256 totalBalance;
mapping of uint256 paymentOf;
mapping of struct certificationDbStatus;
array of address stor5;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699759;
array of address certificationDbAtIndex;

function getTotalBalance() {
    return totalBalance
}

function getBeneficiary() {
    return address(beneficiaryAddress)
}

function getCertificationDbAtIndex(uint256 arg1) {
    require arg1 < stor5.length
    return certificationDbAtIndex[arg1]
}

function getCertificationDbCount() {
    return stor5.length
}

function getOwner() {
    return address(owner)
}

function getPaymentOf(address arg1) {
    return paymentOf[address(arg1)]
}

function getCertificationDbStatus(address arg1) {
    return bool(certificationDbStatus[address(arg1)].field_0), certificationDbStatus[address(arg1)].field_256
}

function _fallback() payable {
    if msg.value > 0:
        totalBalance += msg.value
        paymentOf[address(stor1)] += msg.value
        emit LogPaymentReceived(msg.value, address(beneficiaryAddress));
}

function setOwner(address arg1) {
    require address(owner) == msg.sender
    require arg1 != 0
    if arg1 != address(owner):
        emit LogOwnerChanged(address(owner), arg1);
        uint256(stor0) = arg1 or Mask(96, 160, uint256(stor0))
    return 1
}

function withdrawPayments() {
    paymentOf[address(msg.sender)] = 0
    totalBalance -= paymentOf[address(msg.sender)]
    call msg.sender with:
       value paymentOf[address(msg.sender)] wei
         gas gas_remaining - 34050 wei
    require ext_call.success
    return 1
}

function setBeneficiary(address arg1) {
    require address(owner) == msg.sender
    require arg1 != 0
    if arg1 != address(beneficiaryAddress):
        emit LogBeneficiarySet(address(beneficiaryAddress), arg1);
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    return 1
}

function fixBalance() {
    if totalBalance < eth.balance(this.address):
        paymentOf[address(stor1)] = eth.balance(this.address) - totalBalance + paymentOf[address(stor1)]
        emit LogPaymentReceived((eth.balance(this.address) - totalBalance), address(beneficiaryAddress));
    return 1
}

function registerCertificationDb(address arg1) {
    require address(owner) == msg.sender
    require arg1 != 0
    if not certificationDbStatus[address(arg1)].field_0:
        certificationDbStatus[address(arg1)].field_0 = 1
        certificationDbStatus[address(arg1)].field_256 = stor5.length
        stor5.length++
        if not stor5.length <= stor5.length + 1:
            idx = stor5.length + 1
            while stor5.length > idx:
                uint256(stor5[idx]) = 0
                idx = idx + 1
                continue 
        uint256(stor5[stor5.length]) = arg1 or Mask(96, 160, uint256(stor5[stor5.length]))
    emit LogCertificationDbRegistered(arg1);
    return 1
}

function unRegisterCertificationDb(address arg1) {
    require address(owner) == msg.sender
    if certificationDbStatus[address(arg1)].field_0:
        require stor5.length - 1 < stor5.length
        require certificationDbStatus[address(arg1)].field_256 < stor5.length
        address(stor5[stor4[address(arg1)].field_256]) = stor36B6[stor5.length]
        certificationDbStatus[stor36B6[certificationDbStatus[address(arg1)].field_256]].field_256 = certificationDbStatus[address(arg1)].field_256
        certificationDbStatus[address(arg1)].field_0 = 0
        certificationDbStatus[address(arg1)].field_256 = 0
        stor5.length--
        if not stor5.length <= stor5.length - 1:
            idx = stor5.length - 1
            while stor5.length > idx:
                uint256(stor5[idx]) = 0
                idx = idx + 1
                continue 
    emit LogCertificationDbUnRegistered(arg1);
    return 1
}



}
