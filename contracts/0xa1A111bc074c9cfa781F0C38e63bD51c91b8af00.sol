contract main {


// =======================  Init code  ======================


const _fallback = code.data[19 len 679]




// =====================  Runtime code  =====================


mapping of struct owner;

function owner(bytes32 arg1) payable {
    return owner[arg1].field_256
}

function addr(bytes32 arg1) payable {
    return owner[arg1].field_0
}

function _fallback() payable {
  stop
}

function setAddr(bytes32 arg1, address arg2) payable {
    if msg.sender == owner[arg1].field_256:
        owner[arg1].field_0 = arg2 or Mask(96, 160, owner[arg1].field_0)
        emit code.data[647 len 32]: arg1
}

function transfer(bytes32 arg1, address arg2) payable {
    if msg.sender == owner[arg1].field_256:
        owner[arg1].field_256 = arg2 or Mask(96, 160, owner[arg1].field_256)
        emit code.data[647 len 32]: arg1
}

function reserve(bytes32 arg1) payable {
    if not owner[arg1].field_256:
        if msg.value >= 69 * 10^18:
            owner[arg1].field_256 = msg.sender or Mask(96, 160, owner[arg1].field_256)
            emit code.data[647 len 32]: arg1
}

function disown(bytes32 arg1, address arg2) payable {
    if msg.sender == owner[arg1].field_256:
        owner[arg1].field_0 = 0
        owner[arg1].field_256 = 0
        call arg2 with:
           value 69 * 10^18 wei
             gas 0 wei
        emit code.data[647 len 32]: arg1
}



}
