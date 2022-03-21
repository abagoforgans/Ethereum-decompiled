contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 747]
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

function add(string arg1, string arg2, string arg3, address arg4) payable {
    if msg.value > 0:
        call arg4 with:
           value msg.value wei
             gas 0 wei
        require ext_call.success
    if not arg2.length % 32:
        emit content(Array(len=arg1.length, data=arg1[all]), arg1.length + 160, arg2.length + arg1.length + 192, msg.value);
    else:
        emit content(Array(len=arg1.length, data=arg1[all]), arg1.length + 160, floor32(arg2.length) + arg1.length + 224, msg.value);
}



}
