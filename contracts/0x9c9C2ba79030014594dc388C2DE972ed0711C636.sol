contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 510]
}



// =====================  Runtime code  =====================


address stor0;
mapping of uint256 sent;

function sent(address arg1) payable {
    return sent[arg1]
}

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function cash(address arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) payable {
    if arg2 > sent[address(arg1)]:
        signer = erecover(sha3(this.address, arg1, arg2), arg3 << 248, arg4, arg5) 
        require erecover.result
        if address(signer) == stor0:
            call arg1 with:
               value arg2 - sent[address(arg1)] wei
                 gas 0 wei
            if not ext_call.success:
                emit Overdraft(stor0);
                selfdestruct(arg1)
            sent[address(arg1)] = arg2
}

function _fallback() payable {
  stop
}



}
