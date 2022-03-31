contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 342]
}



// =====================  Runtime code  =====================


address stor0;

function _fallback() payable {
    if msg.value > 0:
        emit Deposit(address(msg.sender), msg.value);
}

function execute(address arg1, uint256 arg2, bytes arg3) payable {
    if msg.sender == stor0:
        emit SingleTransact(address(msg.sender), arg2, address(arg1), Array(len=arg3.length, data=arg3[all]));
        call arg1 with:
           value arg2 wei
             gas gas_remaining - 34050 wei
            args arg3[all]
        return 0
    else:
        return 0
}



}
