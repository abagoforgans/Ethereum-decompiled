contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint8 stor0; offset 168
uint128 stor0; offset 168
uint128 stor0; offset 160
address owner;
address TOKEN_ADDRESS;
uint256 CLAIM_AMOUNT;
uint256 REFERRAL_AMOUNT;
uint256 CLAIM_AMOUNT_ETH;
address AIRDROPPERAddress;
address AIRDROP_TRANSIT_ADDRESS;
mapping of uint8 stor7;

function TOKEN_ADDRESS() {
    return TOKEN_ADDRESS
}

function CLAIM_AMOUNT() {
    return CLAIM_AMOUNT
}

function AIRDROPPER() {
    return AIRDROPPERAddress
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function REFERRAL_AMOUNT() {
    return REFERRAL_AMOUNT
}

function stopped() {
    return bool(uint8(stor0.field_168))
}

function owner() {
    return owner
}

function AIRDROP_TRANSIT_ADDRESS() {
    return AIRDROP_TRANSIT_ADDRESS
}

function isLinkClaimed(address arg1) {
    return bool(stor7[address(arg1)])
}

function CLAIM_AMOUNT_ETH() {
    return CLAIM_AMOUNT_ETH
}

function _fallback() payable {
    revert
}

function stop() {
    require msg.sender == owner
    require not uint8(stor0.field_168)
    Mask(88, 0, stor0.field_168) = 1
    emit Stop()
}

function unpause() {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function getEtherBack() {
    require msg.sender == AIRDROPPERAddress
    call AIRDROPPERAddress with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function verifyReceiverAddress(address arg1, address arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg2), arg3 << 248, arg4, arg5) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (address(signer) == arg1)
}

function verifyLinkPrivateKey(address arg1, address arg2, address arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) {
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg2, arg3), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    return (address(signer) == arg1)
}

function checkWithdrawal(address arg1, address arg2, address arg3, uint8 arg4, bytes32 arg5, bytes32 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) {
    require not stor7[address(arg3)]
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg3, arg2), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == AIRDROP_TRANSIT_ADDRESS
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), arg7 << 248, arg8, arg9) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == arg3
    require eth.balance(this.address) >= CLAIM_AMOUNT_ETH
    return 1
}

function withdraw(address arg1, address arg2, address arg3, uint8 arg4, bytes32 arg5, bytes32 arg6, uint8 arg7, bytes32 arg8, bytes32 arg9) {
    require not uint8(stor0.field_160)
    require not uint8(stor0.field_168)
    require not stor7[address(arg3)]
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg3, arg2), arg4 << 248, arg5, arg6) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == AIRDROP_TRANSIT_ADDRESS
    signer = erecover(sha3(Mask(224, 32, '\x19Ethereum Signed Message:\n32') >> 32, arg1), arg7 << 248, arg8, arg9) 
    if not erecover.result:
        revert with ext_call.return_data[0 len return_data.size]
    require address(signer) == arg3
    require eth.balance(this.address) >= CLAIM_AMOUNT_ETH
    stor7[address(arg3)] = 1
    if CLAIM_AMOUNT <= 0:
        if REFERRAL_AMOUNT > 0:
            if arg2:
                require ext_code.size(0)
                call 0x0.0x23b872dd with:
                     gas gas_remaining wei
                    args AIRDROPPERAddress, address(arg2), REFERRAL_AMOUNT
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
    else:
        if not TOKEN_ADDRESS:
            if REFERRAL_AMOUNT > 0:
                if arg2:
                    require ext_code.size(0)
                    call 0x0.0x23b872dd with:
                         gas gas_remaining wei
                        args AIRDROPPERAddress, address(arg2), REFERRAL_AMOUNT
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
        else:
            require ext_code.size(TOKEN_ADDRESS)
            call TOKEN_ADDRESS.0x23b872dd with:
                 gas gas_remaining wei
                args AIRDROPPERAddress, address(arg1), CLAIM_AMOUNT
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if REFERRAL_AMOUNT > 0:
                if arg2:
                    require ext_code.size(TOKEN_ADDRESS)
                    call TOKEN_ADDRESS.0x23b872dd with:
                         gas gas_remaining wei
                        args AIRDROPPERAddress, address(arg2), REFERRAL_AMOUNT
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
    if CLAIM_AMOUNT_ETH > 0:
        call arg1 with:
           value CLAIM_AMOUNT_ETH wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit LogWithdraw(address(arg3), address(arg1), block.timestamp);
    return 1
}



}
