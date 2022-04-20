contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = 0x56be5715c8fc2c1d745aef6dbe56cb59f959075d
    return code.data[114 len 696]
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
    return bool(ext_call.success)
}

function withdrawBenefit(address arg1, uint256 arg2) {
    require eth.balance(this.address) >= arg2
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if ext_call.success:
        emit Transfer(arg2, this.address, arg1);
}



}
