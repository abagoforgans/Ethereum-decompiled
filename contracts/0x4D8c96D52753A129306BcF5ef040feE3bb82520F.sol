contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[49 len 2938]
}



// =====================  Runtime code  =====================


#
#  - sub_8ab842f6(?)
#
address owner;
array of uint256 sub_6bf9d947;
array of uint256 description2;
array of uint256 m3;
array of uint256 sub_6b5a4ca2;
array of uint256 sub_df1c49d7;

function description2() {
    return description2[0 len description2.length]
}

function sub_6b5a4ca2(?) {
    return sub_6b5a4ca2[0 len sub_6b5a4ca2.length]
}

function sub_6bf9d947(?) {
    return sub_6bf9d947[0 len sub_6bf9d947.length]
}

function owner() {
    return owner
}

function m3() {
    return m3[0 len m3.length]
}

function sub_df1c49d7(?) {
    return sub_df1c49d7[0 len sub_df1c49d7.length]
}

function kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert 
}

function sub_b60da54c(?) {
    require ext_code.size(arg2)
    call arg2.setDebt(uint256 rg1) with:
         gas gas_remaining - 50 wei
        args arg1
    require ext_call.success
}



}
