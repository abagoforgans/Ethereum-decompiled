contract main {


// =======================  Init code  ======================


uint256 stor0;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    return code.data[36 len 1058]
}



// =====================  Runtime code  =====================


const getOwner = 0


address owner;
uint256 sub_323745db;
uint256 eventName;
uint256 eventDate;
uint256 sub_664a2e17;
array of uint256 sub_17414c7f;

function sub_17414c7f(?) payable {
    return sub_17414c7f[0 len sub_17414c7f.length]
}

function sub_323745db(?) payable {
    return sub_323745db
}

function eventDate() payable {
    return eventDate
}

function sub_664a2e17(?) payable {
    return sub_664a2e17
}

function eventName() payable {
    return eventName
}

function owner() payable {
    return owner
}

function _fallback() payable {
    revert 
}

function majorEventFunc(uint256 arg1, bytes32 arg2, bytes32 arg3) payable {
    emit MajorEvent(block.timestamp, arg1, arg2, arg3);
}

function pdfCertificateProof(bytes arg1) payable {
    if owner == msg.sender:
        sub_17414c7f[] = Array(len=arg1.length, data=arg1[all])
        emit MajorEvent(block.timestamp, block.timestamp, 'Entered Attendance Proof', 'Attendance proof PDF in IPFS');
}

function sub_511418f8(?) payable {
    if msg.sender == owner:
        sub_323745db = arg1
        eventName = arg2
        eventDate = arg3
        sub_664a2e17 = arg4
        emit MajorEvent(block.timestamp, arg3, 'Certificate Creation', 'created the contract');
}



}
