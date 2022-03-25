contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
uint256 stor1;
uint256 stor2;
uint256 stor3;
mapping of uint256 stor4;
uint256 stor5;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    require code.data[5031 len 20] != 0
    uint256(stor1) = code.data[5019 len 32]
    if msg.value > 0:
        stor3 += msg.value
        stor4[address(stor1)] += msg.value
        emit LogPaymentReceived(msg.value, address(stor1));
    stor2 = code.data[5051 len 32]
    if 0 < eth.balance(this.address):
        if eth.balance(this.address) > 0:
            stor3 += eth.balance(this.address)
            stor4[address(msg.sender)] += eth.balance(this.address)
            emit LogPaymentReceived(eth.balance(this.address), msg.sender);
    require msg.value <= 0
    require address(code.data[5083 len 32]) != 0
    stor5 = code.data[5083 len 32] or Mask(96, 160, stor5)
    return code.data[338 len 4681]
}



// =====================  Runtime code  =====================


address owner;
uint256 stor0;
address beneficiaryAddress;
uint256 stor1;
uint256 queryFee;
uint256 totalBalance;
mapping of uint256 paymentOf;
address certifierDbAddress;
uint256 stor5;
mapping of struct stor6;
array of address stor7;
array of address stor75276140696391174450305814049576319106646922510300487059720162673006384432775;

function getCertifiedStudentsCount() {
    return stor7.length
}

function getTotalBalance() {
    return totalBalance
}

function getQueryFee() {
    return queryFee
}

function getBeneficiary() {
    return address(beneficiaryAddress)
}

function getCertifierDb() {
    return address(certifierDbAddress)
}

function getOwner() {
    return address(owner)
}

function getPaymentOf(address arg1) {
    return paymentOf[address(arg1)]
}

function setQueryFee(uint256 arg1) {
    require msg.sender == address(owner)
    if arg1 != queryFee:
        emit LogQueryFeeSet(queryFee, arg1);
        queryFee = arg1
    return 1
}

function _fallback() payable {
    if msg.value > 0:
        totalBalance += msg.value
        paymentOf[address(stor1)] += msg.value
        emit LogPaymentReceived(msg.value, address(beneficiaryAddress));
}

function setOwner(address arg1) {
    require msg.sender == address(owner)
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
    require msg.sender == address(owner)
    require arg1 != 0
    if arg1 != address(beneficiaryAddress):
        emit LogBeneficiarySet(address(beneficiaryAddress), arg1);
        uint256(stor1) = arg1 or Mask(96, 160, uint256(stor1))
    return 1
}

function setCertifierDb(address arg1) {
    require msg.sender == address(owner)
    require arg1 != 0
    if arg1 != address(certifierDbAddress):
        emit LogCertifierDbChanged(address(certifierDbAddress), arg1);
        uint256(stor5) = arg1 or Mask(96, 160, uint256(stor5))
    return 1
}

function fixBalance() {
    if totalBalance < eth.balance(this.address):
        paymentOf[address(stor1)] = eth.balance(this.address) - totalBalance + paymentOf[address(stor1)]
        emit LogPaymentReceived((eth.balance(this.address) - totalBalance), address(beneficiaryAddress));
    return 1
}

function isCertified(address arg1) payable {
    require msg.value >= queryFee
    if msg.value > 0:
        totalBalance += msg.value
        paymentOf[address(stor1)] += msg.value
        emit LogPaymentReceived(msg.value, address(beneficiaryAddress));
    return bool(stor6[address(arg1)].field_0)
}

function isCertification(address arg1, bytes32 arg2) payable {
    require msg.value >= queryFee
    if msg.value > 0:
        totalBalance += msg.value
        paymentOf[address(stor1)] += msg.value
        emit LogPaymentReceived(msg.value, address(beneficiaryAddress));
    return bool(stor6[address(arg1)][3][arg2].field_0)
}

function getCertifiedStudentAtIndex(uint256 arg1) payable {
    require msg.value >= queryFee
    if msg.value > 0:
        totalBalance += msg.value
        paymentOf[address(stor1)] += msg.value
        emit LogPaymentReceived(msg.value, address(beneficiaryAddress));
    require arg1 < stor7.length
    return address(stor7[arg1])
}

function getCertification(address arg1) payable {
    require msg.value >= queryFee
    if msg.value > 0:
        totalBalance += msg.value
        paymentOf[address(stor1)] += msg.value
        emit LogPaymentReceived(msg.value, address(beneficiaryAddress));
    return bool(stor6[address(arg1)].field_0), 
           stor6[address(arg1)].field_256,
           stor6[address(arg1)].field_512,
           stor6[address(arg1)].field_1024
}

function getCertificationDocumentAtIndex(address arg1, uint256 arg2) payable {
    require msg.value >= queryFee
    if msg.value > 0:
        totalBalance += msg.value
        paymentOf[address(stor1)] += msg.value
        emit LogPaymentReceived(msg.value, address(beneficiaryAddress));
    require arg2 < stor6[address(arg1)].field_1024
    return stor[arg2 + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0
}

function addCertificationDocumentToSelf(bytes32 arg1) {
    require stor6[address(msg.sender)].field_0
    require arg1
    if not stor6[address(msg.sender)][3][arg1].field_0:
        stor6[address(msg.sender)][3][arg1].field_0 = 1
        stor6[address(msg.sender)][3][arg1].field_256 = stor6[address(msg.sender)].field_1024
        stor6[address(msg.sender)].field_1024++
        if not stor6[address(msg.sender)].field_1024 <= stor6[address(msg.sender)].field_1024 + 1:
            idx = stor6[address(msg.sender)].field_1024 + 1
            while stor6[address(msg.sender)].field_1024 > idx:
                stor6[address(msg.sender)][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
        stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor6', 6))) + stor6[address(msg.sender)].field_1024].field_0 = arg1
        emit LogCertificationDocumentAdded(msg.sender, arg1);
    return 1
}

function addCertificationDocument(address arg1, bytes32 arg2) {
    require ext_code.size(address(certifierDbAddress))
    call address(certifierDbAddress).0x1c2353e1 with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require stor6[address(arg1)].field_0
    require arg2
    if not stor6[address(arg1)][3][arg2].field_0:
        stor6[address(arg1)][3][arg2].field_0 = 1
        stor6[address(arg1)][3][arg2].field_256 = stor6[address(arg1)].field_1024
        stor6[address(arg1)].field_1024++
        if not stor6[address(arg1)].field_1024 <= stor6[address(arg1)].field_1024 + 1:
            idx = stor6[address(arg1)].field_1024 + 1
            while stor6[address(arg1)].field_1024 > idx:
                stor6[address(arg1)][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
        stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))) + stor6[address(arg1)].field_1024].field_0 = arg2
        emit LogCertificationDocumentAdded(arg1, arg2);
    return 1
}

function uncertify(address arg1) {
    require ext_code.size(address(certifierDbAddress))
    call address(certifierDbAddress).0x1c2353e1 with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require stor6[address(arg1)].field_0
    require stor6[address(arg1)].field_1024 <= 0
    stor6[address(arg1)].field_0 = 0
    stor6[address(arg1)].field_256 = 0
    stor6[address(arg1)].field_512 = 0
    stor6[address(arg1)].field_1024 = 0
    idx = 0
    while stor6[address(arg1)].field_1024 > idx:
        stor6[address(arg1)][idx + 4].field_0 = 0
        idx = idx + 1
        continue 
    stor6[address(arg1)].field_1280 = 0
    if stor7.length > 1:
        require stor7.length - 1 < stor7.length
        require stor6[address(arg1)].field_1280 < stor7.length
        address(stor7[stor6[address(arg1)].field_1280]) = storA66C[stor7.length]
        stor6[address(stor7[stor6[address(arg1)].field_1280])].field_1280 = stor6[address(arg1)].field_1280
    stor7.length--
    if not stor7.length <= stor7.length - 1:
        idx = stor7.length - 1
        while stor7.length > idx:
            uint256(stor7[idx]) = 0
            idx = idx + 1
            continue 
    emit LogStudentUncertified(block.timestamp, arg1, msg.sender);
    return 1
}

function removeCertificationDocumentFromSelf(bytes32 arg1) {
    require stor6[address(msg.sender)].field_0
    if stor6[address(msg.sender)][3][arg1].field_0:
        stor6[address(msg.sender)][3][arg1].field_0 = 0
        stor6[address(msg.sender)][3][arg1].field_256 = 0
        if stor6[address(msg.sender)].field_1024 > 1:
            require stor6[address(msg.sender)].field_1024 - 1 < stor6[address(msg.sender)].field_1024
            require stor6[address(msg.sender)][3][arg1].field_256 < stor6[address(msg.sender)].field_1024
            stor[stor6[address(msg.sender)][3][arg1].field_256 + ('array', 4, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor6', 6)))].field_0 = stor[stor6[address(msg.sender)].field_1024 + ('array', 4, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor6', 6)))].field_0
            stor6[address(msg.sender)][3][stor[stor6[address(msg.sender)][3][arg1].field_256 + ('array', 4, ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'stor6', 6)))].field_0].field_256 = stor6[address(msg.sender)][3][arg1].field_256
        stor6[address(msg.sender)].field_1024--
        if not stor6[address(msg.sender)].field_1024 <= stor6[address(msg.sender)].field_1024 - 1:
            idx = stor6[address(msg.sender)].field_1024 - 1
            while stor6[address(msg.sender)].field_1024 > idx:
                stor6[address(msg.sender)][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
        emit LogCertificationDocumentRemoved(msg.sender, arg1);
    return 1
}

function removeCertificationDocument(address arg1, bytes32 arg2) {
    require ext_code.size(address(certifierDbAddress))
    call address(certifierDbAddress).0x1c2353e1 with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require stor6[address(arg1)].field_0
    if stor6[address(arg1)][3][arg2].field_0:
        stor6[address(arg1)][3][arg2].field_0 = 0
        stor6[address(arg1)][3][arg2].field_256 = 0
        if stor6[address(arg1)].field_1024 > 1:
            require stor6[address(arg1)].field_1024 - 1 < stor6[address(arg1)].field_1024
            require stor6[address(arg1)][3][arg2].field_256 < stor6[address(arg1)].field_1024
            stor[stor6[address(arg1)][3][arg2].field_256 + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0 = stor[stor6[address(arg1)].field_1024 + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0
            stor6[address(arg1)][3][stor[stor6[address(arg1)][3][arg2].field_256 + ('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6)))].field_0].field_256 = stor6[address(arg1)][3][arg2].field_256
        stor6[address(arg1)].field_1024--
        if not stor6[address(arg1)].field_1024 <= stor6[address(arg1)].field_1024 - 1:
            idx = stor6[address(arg1)].field_1024 - 1
            while stor6[address(arg1)].field_1024 > idx:
                stor6[address(arg1)][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
        emit LogCertificationDocumentRemoved(arg1, arg2);
    return 1
}

function certify(address arg1, bytes32 arg2) {
    require ext_code.size(address(certifierDbAddress))
    call address(certifierDbAddress).0x1c2353e1 with:
         gas gas_remaining - 50 wei
        args msg.sender
    require ext_call.success
    require ext_call.return_data[0]
    require arg1 != 0
    require not stor6[address(arg1)].field_0
    stor6[address(arg1)].field_0 = 1
    stor6[address(arg1)].field_256 = block.timestamp
    stor6[address(arg1)].field_512 = msg.sender or Mask(96, 160, stor6[address(arg1)].field_512)
    stor6[address(arg1)].field_1024 = 0
    idx = 0
    while stor6[address(arg1)].field_1024 > idx:
        stor6[address(arg1)][idx + 4].field_0 = 0
        idx = idx + 1
        continue 
    stor6[address(arg1)].field_1280 = stor7.length
    if 0 == arg2:
        stor7.length++
        if not stor7.length <= stor7.length + 1:
            idx = stor7.length + 1
            while stor7.length > idx:
                uint256(stor7[idx]) = 0
                idx = idx + 1
                continue 
    else:
        stor6[address(arg1)][3][arg2].field_0 = 1
        stor6[address(arg1)][3][arg2].field_256 = stor6[address(arg1)].field_1024
        stor6[address(arg1)].field_1024++
        if not stor6[address(arg1)].field_1024 <= stor6[address(arg1)].field_1024 + 1:
            idx = stor6[address(arg1)].field_1024 + 1
            while stor6[address(arg1)].field_1024 > idx:
                stor6[address(arg1)][idx + 4].field_0 = 0
                idx = idx + 1
                continue 
        stor[('array', 4, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor6', 6))) + stor6[address(arg1)].field_1024].field_0 = arg2
        stor7.length++
        if not stor7.length <= stor7.length + 1:
            idx = stor7.length + 1
            while stor7.length > idx:
                uint256(stor7[idx]) = 0
                idx = idx + 1
                continue 
    uint256(stor7[stor7.length]) = arg1 or Mask(96, 160, uint256(stor7[stor7.length]))
    emit LogStudentCertified(block.timestamp, arg1, msg.sender, arg2);
    return 1
}



}
