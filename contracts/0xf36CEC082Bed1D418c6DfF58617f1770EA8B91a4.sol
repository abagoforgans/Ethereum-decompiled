contract main {


// =======================  Init code  ======================


uint8 stor0;
address stor0; offset 8
address stor1;
uint256 stor2;

function _fallback() payable {
    uint8(stor0.field_0) = 1
    require not msg.value
    stor1 = code.data[913 len 20]
    address(stor0.field_8) = code.data[945 len 20]
    stor2 = code.data[965 len 32]
    require code.data[913 len 20]
    require address(stor0.field_8)
    return code.data[187 len 714]
}



// =====================  Runtime code  =====================


uint8 stor0;
address tokenAddress; offset 8
address teamMultisigAddress;
uint256 unlockedAt;

function isTimeVault() {
    return bool(stor0)
}

function unlockedAt() {
    return unlockedAt
}

function teamMultisig() {
    return teamMultisigAddress
}

function token() {
    return tokenAddress
}

function _fallback() {
    revert
}

function getTokenBalance() {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    return ext_call.return_data[0]
}

function unlock() {
    require block.timestamp >= unlockedAt
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args teamMultisigAddress, ext_call.return_data[0]
    require ext_call.success
    emit Unlocked()
}



}
