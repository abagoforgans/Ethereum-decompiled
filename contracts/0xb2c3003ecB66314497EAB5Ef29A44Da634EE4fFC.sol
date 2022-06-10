contract main {




// =====================  Runtime code  =====================


#
#  - sub_12450454(?)
#
address stor10;

function _fallback() payable {
    revert
}

function sub_83eb4c0f(?) {
    require calldata.size - 4 >= 32
    require msg.sender == stor10
    call stor10 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
