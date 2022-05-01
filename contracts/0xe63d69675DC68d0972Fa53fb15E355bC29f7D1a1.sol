contract main {


// =======================  Init code  ======================


function _fallback() {
    require ext_code.size(0x785c2151ddd78900c6133888a94274dbd1085410)
    delegate 0x785c2151ddd78900c6133888a94274dbd1085410.0x56d81938 with:
         gas gas_remaining - 710 wei
        args 0, address(code.data[1092 len 32]), address(code.data[1124 len 32]), address(code.data[1156 len 32])
    require delegate.return_code
    return code.data[275 len 817]
}



// =====================  Runtime code  =====================


address stor0;
address stor1;
address stor2;
address stor3;

function _fallback() payable {
    revert
}

function wallet() {
    return stor0, stor1, stor2, stor3
}

function sub_e1aed8a0(?) {
    require ext_code.size(0x785c2151ddd78900c6133888a94274dbd1085410)
    delegate 0x785c2151ddd78900c6133888a94274dbd1085410.0xdaf01142 with:
         gas gas_remaining - 710 wei
        args 0, address(arg1), arg2
    require delegate.return_code
}

function setUserWithdrawalAccount(address arg1) {
    require ext_code.size(0x785c2151ddd78900c6133888a94274dbd1085410)
    delegate 0x785c2151ddd78900c6133888a94274dbd1085410.0x2eb9e5d7 with:
         gas gas_remaining - 710 wei
        args 0, arg1
    require delegate.return_code
}

function sub_3f56133c(?) {
    require ext_code.size(0x785c2151ddd78900c6133888a94274dbd1085410)
    delegate 0x785c2151ddd78900c6133888a94274dbd1085410.0x77228b25 with:
         gas gas_remaining - 710 wei
        args 0, 0, address(arg1), arg2, arg3
    require delegate.return_code
}



}
