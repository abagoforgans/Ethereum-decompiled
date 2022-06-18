contract main {




// =====================  Runtime code  =====================


address sub_d2ec4a92Address;

function sub_d2ec4a92(?) {
    return sub_d2ec4a92Address
}

function _fallback() payable {
  stop
}

function executeTransaction(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require ext_code.size(sub_d2ec4a92Address)
    call sub_d2ec4a92Address.executor() with:
         gas gas_remaining wei
    mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
       value arg2 wei
         gas gas_remaining wei
        args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    require ext_call.success
    emit Execution(address(arg1), arg2, Array(len=arg3.length, data=arg3[all]));
}



}
