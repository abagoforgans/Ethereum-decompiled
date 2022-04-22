contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
uint256 stor2;
uint256 stor4;
mapping of struct stor7;
array of address stor8;

function _fallback() {
    mem[96 len -14074] = code.data[16122 len -14074]
    mem[64] = -13978
    stor0 = msg.sender
    require mem[mem[96] + 96] <= 21
    require mem[mem[128] + 96] <= 21
    stor1[] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    stor4 = block.number
    mem[64] = -13786
    if stor0 != msg.sender:
        require stor7[address(msg.sender)].field_8
    require not stor7[address(msg.sender)].field_0
    require mem[mem[128] + 96] <= 21
    stor7[address(msg.sender)].field_0 = 1
    stor7[address(msg.sender)].field_8 = 1
    stor7[address(msg.sender)].field_256 = 0
    stor7[address(msg.sender)].field_512 = 0
    stor7[address(msg.sender)][3][].field_0 = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        idx = stor8.length + 1
        while stor8.length > idx:
            uint256(stor8[idx]) = 0
            idx = idx + 1
            continue 
    address(stor8[stor8.length]) = msg.sender
    if stor0 != msg.sender:
        require stor7[address(msg.sender)].field_8
    require stor7[address(msg.sender)].field_0
    require stor2 + 1 >= stor2
    stor2++
    require stor7[address(msg.sender)].field_256 + 1 >= stor7[address(msg.sender)].field_256
    stor7[address(msg.sender)].field_256++
    emit AddShare(msg.sender, 1, stor7[address(msg.sender)].field_256);
    return code.data[2048 len 14074]
}



// =====================  Runtime code  =====================


#
#  - updateMember(address arg1, uint256 arg2, bool arg3, string arg4)
#
const getBalance = eth.balance(this.address)

const PRECISION = 18


address owner;
array of struct name;
uint256 totalShares;
uint256 totalWithdrawn;
uint256 genesisBlockNumber;
uint256 sharedExpense;
uint256 sharedExpenseWithdrawn;
mapping of struct returnMember;
array of address memberKeys;
mapping of struct tokens;
array of address tokenKeys;

function genesisBlockNumber() {
    return genesisBlockNumber
}

function name() {
    return name[0 len name.length].field_0
}

function members(address arg1) {
    mem[288] = returnMember[arg1][3].field_0
    idx = 288
    s = 0
    while returnMember[arg1][3].length + 288 > idx + 32:
        mem[idx + 32] = returnMember[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bool(returnMember[arg1].field_0), 
           bool(returnMember[arg1].field_8),
           returnMember[arg1].field_256,
           returnMember[arg1].field_512,
           Array(len=returnMember[arg1][3].length, data=mem[288 len returnMember[arg1][3].length + (floor32(returnMember[arg1][3].length - 1) + -returnMember[arg1][3].length + 32 % 32)])
}

function tokenKeys(uint256 arg1) {
    require arg1 < tokenKeys.length
    return tokenKeys[arg1]
}

function totalShares() {
    return totalShares
}

function totalWithdrawn() {
    return totalWithdrawn
}

function sharedExpenseWithdrawn() {
    return sharedExpenseWithdrawn
}

function returnMember(address arg1) {
    require returnMember[address(arg1)].field_0
    mem[512] = returnMember[address(arg1)][3].field_0
    idx = 512
    s = 0
    while returnMember[address(arg1)][3].length + 480 > idx:
        mem[idx + 32] = returnMember[address(arg1)][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return bool(returnMember[address(arg1)].field_8), 
           returnMember[address(arg1)].field_256,
           returnMember[address(arg1)].field_512,
           Array(len=returnMember[address(arg1)][3].length, data=mem[512 len returnMember[address(arg1)][3].length])
}

function owner() {
    return owner
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

function tokens(address arg1) {
    return bool(tokens[arg1].field_0), tokens[arg1].field_256
}

function memberKeys(uint256 arg1) {
    require arg1 < memberKeys.length
    return address(memberKeys[arg1])
}

function _fallback() payable {
    emit Deposit(msg.sender, msg.value);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    if arg1:
        owner = arg1
}

function calculateTotalExpenseWithdrawableAmount() {
    require sharedExpenseWithdrawn <= sharedExpense
    return (sharedExpense - sharedExpenseWithdrawn)
}

function changeAdminPrivilege(address arg1, bool arg2) {
    if owner != msg.sender:
        require returnMember[address(msg.sender)].field_8
    emit ChangePrivilege(address(arg1), bool(returnMember[address(arg1)].field_8), arg2);
    returnMember[address(arg1)].field_8 = Mask(248, 0, arg2)
}

function changeSharedExpenseAllocation(uint256 arg1) {
    require msg.sender == owner
    require arg1 >= sharedExpenseWithdrawn
    require sharedExpenseWithdrawn <= arg1
    require arg1 - sharedExpenseWithdrawn <= eth.balance(this.address)
    emit ChangeSharedExpense(eth.balance(this.address), sharedExpense, arg1);
    sharedExpense = arg1
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
    return Array(len=name.length, data=mem[160 len name.length]), owner, genesisBlockNumber, totalShares, totalWithdrawn
}

function delegatePercent(uint256 arg1, uint256 arg2, uint256 arg3) {
    if not arg1:
        if arg2:
            return ((arg1 * 10^(arg3 + 1) / arg2) + 5 / 10)
    else:
        if arg1:
            if arg1 * 10^(arg3 + 1) / arg1 == 10^(arg3 + 1):
                if arg2:
                    return ((arg1 * 10^(arg3 + 1) / arg2) + 5 / 10)
    revert
}

function checkERC20Balance(address arg1) {
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if not tokens[address(arg1)].field_0:
        if ext_call.return_data[0] > 0:
            tokens[address(arg1)].field_0 = 1
    return ext_call.return_data[0]
}

function removeShare(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require returnMember[address(msg.sender)].field_8
    require returnMember[address(arg1)].field_0
    require arg2 <= totalShares
    totalShares -= arg2
    require arg2 <= returnMember[address(arg1)].field_256
    returnMember[address(arg1)].field_256 -= arg2
    emit RemoveShare(address(arg1), arg2, returnMember[address(arg1)].field_256);
}

function addShare(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require returnMember[address(msg.sender)].field_8
    require returnMember[address(arg1)].field_0
    require totalShares + arg2 >= totalShares
    totalShares += arg2
    require returnMember[address(arg1)].field_256 + arg2 >= returnMember[address(arg1)].field_256
    returnMember[address(arg1)].field_256 += arg2
    emit AddShare(address(arg1), arg2, returnMember[address(arg1)].field_256);
}

function withdrawSharedExpense(uint256 arg1, address arg2) {
    if owner != msg.sender:
        require returnMember[address(msg.sender)].field_8
    require sharedExpenseWithdrawn <= sharedExpense
    require arg1 <= sharedExpense - sharedExpenseWithdrawn
    require sharedExpenseWithdrawn + arg1 >= sharedExpenseWithdrawn
    sharedExpenseWithdrawn += arg1
    call arg2 with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit WithdrawSharedExpense(address(msg.sender), address(arg2), arg1, sharedExpenseWithdrawn);
}

function addMember(address arg1, uint256 arg2, bool arg3, string arg4) {
    if owner != msg.sender:
        require returnMember[address(msg.sender)].field_8
    require not returnMember[address(arg1)].field_0
    require arg4.length <= 21
    returnMember[address(arg1)].field_0 = 1
    returnMember[address(arg1)].field_8 = Mask(248, 0, arg3)
    returnMember[address(arg1)].field_256 = 0
    returnMember[address(arg1)].field_512 = 0
    returnMember[address(arg1)][3][].field_0 = Array(len=arg4.length, data=arg4[all])
    memberKeys.length++
    if not memberKeys.length <= memberKeys.length + 1:
        idx = memberKeys.length + 1
        while memberKeys.length > idx:
            uint256(memberKeys[idx]) = 0
            idx = idx + 1
            continue 
    address(memberKeys[memberKeys.length]) = arg1
    if owner != msg.sender:
        require returnMember[address(msg.sender)].field_8
    require returnMember[address(arg1)].field_0
    require totalShares + arg2 >= totalShares
    totalShares += arg2
    require returnMember[address(arg1)].field_256 + arg2 >= returnMember[address(arg1)].field_256
    returnMember[address(arg1)].field_256 += arg2
    emit AddShare(address(arg1), arg2, returnMember[address(arg1)].field_256);
}

function allocateShares(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require returnMember[address(msg.sender)].field_8
    require returnMember[address(arg1)].field_0
    require arg2 != returnMember[address(arg1)].field_256
    if arg2 <= returnMember[address(arg1)].field_256:
        if owner != msg.sender:
            require returnMember[address(msg.sender)].field_8
        require returnMember[address(arg1)].field_0
        require returnMember[address(arg1)].field_256 - arg2 <= totalShares
        totalShares = totalShares - returnMember[address(arg1)].field_256 + arg2
        require returnMember[address(arg1)].field_256 - arg2 <= returnMember[address(arg1)].field_256
        returnMember[address(arg1)].field_256 = arg2
        emit RemoveShare(address(arg1), returnMember[address(arg1)].field_256 - arg2, returnMember[address(arg1)].field_256);
    else:
        require returnMember[address(arg1)].field_256 <= arg2
        if owner != msg.sender:
            require returnMember[address(msg.sender)].field_8
        require returnMember[address(arg1)].field_0
        require totalShares + arg2 - returnMember[address(arg1)].field_256 >= totalShares
        totalShares = totalShares + arg2 - returnMember[address(arg1)].field_256
        require arg2 >= returnMember[address(arg1)].field_256
        returnMember[address(arg1)].field_256 = arg2
        emit AddShare(address(arg1), arg2 - returnMember[address(arg1)].field_256, returnMember[address(arg1)].field_256);
}

function changeContractName(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if owner != msg.sender:
        require returnMember[address(msg.sender)].field_8
    require arg1.length <= 21
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
    name[].field_0 = Array(len=arg1.length, data=arg1[all])
}

function withdrawToken(uint256 arg1, address arg2) {
    require returnMember[address(msg.sender)].field_0
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if not tokens[address(arg2)].field_0:
        if ext_call.return_data[0] > 0:
            tokens[address(arg2)].field_0 = 1
    require ext_call.return_data[0] + tokens[address(arg2)].field_256 >= ext_call.return_data[0]
    if ext_call.return_data[0] + tokens[address(arg2)].field_256:
        require ext_call.return_data[0] + tokens[address(arg2)].field_256
        require (10 * 10^18 * ext_call.return_data[0]) + (10 * 10^18 * tokens[address(arg2)].field_256) / ext_call.return_data[0] + tokens[address(arg2)].field_256 == 10 * 10^18
    require totalShares
    if ((10 * 10^18 * ext_call.return_data[0]) + (10 * 10^18 * tokens[address(arg2)].field_256) / totalShares) + 5 / 10:
        require ((10 * 10^18 * ext_call.return_data[0]) + (10 * 10^18 * tokens[address(arg2)].field_256) / totalShares) + 5 / 10
        require ((10 * 10^18 * ext_call.return_data[0]) + (10 * 10^18 * tokens[address(arg2)].field_256) / totalShares) + 5 / 10 * returnMember[address(msg.sender)].field_256 / ((10 * 10^18 * ext_call.return_data[0]) + (10 * 10^18 * tokens[address(arg2)].field_256) / totalShares) + 5 / 10 == returnMember[address(msg.sender)].field_256
    require returnMember[address(msg.sender)][4][address(arg2)].field_0 <= ((10 * 10^18 * ext_call.return_data[0]) + (10 * 10^18 * tokens[address(arg2)].field_256) / totalShares) + 5 / 10 * returnMember[address(msg.sender)].field_256 / 10^18
    require arg1 <= (((10 * 10^18 * ext_call.return_data[0]) + (10 * 10^18 * tokens[address(arg2)].field_256) / totalShares) + 5 / 10 * returnMember[address(msg.sender)].field_256 / 10^18) - returnMember[address(msg.sender)][4][address(arg2)].field_0
    require returnMember[address(msg.sender)][4][address(arg2)].field_0 + arg1 >= returnMember[address(msg.sender)][4][address(arg2)].field_0
    returnMember[address(msg.sender)][4][address(arg2)].field_0 += arg1
    require tokens[address(arg2)].field_256 + arg1 >= tokens[address(arg2)].field_256
    tokens[address(arg2)].field_256 += arg1
    require ext_code.size(arg2)
    call arg2.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    emit TokenWithdraw(address(msg.sender), arg1, address(arg2), tokens[address(arg2)].field_256);
}

function withdraw(uint256 arg1) {
    require returnMember[address(msg.sender)].field_0
    require returnMember[address(msg.sender)].field_0
    require eth.balance(this.address) + totalWithdrawn >= eth.balance(this.address)
    require sharedExpense <= eth.balance(this.address) + totalWithdrawn
    require sharedExpenseWithdrawn >= 0
    if eth.balance(this.address) + totalWithdrawn - sharedExpense + sharedExpenseWithdrawn:
        require eth.balance(this.address) + totalWithdrawn - sharedExpense + sharedExpenseWithdrawn
        require (10 * 10^18 * eth.balance(this.address)) + (10 * 10^18 * totalWithdrawn) - (10 * 10^18 * sharedExpense) + (10 * 10^18 * sharedExpenseWithdrawn) / eth.balance(this.address) + totalWithdrawn - sharedExpense + sharedExpenseWithdrawn == 10 * 10^18
    require totalShares
    if ((10 * 10^18 * eth.balance(this.address)) + (10 * 10^18 * totalWithdrawn) - (10 * 10^18 * sharedExpense) + (10 * 10^18 * sharedExpenseWithdrawn) / totalShares) + 5 / 10:
        require ((10 * 10^18 * eth.balance(this.address)) + (10 * 10^18 * totalWithdrawn) - (10 * 10^18 * sharedExpense) + (10 * 10^18 * sharedExpenseWithdrawn) / totalShares) + 5 / 10
        require ((10 * 10^18 * eth.balance(this.address)) + (10 * 10^18 * totalWithdrawn) - (10 * 10^18 * sharedExpense) + (10 * 10^18 * sharedExpenseWithdrawn) / totalShares) + 5 / 10 * returnMember[address(msg.sender)].field_256 / ((10 * 10^18 * eth.balance(this.address)) + (10 * 10^18 * totalWithdrawn) - (10 * 10^18 * sharedExpense) + (10 * 10^18 * sharedExpenseWithdrawn) / totalShares) + 5 / 10 == returnMember[address(msg.sender)].field_256
    require returnMember[address(msg.sender)].field_512 <= ((10 * 10^18 * eth.balance(this.address)) + (10 * 10^18 * totalWithdrawn) - (10 * 10^18 * sharedExpense) + (10 * 10^18 * sharedExpenseWithdrawn) / totalShares) + 5 / 10 * returnMember[address(msg.sender)].field_256 / 10^18
    require arg1 <= (((10 * 10^18 * eth.balance(this.address)) + (10 * 10^18 * totalWithdrawn) - (10 * 10^18 * sharedExpense) + (10 * 10^18 * sharedExpenseWithdrawn) / totalShares) + 5 / 10 * returnMember[address(msg.sender)].field_256 / 10^18) - returnMember[address(msg.sender)].field_512
    require returnMember[address(msg.sender)].field_512 + arg1 >= returnMember[address(msg.sender)].field_512
    returnMember[address(msg.sender)].field_512 += arg1
    require totalWithdrawn + arg1 >= totalWithdrawn
    totalWithdrawn += arg1
    call msg.sender with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit Withdraw(msg.sender, arg1, totalWithdrawn);
}

function calculateTotalWithdrawableTokenAmount(address arg1, address arg2) {
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    if not tokens[address(arg2)].field_0:
        if ext_call.return_data[0] > 0:
            tokens[address(arg2)].field_0 = 1
    require ext_call.return_data[0] + tokens[address(arg2)].field_256 >= ext_call.return_data[0]
    if not ext_call.return_data[0] + tokens[address(arg2)].field_256:
        if totalShares:
            if not ((10 * 10^18 * ext_call.return_data[0]) + (10 * 10^18 * tokens[address(arg2)].field_256) / totalShares) + 5 / 10:
                return (((10 * 10^18 * ext_call.return_data[0]) + (10 * 10^18 * tokens[address(arg2)].field_256) / totalShares) + 5 / 10 * returnMember[address(arg1)].field_256 / 10^18)
            if ((10 * 10^18 * ext_call.return_data[0]) + (10 * 10^18 * tokens[address(arg2)].field_256) / totalShares) + 5 / 10:
                if ((10 * 10^18 * ext_call.return_data[0]) + (10 * 10^18 * tokens[address(arg2)].field_256) / totalShares) + 5 / 10 * returnMember[address(arg1)].field_256 / ((10 * 10^18 * ext_call.return_data[0]) + (10 * 10^18 * tokens[address(arg2)].field_256) / totalShares) + 5 / 10 == returnMember[address(arg1)].field_256:
                    return (((10 * 10^18 * ext_call.return_data[0]) + (10 * 10^18 * tokens[address(arg2)].field_256) / totalShares) + 5 / 10 * returnMember[address(arg1)].field_256 / 10^18)
    else:
        if ext_call.return_data[0] + tokens[address(arg2)].field_256:
            if (10 * 10^18 * ext_call.return_data[0]) + (10 * 10^18 * tokens[address(arg2)].field_256) / ext_call.return_data[0] + tokens[address(arg2)].field_256 == 10 * 10^18:
                if totalShares:
                    if not ((10 * 10^18 * ext_call.return_data[0]) + (10 * 10^18 * tokens[address(arg2)].field_256) / totalShares) + 5 / 10:
                        return (((10 * 10^18 * ext_call.return_data[0]) + (10 * 10^18 * tokens[address(arg2)].field_256) / totalShares) + 5 / 10 * returnMember[address(arg1)].field_256 / 10^18)
                    if ((10 * 10^18 * ext_call.return_data[0]) + (10 * 10^18 * tokens[address(arg2)].field_256) / totalShares) + 5 / 10:
                        if ((10 * 10^18 * ext_call.return_data[0]) + (10 * 10^18 * tokens[address(arg2)].field_256) / totalShares) + 5 / 10 * returnMember[address(arg1)].field_256 / ((10 * 10^18 * ext_call.return_data[0]) + (10 * 10^18 * tokens[address(arg2)].field_256) / totalShares) + 5 / 10 == returnMember[address(arg1)].field_256:
                            return (((10 * 10^18 * ext_call.return_data[0]) + (10 * 10^18 * tokens[address(arg2)].field_256) / totalShares) + 5 / 10 * returnMember[address(arg1)].field_256 / 10^18)
    revert
}

function changeMemberName(address arg1, string arg2) {
    mem[128 len arg2.length] = arg2[all]
    require returnMember[address(arg1)].field_0
    if arg1 != msg.sender:
        if owner != msg.sender:
            require returnMember[address(msg.sender)].field_8
    require arg2.length <= 21
    mem[ceil32(arg2.length) + 128] = arg1
    mem[ceil32(arg2.length) + 256] = returnMember[address(arg1)][3].field_0
    idx = ceil32(arg2.length) + 256
    s = 0
    while ceil32(arg2.length) + returnMember[address(arg1)][3].length + 256 > idx + 32:
        mem[idx + 32] = returnMember[address(arg1)][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(arg2.length) + returnMember[address(arg1)][3].length + (floor32(returnMember[address(arg1)][3].length - 1) + -returnMember[address(arg1)][3].length + 32 % 32) + 256] = arg2.length
    mem[ceil32(arg2.length) + returnMember[address(arg1)][3].length + (floor32(returnMember[address(arg1)][3].length - 1) + -returnMember[address(arg1)][3].length + 32 % 32) + 288 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
    if not arg2.length % 32:
        emit ChangeMemberName(address(arg1), Array(len=returnMember[address(arg1)][3].length, data=mem[ceil32(arg2.length) + 256 len returnMember[address(arg1)][3].length + (floor32(returnMember[address(arg1)][3].length - 1) + -returnMember[address(arg1)][3].length + 32 % 32) + 32], Mask(8 * arg2.length, -(8 * arg2.length) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * arg2.length) - 256), returnMember[address(arg1)][3].length + (floor32(returnMember[address(arg1)][3].length - 1) + -returnMember[address(arg1)][3].length + 32 % 32) + 128);
    else:
        mem[floor32(arg2.length) + ceil32(arg2.length) + returnMember[address(arg1)][3].length + (floor32(returnMember[address(arg1)][3].length - 1) + -returnMember[address(arg1)][3].length + 32 % 32) + 288] = mem[floor32(arg2.length) + ceil32(arg2.length) + returnMember[address(arg1)][3].length + (floor32(returnMember[address(arg1)][3].length - 1) + -returnMember[address(arg1)][3].length + 32 % 32) + -(arg2.length % 32) + 320 len arg2.length % 32]
        emit ChangeMemberName(address(arg1), Array(len=returnMember[address(arg1)][3].length, data=mem[ceil32(arg2.length) + 256 len returnMember[address(arg1)][3].length + (floor32(returnMember[address(arg1)][3].length - 1) + -returnMember[address(arg1)][3].length + 32 % 32) + 32], Mask(8 * ceil32(arg2.length), -(8 * ceil32(arg2.length)) + 256, arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]) << (8 * ceil32(arg2.length)) - 256, mem[(2 * ceil32(arg2.length)) + returnMember[address(arg1)][3].length + (floor32(returnMember[address(arg1)][3].length - 1) + -returnMember[address(arg1)][3].length + 32 % 32) + 288 len floor32(arg2.length) + -ceil32(arg2.length) + 32]), returnMember[address(arg1)][3].length + (floor32(returnMember[address(arg1)][3].length - 1) + -returnMember[address(arg1)][3].length + 32 % 32) + 128);
    returnMember[address(arg1)][3][].field_0 = Array(len=arg2.length, data=arg2[all])
}

function calculateTotalWithdrawableAmount(address arg1) {
    require returnMember[address(arg1)].field_0
    require eth.balance(this.address) + totalWithdrawn >= eth.balance(this.address)
    require sharedExpense <= eth.balance(this.address) + totalWithdrawn
    require sharedExpenseWithdrawn >= 0
    if not eth.balance(this.address) + totalWithdrawn - sharedExpense + sharedExpenseWithdrawn:
        if totalShares:
            if not ((10 * 10^18 * eth.balance(this.address)) + (10 * 10^18 * totalWithdrawn) - (10 * 10^18 * sharedExpense) + (10 * 10^18 * sharedExpenseWithdrawn) / totalShares) + 5 / 10:
                return (((10 * 10^18 * eth.balance(this.address)) + (10 * 10^18 * totalWithdrawn) - (10 * 10^18 * sharedExpense) + (10 * 10^18 * sharedExpenseWithdrawn) / totalShares) + 5 / 10 * returnMember[address(arg1)].field_256 / 10^18)
            if ((10 * 10^18 * eth.balance(this.address)) + (10 * 10^18 * totalWithdrawn) - (10 * 10^18 * sharedExpense) + (10 * 10^18 * sharedExpenseWithdrawn) / totalShares) + 5 / 10:
                if ((10 * 10^18 * eth.balance(this.address)) + (10 * 10^18 * totalWithdrawn) - (10 * 10^18 * sharedExpense) + (10 * 10^18 * sharedExpenseWithdrawn) / totalShares) + 5 / 10 * returnMember[address(arg1)].field_256 / ((10 * 10^18 * eth.balance(this.address)) + (10 * 10^18 * totalWithdrawn) - (10 * 10^18 * sharedExpense) + (10 * 10^18 * sharedExpenseWithdrawn) / totalShares) + 5 / 10 == returnMember[address(arg1)].field_256:
                    return (((10 * 10^18 * eth.balance(this.address)) + (10 * 10^18 * totalWithdrawn) - (10 * 10^18 * sharedExpense) + (10 * 10^18 * sharedExpenseWithdrawn) / totalShares) + 5 / 10 * returnMember[address(arg1)].field_256 / 10^18)
    else:
        if eth.balance(this.address) + totalWithdrawn - sharedExpense + sharedExpenseWithdrawn:
            if (10 * 10^18 * eth.balance(this.address)) + (10 * 10^18 * totalWithdrawn) - (10 * 10^18 * sharedExpense) + (10 * 10^18 * sharedExpenseWithdrawn) / eth.balance(this.address) + totalWithdrawn - sharedExpense + sharedExpenseWithdrawn == 10 * 10^18:
                if totalShares:
                    if not ((10 * 10^18 * eth.balance(this.address)) + (10 * 10^18 * totalWithdrawn) - (10 * 10^18 * sharedExpense) + (10 * 10^18 * sharedExpenseWithdrawn) / totalShares) + 5 / 10:
                        return (((10 * 10^18 * eth.balance(this.address)) + (10 * 10^18 * totalWithdrawn) - (10 * 10^18 * sharedExpense) + (10 * 10^18 * sharedExpenseWithdrawn) / totalShares) + 5 / 10 * returnMember[address(arg1)].field_256 / 10^18)
                    if ((10 * 10^18 * eth.balance(this.address)) + (10 * 10^18 * totalWithdrawn) - (10 * 10^18 * sharedExpense) + (10 * 10^18 * sharedExpenseWithdrawn) / totalShares) + 5 / 10:
                        if ((10 * 10^18 * eth.balance(this.address)) + (10 * 10^18 * totalWithdrawn) - (10 * 10^18 * sharedExpense) + (10 * 10^18 * sharedExpenseWithdrawn) / totalShares) + 5 / 10 * returnMember[address(arg1)].field_256 / ((10 * 10^18 * eth.balance(this.address)) + (10 * 10^18 * totalWithdrawn) - (10 * 10^18 * sharedExpense) + (10 * 10^18 * sharedExpenseWithdrawn) / totalShares) + 5 / 10 == returnMember[address(arg1)].field_256:
                            return (((10 * 10^18 * eth.balance(this.address)) + (10 * 10^18 * totalWithdrawn) - (10 * 10^18 * sharedExpense) + (10 * 10^18 * sharedExpenseWithdrawn) / totalShares) + 5 / 10 * returnMember[address(arg1)].field_256 / 10^18)
    revert
}



}
