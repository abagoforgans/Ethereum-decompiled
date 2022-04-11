contract main {


// =======================  Init code  ======================


address stor0;
mapping of uint8 stor1;
uint256 stor4;
uint256 stor5;

function _fallback() {
    stor0 = msg.sender
    require stor0 == msg.sender
    stor1[address(msg.sender)] = 1
    emit MemberAdded(msg.sender);
    stor4 = 1
    stor5 = 10^9
    return code.data[233 len 2577]
}



// =====================  Runtime code  =====================


const sub_f00c6741(?) = 0


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint256 complaint;
uint256 stor4;
uint256 sizeLimit;

function complained(address arg1, address arg2) {
    return bool(stor2[arg1][arg2])
}

function sizeLimit() {
    return sizeLimit
}

function complaint(address arg1) {
    return complaint[arg1]
}

function membership(address arg1) {
    return bool(stor1[arg1])
}

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isMember(address arg1) {
    return (bool(stor1[address(arg1)]) == 1)
}

function updateBanThreshold(uint256 arg1) {
    require owner == msg.sender
    stor4 = arg1
}

function setTotalPersistLimit(uint256 arg1) {
    require owner == msg.sender
    sizeLimit = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    if arg1:
        owner = arg1
}

function addMember(address arg1) {
    require owner == msg.sender
    stor1[address(arg1)] = 1
    emit MemberAdded(arg1);
}

function removeHash(string arg1) {
    require bool(stor1[address(msg.sender)]) == 1
    emit HashRemoved(msg.sender, Array(len=arg1.length, data=arg1[all]));
}

function removeMember(address arg1) {
    require owner == msg.sender
    stor1[address(arg1)] = 0
    complaint[address(arg1)] = 0
    emit MemberRemoved(arg1);
}

function addHash(string arg1, uint256 arg2) {
    require bool(stor1[address(msg.sender)]) == 1
    emit HashAdded(msg.sender, Array(len=arg1.length, data=arg1[all]), arg2);
}

function banMember(address arg1, string arg2) {
    require bool(stor1[address(msg.sender)]) == 1
    require stor1[address(arg1)]
    require not stor2[address(msg.sender)][address(arg1)]
    stor2[address(msg.sender)][address(arg1)] = 1
    complaint[address(arg1)]++
    if complaint[address(arg1)] + 1 < stor4:
        emit BanAttempt(msg.sender, address(arg1), complaint[address(arg1)]);
    else:
        stor1[address(arg1)] = 0
        complaint[address(msg.sender)] = 0
        emit MemberRemoved(arg1);
        emit Banned(Array(len=arg2.length, data=arg2[all]));
}



}
