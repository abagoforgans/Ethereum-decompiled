contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[37 len 1248]
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

function usedHashes(bytes32 arg1) payable {
    return usedHashes[arg1]
}

function getDocument(bytes32 arg1) payable {
    return history[arg1].field_0, 
           history[arg1].field_256,
           history[arg1].field_768,
           history[arg1].field_1024,
           history[arg1].field_1280,
           history[arg1].field_1536,
           history[arg1].field_1792
}

function getLatest() payable {
    return latest
}

function history(bytes32 arg1) payable {
    return history[arg1].field_0, 
           history[arg1].field_256,
           history[arg1].field_512,
           history[arg1].field_768,
           history[arg1].field_1024,
           history[arg1].field_1280,
           history[arg1].field_1536,
           history[arg1].field_1792
}

function _fallback() payable {
  stop
}

function documentExists(bytes32 arg1) payable {
    if not usedHashes[arg1]:
        return 0
    return 1
}

function returnFunds() payable {
    call stor0 with:
       value eth.balance(this.address) wei
         gas 0 wei
}

function sub_e18129fb(?) payable {
    if usedHashes[arg2]:
        return 0
    latest++
    uint256(sub_06ae19a2[arg1]) = msg.sender or Mask(96, 160, uint256(sub_06ae19a2[arg1]))
    usedHashes[arg2] = 1
    history[arg2].field_0 = block.number
    history[arg2].field_256 = arg1
    history[arg2].field_512 = arg2
    history[arg2].field_768 = arg3
    history[arg2].field_1024 = msg.sender or Mask(96, 160, history[arg2].field_1024)
    history[arg2].field_1280 = msg.sender or Mask(96, 160, history[arg2].field_1280)
    history[arg2].field_1536 = block.timestamp
    history[arg2].field_1792 = arg4
    emit 0xa4767313: block.number, block.timestamp, arg3, arg2, msg.sender, msg.sender
    usedHashes[arg2] = 1
    return 1
}

function sub_076aec33(?) payable {
    if not usedHashes[arg2]:
        return 0
    if address(sub_06ae19a2[arg1]) != msg.sender:
        return 0
    latest++
    uint256(sub_06ae19a2[arg1]) = arg4 or Mask(96, 160, uint256(sub_06ae19a2[arg1]))
    usedHashes[arg2] = 1
    history[arg2].field_0 = block.number
    history[arg2].field_256 = arg1
    history[arg2].field_512 = arg2
    history[arg2].field_768 = arg3
    history[arg2].field_1024 = arg4 or Mask(96, 160, history[arg2].field_1024)
    history[arg2].field_1280 = msg.sender or Mask(96, 160, history[arg2].field_1280)
    history[arg2].field_1536 = block.timestamp
    history[arg2].field_1792 = arg5
    emit 0xa4767313: block.number, block.timestamp, arg3, arg2, address(arg4), msg.sender
    return 1
}



}
