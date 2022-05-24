contract main {




// =====================  Runtime code  =====================


const getType = 4


address contractOwner;
address pendingContractOwner;
address sub_c2f1e6bdAddress;
uint256 payment;
uint8 stor4;
array of uint256 userWallet;
array of uint256 sub_ad7d3a72;
uint256 depositAmount;

function depositAmount() {
    return depositAmount
}

function payment() {
    return payment
}

function pendingContractOwner() {
    return pendingContractOwner
}

function userWallet() {
    return userWallet[0 len userWallet.length]
}

function sub_ad7d3a72(?) {
    return sub_ad7d3a72[0 len sub_ad7d3a72.length]
}

function sub_c2f1e6bd(?) {
    return sub_c2f1e6bdAddress
}

function contractOwner() {
    return contractOwner
}

function locked() {
    return bool(stor4)
}

function _fallback() payable {
    revert
}

function forceChangeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        if contractOwner:
            return 0
    contractOwner = arg1
    return 1
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        if contractOwner:
            return 0
    pendingContractOwner = arg1
    return 1
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function setLocked(bool arg1) {
    if sub_c2f1e6bdAddress == msg.sender:
        stor4 = uint8(arg1)
        return bool(stor4)
    emit Error(Array(len=19, data='Unathorized caller.'));
    return 0
}

function sub_b5625ab4(?) {
    if msg.sender == contractOwner:
        userWallet[] = Array(len=arg1.length, data=arg1[all])
    else:
        if not contractOwner:
            userWallet[] = Array(len=arg1.length, data=arg1[all])
}

function checkPayment() {
    require ext_code.size(sub_c2f1e6bdAddress)
    call sub_c2f1e6bdAddress.0xa035b1fe with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return payment >= ext_call.return_data[0]
}

function sub_3121661d(?) {
    if msg.sender == contractOwner:
        if stor4:
            revert with 0, 'Escrow session is locked!'
        if depositAmount - arg2 >= depositAmount:
            revert with 0, 'Wrong value!'
        if arg2 > depositAmount:
            revert with 0, 'Contract hasn't need money!'
        depositAmount -= arg2
        emit 0xdc760bc4: arg2, Array(len=arg1.length, data=arg1[all]), arg3
    else:
        if not contractOwner:
            if stor4:
                revert with 0, 'Escrow session is locked!'
            if depositAmount - arg2 >= depositAmount:
                revert with 0, 'Wrong value!'
            if arg2 > depositAmount:
                revert with 0, 'Contract hasn't need money!'
            depositAmount -= arg2
            emit 0xdc760bc4: arg2, Array(len=arg1.length, data=arg1[all]), arg3
}

function sub_8c0f7410(?) {
    if msg.sender == contractOwner:
        if stor4:
            revert with 0, 'Escrow session is locked!'
        if arg2 + depositAmount <= depositAmount:
            revert with 0, 'Wrong value!'
        depositAmount += arg2
        emit 0x81bf28b1: arg2, arg2 + depositAmount, Array(len=arg1.length, data=arg1[all]), arg3
        if depositAmount <= 0:
            revert with 0, 'Value must be greater zero!'
        emit PaymentReceived(msg.sender, depositAmount);
        payment = depositAmount
        require ext_code.size(sub_c2f1e6bdAddress)
        call sub_c2f1e6bdAddress.0xa035b1fe with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if payment >= ext_call.return_data[0]:
            emit 0x8155483a: msg.sender, payment
    else:
        if not contractOwner:
            if stor4:
                revert with 0, 'Escrow session is locked!'
            if arg2 + depositAmount <= depositAmount:
                revert with 0, 'Wrong value!'
            depositAmount += arg2
            emit 0x81bf28b1: arg2, arg2 + depositAmount, Array(len=arg1.length, data=arg1[all]), arg3
            if depositAmount <= 0:
                revert with 0, 'Value must be greater zero!'
            emit PaymentReceived(msg.sender, depositAmount);
            payment = depositAmount
            require ext_code.size(sub_c2f1e6bdAddress)
            call sub_c2f1e6bdAddress.0xa035b1fe with:
                 gas gas_remaining wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if payment >= ext_call.return_data[0]:
                emit 0x8155483a: msg.sender, payment
}



}
