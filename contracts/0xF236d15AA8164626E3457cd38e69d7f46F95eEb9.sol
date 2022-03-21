contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 687]
}



// =====================  Runtime code  =====================


address stor0;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function flush() payable {
    if stor0 == msg.sender:
        call stor0 with:
           value eth.balance(this.address) wei
             gas 0 wei
}

function add(string arg1, uint256 arg2, string arg3, string arg4, address arg5) payable {
    if msg.value > 0:
        require arg5 != 0
        call arg5 with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
    emit content(Array(len=arg1.length, data=arg1[all]), msg.value, arg2, sha3(arg3[all]), sha3(arg4[all]));
}



}
