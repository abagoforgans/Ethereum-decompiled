contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() payable {
    stor0 = msg.sender
    return code.data[48 len 4876]
}



// =====================  Runtime code  =====================


address contractOwner;
address pendingContractOwner;
uint256 membersCount;
mapping of address index2member;
mapping of uint256 member;
mapping of struct stor5;
uint256 groupsCount;
mapping of uint256 index2groupName;
mapping of uint256 groupName2index;
mapping of struct stor9;
mapping of uint8 stor10;

function memberAddress2index(address arg1) {
    return member[arg1]
}

function isGroupExists(bytes32 arg1) {
    return bool(groupName2index[arg1])
}

function isRegisteredUser(address arg1) {
    return bool(member[address(arg1)])
}

function membersCount() {
    return membersCount
}

function index2groupName(uint256 arg1) {
    return index2groupName[arg1]
}

function pendingContractOwner() {
    return pendingContractOwner
}

function index2memberAddress(uint256 arg1) {
    return index2member[arg1]
}

function groupsCount() {
    return groupsCount
}

function contractOwner() {
    return contractOwner
}

function groupsBlocked(bytes32 arg1) {
    return bool(stor10[arg1])
}

function groupName2index(bytes32 arg1) {
    return groupName2index[arg1]
}

function destroy() {
    if contractOwner != msg.sender:
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function claimContractOwnership() {
    if pendingContractOwner != msg.sender:
        return 0
    contractOwner = pendingContractOwner
    pendingContractOwner = 0
    return 1
}

function changeContractOwnership(address arg1) {
    if contractOwner != msg.sender:
        return 0
    if not arg1:
        return 0
    pendingContractOwner = arg1
    return 1
}

function isUserInGroup(bytes32 arg1, address arg2) {
    if not member[address(arg2)]:
        return bool(member[address(arg2)])
    return bool(stor5[address(arg2)][2][arg1].field_0)
}

function changeGroupActiveStatus(bytes32 arg1, bool arg2) {
    if contractOwner != msg.sender:
        return 0
    require groupName2index[arg1]
    stor10[arg1] = uint8(arg2)
    return 1
}

function registerUser(address arg1) {
    if contractOwner != msg.sender:
        return 0
    require arg1
    if member[address(arg1)]:
        emit Error(111001);
        return 111001
    require membersCount + 1 >= membersCount
    membersCount++
    member[address(arg1)] = membersCount + 1
    index2member[stor2 + 1] = arg1
    stor5[address(arg1)].field_0 = arg1
    stor5[address(arg1)].field_256 = 0
    emit UserCreated(arg1);
    return 1
}

function createGroup(bytes32 arg1, uint256 arg2) {
    if contractOwner != msg.sender:
        return 0
    require arg1
    if groupName2index[arg1]:
        emit Error(111002);
        return 111002
    require groupsCount + 1 >= groupsCount
    groupName2index[arg1] = groupsCount + 1
    index2groupName[stor6 + 1] = arg1
    stor9[arg1].field_0 = arg1
    stor9[arg1].field_256 = arg2
    stor9[arg1].field_512 = 0
    groupsCount++
    emit GroupCreated(arg1);
    return 1
}

function getGroups() {
    idx = 0
    while idx < groupsCount:
        mem[0] = idx + 1
        mem[32] = 7
        require idx < groupsCount
        mem[(32 * idx) + 160] = index2groupName[idx + 1]
        idx = idx + 1
        continue 
    mem[(32 * groupsCount) + 224 len floor32(groupsCount)] = mem[160 len floor32(groupsCount)]
    return Array(len=groupsCount, data=mem[160 len floor32(groupsCount)], mem[(32 * groupsCount) + floor32(groupsCount) + 224 len (32 * groupsCount) - floor32(groupsCount)]), 
}

function unregisterUser(address arg1) {
    if contractOwner != msg.sender:
        return 0
    require arg1
    if not member[address(arg1)]:
        emit Error(111007);
        return 111007
    if stor5[address(arg1)].field_256:
        emit Error(111007);
        return 111007
    member[address(arg1)] = 0
    if membersCount != member[address(arg1)]:
        index2member[stor4[address(arg1)]] = index2member[stor2]
        member[stor3[stor2]] = member[address(arg1)]
    stor5[address(arg1)].field_0 = 0
    stor5[address(arg1)].field_256 = 0
    index2member[stor2] = 0
    member[address(arg1)] = 0
    require 1 <= membersCount
    membersCount--
    emit UserDeleted(arg1);
    return 1
}

function getGroupMembers(bytes32 arg1) {
    if not groupName2index[arg1]:
        return ''
    if not stor9[arg1].field_512:
        return ''
    s = 0
    idx = 0
    while idx < stor9[arg1].field_512:
        mem[0] = stor9[arg1][4][idx + 1].field_0
        mem[32] = 3
        require idx < stor9[arg1].field_512
        mem[(32 * idx) + 160] = index2member[stor9[arg1][4][idx + 1].field_0]
        s = stor9[arg1][4][idx + 1].field_0
        idx = idx + 1
        continue 
    mem[(32 * stor9[arg1].field_512) + 224 len floor32(stor9[arg1].field_512)] = mem[160 len floor32(stor9[arg1].field_512)]
    return Array(len=stor9[arg1].field_512, data=mem[160 len floor32(stor9[arg1].field_512)], mem[(32 * stor9[arg1].field_512) + floor32(stor9[arg1].field_512) + 224 len (32 * stor9[arg1].field_512) - floor32(stor9[arg1].field_512)]), 
}

function getUserGroups(address arg1) {
    if not member[address(arg1)]:
        return ''
    if not stor5[address(arg1)].field_256:
        return ''
    s = 0
    idx = 0
    while idx < stor5[address(arg1)].field_256:
        mem[0] = stor5[address(arg1)][3][idx + 1].field_0
        mem[32] = 7
        require idx < stor5[address(arg1)].field_256
        mem[(32 * idx) + 160] = index2groupName[stor5[address(arg1)][3][idx + 1].field_0]
        s = stor5[address(arg1)][3][idx + 1].field_0
        idx = idx + 1
        continue 
    mem[(32 * stor5[address(arg1)].field_256) + 224 len floor32(stor5[address(arg1)].field_256)] = mem[160 len floor32(stor5[address(arg1)].field_256)]
    return Array(len=stor5[address(arg1)].field_256, data=mem[160 len floor32(stor5[address(arg1)].field_256)], mem[(32 * stor5[address(arg1)].field_256) + floor32(stor5[address(arg1)].field_256) + 224 len (32 * stor5[address(arg1)].field_256) - floor32(stor5[address(arg1)].field_256)]), 
}

function withdrawnTokens(address[] arg1, address arg2) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    if contractOwner != msg.sender:
        return 0
    s = 0
    s = 0
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _21 = mem[(32 * idx) + 128]
        mem[(32 * arg1.length) + 160] = 0
        mem[(32 * arg1.length) + 132] = this.address
        require ext_code.size(address(_21))
        call address(_21).0x70a08231 with:
             gas gas_remaining - 710 wei
            args this.address
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        require ext_call.success
        if ext_call.return_data[0]:
            mem[(32 * arg1.length) + 132] = arg2
            mem[(32 * arg1.length) + 164] = ext_call.return_data[0]
            require ext_code.size(address(_21))
            call address(_21).0xa9059cbb with:
                 gas gas_remaining - 710 wei
                args address(arg2), ext_call.return_data[0]
            mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
            require ext_call.success
        s = ext_call.return_data[0]
        s = _21
        idx = idx + 1
        continue 
    return 1
}

function addUsersToGroup(bytes32 arg1, address[] arg2) {
    if contractOwner != msg.sender:
        return 0
    require groupName2index[arg1]
    s = 0
    s = 0
    idx = 0
    while idx < arg2.length:
        require member[address(cd[((32 * idx) + arg2 + 36)])] != 0
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = sha3(arg1, 9) + 3
        if not stor9[arg1][3][address(cd[((32 * idx) + arg2 + 36)])].field_0:
            require stor9[arg1].field_512 + 1 >= stor9[arg1].field_512
            stor9[arg1][3][address(cd[((32 * idx) + arg2 + 36)])].field_0 = stor9[arg1].field_512 + 1
            stor9[arg1][4][stor9[arg1].field_512 + 1].field_0 = member[address(cd[((32 * idx) + arg2 + 36)])]
            require stor5[address(cd[((32 * idx) + arg2 + 36)])].field_256 + 1 >= stor5[address(cd[((32 * idx) + arg2 + 36)])].field_256
            stor5[address(cd[((32 * idx) + arg2 + 36)])][2][arg1].field_0 = stor5[address(cd[((32 * idx) + arg2 + 36)])].field_256 + 1
            mem[0] = stor5[address(cd[((32 * idx) + arg2 + 36)])].field_256 + 1
            mem[32] = sha3(address(cd[((32 * idx) + arg2 + 36)]), 5) + 3
            stor5[address(cd[((32 * idx) + arg2 + 36)])][3][stor5[address(cd[((32 * idx) + arg2 + 36)])].field_256 + 1].field_0 = groupName2index[arg1]
            stor5[address(cd[((32 * idx) + arg2 + 36)])].field_256++
            mem[96] = address(cd[((32 * idx) + arg2 + 36)])
            mem[128] = arg1
            emit UserToGroupAdded(address(cd[((32 * idx) + arg2 + 36)]), arg1);
        s = member[address(cd[((32 * idx) + arg2 + 36)])]
        s = address(cd[((32 * idx) + arg2 + 36)])
        idx = idx + 1
        continue 
    return 1
}

function removeUsersFromGroup(bytes32 arg1, address[] arg2) {
    if contractOwner != msg.sender:
        return 0
    require groupName2index[arg1]
    s = 0
    s = 0
    s = 0
    idx = 0
    while idx < arg2.length:
        mem[0] = address(cd[((32 * idx) + arg2 + 36)])
        mem[32] = sha3(arg1, 9) + 3
        if member[address(cd[((32 * idx) + arg2 + 36)])]:
            if stor9[arg1][3][address(cd[((32 * idx) + arg2 + 36)])].field_0:
                if stor9[arg1].field_512 != stor9[arg1][3][address(cd[((32 * idx) + arg2 + 36)])].field_0:
                    stor9[arg1][4][stor9[arg1][3][address(cd[((32 * idx) + arg2 + 36)])].field_0].field_0 = stor9[arg1][4][stor9[arg1].field_512].field_0
                    stor9[arg1][3][stor3[stor9[arg1][4][stor9[arg1].field_512].field_0]].field_0 = stor9[arg1][3][address(cd[((32 * idx) + arg2 + 36)])].field_0
                stor9[arg1][3][address(cd[((32 * idx) + arg2 + 36)])].field_0 = 0
                stor9[arg1][4][stor9[arg1].field_512].field_0 = 0
                require 1 <= stor9[arg1].field_512
                if stor5[address(cd[((32 * idx) + arg2 + 36)])].field_256 != stor5[address(cd[((32 * idx) + arg2 + 36)])][2][arg1].field_0:
                    stor5[address(cd[((32 * idx) + arg2 + 36)])][3][stor5[address(cd[((32 * idx) + arg2 + 36)])][2][arg1].field_0].field_0 = stor5[address(cd[((32 * idx) + arg2 + 36)])][3][stor5[address(cd[((32 * idx) + arg2 + 36)])].field_256].field_0
                    stor5[address(cd[((32 * idx) + arg2 + 36)])][2][stor7[stor5[address(cd[((32 * idx) + arg2 + 36)])][3][stor5[address(cd[((32 * idx) + arg2 + 36)])].field_256].field_0]].field_0 = stor5[address(cd[((32 * idx) + arg2 + 36)])][2][arg1].field_0
                stor5[address(cd[((32 * idx) + arg2 + 36)])][2][arg1].field_0 = 0
                mem[0] = stor5[address(cd[((32 * idx) + arg2 + 36)])].field_256
                mem[32] = sha3(address(cd[((32 * idx) + arg2 + 36)]), 5) + 3
                stor5[address(cd[((32 * idx) + arg2 + 36)])][3][stor5[address(cd[((32 * idx) + arg2 + 36)])].field_256].field_0 = 0
                require 1 <= stor5[address(cd[((32 * idx) + arg2 + 36)])].field_256
                stor5[address(cd[((32 * idx) + arg2 + 36)])].field_256--
                mem[96] = address(cd[((32 * idx) + arg2 + 36)])
                mem[128] = arg1
                emit UserFromGroupRemoved(address(cd[((32 * idx) + arg2 + 36)]), arg1);
        s = stor9[arg1][3][address(cd[((32 * idx) + arg2 + 36)])].field_0
        s = member[address(cd[((32 * idx) + arg2 + 36)])]
        s = address(cd[((32 * idx) + arg2 + 36)])
        idx = idx + 1
        continue 
    return 1
}



}
