contract main {




// =====================  Runtime code  =====================


address stor0;
mapping of uint256 allowance;

function allowance(address arg1, address arg2) {
    return allowance[arg1][arg2]
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function totalSupply() {
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args 'totalSupply'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getBalance(address arg1) {
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, uint256 arg2, address arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, arg2, address(this.address), Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function burn(uint256 arg1) {
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', msg.sender)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg1
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', msg.sender)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.0xe2a4853a with:
         gas gas_remaining wei
        args sha3('balances', msg.sender), ext_call.return_data[0] - arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args 'totalSupply'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg1 <= ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.0xe2a4853a with:
         gas gas_remaining wei
        args 'totalSupply', ext_call.return_data[0] - arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Burn(arg1, msg.sender);
    return 1
}

function burnFrom(address arg1, uint256 arg2) {
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require arg2 <= allowance[address(arg1)][address(msg.sender)]
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.0xe2a4853a with:
         gas gas_remaining wei
        args sha3('balances', arg1), ext_call.return_data[0] - arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    allowance[address(arg1)][address(msg.sender)] -= arg2
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args 'totalSupply'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.0xe2a4853a with:
         gas gas_remaining wei
        args 'totalSupply', ext_call.return_data[0] - arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Burn(arg2, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg1
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', msg.sender)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg2
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + arg2 > ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', msg.sender)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', msg.sender)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.0xe2a4853a with:
         gas gas_remaining wei
        args sha3('balances', msg.sender), ext_call.return_data[0] - arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + arg2 >= ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.0xe2a4853a with:
         gas gas_remaining wei
        args sha3('balances', arg1), ext_call.return_data[0] + arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg2, msg.sender, arg1);
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', msg.sender)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] == 2 * ext_call.return_data[0]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    require arg2
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg3
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + arg3 > ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.0xe2a4853a with:
         gas gas_remaining wei
        args sha3('balances', arg1), ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + arg3 >= ext_call.return_data[0]
    require ext_code.size(stor0)
    call stor0.0xe2a4853a with:
         gas gas_remaining wei
        args sha3('balances', arg2), ext_call.return_data[0] + arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Transfer(arg3, arg1, arg2);
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', arg2)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor0)
    call stor0.0xbd02d0f5 with:
         gas gas_remaining wei
        args sha3('balances', arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] == 2 * ext_call.return_data[0]
    return 1
}



}
