contract main {


// =======================  Init code  ======================


uint256 stor0;
address stor1;
address stor2;

function _fallback() {
    stor0 = code.data[782 len 32]
    stor1 = code.data[826 len 20]
    stor2 = code.data[858 len 20]
    return code.data[219 len 563]
}



// =====================  Runtime code  =====================


uint256 stor0;
address stor1;
address stor2;

function _fallback() payable {
    revert
}

function multiply(uint256 arg1) {
    return (arg1 * stor0)
}

function execute(uint256 arg1) {
    call stor1 with:
       funct Mask(32, 224, sha3('transfer(address,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args stor2, arg1
    return bool(ext_call.success)
}



}
