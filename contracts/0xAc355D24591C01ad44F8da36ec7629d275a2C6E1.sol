contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[59 len 8882]
}



// =====================  Runtime code  =====================


address stor0;
mapping of struct returnCoupon;

function returnCoupon(address arg1, bytes32 arg2) {
    return returnCoupon[address(arg1)][arg2].field_0
}

function returnTokenDepositState(address arg1, bytes32 arg2) {
    return bool(returnCoupon[address(arg1)][arg2].field_512)
}

function returnUserBalance(address[2] arg1, bytes32 arg2) {
    return returnCoupon[address(arg1)][cd[68]][4][address(arg2)].field_0
}

function returnTokenBalance(address[2] arg1, bytes32 arg2) {
    return returnCoupon[address(arg1)][cd[68]][3][address(arg2)].field_0
}

function returnBalance(address arg1, bytes32 arg2) {
    return returnCoupon[address(arg1)][arg2].field_256
}

function _fallback() payable {
    revert
}

function changeAdmin(address arg1) {
    require stor0 == msg.sender
    stor0 = arg1
}

function returnHashLong(address arg1, uint256[3] arg2) {
    return sha3(arg1, arg2, cd[68], cd[100])
}

function returnHash(address[2] arg1, uint256[8] arg2) {
    return sha3(address(arg1), uint64(arg2), cd[68], cd[100], cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])
}

function returnAddress(bytes32 arg1, uint8 arg2, bytes32[2] arg3) {
    signer = erecover(arg1, arg2 << 248, arg3, cd[100]) 
    require erecover.result
    return address(signer)
}

function returnLongAddress(bytes32 arg1, uint8 arg2, bytes32[2] arg3) {
    signer = erecover(arg1, arg2 << 248, arg3, cd[100]) 
    require erecover.result
    return address(signer)
}

function returnLongCouponAmount(address[3] arg1, bytes32 arg2, uint256 arg3) {
    require cd[132] <= 100
    if not returnCoupon[address(arg2)][cd[100]].field_0:
        return ((100 * returnCoupon[address(arg2)][cd[100]].field_0) - (cd[132] * returnCoupon[address(arg2)][cd[100]].field_0) / 100)
    require returnCoupon[address(arg2)][cd[100]].field_0
    require (100 * returnCoupon[address(arg2)][cd[100]].field_0) - (cd[132] * returnCoupon[address(arg2)][cd[100]].field_0) / returnCoupon[address(arg2)][cd[100]].field_0 == -cd[132] + 100
    return ((100 * returnCoupon[address(arg2)][cd[100]].field_0) - (cd[132] * returnCoupon[address(arg2)][cd[100]].field_0) / 100)
}

function returnCouponProportion(address[3] arg1, bytes32 arg2) {
    if not returnCoupon[address(arg2)][cd[100]][4][address(cd[68])].field_0:
        if returnCoupon[address(arg2)][cd[100]].field_256:
            return (100 * returnCoupon[address(arg2)][cd[100]][4][address(cd[68])].field_0 / returnCoupon[address(arg2)][cd[100]].field_256)
    else:
        if returnCoupon[address(arg2)][cd[100]][4][address(cd[68])].field_0:
            if 100 * returnCoupon[address(arg2)][cd[100]][4][address(cd[68])].field_0 / returnCoupon[address(arg2)][cd[100]][4][address(cd[68])].field_0 == 100:
                if returnCoupon[address(arg2)][cd[100]].field_256:
                    return (100 * returnCoupon[address(arg2)][cd[100]][4][address(cd[68])].field_0 / returnCoupon[address(arg2)][cd[100]].field_256)
    revert
}

function returnLongTokenAmount(address[3] arg1, bytes32 arg2, uint256 arg3) {
    require cd[132] <= 100
    if not returnCoupon[address(arg2)][cd[100]][3][address(arg1)].field_0:
        return ((100 * returnCoupon[address(arg2)][cd[100]][3][address(arg1)].field_0) - (cd[132] * returnCoupon[address(arg2)][cd[100]][3][address(arg1)].field_0) / 100)
    require returnCoupon[address(arg2)][cd[100]][3][address(arg1)].field_0
    require (100 * returnCoupon[address(arg2)][cd[100]][3][address(arg1)].field_0) - (cd[132] * returnCoupon[address(arg2)][cd[100]][3][address(arg1)].field_0) / returnCoupon[address(arg2)][cd[100]][3][address(arg1)].field_0 == -cd[132] + 100
    return ((100 * returnCoupon[address(arg2)][cd[100]][3][address(arg1)].field_0) - (cd[132] * returnCoupon[address(arg2)][cd[100]][3][address(arg1)].field_0) / 100)
}

function buyLong(address[2] arg1, uint256[5] arg2, uint8 arg3, bytes32[3] arg4) payable {
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, sha3(address(arg1), arg3, arg4, cd[132])), cd[228] << 248, cd[292], cd[324]) 
    require erecover.result
    require address(signer) == address(arg2)
    require block.number > cd[164]
    require cd[132] <= cd[196]
    require block.number <= cd[196] - cd[132]
    require arg3 == msg.value
    call address(arg1) with:
       value arg3 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    returnCoupon[address(arg2)][cd[260]][4][msg.sender].field_0 = returnCoupon[address(arg2)][cd[260]][4][address(arg1)].field_0
    returnCoupon[address(arg2)][cd[260]][4][address(arg1)].field_0 = 0
    emit LongBought(call.data[4 len 64], call.data[68 len 160], arg3);
}

function nonActivationShortWithdrawal(address[2] arg1, uint256[8] arg2, uint8 arg3, bytes32[2] arg4) {
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])), cd[324] << 248, cd[356], cd[388]) 
    require erecover.result
    require address(signer) == msg.sender
    require block.number > cd[132]
    require returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 < arg3
    call msg.sender with:
       value returnCoupon[address(msg.sender)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    returnCoupon[address(msg.sender)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0 = 0
    emit NonActivationWithdrawal(call.data[4 len 64], call.data[68 len 256], 0);
}

function depositCoupon(address[2] arg1, uint256[8] arg2, uint8 arg3, bytes32[2] arg4) payable {
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])), cd[324] << 248, cd[356], cd[388]) 
    require erecover.result
    require address(signer) == msg.sender
    require cd[228] == msg.value
    require block.number <= cd[132]
    require msg.value + returnCoupon[address(msg.sender)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0 >= returnCoupon[address(msg.sender)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0
    require msg.value + returnCoupon[address(msg.sender)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0 >= msg.value
    returnCoupon[address(msg.sender)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0 += msg.value
    emit CouponDeposit(call.data[4 len 64], call.data[68 len 256], msg.value);
}

function nonActivationWithdrawal(address[2] arg1, uint256[8] arg2, uint8 arg3, bytes32[2] arg4) {
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])), cd[324] << 248, cd[356], cd[388]) 
    require erecover.result
    require address(signer) == address(arg2)
    require block.number > cd[132]
    require block.number <= cd[196]
    require returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 < arg3
    call msg.sender with:
       value returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 <= returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256
    returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 -= returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0
    returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 = 0
    emit ActivationWithdrawal(call.data[4 len 64], call.data[68 len 256], 0);
}

function placeLong(address[2] arg1, uint256[8] arg2, uint8 arg3, bytes32[2] arg4) payable {
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])), cd[324] << 248, cd[356], cd[388]) 
    require erecover.result
    require address(signer) == address(arg2)
    require block.number <= cd[132]
    require cd[228] == returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0
    require returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 <= arg4
    require msg.value + returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 >= returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0
    require msg.value + returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 >= msg.value
    returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 += msg.value
    require msg.value + returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 >= returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256
    require msg.value + returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 >= msg.value
    returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 += msg.value
    emit LongPlace(call.data[4 len 64], call.data[68 len 256], msg.value);
}

function tokenFulfillmentDeposit(address[2] arg1, uint256 arg2, uint256[8] arg3, uint8 arg4, bytes32[2] arg5) {
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, sha3(address(arg1), uint64(arg2), arg4, arg5, cd[164], cd[196], cd[228], cd[260], cd[292], cd[324])), cd[356] << 248, cd[388], cd[420]) 
    require erecover.result
    require address(signer) == msg.sender
    require block.number > cd[164]
    require block.number <= cd[196]
    require returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg4, arg5, cd[164], cd[196], cd[228], cd[260], cd[292], cd[324])].field_256 >= arg4
    if arg3:
        require arg3
        require cd[292] * arg3 / arg3 == cd[292]
    require returnCoupon[address(msg.sender)][sha3(address(arg1), uint64(arg2), arg4, arg5, cd[164], cd[196], cd[228], cd[260], cd[292], cd[324])].field_256 == cd[292] * arg3
    require not returnCoupon[address(msg.sender)][sha3(address(arg1), uint64(arg2), arg4, arg5, cd[164], cd[196], cd[228], cd[260], cd[292], cd[324])].field_512
    require ext_code.size(address(arg1))
    call address(arg1).0x23b872dd with:
         gas gas_remaining - 710 wei
        args msg.sender, address(this.address), arg3
    require ext_call.success
    require arg3 + returnCoupon[address(msg.sender)][sha3(address(arg1), uint64(arg2), arg4, arg5, cd[164], cd[196], cd[228], cd[260], cd[292], cd[324])][3][address(arg1)].field_0 >= returnCoupon[address(msg.sender)][sha3(address(arg1), uint64(arg2), arg4, arg5, cd[164], cd[196], cd[228], cd[260], cd[292], cd[324])][3][address(arg1)].field_0
    require arg3 + returnCoupon[address(msg.sender)][sha3(address(arg1), uint64(arg2), arg4, arg5, cd[164], cd[196], cd[228], cd[260], cd[292], cd[324])][3][address(arg1)].field_0 >= arg3
    returnCoupon[address(msg.sender)][sha3(address(arg1), uint64(arg2), arg4, arg5, cd[164], cd[196], cd[228], cd[260], cd[292], cd[324])][3][address(arg1)].field_0 += arg3
    returnCoupon[address(msg.sender)][sha3(address(arg1), uint64(arg2), arg4, arg5, cd[164], cd[196], cd[228], cd[260], cd[292], cd[324])].field_512 = 1
    emit TokenFulfillment(call.data[4 len 64], call.data[100 len 256], arg3);
}

function claimDonations(address[2] arg1, uint256[8] arg2, uint8 arg3, bytes32[2] arg4) {
    require stor0 == msg.sender
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])), cd[324] << 248, cd[356], cd[388]) 
    require erecover.result
    require address(signer) == address(arg2)
    require block.number > cd[196]
    require returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 + returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0 >= returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0
    require returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 + returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0 >= returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256
    call stor0 with:
       value returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 + returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining - 710 wei
        args stor0, returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][3][address(arg1)].field_0
    require ext_call.success
    returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 = 0
    returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0 = 0
    returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][3][address(arg1)].field_0 = 0
    emit DonationClaimed(call.data[4 len 64], call.data[68 len 256], 0, 0);
}

function exerciseLong(address[2] arg1, uint256[8] arg2, uint8 arg3, bytes32[2] arg4) {
    signer = erecover(sha3(0x19457468657265756d205369676e6564204d6573736167, sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])), cd[324] << 248, cd[356], cd[388]) 
    require erecover.result
    require address(signer) == address(arg2)
    require block.number > cd[164]
    require block.number <= cd[196]
    require returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 >= arg3
    if returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0:
        require returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0
        require 100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 == 100
    require returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256
    require 100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 <= 100
    if returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0:
        require returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0
        require (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) - (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0 == -(100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256) + 100
    if not returnCoupon[address(msg.sender)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_512:
        if not returnCoupon[address(msg.sender)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_512:
            require returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 + ((100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) - (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) / 100) >= (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) - (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) / 100
            require returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 + ((100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) - (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) / 100) >= returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0
            call msg.sender with:
               value returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 + ((100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) - (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) / 100) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            require (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) - (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) / 100 <= returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0
            returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0 -= (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) - (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) / 100
            require returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 <= returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256
            returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 -= returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0
            returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 = 0
            emit EthLongExercised(call.data[4 len 64], call.data[68 len 256], (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) - (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) / 100, 0);
    else:
        require 100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 <= 100
        if returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][3][address(arg1)].field_0:
            require returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][3][address(arg1)].field_0
            require (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][3][address(arg1)].field_0) - (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][3][address(arg1)].field_0) / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][3][address(arg1)].field_0 == -(100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256) + 100
        call msg.sender with:
           value (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) - (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) / 100 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining - 710 wei
            args msg.sender, (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][3][address(arg1)].field_0) - (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][3][address(arg1)].field_0) / 100
        require ext_call.success
        require (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) - (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) / 100 <= returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0
        returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0 -= (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) - (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) / 100
        require returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 <= returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256
        returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 -= returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0
        require (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][3][address(arg1)].field_0) - (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][3][address(arg1)].field_0) / 100 <= returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][3][address(arg1)].field_0
        returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][3][address(arg1)].field_0 -= (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][3][address(arg1)].field_0) - (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][3][address(arg1)].field_0) / 100
        returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 = 0
        emit TokenLongExercised(call.data[4 len 64], call.data[68 len 256], (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) - (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_0) / 100, (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][3][address(arg1)].field_0) - (100 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][4][address(msg.sender)].field_0 / returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])].field_256 * returnCoupon[address(arg2)][sha3(address(arg1), uint64(arg2), arg3, arg4, cd[132], cd[164], cd[196], cd[228], cd[260], cd[292])][3][address(arg1)].field_0) / 100);
}



}
