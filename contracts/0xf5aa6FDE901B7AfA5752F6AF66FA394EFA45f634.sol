contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[61 len 878]
}



// =====================  Runtime code  =====================


const authType = 1


mapping of uint256 signDate;
address signerAddress;

function signDate(bytes32 arg1) payable {
    return signDate[arg1]
}

function signer() payable {
    return signerAddress
}

function _fallback() payable {
  stop
}

function signed(bytes32 arg1) payable {
    return not not signDate[arg1]
}

function isSigner(address arg1) payable {
    return (arg1 == signerAddress)
}

function sign(bytes32 arg1) payable {
    if signerAddress != msg.sender:
        emit Sign(arg1, 1);
        return 1
    if not arg1:
        emit Sign(arg1, 2);
        return 2
    signDate[arg1] = block.timestamp
    if not signDate[arg1]:
        emit Sign(arg1, 0);
        return 0
    emit Sign(arg1, 4);
    return 4
}



}
