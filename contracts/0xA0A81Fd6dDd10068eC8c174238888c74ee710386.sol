contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor3;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor3 = 409
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[115 len 1085]
}



// =====================  Runtime code  =====================


address owner;
mapping of uint256 balanceOf;
mapping of uint256 sub_fcc820e2;
uint256 sub_b6db8973;

function balanceOf(address arg1) payable {
    return balanceOf[arg1]
}

function owner() payable {
    return owner
}

function sub_b6db8973(?) payable {
    return sub_b6db8973
}

function sub_fcc820e2(?) payable {
    return sub_fcc820e2[arg1]
}

function _fallback() payable {
  stop
}

function sub_c03945f7(?) payable {
    require msg.value >= sub_b6db8973
    call msg.sender with:
       value 1 wei
         gas 0 wei
    require ext_call.success
    balanceOf[address(msg.sender)] += msg.value
    sub_fcc820e2[address(msg.sender)] += msg.value / sub_b6db8973
}

function sub_1720ea55(?) payable {
    require balanceOf[address(msg.sender)] <= arg1
    call msg.sender with:
       value arg1 wei
         gas 0 wei
    if not ext_call.success:
        balanceOf[address(msg.sender)] += arg1
        sub_fcc820e2[address(msg.sender)] += arg1 / sub_b6db8973
        return 0
    balanceOf[address(msg.sender)] -= arg1
    sub_fcc820e2[address(msg.sender)] -= arg1 / sub_b6db8973
    return 1
}



}
