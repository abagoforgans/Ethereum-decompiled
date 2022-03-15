contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[37 len 878]
}



// =====================  Runtime code  =====================


address stor0;
uint256 latest;
mapping of struct history;
mapping of uint8 usedHashes;
mapping of address sub_06ae19a2;

function sub_06ae19a2(?) payable {
    return address(sub_06ae19a2[arg1])
}

function getDocument(uint256 arg1) payable {
    return history[arg1].field_0, history[arg1].field_256, history[arg1].field_512, history[arg1].field_768
}

function history(uint256 arg1) payable {
    return history[arg1].field_0, history[arg1].field_256, history[arg1].field_512, history[arg1].field_768
}

function usedHashes(bytes32 arg1) payable {
    return usedHashes[arg1]
}

function getLatest() payable {
    return latest
}

function _fallback() payable {
  stop
}

function documentExists(bytes32 arg1) payable {
    if not usedHashes[arg1]:
        return 0
    return 1
}

function empty() payable {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function newDocument(bytes32 arg1) payable {
    if not usedHashes[arg1]:
        latest++
        uint256(sub_06ae19a2[arg1]) = msg.sender or Mask(96, 160, uint256(sub_06ae19a2[arg1]))
        usedHashes[arg1] = 1
        history[stor1].field_0 = block.number
        history[stor1].field_256 = arg1
        history[stor1].field_512 = msg.sender or Mask(96, 160, history[stor1].field_512)
        history[stor1].field_768 = msg.sender or Mask(96, 160, history[stor1].field_768)
        emit DocumentEvent(block.number, arg1, msg.sender, msg.sender);
        usedHashes[arg1] = 1
    return 1
}

function transferDocument(bytes32 arg1, address arg2) payable {
    if not usedHashes[arg1]:
        return 0
    if address(sub_06ae19a2[arg1]) != msg.sender:
        return 0
    latest++
    uint256(sub_06ae19a2[arg1]) = arg2 or Mask(96, 160, uint256(sub_06ae19a2[arg1]))
    usedHashes[arg1] = 1
    history[stor1].field_0 = block.number
    history[stor1].field_256 = arg1
    history[stor1].field_512 = msg.sender or Mask(96, 160, history[stor1].field_512)
    history[stor1].field_768 = arg2 or Mask(96, 160, history[stor1].field_768)
    emit DocumentEvent(block.number, arg1, msg.sender, arg2);
    return 1
}



}
