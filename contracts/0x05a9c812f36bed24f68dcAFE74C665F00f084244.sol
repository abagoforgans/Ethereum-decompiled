contract main {


// =======================  Init code  ======================


uint8 stor0; offset 160
address stor0;
uint256 stor4;
uint256 stor6;
uint8 stor8;
uint256 stor9;
uint256 stor10;
mapping of uint8 stor11;
address stor12;

function _fallback() payable {
    uint8(stor0.field_160) = 0
    stor4 = 0
    stor8 = 0
    stor12 = 0
    require not msg.value
    address(stor0.field_0) = msg.sender
    stor9 = code.data[2750 len 32]
    stor10 = code.data[2782 len 32]
    stor6 = code.data[2814 len 32]
    stor11[stor12] = 1
    if code.data[2846 len 32]:
        uint8(stor0.field_160) = 1
        emit TestingEnabled()
    return code.data[285 len 2465]
}



// =====================  Runtime code  =====================


const getBallotOptions = mem[mem[64] len s - mem[64]]

const getBallotOptNumber = 4


uint8 stor0; offset 160
address owner;
mapping of uint256 encryptedBallots;
mapping of uint256 associatedPubkeys;
mapping of address associated;
uint256 nVotesCast;
mapping of uint256 voterToBallotID;
uint256 encPubkey;
uint256 encSeckey;
uint8 stor8;
uint256 startTime;
uint256 endTime;
mapping of uint8 stor11;
address swarmFundAddress;

function nVotesCast() {
    return nVotesCast
}

function ballotEncryptionPubkey() {
    return encPubkey
}

function ballotEncryptionSeckey() {
    return encSeckey
}

function endTime() {
    return endTime
}

function getEncSeckey() {
    return encSeckey
}

function voterToBallotID(address arg1) {
    return voterToBallotID[arg1]
}

function bannedAddresses(address arg1) {
    return bool(stor11[arg1])
}

function associatedAddresses(uint256 arg1) {
    return associated[arg1]
}

function swarmFundAddress() {
    return swarmFundAddress
}

function getEncPubkey() {
    return encPubkey
}

function encryptedBallots(uint256 arg1) {
    return encryptedBallots[arg1]
}

function startTime() {
    return startTime
}

function owner() {
    return owner
}

function associatedPubkeys(uint256 arg1) {
    return associatedPubkeys[arg1]
}

function testMode() {
    return bool(stor0)
}

function _fallback() payable {
    revert
}

function revealSeckey(bytes32 arg1) {
    if owner != msg.sender:
        emit Error(Array(len=9, data='Not owner'));
    else:
        require block.timestamp > endTime
        encSeckey = arg1
        stor8 = 1
        emit SeckeyRevealed(arg1);
}

function setEndTime(uint256 arg1) {
    if not stor0:
        emit Error(Array(len=16, data='Testing disabled'));
    else:
        if owner != msg.sender:
            emit Error(Array(len=9, data='Not owner'));
        else:
            endTime = arg1
}

function banAddress(address arg1) {
    if not stor0:
        emit Error(Array(len=16, data='Testing disabled'));
    else:
        if owner != msg.sender:
            emit Error(Array(len=9, data='Not owner'));
        else:
            stor11[address(arg1)] = 1
}

function submitBallot(bytes32 arg1, bytes32 arg2) {
    if stor11[address(msg.sender)]:
        emit Error(Array(len=14, data='Banned address'));
    else:
        if block.timestamp <= startTime:
            emit Error(Array(len=15, data='Ballot not open'));
        else:
            if block.timestamp >= endTime:
                emit Error(Array(len=15, data='Ballot not open'));
            else:
                encryptedBallots[stor4] = arg1
                associatedPubkeys[stor4] = arg2
                associated[stor4] = msg.sender
                voterToBallotID[address(msg.sender)] = nVotesCast
                nVotesCast++
                emit SuccessfulVote(msg.sender, arg1, arg2);
}



}
