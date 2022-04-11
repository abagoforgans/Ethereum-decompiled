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
    return code.data[220 len 2521]
}



// =====================  Runtime code  =====================


const sub_f00c6741(?) = 0


address owner;
mapping of uint8 stor1;
mapping of uint8 stor2;
mapping of uint256 complaint;
uint256 stor4;
uint256 stor5;

function complained(address arg1, address arg2) {
    return bool(stor2[arg1][arg2])
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
    stor5 = arg1
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

function removeMember(address arg1) {
    require owner == msg.sender
    stor1[address(arg1)] = 0
    complaint[address(arg1)] = 0
    emit MemberRemoved(arg1);
}

function removeHash(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require bool(stor1[address(msg.sender)]) == 1
    mem[ceil32(arg1.length) + 128] = msg.sender
    mem[ceil32(arg1.length) + 160] = 64
    mem[ceil32(arg1.length) + 192] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 224] = mem[128]
        mem[ceil32(arg1.length) + 256 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit HashRemoved(msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + 224 len arg1.length]));
}

function addHash(string arg1, uint256 arg2) {
    mem[128 len arg1.length] = arg1[all]
    require bool(stor1[address(msg.sender)]) == 1
    mem[ceil32(arg1.length) + 128] = msg.sender
    mem[ceil32(arg1.length) + 192] = arg2
    mem[ceil32(arg1.length) + 160] = 96
    mem[ceil32(arg1.length) + 224] = arg1.length
    if arg1.length:
        mem[ceil32(arg1.length) + 256] = mem[128]
        mem[ceil32(arg1.length) + 288 len floor32(arg1.length - 1)] = mem[160 len floor32(arg1.length - 1)]
    emit HashAdded(msg.sender, Array(len=arg1.length, data=mem[ceil32(arg1.length) + 256 len arg1.length]), arg2);
}

function banMember(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
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
        mem[ceil32(arg2.length) + 128] = 32
        mem[ceil32(arg2.length) + 160] = arg2.length
        if arg2.length:
            mem[ceil32(arg2.length) + 192] = mem[128]
            mem[ceil32(arg2.length) + 224 len floor32(arg2.length - 1)] = mem[160 len floor32(arg2.length - 1)]
        emit Banned(Array(len=arg2.length, data=mem[ceil32(arg2.length) + 192 len arg2.length]));
}



}
