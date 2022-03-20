contract main {


// =======================  Init code  ======================


uint256 stor2;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    return code.data[36 len 1107]
}



// =====================  Runtime code  =====================


const sub_b89199dd(?) = 1


mapping of struct isValid;
array of uint256 stor1;
address stor2;

function sub_41affd45(?) payable {
    return stor1.length
}

function isValid(bytes32 arg1) payable {
    return uint8(isValid[arg1].field_512)
}

function _fallback() payable {
  stop
}

function sub_a51ec3bf(?) payable {
    return isValid[arg1].field_256, uint8(isValid[arg1].field_512)
}

function sign(bytes32 arg1) payable {
    if 0 == isValid[arg1].field_256:
        emit 0x4d6a27cf: arg1, msg.sender, 5
        return 5
    if uint8(isValid[arg1].field_512):
        emit 0x4d6a27cf: arg1, msg.sender, 2
        return 2
    if stor2 != msg.sender:
        emit 0x4d6a27cf: arg1, msg.sender, 1
        return 1
    uint8(isValid[arg1].field_512) = 1
    emit 0x4d6a27cf: arg1, msg.sender, 0
    return 0
}

function sub_f537cf91(?) payable {
    if 0 == isValid[arg1].field_256:
        emit 0xb2741840: arg1, msg.sender, 5
        return 5
    if not uint8(isValid[arg1].field_512):
        emit 0xb2741840: arg1, msg.sender, 3
        return 3
    if stor2 != msg.sender:
        emit 0xb2741840: arg1, msg.sender, 1
        return 1
    uint8(isValid[arg1].field_512) = 0
    emit 0xb2741840: arg1, msg.sender, 0
    return 0
}

function addDocument(bytes32 arg1) payable {
    if stor2 != msg.sender:
        emit 0x87fe5a84: arg1, 1
        return 1
    if not arg1:
        emit 0x87fe5a84: arg1, 4
        return 4
    stor1.length++
    if not stor1.length <= stor1.length + 1:
        idx = stor1.length + 1
        while stor1.length > idx:
            stor1[idx] = 0
            idx = idx + 1
            continue 
    stor1[stor1.length] = arg1
    isValid[arg1].field_0 = stor1.length
    isValid[arg1].field_256 = 1234
    uint8(isValid[arg1].field_512) = 1
    emit 0x87fe5a84: arg1, 0
    return 0
}

function removeDocument(bytes32 arg1) payable {
    isValid[arg1].field_0 = 0
    isValid[arg1].field_256 = 0
    uint8(isValid[arg1].field_512) = 0
    if isValid[arg1].field_0 != stor1.length - 1:
        require stor1.length - 1 < stor1.length
        require isValid[arg1].field_0 < stor1.length
        stor1[stor0[arg1].field_0] = stor1[stor1.length]
        isValid[stor1[stor1.length]].field_0 = isValid[arg1].field_0
    stor1.length--
    if not stor1.length <= stor1.length - 1:
        idx = stor1.length - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30b
        while stor1.length - 0x4ef1d2ad89edf8c4d91132028e8195cdf30bb4b5053d4f8cd260341d4805f30a > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        return 0
    else:
        return 0
}



}
