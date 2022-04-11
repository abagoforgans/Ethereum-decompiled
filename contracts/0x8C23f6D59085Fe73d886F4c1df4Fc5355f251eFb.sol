contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = code.data[849 len 32]
    stor1 = code.data[893 len 20]
    stor2 = code.data[925 len 20]
    return code.data[219 len 630]
}



// =====================  Runtime code  =====================


uint256 stor0;
address stor1;

function _fallback() payable {
    revert
}

function multiply(uint256 arg1) {
    return (arg1 * stor0)
}

function execute() {
    stor1 = 0x5f174e0165e5740db1b548211fe1af46a2a55e8f
    delegate stor1 with:
       funct (Mask(32, 224, 'transferFrom') >> 224)
         gas gas_remaining - 710 wei
        args Mask(224, 0, 'transferFrom'), 0xa6d9df476577c0d4a24eb50220fad007e444db8, 0xc35be3d39c92ad12401645ee09b6d25ce79b67aa, 333
    require delegate.return_code
    return bool(delegate.return_data[0])
}



}
