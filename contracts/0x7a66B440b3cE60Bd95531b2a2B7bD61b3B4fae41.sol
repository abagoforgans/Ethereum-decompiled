contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = 0xef8a560fa19f26982c27c78101545b8fe3018237
    return code.data[114 len 923]
}



// =====================  Runtime code  =====================


uint32 sub_84371231; offset 160
address sub_87e9e77fAddress;

function sub_84371231(?) {
    return sub_84371231
}

function sub_87e9e77f(?) {
    return sub_87e9e77fAddress
}

function sub_c65825f1(?) {
    sub_84371231 = arg1
    call sub_87e9e77fAddress with:
       funct Mask(32, 224, sha3('cashOutTank(uint32)')) >> 224
         gas gas_remaining - 25710 wei
        args sub_84371231
}

function _fallback() payable {
    if gas_remaining > 300000:
        call sub_87e9e77fAddress with:
           funct Mask(32, 224, sha3('cashOutTank(uint32)')) >> 224
             gas gas_remaining - 25710 wei
            args sub_84371231
}



}
