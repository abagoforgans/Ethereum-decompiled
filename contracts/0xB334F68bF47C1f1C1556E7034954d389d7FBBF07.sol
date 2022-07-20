contract main {




// =====================  Runtime code  =====================


const name = 'Goo Material - Metal'

const decimals = 0

const symbol = 'METAL'


uint256 stor0;
address stor1;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor4;

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function totalSupply() {
    require balanceOf[0] <= stor0
    return (stor0 - balanceOf[0])
}

function setOperator(address arg1, bool arg2) {
    require msg.sender == stor1
    stor4[address(arg1)] = uint8(arg2)
}

function sub_b577c455(?) {
    require stor4[msg.sender]
    balanceOf[address(arg2)] += arg1
    stor0 += arg1
    emit Transfer(arg1, 0, arg2);
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function burn(uint256 arg1, address arg2) {
    require stor4[msg.sender]
    require arg1 <= balanceOf[address(arg2)]
    balanceOf[address(arg2)] -= arg1
    require arg1 <= stor0
    stor0 -= arg1
    emit Transfer(arg1, arg2, 0);
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_02b45474(?) {
    require msg.sender == stor1
    require arg1 != this.address
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args stor1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    require arg3 + balanceOf[address(arg2)] >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), arg2, this.address, 128, arg3.length, arg3[all]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
