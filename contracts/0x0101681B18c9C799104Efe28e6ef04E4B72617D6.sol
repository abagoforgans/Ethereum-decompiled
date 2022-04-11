contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = code.data[843 len 32]
    stor1 = code.data[887 len 20]
    stor2 = code.data[919 len 20]
    return code.data[219 len 624]
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
    call stor1 with:
       funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args 0xc35be3d39c92ad12401645ee09b6d25ce79b67aa, 333
    return bool(ext_call.success)
}



}
