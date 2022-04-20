contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = 0x56be5715c8fc2c1d745aef6dbe56cb59f959075d
    return code.data[114 len 374]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    revert
}

function setK(uint256 arg1) {
    call stor0 with:
       funct Mask(32, 224, sha3('setPriceMultiplier(uint)')) >> 224
         gas gas_remaining - 25710 wei
        args arg1
}



}
