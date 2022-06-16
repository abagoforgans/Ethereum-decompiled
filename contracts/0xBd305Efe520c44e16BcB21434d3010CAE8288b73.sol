contract main {




// =====================  Runtime code  =====================


uint256 stor0;
uint256 stor1;
uint256 sub_0bdebf70;
address stor3;
address stor4;
address stor5;
uint256 stor6;

function sub_0bdebf70(?) {
    return sub_0bdebf70
}

function sub_f89ec9ca(?) {
    if stor3 != msg.sender:
        require msg.sender == stor4
    stor6++
    if stor6 < 3:
    selfdestruct(stor4)
}

function _fallback() payable {
    revert
}

function sub_06912e63(?) {
    return stor0, stor1
}

function sub_6e8ba0b2(?) {
    if stor3 != msg.sender:
        require msg.sender == stor4
    return stor4
}

function sub_d1293495(?) {
    if stor3 != msg.sender:
        require msg.sender == stor4
    return stor5
}

function sub_3e7e5c35(?) {
    require calldata.size - 4 >= 32
    if stor3 != msg.sender:
        require msg.sender == stor4
    stor5 = arg1
}

function sub_b9fcb1f2(?) {
    require calldata.size - 4 >= 32
    if stor3 != msg.sender:
        require msg.sender == stor4
    stor6 = 0
    stor4 = arg1
}

function sub_0b06cd60(?) {
    require calldata.size - 4 >= 32
    if stor3 != msg.sender:
        require msg.sender == stor4
    stor6 = 0
    sub_0bdebf70 = arg1
}

function sub_c81c03e6(?) {
    require calldata.size - 4 >= 64
    if stor3 != msg.sender:
        require msg.sender == stor4
    stor6 = 0
    stor0 = arg1
    stor1 = arg2
}

function sub_a00b6836(?) payable {
    if msg.value < sub_0bdebf70:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Exchange quantity less than minimum limit.'
    require stor1
    call stor4 with:
       value (stor1 * msg.value) - (stor0 * msg.value) / stor1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if eth.balance(this.address) > 0:
        call stor5 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit 0x91639c64: msg.sender, msg.value
    return 1
}



}
