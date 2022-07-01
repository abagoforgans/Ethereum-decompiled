contract main {




// =====================  Runtime code  =====================


address owner;

function owner() {
    return owner
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function _fallback() payable {
    call owner with:
       value msg.value wei
         gas gas_remaining wei
    require ext_call.success
    emit Deposit(msg.value, msg.sender, owner);
}

function transferToOwner(address arg1, uint256 arg2) {
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args owner, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_b76ea962(?) payable {
    mem[128 len arg2.length] = arg2[all]
    require msg.sender == owner
    mem[ceil32(arg2.length) + 128 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len arg2.length - 4]
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + 128] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
        call arg1.mem[ceil32(arg2.length) + 128 len 4] with:
           value msg.value wei
             gas gas_remaining wei
            args mem[ceil32(arg2.length) + 132 len floor32(arg2.length) + 28]
    require ext_call.success
}



}
