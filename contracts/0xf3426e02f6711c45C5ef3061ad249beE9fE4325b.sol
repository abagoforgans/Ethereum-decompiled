contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function update(address arg1) {
    call arg1 with:
       funct Mask(32, 224, sha3('update(bytes32)')) >> 224
         gas gas_remaining wei
        args (sha3(Mask(240, 0, Mask(224, 16, ')*~F?7!%/p<mj@m/S3]V%%O7/Eau;f') >> 16, 0) or uint16(')*~F?7!%/p<mj@m/S3]V%%O7/Eau;f') << 224) + 0x1000000000000000000000000000000000000000000000000000)
}



}
