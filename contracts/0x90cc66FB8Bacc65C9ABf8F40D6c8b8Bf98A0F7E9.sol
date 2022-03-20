contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = msg.sender or Mask(96, 160, stor1)
    return code.data[36 len 978]
}



// =====================  Runtime code  =====================


const sub_b89199dd(?) = 1


mapping of struct isValid;
address authorizedSignerAddress;

function isValid(bytes32 arg1) payable {
    return isValid[arg1].field_64
}

function authorizedSigner() payable {
    return authorizedSignerAddress
}

function _fallback() payable {
  stop
}

function sub_a51ec3bf(?) payable {
    return isValid[arg1].field_0, isValid[arg1].field_64
}

function removeDocument(bytes32 arg1) payable {
    if authorizedSignerAddress != msg.sender:
        emit 0x6d8d9f4a: arg1, 1
        return 1
    if 0 == isValid[arg1].field_0:
        emit 0x6d8d9f4a: arg1, 5
        return 5
    isValid[arg1].field_0 = 0
    emit 0x6d8d9f4a: arg1, 0
    return 0
}

function sign(bytes32 arg1) payable {
    if 0 == isValid[arg1].field_0:
        emit 0x4d6a27cf: arg1, msg.sender, 5
        return 5
    if isValid[arg1].field_64:
        emit 0x4d6a27cf: arg1, msg.sender, 2
        return 2
    if authorizedSignerAddress != msg.sender:
        emit 0x4d6a27cf: arg1, msg.sender, 1
        return 1
    isValid[arg1].field_64 = 1
    emit 0x4d6a27cf: arg1, msg.sender, 0
    return 0
}

function sub_f537cf91(?) payable {
    if 0 == isValid[arg1].field_0:
        emit 0xb2741840: arg1, msg.sender, 5
        return 5
    if not isValid[arg1].field_64:
        emit 0xb2741840: arg1, msg.sender, 3
        return 3
    if authorizedSignerAddress != msg.sender:
        emit 0xb2741840: arg1, msg.sender, 1
        return 1
    isValid[arg1].field_64 = 0
    emit 0xb2741840: arg1, msg.sender, 0
    return 0
}

function addDocument(bytes32 arg1) payable {
    if authorizedSignerAddress != msg.sender:
        emit 0x6de53e25: arg1, 1
        return 1
    if not arg1:
        emit 0x6de53e25: arg1, 4
        return 4
    isValid[arg1].field_0 = uint64(block.timestamp)
    isValid[arg1].field_64 = 1
    isValid[arg1].field_72 = Mask(184, 72, block.timestamp) >> 72
    if 0 == isValid[arg1].field_0:
        emit 0x6de53e25: arg1, 0
        return 0
    emit 0x6de53e25: arg1, 6
    return 6
}



}
