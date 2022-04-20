contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor6;
mapping of struct stor9;
array of address stor10;

function _fallback() {
    mem[96 len -6642] = code.data[7994 len -6642]
    mem[64] = -6546
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor0 = msg.sender
    stor6 = block.number
    mem[64] = -6322
    if stor0 != msg.sender:
        require stor9[address(msg.sender)].field_16
    require not stor9[address(msg.sender)].field_0
    stor9[address(msg.sender)].field_0 = 1
    stor9[address(msg.sender)].field_8 = 1
    stor9[address(msg.sender)].field_16 = 1
    stor9[address(msg.sender)].field_256 = 0
    stor9[address(msg.sender)].field_512 = 0
    stor9[address(msg.sender)][3][].field_0 = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor10.length++
    if not stor10.length <= stor10.length + 1:
        idx = stor10.length + 1
        while stor10.length > idx:
            uint256(stor10[idx]) = 0
            idx = idx + 1
            continue 
    address(stor10[stor10.length]) = msg.sender
    if stor0 != msg.sender:
        require stor9[address(msg.sender)].field_16
    require stor9[address(msg.sender)].field_0
    require stor2 + 1 >= stor2
    stor2++
    require stor9[address(msg.sender)].field_256 + 1 >= stor9[address(msg.sender)].field_256
    stor9[address(msg.sender)].field_256++
    emit AddShare(msg.sender, 1, stor9[address(msg.sender)].field_256 + 1);
    return code.data[1352 len 6642]
}



// =====================  Runtime code  =====================


const getBalance = eth.balance(this.address)

const PRECISION = 18


address founderAddress;
array of struct name;
uint256 totalShares;
uint256 totalWithdrawn;
uint8 stor4;
uint256 sub_597be18b;
uint256 genesisBlockNumber;
uint256 sharedExpense;
uint256 sharedExpenseWithdrawn;
mapping of struct members;
array of address memberKeys;

function sub_000fab12(?) {
    return sharedExpenseWithdrawn
}

function genesisBlockNumber() {
    return genesisBlockNumber
}

function name() {
    return name[0 len name.length].field_0
}

function members(address arg1) {
    mem[320] = members[arg1][3].field_0
    idx = 320
    s = 0
    while members[arg1][3].length + 320 > idx + 32:
        mem[idx + 32] = members[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bool(members[arg1].field_0), 
           bool(members[arg1].field_8),
           bool(members[arg1].field_16),
           members[arg1].field_256,
           members[arg1].field_512,
           Array(len=members[arg1][3].length, data=mem[320 len members[arg1][3].length + (floor32(members[arg1][3].length - 1) + -members[arg1][3].length + 32 % 32)])
}

function sub_120c8078(?) {
    return sharedExpense
}

function totalShares() {
    return totalShares
}

function totalWithdrawn() {
    return totalWithdrawn
}

function founder() {
    return founderAddress
}

function sub_597be18b(?) {
    return sub_597be18b
}

function sharedExpenseWithdrawn() {
    return sharedExpenseWithdrawn
}

function getFounder() {
    return founderAddress
}

function getMemberCount() {
    return memberKeys.length
}

function sharedExpense() {
    return sharedExpense
}

function getMemberAtKey(uint256 arg1) {
    require arg1 < memberKeys.length
    return address(memberKeys[arg1])
}

function sub_ca27fb0c(?) {
    return bool(stor4)
}

function memberKeys(uint256 arg1) {
    require arg1 < memberKeys.length
    return address(memberKeys[arg1])
}

function _fallback() payable {
    emit Deposit(msg.sender, msg.value);
}

function changeAdminPrivilege(address arg1, bool arg2) {
    require founderAddress == msg.sender
    members[address(arg1)].field_16 = Mask(240, 0, arg2)
    emit ChangePrivilege(address(arg1), bool(members[address(arg1)].field_16), arg2);
}

function changeSharedExpenseAllocation(uint256 arg1) {
    require founderAddress == msg.sender
    require arg1 <= eth.balance(this.address)
    sharedExpense = arg1
    emit ChangeSharedExpense(eth.balance(this.address), sharedExpense, arg1);
}

function delegatePercent(uint256 arg1, uint256 arg2, uint256 arg3) {
    if not arg1:
        if arg2:
            return ((10^(arg3 + 1) * arg1 / arg2) + 5 / 10)
    else:
        if arg1:
            if 10^(arg3 + 1) * arg1 / arg1 == 10^(arg3 + 1):
                if arg2:
                    return ((10^(arg3 + 1) * arg1 / arg2) + 5 / 10)
    revert
}

function getContractInfo() {
    mem[160] = uint256(name.field_0)
    idx = 160
    s = 0
    while name.length + 128 > idx:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=name.length, data=mem[160 len name.length]), founderAddress, genesisBlockNumber, totalShares, totalWithdrawn
}

function removeShare(address arg1, uint256 arg2) {
    if founderAddress != msg.sender:
        require members[address(msg.sender)].field_16
    require members[address(arg1)].field_0
    require arg2 <= totalShares
    totalShares -= arg2
    require arg2 <= members[address(arg1)].field_256
    members[address(arg1)].field_256 -= arg2
    emit RemoveShare(address(arg1), arg2, members[address(arg1)].field_256 - arg2);
}

function addShare(address arg1, uint256 arg2) {
    if founderAddress != msg.sender:
        require members[address(msg.sender)].field_16
    require members[address(arg1)].field_0
    require arg2 + totalShares >= totalShares
    totalShares += arg2
    require arg2 + members[address(arg1)].field_256 >= members[address(arg1)].field_256
    members[address(arg1)].field_256 += arg2
    emit AddShare(address(arg1), arg2, arg2 + members[address(arg1)].field_256);
}

function sub_3ade631b(?) {
    if founderAddress != msg.sender:
        require members[address(msg.sender)].field_16
    require members[address(msg.sender)].field_0
    require sharedExpenseWithdrawn <= sharedExpense
    require arg1 <= sharedExpense - sharedExpenseWithdrawn
    require arg1 + sharedExpenseWithdrawn >= sharedExpenseWithdrawn
    sharedExpenseWithdrawn += arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0x5ef9eb55: msg.sender, arg1, sharedExpenseWithdrawn
}

function addMember(address arg1, uint256 arg2, bool arg3, string arg4) {
    if founderAddress != msg.sender:
        require members[address(msg.sender)].field_16
    require not members[address(arg1)].field_0
    members[address(arg1)].field_0 = 1
    members[address(arg1)].field_8 = 1
    members[address(arg1)].field_16 = Mask(240, 0, arg3)
    members[address(arg1)].field_256 = 0
    members[address(arg1)].field_512 = 0
    members[address(arg1)][3][].field_0 = Array(len=arg4.length, data=arg4[all])
    memberKeys.length++
    if not memberKeys.length <= memberKeys.length + 1:
        idx = memberKeys.length + 1
        while memberKeys.length > idx:
            uint256(memberKeys[idx]) = 0
            idx = idx + 1
            continue 
    address(memberKeys[memberKeys.length]) = arg1
    if founderAddress != msg.sender:
        require members[address(msg.sender)].field_16
    require members[address(arg1)].field_0
    require arg2 + totalShares >= totalShares
    totalShares += arg2
    require arg2 + members[address(arg1)].field_256 >= members[address(arg1)].field_256
    members[address(arg1)].field_256 += arg2
    emit AddShare(address(arg1), arg2, arg2 + members[address(arg1)].field_256);
}

function returnMember(address arg1) {
    require members[address(arg1)].field_0
    mem[576] = members[address(arg1)][3].field_0
    idx = 576
    s = 0
    while members[address(arg1)][3].length + 544 > idx:
        mem[idx + 32] = members[address(arg1)][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(members[address(arg1)][3].length) + 576] = bool(members[address(arg1)].field_8)
    mem[ceil32(members[address(arg1)][3].length) + 608] = bool(members[address(arg1)].field_16)
    mem[ceil32(members[address(arg1)][3].length) + 640] = members[address(arg1)].field_256
    mem[ceil32(members[address(arg1)][3].length) + 672] = members[address(arg1)].field_512
    mem[ceil32(members[address(arg1)][3].length) + 704] = 160
    mem[ceil32(members[address(arg1)][3].length) + 736] = members[address(arg1)][3].length
    if 0 < members[address(arg1)][3].length:
        mem[ceil32(members[address(arg1)][3].length) + 768] = mem[576]
        mem[ceil32(members[address(arg1)][3].length) + 800 len floor32(members[address(arg1)][3].length - 1)] = mem[608 len floor32(members[address(arg1)][3].length - 1)]
    return bool(members[address(arg1)].field_8), 
           bool(members[address(arg1)].field_16),
           members[address(arg1)].field_256,
           members[address(arg1)].field_512,
           Array(len=members[address(arg1)][3].length, data=mem[ceil32(members[address(arg1)][3].length) + 768 len members[address(arg1)][3].length])
}

function changeContractName(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    require founderAddress == msg.sender
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
    mem[ceil32(arg1.length) + 128] = 64
    mem[ceil32(arg1.length) + 224] = uint256(name.field_0)
    idx = ceil32(arg1.length) + 224
    s = 0
    while ceil32(arg1.length) + name.length + 224 > idx + 32:
        mem[idx + 32] = name[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg1.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 224] = arg1.length
    mem[ceil32(arg1.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 256 len ceil32(arg1.length)] = arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]
    if not arg1.length % 32:
        emit ChangeContractName(Array(len=name.length, data=mem[ceil32(arg1.length) + 224 len name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 32], Mask(8 * arg1.length, -(8 * arg1.length) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * arg1.length) - 256), name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 96);
    else:
        mem[floor32(arg1.length) + ceil32(arg1.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 256] = mem[floor32(arg1.length) + ceil32(arg1.length) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + -(arg1.length % 32) + 288 len arg1.length % 32]
        emit ChangeContractName(Array(len=name.length, data=mem[ceil32(arg1.length) + 224 len name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 32], Mask(8 * ceil32(arg1.length), -(8 * ceil32(arg1.length)) + 256, arg1[all], mem[arg1.length + 128 len ceil32(arg1.length) - arg1.length]) << (8 * ceil32(arg1.length)) - 256, mem[(2 * ceil32(arg1.length)) + name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 256 len floor32(arg1.length) + -ceil32(arg1.length) + 32]), name.length + (floor32(name.length - 1) + -name.length + 32 % 32) + 96);
}

function calculateTotalWithdrawableAmount(address arg1) {
    require members[address(arg1)].field_0
    require totalWithdrawn + eth.balance(this.address) >= eth.balance(this.address)
    require sharedExpense <= totalWithdrawn + eth.balance(this.address)
    require sharedExpenseWithdrawn >= 0
    if sharedExpenseWithdrawn + totalWithdrawn + eth.balance(this.address) - sharedExpense:
        require sharedExpenseWithdrawn + totalWithdrawn + eth.balance(this.address) - sharedExpense
        require (10 * 10^18 * sharedExpenseWithdrawn) + (10 * 10^18 * totalWithdrawn) + (10 * 10^18 * eth.balance(this.address)) - (10 * 10^18 * sharedExpense) / sharedExpenseWithdrawn + totalWithdrawn + eth.balance(this.address) - sharedExpense == 10 * 10^18
    require totalShares
    if ((10 * 10^18 * sharedExpenseWithdrawn) + (10 * 10^18 * totalWithdrawn) + (10 * 10^18 * eth.balance(this.address)) - (10 * 10^18 * sharedExpense) / totalShares) + 5 / 10:
        require ((10 * 10^18 * sharedExpenseWithdrawn) + (10 * 10^18 * totalWithdrawn) + (10 * 10^18 * eth.balance(this.address)) - (10 * 10^18 * sharedExpense) / totalShares) + 5 / 10
        require members[address(arg1)].field_256 * ((10 * 10^18 * sharedExpenseWithdrawn) + (10 * 10^18 * totalWithdrawn) + (10 * 10^18 * eth.balance(this.address)) - (10 * 10^18 * sharedExpense) / totalShares) + 5 / 10 / ((10 * 10^18 * sharedExpenseWithdrawn) + (10 * 10^18 * totalWithdrawn) + (10 * 10^18 * eth.balance(this.address)) - (10 * 10^18 * sharedExpense) / totalShares) + 5 / 10 == members[address(arg1)].field_256
    emit 0xd8ef84f7: members[address(arg1)].field_256 * ((10 * 10^18 * sharedExpenseWithdrawn) + (10 * 10^18 * totalWithdrawn) + (10 * 10^18 * eth.balance(this.address)) - (10 * 10^18 * sharedExpense) / totalShares) + 5 / 10 / 10^18, sharedExpenseWithdrawn + totalWithdrawn + eth.balance(this.address) - sharedExpense, totalShares
    return (members[address(arg1)].field_256 * ((10 * 10^18 * sharedExpenseWithdrawn) + (10 * 10^18 * totalWithdrawn) + (10 * 10^18 * eth.balance(this.address)) - (10 * 10^18 * sharedExpense) / totalShares) + 5 / 10 / 10^18)
}

function withdraw(uint256 arg1) {
    require members[address(msg.sender)].field_0
    require members[address(msg.sender)].field_0
    require totalWithdrawn + eth.balance(this.address) >= eth.balance(this.address)
    require sharedExpense <= totalWithdrawn + eth.balance(this.address)
    require sharedExpenseWithdrawn >= 0
    if sharedExpenseWithdrawn + totalWithdrawn + eth.balance(this.address) - sharedExpense:
        require sharedExpenseWithdrawn + totalWithdrawn + eth.balance(this.address) - sharedExpense
        require (10 * 10^18 * sharedExpenseWithdrawn) + (10 * 10^18 * totalWithdrawn) + (10 * 10^18 * eth.balance(this.address)) - (10 * 10^18 * sharedExpense) / sharedExpenseWithdrawn + totalWithdrawn + eth.balance(this.address) - sharedExpense == 10 * 10^18
    require totalShares
    if ((10 * 10^18 * sharedExpenseWithdrawn) + (10 * 10^18 * totalWithdrawn) + (10 * 10^18 * eth.balance(this.address)) - (10 * 10^18 * sharedExpense) / totalShares) + 5 / 10:
        require ((10 * 10^18 * sharedExpenseWithdrawn) + (10 * 10^18 * totalWithdrawn) + (10 * 10^18 * eth.balance(this.address)) - (10 * 10^18 * sharedExpense) / totalShares) + 5 / 10
        require members[address(msg.sender)].field_256 * ((10 * 10^18 * sharedExpenseWithdrawn) + (10 * 10^18 * totalWithdrawn) + (10 * 10^18 * eth.balance(this.address)) - (10 * 10^18 * sharedExpense) / totalShares) + 5 / 10 / ((10 * 10^18 * sharedExpenseWithdrawn) + (10 * 10^18 * totalWithdrawn) + (10 * 10^18 * eth.balance(this.address)) - (10 * 10^18 * sharedExpense) / totalShares) + 5 / 10 == members[address(msg.sender)].field_256
    emit 0xd8ef84f7: members[address(msg.sender)].field_256 * ((10 * 10^18 * sharedExpenseWithdrawn) + (10 * 10^18 * totalWithdrawn) + (10 * 10^18 * eth.balance(this.address)) - (10 * 10^18 * sharedExpense) / totalShares) + 5 / 10 / 10^18, sharedExpenseWithdrawn + totalWithdrawn + eth.balance(this.address) - sharedExpense, totalShares
    require members[address(msg.sender)].field_512 <= members[address(msg.sender)].field_256 * ((10 * 10^18 * sharedExpenseWithdrawn) + (10 * 10^18 * totalWithdrawn) + (10 * 10^18 * eth.balance(this.address)) - (10 * 10^18 * sharedExpense) / totalShares) + 5 / 10 / 10^18
    require arg1 <= (members[address(msg.sender)].field_256 * ((10 * 10^18 * sharedExpenseWithdrawn) + (10 * 10^18 * totalWithdrawn) + (10 * 10^18 * eth.balance(this.address)) - (10 * 10^18 * sharedExpense) / totalShares) + 5 / 10 / 10^18) - members[address(msg.sender)].field_512
    require arg1 + members[address(msg.sender)].field_512 >= members[address(msg.sender)].field_512
    members[address(msg.sender)].field_512 += arg1
    require arg1 + totalWithdrawn >= totalWithdrawn
    totalWithdrawn += arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdraw(msg.sender, arg1, totalWithdrawn);
}



}
