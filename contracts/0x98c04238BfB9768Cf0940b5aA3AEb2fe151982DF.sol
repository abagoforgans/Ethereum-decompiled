contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
mapping of uint8 stor2;
uint256 stor4;
uint256 stor6;
uint256 stor7;
uint256 stor12;
uint256 stor16;

function _fallback() payable {
    stor0 = 0
    stor1 = 0
    stor4 = 48 * 24 * 3600
    stor6 = 0
    stor7 = 0
    stor12 = 2 * 10^16
    stor16 = 0
    stor0 = 1
    stor2[address(msg.sender)] = 1
    return code.data[98 len 4789]
}



// =====================  Runtime code  =====================


uint256 stor1;
mapping of uint8 stor2;
mapping of uint8 stor3;
uint256 stor4;
mapping of struct accountTxs;
uint256 availableBalance;
uint256 spentBalance;
mapping of uint256 availableBalances;
mapping of uint256 stor9;
mapping of uint8 stor10;
array of uint256 xIPFSPublicKey;
uint256 minEthPerNotification;
mapping of struct tasks;
mapping of struct notifications;
array of uint256 xnotifications;
uint256 tasksCount;

function notifications(uint256 arg1) {
    mem[224] = notifications[arg1][1].field_0
    idx = 224
    s = 0
    while notifications[arg1][1].length + 224 > idx + 32:
        mem[idx + 32] = notifications[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[notifications[arg1][1].length + (floor32(notifications[arg1][1].length - 1) + -notifications[arg1][1].length + 32 % 32) + 224] = notifications[arg1][2].length
    mem[notifications[arg1][1].length + (floor32(notifications[arg1][1].length - 1) + -notifications[arg1][1].length + 32 % 32) + 256] = notifications[arg1][2].field_0
    idx = notifications[arg1][1].length + (floor32(notifications[arg1][1].length - 1) + -notifications[arg1][1].length + 32 % 32) + 256
    s = 0
    while notifications[arg1][1].length + (floor32(notifications[arg1][1].length - 1) + -notifications[arg1][1].length + 32 % 32) + notifications[arg1][2].length + 256 > idx + 32:
        mem[idx + 32] = notifications[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return notifications[arg1].field_0, 
           Array(len=notifications[arg1][1].length, data=mem[224 len notifications[arg1][1].length + (floor32(notifications[arg1][1].length - 1) + -notifications[arg1][1].length + 32 % 32) + notifications[arg1][2].length + (floor32(notifications[arg1][2].length - 1) + -notifications[arg1][2].length + 32 % 32) + 32]),
           notifications[arg1][1].length + (floor32(notifications[arg1][1].length - 1) + -notifications[arg1][1].length + 32 % 32) + 128
}

function minEthPerNotification() {
    return minEthPerNotification
}

function doNotAutoRefund(address arg1) {
    return bool(uint8(stor10[arg1]))
}

function xnotifications(uint256 arg1) {
    return xnotifications[arg1][0 len xnotifications[arg1].length]
}

function tasks(uint256 arg1) {
    return tasks[arg1].field_0, tasks[arg1].field_0, bool(tasks[arg1].field_168)
}

function availableBalance() {
    return availableBalance
}

function tasksCount() {
    return tasksCount
}

function spentBalance() {
    return spentBalance
}

function availableBalances(address arg1) {
    return availableBalances[arg1]
}

function xIPFSPublicKey() {
    return xIPFSPublicKey[0 len xIPFSPublicKey.length]
}

function accountTxs(uint256 arg1) {
    return accountTxs[arg1].field_0, 
           accountTxs[arg1].field_256,
           accountTxs[arg1].field_512,
           accountTxs[arg1].field_768,
           accountTxs[arg1].field_1024
}

function setDoNotAutoRefundTo(bool arg1) {
    uint256(stor10[address(msg.sender)]) = arg1 or Mask(248, 8, uint256(stor10[address(msg.sender)]))
}

function _fallback() payable {
    require msg.value > 0
    availableBalances[address(msg.sender)] += msg.value
    availableBalance += msg.value
}

function depositFor(address arg1) payable {
    require msg.value > 0
    availableBalances[address(arg1)] += msg.value
    availableBalance += msg.value
}

function updateXIPFSPublicKey(string arg1) {
    require 1 == bool(stor2[address(msg.sender)])
    xIPFSPublicKey[] = Array(len=arg1.length, data=arg1[all])
}

function removeManager(address arg1) {
    require 1 == bool(stor2[address(msg.sender)])
    require stor3[address(arg1)]
    stor3[address(arg1)] = 0
    stor1--
}

function addManager(address arg1) {
    require 1 == bool(stor2[address(msg.sender)])
    require bool(stor3[address(arg1)]) != 1
    stor3[address(arg1)] = 1
    stor1++
}

function updateMinEthPerNotification(uint256 arg1) {
    if bool(stor2[address(msg.sender)]) != 1:
        require 1 == bool(stor3[address(msg.sender)])
    minEthPerNotification = arg1
}

function collectRev() {
    require 1 == bool(stor2[address(msg.sender)])
    spentBalance = 0
    call msg.sender with:
       value spentBalance wei
         gas gas_remaining - 34050 wei
    require ext_call.success
}

function checkTimeout(uint256 arg1) {
    require 1 == accountTxs[arg1].field_1024
    require block.timestamp - accountTxs[arg1].field_0 >= stor4
    require 1 == accountTxs[arg1].field_1024
    require 0 <= accountTxs[arg1].field_512
    accountTxs[arg1].field_768 = 0
    accountTxs[arg1].field_1024 = 2
    stor9[stor5[arg1].field_256] -= accountTxs[arg1].field_512
    availableBalances[stor5[arg1].field_256] += accountTxs[arg1].field_512
    availableBalance += accountTxs[arg1].field_512
}

function taskRejected(uint256 arg1, uint256 arg2) {
    if bool(stor2[address(msg.sender)]) != 1:
        require 1 == bool(stor3[address(msg.sender)])
    require tasks[arg1].field_160
    require tasks[arg1].field_160 < 50
    tasks[arg1].field_160 = 60
    require 1 == accountTxs[arg1].field_1024
    require arg2 <= accountTxs[arg1].field_512
    accountTxs[arg1].field_768 = arg2
    accountTxs[arg1].field_1024 = 2
    spentBalance += arg2
    stor9[stor5[arg1].field_256] -= accountTxs[arg1].field_512
    availableBalances[stor5[arg1].field_256] = accountTxs[arg1].field_512 - arg2 + availableBalances[stor5[arg1].field_256]
    availableBalance = accountTxs[arg1].field_512 - arg2 + availableBalance
    emit TaskUpdated(arg1, 60);
}

function taskProcessedWithCosting(uint256 arg1, uint256 arg2) {
    if bool(stor2[address(msg.sender)]) != 1:
        require 1 == bool(stor3[address(msg.sender)])
    require tasks[arg1].field_160
    require tasks[arg1].field_160 < 50
    tasks[arg1].field_160 = 50
    require 1 == accountTxs[arg1].field_1024
    require arg2 <= accountTxs[arg1].field_512
    accountTxs[arg1].field_768 = arg2
    accountTxs[arg1].field_1024 = 2
    spentBalance += arg2
    stor9[stor5[arg1].field_256] -= accountTxs[arg1].field_512
    availableBalances[stor5[arg1].field_256] = accountTxs[arg1].field_512 - arg2 + availableBalances[stor5[arg1].field_256]
    availableBalance = accountTxs[arg1].field_512 - arg2 + availableBalance
    emit TaskUpdated(arg1, 50);
}

function withdraw(uint256 arg1) {
    if arg1 != 0:
        if arg1 <= availableBalances[address(msg.sender)]:
            availableBalances[address(msg.sender)] -= arg1
            availableBalance -= arg1
            call msg.sender with:
               value arg1 wei
                 gas gas_remaining - 34050 wei
            if ext_call.success:
    else:
        if availableBalances[address(msg.sender)] <= availableBalances[address(msg.sender)]:
            availableBalances[address(msg.sender)] = 0
            availableBalance -= availableBalances[address(msg.sender)]
            call msg.sender with:
               value availableBalances[address(msg.sender)] wei
                 gas gas_remaining - 34050 wei
            if ext_call.success:
    revert 
}

function xnotify(string arg1) payable {
    require msg.value > 0
    availableBalances[address(msg.sender)] += msg.value
    availableBalance += msg.value
    require minEthPerNotification <= availableBalances[address(msg.sender)]
    accountTxs[stor16].field_0 = block.timestamp
    accountTxs[stor16].field_256 = msg.sender or Mask(96, 160, accountTxs[stor16].field_256)
    accountTxs[stor16].field_512 = minEthPerNotification
    accountTxs[stor16].field_768 = 0
    accountTxs[stor16].field_1024 = 1
    availableBalances[address(msg.sender)] -= minEthPerNotification
    availableBalance -= minEthPerNotification
    stor9[address(msg.sender)] += minEthPerNotification
    xnotifications[stor16][] = Array(len=arg1.length, data=arg1[all])
    tasks[stor16].field_0 = msg.sender
    tasks[stor16].field_160 = 10
    tasks[stor16].field_168 = 1
    tasks[stor16].field_176 = Mask(80, 176, msg.sender) >> 176
    tasks[stor16].field_256 = 0
    emit TaskUpdated(tasksCount, 10);
    tasksCount++
}

function notify(uint8 arg1, string arg2, string arg3) payable {
    require msg.value > 0
    availableBalances[address(msg.sender)] += msg.value
    availableBalance += msg.value
    if arg1 != 1:
        require 2 == arg1
    require minEthPerNotification <= availableBalances[address(msg.sender)]
    accountTxs[stor16].field_0 = block.timestamp
    accountTxs[stor16].field_256 = msg.sender or Mask(96, 160, accountTxs[stor16].field_256)
    accountTxs[stor16].field_512 = minEthPerNotification
    accountTxs[stor16].field_768 = 0
    accountTxs[stor16].field_1024 = 1
    availableBalances[address(msg.sender)] -= minEthPerNotification
    availableBalance -= minEthPerNotification
    stor9[address(msg.sender)] += minEthPerNotification
    notifications[stor16].field_0 = notifications[stor16].field_8
    notifications[stor16][1][].field_0 = Array(len=arg2.length, data=arg2[all])
    notifications[stor16][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    tasks[stor16].field_0 = msg.sender
    tasks[stor16].field_160 = 10
    tasks[stor16].field_168 = 0
    tasks[stor16].field_176 = Mask(80, 176, msg.sender) >> 176
    tasks[stor16].field_256 = 0
    tasks[stor16].field_256 = 0
    emit TaskUpdated(tasksCount, 10);
    tasksCount++
}

function returnFund(address arg1, uint256 arg2) {
    if 1 == bool(stor2[address(msg.sender)]):
        if not uint8(stor10[address(arg1)]):
            if arg2 <= availableBalances[address(arg1)]:
                if arg2 != 0:
                    availableBalances[address(arg1)] -= arg2
                    availableBalance -= arg2
                    call arg1 with:
                       value arg2 wei
                         gas gas_remaining - 34050 wei
                else:
                    availableBalances[address(arg1)] = 0
                    availableBalance -= availableBalances[address(arg1)]
                    call arg1 with:
                       value availableBalances[address(arg1)] wei
                         gas gas_remaining - 34050 wei
                if ext_call.success:
    else:
        if 1 == bool(stor3[address(msg.sender)]):
            if not uint8(stor10[address(arg1)]):
                if arg2 <= availableBalances[address(arg1)]:
                    if arg2 != 0:
                        availableBalances[address(arg1)] -= arg2
                        availableBalance -= arg2
                        call arg1 with:
                           value arg2 wei
                             gas gas_remaining - 34050 wei
                    else:
                        availableBalances[address(arg1)] = 0
                        availableBalance -= availableBalances[address(arg1)]
                        call arg1 with:
                           value availableBalances[address(arg1)] wei
                             gas gas_remaining - 34050 wei
                    if ext_call.success:
    revert 
}



}
