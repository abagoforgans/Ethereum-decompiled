contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[36 len 411]
}



// =====================  Runtime code  =====================


const authType = 1


mapping of uint256 stor0;
address signerAddress;

function signer() payable {
    return signerAddress
}

function _fallback() payable {
  stop
}

function sub_0a25035b(?) payable {
    return not not stor0[arg1]
}

function remove(bytes32 arg1) payable {
    if signerAddress != msg.sender:
        emit 0xa350008b: arg1, 1
        return 1
    if 0 == stor0[arg1]:
        emit 0xa350008b: arg1, 3
        return 3
    stor0[arg1] = 0
    emit 0xa350008b: arg1, 0
    return 0
}

function sign(bytes32 arg1) payable {
    if signerAddress != msg.sender:
        emit Sign(arg1, 1);
        return 1
    if not arg1:
        emit Sign(arg1, 2);
        return 2
    stor0[arg1] = block.timestamp
    if 0 == stor0[arg1]:
        emit Sign(arg1, 0);
        return 0
    emit Sign(arg1, 4);
    return 4
}



}
