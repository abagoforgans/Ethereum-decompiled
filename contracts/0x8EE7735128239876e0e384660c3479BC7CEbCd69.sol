contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint32 stor1;

function _fallback() {
    stor1[stor0] = 0
    return code.data[161 len 633]
}



// =====================  Runtime code  =====================


mapping of uint32 sub_4ce8fc43;

function sub_4ce8fc43(?) {
    return sub_4ce8fc43[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_43b51436(?) {
    if sub_4ce8fc43[address(arg1)] < arg2:
        sub_4ce8fc43[address(arg1)] = arg2
        emit 0xaecceb6f: address(arg1), arg2
}



}
