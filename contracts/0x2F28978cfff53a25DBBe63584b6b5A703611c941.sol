contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = code.data[827 len 32]
    stor1 = code.data[871 len 20]
    stor2 = code.data[903 len 20]
    return code.data[219 len 608]
}



// =====================  Runtime code  =====================


uint256 stor0;

function _fallback() payable {
    revert
}

function multiply(uint256 arg1) {
    return (arg1 * stor0)
}

function sub_0b40bd88(?) {
    require ext_code.size(0x5f174e0165e5740db1b548211fe1af46a2a55e8f)
    call 0x5f174e0165e5740db1b548211fe1af46a2a55e8f.0x23b872dd with:
         gas gas_remaining - 710 wei
        args 0xa6d9df476577c0d4a24eb50220fad007e444db8, 0xc35be3d39c92ad12401645ee09b6d25ce79b67aa, 333
    require ext_call.success
}



}
