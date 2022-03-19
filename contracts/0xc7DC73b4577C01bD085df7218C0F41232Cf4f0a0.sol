contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1581]
}



// =====================  Runtime code  =====================


const getOwner = 0


address owner;
uint256 partner1;
uint256 partner2;
uint256 marriageDate;
uint256 marriageStatus;
array of uint256 imageHash;
array of uint256 marriageProofDoc;

function marriageDate() payable {
    return marriageDate
}

function imageHash() payable {
    return imageHash[0 len imageHash.length]
}

function partner2() payable {
    return partner2
}

function owner() payable {
    return owner
}

function partner1() payable {
    return partner1
}

function marriageProofDoc() payable {
    return marriageProofDoc[0 len marriageProofDoc.length]
}

function marriageStatus() payable {
    return marriageStatus
}

function _fallback() payable {
    revert 
}

function majorEventFunc(uint256 arg1, bytes32 arg2, bytes32 arg3) payable {
    emit MajorEvent(block.timestamp, arg1, arg2, arg3);
}

function setStatus(bytes32 arg1) payable {
    if msg.sender == owner:
        marriageStatus = arg1
        emit MajorEvent(block.timestamp, block.timestamp, 'Changed Status', arg1);
}

function marriageProof(bytes arg1) payable {
    if owner == msg.sender:
        marriageProofDoc[] = Array(len=arg1.length, data=arg1[all])
        emit MajorEvent(block.timestamp, block.timestamp, 'Entered Marriage Proof', 'Marriage proof in IPFS');
}

function createMarriage(bytes32 arg1, bytes32 arg2, uint256 arg3, bytes32 arg4, bytes32 arg5) payable {
    if msg.sender == owner:
        partner1 = arg1
        partner2 = arg2
        marriageDate = arg3
        marriageStatus = arg4
        emit MajorEvent(block.timestamp, block.timestamp, 'Changed Status', arg4);
        emit MajorEvent(block.timestamp, marriageDate, 'Marriage Contract Creation', arg5);
}

function setImage(bytes arg1) payable {
    mem[128 len arg1.length] = arg1[all]
    if msg.sender == owner:
        imageHash.length = (2 * arg1.length) + 1
        s = 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
        idx = 128
        while arg1.length + 128 > idx:
            stor[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = (Mask(251, 0, arg1.length + 31) >> 5) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
        while (imageHash.length + 31 / 32) + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > idx:
            stor[idx] = 0
            idx = idx + 1
            continue 
        emit MajorEvent(block.timestamp, block.timestamp, 'Entered Marriage Image', 'Image is in IPFS');
}



}
