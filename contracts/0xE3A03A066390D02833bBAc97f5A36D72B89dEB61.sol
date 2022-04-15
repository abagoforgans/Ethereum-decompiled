contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    stor0 = msg.sender
    return code.data[89 len 974]
}



// =====================  Runtime code  =====================


address owner;

function getOwner() {
    return owner
}

function tokenFallback(address arg1, uint256 arg2, bytes arg3) {
  stop
}

function _fallback() payable {
    emit Deposit(msg.value, msg.sender);
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    require arg1
    owner = arg1
}

function forward(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    require owner == msg.sender
    require arg1
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
       value arg2 wei
         gas gas_remaining - 34710 wei
        args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    require ext_call.success
    if arg2 > 0:
        emit Withdrawal(arg2, Array(len=arg3.length, data=arg3[all]), arg1);
}



}
