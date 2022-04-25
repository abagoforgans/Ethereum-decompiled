contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 9248]
}



// =====================  Runtime code  =====================


const returnHash(address[2] arg1, uint256[7] arg2) = hash


address stor0;
mapping of struct returnBalance;

function returnTokenDepositState(address[2] arg1, uint256[8] arg2, uint8 arg3, bytes32[2] arg4) {
    hash = sha256hash(call.data[4 len 64], call.data[68 len 256]) 
    require sha256hash.result
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, hash), cd[324] << 248, cd[356], cd[388]) 
    require erecover.result
    require address(signer) == address(arg2)
    return bool(returnBalance[address(arg2)][hash].field_512)
}

function returnBalance(address[2] arg1, uint256[8] arg2, uint8 arg3, bytes32[2] arg4) {
    hash = sha256hash(call.data[4 len 64], call.data[68 len 256]) 
    require sha256hash.result
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, hash), cd[324] << 248, cd[356], cd[388]) 
    require erecover.result
    require address(signer) == address(arg2)
    return returnBalance[address(arg2)][hash].field_256
}

function returnCoupon(address[2] arg1, uint256[8] arg2, uint8 arg3, bytes32[2] arg4) {
    hash = sha256hash(call.data[4 len 64], call.data[68 len 256]) 
    require sha256hash.result
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, hash), cd[324] << 248, cd[356], cd[388]) 
    require erecover.result
    require address(signer) == address(arg2)
    return returnBalance[address(arg2)][hash].field_0
}

function returnTokenBalance(address[2] arg1, uint256[8] arg2, uint8 arg3, bytes32[2] arg4) {
    hash = sha256hash(call.data[4 len 64], call.data[68 len 256]) 
    require sha256hash.result
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, hash), cd[324] << 248, cd[356], cd[388]) 
    require erecover.result
    require address(signer) == address(arg2)
    return returnBalance[address(arg2)][hash][3][address(arg2)].field_0
}

function returnUserBalance(address arg1, address[2] arg2, uint256[8] arg3, uint8 arg4, bytes32[2] arg5) {
    hash = sha256hash(call.data[36 len 64], call.data[100 len 256]) 
    require sha256hash.result
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, hash), cd[356] << 248, cd[388], cd[420]) 
    require erecover.result
    require address(signer) == address(arg3)
    return returnBalance[address(arg3)][hash][4][address(arg1)].field_0
}

function _fallback() payable {
    revert
}

function changeAdmin(address arg1) {
    require stor0 == msg.sender
    stor0 = arg1
}

function returnHashLong(address arg1, uint256[3] arg2) {
    hash = sha256hash(arg1, call.data[36 len 96]) 
    require sha256hash.result
    return hash
}

function depositCoupon(address[2] arg1, uint256[8] arg2, uint8 arg3, bytes32[2] arg4) payable {
    hash = sha256hash(call.data[4 len 64], call.data[68 len 256]) 
    require sha256hash.result
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, hash), cd[324] << 248, cd[356], cd[388]) 
    require erecover.result
    require address(signer) == msg.sender
    require msg.value >= cd[228]
    require msg.value + returnBalance[address(msg.sender)][hash].field_0 >= returnBalance[address(msg.sender)][hash].field_0
    require msg.value + returnBalance[address(msg.sender)][hash].field_0 >= msg.value
    returnBalance[address(msg.sender)][hash].field_0 += msg.value
    emit CouponDeposit(call.data[4 len 64], call.data[68 len 256], cd[324] << 248, call.data[356 len 64], msg.value);
}

function buyLong(address[2] arg1, uint256[3] arg2, uint8 arg3, bytes32[3] arg4) payable {
    hash = sha256hash(address(arg1), call.data[68 len 96]) 
    require sha256hash.result
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, 0), cd[164] << 248, cd[228], cd[260]) 
    require erecover.result
    require address(signer) == address(arg2)
    require msg.value >= arg3
    call address(arg1) with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    returnBalance[address(arg2)][cd[196]][4][msg.sender].field_0 = returnBalance[address(arg2)][cd[196]][4][address(arg1)].field_0
    returnBalance[address(arg2)][cd[196]][4][address(arg1)].field_0 = 0
    emit LongBought(call.data[4 len 64], call.data[68 len 96], cd[164] << 248, call.data[196 len 96], msg.value);
}

function nonActivationShortWithdrawal(address[2] arg1, uint256[8] arg2, uint8 arg3, bytes32[2] arg4) {
    hash = sha256hash(call.data[4 len 64], call.data[68 len 256]) 
    require sha256hash.result
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, hash), cd[324] << 248, cd[356], cd[388]) 
    require erecover.result
    require address(signer) == msg.sender
    require block.number > cd[164]
    require block.number <= cd[196]
    require returnBalance[address(arg2)][hash].field_256 < arg3
    call msg.sender with:
       value returnBalance[address(msg.sender)][hash].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    returnBalance[address(msg.sender)][hash].field_0 = 0
    emit NonActivationWithdrawal(call.data[4 len 64], call.data[68 len 256], cd[324] << 248, call.data[356 len 64], 0);
}

function nonActivationWithdrawal(address[2] arg1, uint256[8] arg2, uint8 arg3, bytes32[2] arg4) {
    hash = sha256hash(call.data[4 len 64], call.data[68 len 256]) 
    require sha256hash.result
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, hash), cd[324] << 248, cd[356], cd[388]) 
    require erecover.result
    require address(signer) == address(arg2)
    require block.number > cd[164]
    require block.number <= cd[196]
    require returnBalance[address(arg2)][hash].field_256 < arg3
    call msg.sender with:
       value returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 <= returnBalance[address(arg2)][hash].field_256
    returnBalance[address(arg2)][hash].field_256 -= returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0
    returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 = 0
    emit ActivationWithdrawal(call.data[4 len 64], call.data[68 len 256], cd[324] << 248, call.data[356 len 64], 0);
}

function placeLong(address[2] arg1, uint256[8] arg2, uint8 arg3, bytes32[2] arg4) payable {
    hash = sha256hash(call.data[4 len 64], call.data[68 len 256]) 
    require sha256hash.result
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, hash), cd[324] << 248, cd[356], cd[388]) 
    require erecover.result
    require address(signer) == address(arg2)
    require block.number <= cd[132]
    require returnBalance[address(arg2)][hash].field_256 <= arg4
    require msg.value + returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 >= returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0
    require msg.value + returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 >= msg.value
    returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 += msg.value
    require msg.value + returnBalance[address(arg2)][hash].field_256 >= returnBalance[address(arg2)][hash].field_256
    require msg.value + returnBalance[address(arg2)][hash].field_256 >= msg.value
    returnBalance[address(arg2)][hash].field_256 += msg.value
    emit LongPlace(call.data[4 len 64], call.data[68 len 256], cd[324] << 248, call.data[356 len 64], msg.value);
}

function claimDonations(address[2] arg1, uint256[8] arg2, uint8 arg3, bytes32[2] arg4) {
    require stor0 == msg.sender
    hash = sha256hash(call.data[4 len 64], call.data[68 len 256]) 
    require sha256hash.result
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, hash), cd[324] << 248, cd[356], cd[388]) 
    require erecover.result
    require address(signer) == address(arg2)
    require block.number > cd[196]
    require returnBalance[address(arg2)][hash].field_256 + returnBalance[address(arg2)][hash].field_0 >= returnBalance[address(arg2)][hash].field_0
    require returnBalance[address(arg2)][hash].field_256 + returnBalance[address(arg2)][hash].field_0 >= returnBalance[address(arg2)][hash].field_256
    call stor0 with:
       value returnBalance[address(arg2)][hash].field_256 + returnBalance[address(arg2)][hash].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor0, returnBalance[address(arg2)][hash][3][address(arg1)].field_0
    require ext_call.success
    returnBalance[address(arg2)][hash].field_256 = 0
    returnBalance[address(arg2)][hash].field_0 = 0
    returnBalance[address(arg2)][hash][3][address(arg1)].field_0 = 0
    emit DonationClaimed(call.data[4 len 64], call.data[68 len 256], cd[324] << 248, call.data[356 len 64], 0, 0);
}

function tokenFulfillmentDeposit(address[2] arg1, uint256 arg2, uint256[8] arg3, uint8 arg4, bytes32[2] arg5) {
    hash = sha256hash(call.data[4 len 64], call.data[100 len 256]) 
    require sha256hash.result
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, hash), cd[356] << 248, cd[388], cd[420]) 
    require erecover.result
    require address(signer) == msg.sender
    require block.number > cd[164]
    require block.number <= cd[196]
    require returnBalance[address(arg2)][hash].field_256 >= arg4
    if returnBalance[address(msg.sender)][hash].field_256:
        require returnBalance[address(msg.sender)][hash].field_256
        require cd[292] * returnBalance[address(msg.sender)][hash].field_256 / returnBalance[address(msg.sender)][hash].field_256 == cd[292]
    require arg3 >= cd[292] * returnBalance[address(msg.sender)][hash].field_256
    require not returnBalance[address(msg.sender)][hash].field_512
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg3
    require ext_call.success
    require arg3 + returnBalance[address(msg.sender)][hash][3][address(arg1)].field_0 >= returnBalance[address(msg.sender)][hash][3][address(arg1)].field_0
    require arg3 + returnBalance[address(msg.sender)][hash][3][address(arg1)].field_0 >= arg3
    returnBalance[address(msg.sender)][hash][3][address(arg1)].field_0 += arg3
    returnBalance[address(msg.sender)][hash].field_512 = 1
    emit TokenFulfillment(call.data[4 len 64], call.data[100 len 256], cd[356] << 248, call.data[388 len 64], arg3);
}

function exerciseLong(address[2] arg1, uint256[8] arg2, uint8 arg3, bytes32[2] arg4) {
    hash = sha256hash(call.data[4 len 64], call.data[68 len 256]) 
    require sha256hash.result
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, hash), cd[324] << 248, cd[356], cd[388]) 
    require erecover.result
    require address(signer) == address(arg2)
    require block.number > cd[164]
    require block.number <= cd[196]
    require returnBalance[address(arg2)][hash].field_256 >= arg3
    require returnBalance[address(arg2)][hash].field_256
    if returnBalance[address(arg2)][hash].field_0:
        require returnBalance[address(arg2)][hash].field_0
        require returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 / returnBalance[address(arg2)][hash].field_256 * returnBalance[address(arg2)][hash].field_0 / returnBalance[address(arg2)][hash].field_0 == returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 / returnBalance[address(arg2)][hash].field_256
    if not returnBalance[address(msg.sender)][hash].field_512:
        require returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 + (returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 / returnBalance[address(arg2)][hash].field_256 * returnBalance[address(arg2)][hash].field_0) >= returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 / returnBalance[address(arg2)][hash].field_256 * returnBalance[address(arg2)][hash].field_0
        require returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 + (returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 / returnBalance[address(arg2)][hash].field_256 * returnBalance[address(arg2)][hash].field_0) >= returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0
        call msg.sender with:
           value returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 + (returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 / returnBalance[address(arg2)][hash].field_256 * returnBalance[address(arg2)][hash].field_0) wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 / returnBalance[address(arg2)][hash].field_256 * returnBalance[address(arg2)][hash].field_0 <= returnBalance[address(arg2)][hash].field_0
        returnBalance[address(arg2)][hash].field_0 += -1 * returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 / returnBalance[address(arg2)][hash].field_256 * returnBalance[address(arg2)][hash].field_0
        require returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 <= returnBalance[address(arg2)][hash].field_256
        returnBalance[address(arg2)][hash].field_256 -= returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0
        returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 = 0
        emit EthLongExercised(call.data[4 len 64], call.data[68 len 256], cd[324] << 248, call.data[356 len 64], returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 / returnBalance[address(arg2)][hash].field_256 * returnBalance[address(arg2)][hash].field_0, 0);
    else:
        if returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0:
            require returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0
            require cd[260] * returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 / returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 == cd[260]
        call msg.sender with:
           value returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 / returnBalance[address(arg2)][hash].field_256 * returnBalance[address(arg2)][hash].field_0 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, cd[260] * returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0
        require ext_call.success
        require returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 / returnBalance[address(arg2)][hash].field_256 * returnBalance[address(arg2)][hash].field_0 <= returnBalance[address(arg2)][hash].field_0
        returnBalance[address(arg2)][hash].field_0 += -1 * returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 / returnBalance[address(arg2)][hash].field_256 * returnBalance[address(arg2)][hash].field_0
        require returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 <= returnBalance[address(arg2)][hash].field_256
        returnBalance[address(arg2)][hash].field_256 -= returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0
        require cd[260] * returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 <= returnBalance[address(arg2)][hash][3][address(arg1)].field_0
        returnBalance[address(arg2)][hash][3][address(arg1)].field_0 += -1 * cd[260] * returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0
        returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 = 0
        emit TokenLongExercised(call.data[4 len 64], call.data[68 len 256], cd[324] << 248, call.data[356 len 64], returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0 / returnBalance[address(arg2)][hash].field_256 * returnBalance[address(arg2)][hash].field_0, cd[260] * returnBalance[address(arg2)][hash][4][address(msg.sender)].field_0);
}



}
