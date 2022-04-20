contract main {


// =======================  Init code  ======================


function _fallback() payable {
    revert
}

function query() {
    call 0x8bbf4dd0f11b3a535660fd7fcb7158daebd3a17e with:
       funct Mask(32, 224, sha3('SmartAirdrop()')) >> 224
         gas gas_remaining - 25050 wei
    call 0x8bbf4dd0f11b3a535660fd7fcb7158daebd3a17e with:
       funct Mask(32, 224, sha3('SmartAirdrop()')) >> 224
         gas gas_remaining - 25050 wei
    return bool(ext_call.success)
}



// =====================  Runtime code  =====================




}
