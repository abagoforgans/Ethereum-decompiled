contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 605]
}



// =====================  Runtime code  =====================


address owner;

function Owner() payable {
    return owner
}

function kill(address arg1) payable {
    if owner != msg.sender:
    selfdestruct(arg1)
}

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(address(msg.sender), msg.value);
}

function execute(address arg1, uint256 arg2, bytes arg3) payable {
    mem[128 len arg3.length] = arg3[all]
    if msg.sender == owner:
        mem[ceil32(arg3.length) + 128] = msg.sender
        mem[ceil32(arg3.length) + 160] = arg2
        mem[ceil32(arg3.length) + 192] = arg1
        mem[ceil32(arg3.length) + 224] = 128
        mem[ceil32(arg3.length) + 256] = arg3.length
        mem[ceil32(arg3.length) + 288 len arg3.length] = arg3[all]
        emit SingleTransact(msg.sender, arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
        mem[ceil32(arg3.length) + 128 len arg3.length] = arg3[all]
        if not arg3.length % 32:
            call arg1 with:
               value arg2 wei
                 gas gas_remaining - 34050 wei
                args arg3[all]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
            call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
               value arg2 wei
                 gas gas_remaining - 34050 wei
                args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
}



}
