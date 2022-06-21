contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint64 stor2;

function _fallback() payable {
    stor0 = 0xbb902569a997d657e8d10b82ce0ec5a5983c8c7c
    stor1 = 'threat arrange precede interface'
    stor2 = 1617686990886656544
    require not msg.value
    require ext_code.size(stor0)
    call stor0.enter(bytes32 arg1, bytes8 arg2) with:
         gas gas_remaining - 710 wei
        args stor1, Mask(64, 192, stor2)
    require ext_call.success
    return code.data[540 len 53]
}



// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}



}
