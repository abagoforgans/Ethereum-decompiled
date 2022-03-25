contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    stor2 = 409
    return code.data[27 len 1033]
}



// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 sub_fcc820e2;
uint256 sub_b6db8973;

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function sub_b6db8973(?) {
    return sub_b6db8973
}

function sub_fcc820e2(?) {
    return sub_fcc820e2[arg1]
}

function _fallback() {
  stop
}

function sub_c03945f7(?) {
    require msg.value >= sub_b6db8973
    call msg.sender with:
       value 1 wei
         gas 0 wei
    require ext_call.success
    balanceOf[address(msg.sender)] += msg.value
    require sub_b6db8973
    sub_fcc820e2[address(msg.sender)] += msg.value / sub_b6db8973
}

function sub_1720ea55(?) {
    require balanceOf[address(msg.sender)] <= arg1
    require sub_b6db8973
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        balanceOf[address(msg.sender)] += arg1
        sub_fcc820e2[address(msg.sender)] += arg1 / sub_b6db8973
        return 0
    balanceOf[address(msg.sender)] -= arg1
    sub_fcc820e2[address(msg.sender)] -= arg1 / sub_b6db8973
    return 1
}



}
