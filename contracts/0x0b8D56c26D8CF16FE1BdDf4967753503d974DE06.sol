contract main {


// =======================  Init code  ======================


uint256 stor2;
uint256 stor3;

function _fallback() payable {
    stor2 = 10^15
    stor3 = 100 * 10^6
    return code.data[37 len 1915]
}



// =====================  Runtime code  =====================


#
#  - buyin(address arg1, uint256 arg2)
#  - _fallback()
#
uint256 totalSupply;
mapping of struct balanceOf;
uint256 price;
uint256 remaining;

function totalSupply() payable {
    return totalSupply
}

function remaining() payable {
    return remaining
}

function balanceOf(address arg1) payable {
    return balanceOf[address(arg1)].field_0
}

function price() payable {
    return price
}

function allowance(address arg1, address arg2) payable {
    return balanceOf[address(arg1)][2][address(arg2)].field_0
}

function approve(address arg1, uint256 arg2) payable {
    emit Approval(arg2, msg.sender, arg1);
    balanceOf[address(msg.sender)][2][address(arg1)].field_0 += arg2
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    if balanceOf[address(msg.sender)].field_0 >= arg2:
        emit Transfer(arg2, msg.sender, arg1);
        balanceOf[address(msg.sender)].field_0 -= arg2
        balanceOf[arg1].field_0 += arg2
        return 0
    else:
        return 0
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    if balanceOf[address(arg1)].field_0 < arg3:
        return 0
    if balanceOf[address(arg1)][2][address(msg.sender)].field_0 < arg3:
        return 0
    emit Transfer(arg3, arg1, arg2);
    balanceOf[address(arg1)][2][address(msg.sender)].field_0 -= arg3
    balanceOf[address(arg1)].field_0 -= arg3
    balanceOf[arg2].field_0 += arg3
    return 1
}

function refund(uint256 arg1, uint256 arg2) payable {
    if balanceOf[address(msg.sender)][1][arg1].field_0 < arg2:
        return 0
    if block.timestamp < balanceOf[address(msg.sender)][1][arg1].field_256:
        return 0
    if balanceOf[address(msg.sender)].field_0 < arg2:
        return 0
    emit Refund(msg.sender, arg1, arg2);
    balanceOf[address(msg.sender)].field_0 -= arg2
    totalSupply += arg2
    balanceOf[address(msg.sender)][1][arg1].field_0 -= arg2
    if not balanceOf[address(msg.sender)][1][arg1].field_0 - arg2:
        balanceOf[address(msg.sender)][1][arg1].field_0 = 0
        balanceOf[address(msg.sender)][1][arg1].field_256 = 0
    call msg.sender with:
       value arg2 * arg1 / 10^6 wei
         gas 0 wei
    require ext_call.success
    return 1
}



}
