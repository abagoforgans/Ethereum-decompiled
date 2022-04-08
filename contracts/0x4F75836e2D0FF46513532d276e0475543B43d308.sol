contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
uint256 stor8;
uint256 stor9;
uint8 stor10;
uint256 stor10; offset 8

function _fallback() payable {
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 10
    stor7 = 5 * 10^15
    stor8 = 10^16
    stor9 = 0
    uint8(stor10.field_0) = 3
    Mask(248, 0, stor10.field_8) = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[202 len 13215]
}



// =====================  Runtime code  =====================


address owner;
array of struct moderators;
array of uint256 stor2;
uint256 totalChequeValue;
uint256 totalRedeemedCheque;
array of uint8 stor5;
uint256 commissionRate;
uint256 minFee;
uint256 minChequeValue;
uint256 maxChequeValue;
uint8 maxAttempt;
uint8 isMaintaining; offset 8
uint256 stor10; offset 8
mapping of struct stor11;

function maxAttempt() {
    return maxAttempt
}

function minFee() {
    return minFee
}

function commissionRate() {
    return commissionRate
}

function minChequeValue() {
    return minChequeValue
}

function owner() {
    return owner
}

function maxChequeValue() {
    return maxChequeValue
}

function totalRedeemedCheque() {
    return totalRedeemedCheque
}

function totalChequeValue() {
    return totalChequeValue
}

function totalCheque() {
    return stor2.length
}

function totalRedeemedValue() {
    return stor5.length
}

function moderators(uint256 arg1) {
    require arg1 < moderators.length
    return address(moderators[arg1].field_0)
}

function isMaintaining() {
    return bool(isMaintaining)
}

function Kill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function ChangeOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function SetMinFee(uint256 arg1) {
    if owner != msg.sender:
        require 0 < moderators.length
        idx = 0
        while address(moderators[idx].field_0) != msg.sender:
            require idx + 1 < moderators.length
            mem[0] = 1
            idx = idx + 1
            continue 
    minFee = arg1
}

function SetMaxAttempt(uint8 arg1) {
    if owner != msg.sender:
        require 0 < moderators.length
        idx = 0
        while address(moderators[idx].field_0) != msg.sender:
            require idx + 1 < moderators.length
            mem[0] = 1
            idx = idx + 1
            continue 
    maxAttempt = arg1
}

function SetMinChequeValue(uint256 arg1) {
    if owner != msg.sender:
        require 0 < moderators.length
        idx = 0
        while address(moderators[idx].field_0) != msg.sender:
            require idx + 1 < moderators.length
            mem[0] = 1
            idx = idx + 1
            continue 
    minChequeValue = arg1
}

function SetCommissionRate(uint256 arg1) {
    if owner != msg.sender:
        require 0 < moderators.length
        idx = 0
        while address(moderators[idx].field_0) != msg.sender:
            require idx + 1 < moderators.length
            mem[0] = 1
            idx = idx + 1
            continue 
    commissionRate = arg1
}

function SetMaxChequeValue(uint256 arg1) {
    if owner != msg.sender:
        require 0 < moderators.length
        idx = 0
        while address(moderators[idx].field_0) != msg.sender:
            require idx + 1 < moderators.length
            mem[0] = 1
            idx = idx + 1
            continue 
    maxChequeValue = arg1
}

function UpdateMaintenance(bool arg1) {
    if owner != msg.sender:
        require 0 < moderators.length
        idx = 0
        while address(moderators[idx].field_0) != msg.sender:
            require idx + 1 < moderators.length
            mem[0] = 1
            idx = idx + 1
            continue 
    stor10 = Mask(248, 0, arg1)
}

function AddModerator(address arg1) {
    require msg.sender == owner
    idx = 0
    while idx < moderators.length:
        mem[0] = 1
        if address(moderators[idx].field_0) != arg1:
            idx = idx + 1
            continue 
    moderators.length++
    if not moderators.length <= moderators.length + 1:
        idx = moderators.length + 1
        while moderators.length > idx:
            moderators[idx].field_0 = 0
            idx = idx + 1
            continue 
    address(moderators[moderators.length].field_0) = arg1
}

function WithdrawEther(address arg1, uint256 arg2) {
    if owner != msg.sender:
        require 0 < moderators.length
        idx = 0
        while address(moderators[idx].field_0) != msg.sender:
            require idx + 1 < moderators.length
            mem[0] = 1
            idx = idx + 1
            continue 
    if arg2 > eth.balance(this.address) - totalChequeValue + stor5.length:
        emit LogWithdrawEther(8, 0, arg1);
        return 8
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogWithdrawEther(0, arg2, arg1);
    return 0
}

function RemoveModerator(address arg1) {
    require msg.sender == owner
    idx = 0
    while idx < moderators.length:
        mem[0] = 1
        if address(moderators[idx].field_0) != arg1:
            idx = idx + 1
            continue 
        if idx < moderators.length:
            require moderators.length - 1 < moderators.length
            require idx < moderators.length
            address(moderators[idx].field_0) = address(moderators[moderators.length].field_0)
            require moderators.length - 1 < moderators.length
            address(moderators[moderators.length].field_0) = 0
            moderators.length--
            if not moderators.length <= moderators.length - 1:
                idx = sha3(1) + moderators.length - 1
                while sha3(1) + moderators.length > idx:
                    stor[idx] = 0
                    idx = idx + 1
                    continue 
}

function RefundChequeByHash(uint256 arg1) {
    if owner != msg.sender:
        require 0 < moderators.length
        idx = 0
        while address(moderators[idx].field_0) != msg.sender:
            require idx + 1 < moderators.length
            mem[0] = 1
            idx = idx + 1
            continue 
    require uint8(stor11[arg1].field_416) <= 4
    if not uint8(stor11[arg1].field_416):
        emit LogRefundCheque(4, arg1);
        return 4
    require uint8(stor11[arg1].field_416) <= 4
    if uint8(stor11[arg1].field_416) == 4:
        emit LogRefundCheque(9, arg1);
        return 9
    totalRedeemedCheque++
    stor5.length += stor11[arg1].field_512
    uint8(stor11[arg1].field_416) = 4
    stor11[arg1].field_512 = 0
    call address(stor11[arg1].field_256) with:
       value stor11[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogRefundCheque(0, arg1);
    return 0
}

function GetChequeInfoByHash(uint256 arg1) {
    if owner != msg.sender:
        require 0 < moderators.length
        idx = 0
        while address(moderators[idx].field_0) != msg.sender:
            require idx + 1 < moderators.length
            mem[0] = 1
            idx = idx + 1
            continue 
    require uint8(stor11[arg1].field_416) <= 4
    if not uint8(stor11[arg1].field_416):
        return 0
    if stor11[arg1].field_1024 <= 0:
        if uint8(stor11[arg1].field_416) <= 4:
            return uint8(stor11[arg1].field_256), stor11[arg1].field_512, uint8(stor11[arg1].field_1280), 0
    else:
        if block.timestamp <= stor11[arg1].field_768:
            if stor11[arg1].field_1024 <= 0:
                return 3, stor11[arg1].field_512, uint8(stor11[arg1].field_1280), 0
            if uint8(stor11[arg1].field_416) <= 4:
                return uint8(stor11[arg1].field_256), stor11[arg1].field_512, uint8(stor11[arg1].field_1280), stor11[arg1].field_1024
        else:
            if stor11[arg1].field_1024 <= block.timestamp - stor11[arg1].field_768:
                return 3, stor11[arg1].field_512, uint8(stor11[arg1].field_1280), 0
            if uint8(stor11[arg1].field_416) <= 4:
                return uint8(stor11[arg1].field_256), 
                       stor11[arg1].field_512,
                       uint8(stor11[arg1].field_1280),
                       stor11[arg1].field_1024 - block.timestamp + stor11[arg1].field_768
    ('gt', ('type', 8, ('field', 416, ('stor', ('map', ('param', 'arg1'), ('name', 'stor11', 11))))), 4)
    revert
}

function RefundChequeById(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    if owner != msg.sender:
        require 0 < moderators.length
        idx = 0
        while address(moderators[idx].field_0) != msg.sender:
            require idx + 1 < moderators.length
            mem[0] = 1
            idx = idx + 1
            continue 
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    require uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416) <= 4
    if not uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416):
        emit LogRefundCheque(4, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]));
        return 4
    require uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416) <= 4
    if uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416) == 4:
        emit LogRefundCheque(9, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]));
        return 9
    totalRedeemedCheque++
    stor5.length += stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_512
    uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416) = 4
    stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_512 = 0
    call address(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_256) with:
       value stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_512 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogRefundCheque(0, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]));
    return 0
}

function GetChequeInfo(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[0] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    require uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416) <= 4
    if not uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416):
        return 0
    if stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_1024 <= 0:
        require uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416) <= 4
        mem[ceil32(arg1.length) + 128] = uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416)
        return mem[ceil32(arg1.length) + 128], stor11[mem[0]].field_512, uint8(stor11[mem[0]].field_1280), 0
    if block.timestamp <= stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_768:
        if stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_1024 <= 0:
            return 3, 
                   stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_512,
                   uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_1280),
                   0
        require uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416) <= 4
        mem[ceil32(arg1.length) + 128] = uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416)
        return mem[ceil32(arg1.length) + 128], stor11[mem[0]].field_512, uint8(stor11[mem[0]].field_1280), stor11[mem[0]].field_1024
    if stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_1024 <= block.timestamp - stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_768:
        return 3, 
               stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_512,
               uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_1280),
               0
    require uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416) <= 4
    mem[ceil32(arg1.length) + 128] = uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416)
    return mem[ceil32(arg1.length) + 128], 
           stor11[mem[0]].field_512,
           uint8(stor11[mem[0]].field_1280),
           stor11[mem[0]].field_1024 - block.timestamp + stor11[mem[0]].field_768
}

function Create(uint256 arg1, uint256 arg2, uint32 arg3) payable {
    require bool(isMaintaining) != 1
    if msg.value / 1000 * commissionRate >= minFee:
        if msg.value < msg.value / 1000 * commissionRate:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit LogCreate(8, 0, arg1);
            return 8
        if msg.value - (msg.value / 1000 * commissionRate) < minChequeValue:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit LogCreate(2, msg.value - (msg.value / 1000 * commissionRate), arg1);
            return 2
        if maxChequeValue > 0:
            if msg.value - (msg.value / 1000 * commissionRate) > maxChequeValue:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit LogCreate(1, msg.value - (msg.value / 1000 * commissionRate), arg1);
                return 1
        require uint8(stor11[arg1].field_416) <= 4
        if uint8(stor11[arg1].field_416):
            require uint8(stor11[arg1].field_416) <= 4
            if uint8(stor11[arg1].field_416) != 4:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit LogCreate(3, msg.value - (msg.value / 1000 * commissionRate), arg1);
                return 3
        stor2.length++
        totalChequeValue = totalChequeValue + msg.value - (msg.value / 1000 * commissionRate)
        stor11[arg1].field_0 = arg2
        address(stor11[arg1].field_256) = msg.sender
        uint8(stor11[arg1].field_416) = 1
        stor11[arg1].field_512 = msg.value - (msg.value / 1000 * commissionRate)
        stor11[arg1].field_768 = block.timestamp
        uint32(stor11[arg1].field_1024) = arg3
        Mask(224, 0, stor11[arg1].field_1056) = 0
        uint8(stor11[arg1].field_1280) = 0
        stor11[arg1].field_1536 % 1 = 0
        emit LogCreate(0, msg.value - (msg.value / 1000 * commissionRate), arg1);
    else:
        if msg.value < minFee:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit LogCreate(8, 0, arg1);
            return 8
        if msg.value - minFee < minChequeValue:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit LogCreate(2, msg.value - minFee, arg1);
            return 2
        if maxChequeValue > 0:
            if msg.value - minFee > maxChequeValue:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit LogCreate(1, msg.value - minFee, arg1);
                return 1
        require uint8(stor11[arg1].field_416) <= 4
        if uint8(stor11[arg1].field_416):
            require uint8(stor11[arg1].field_416) <= 4
            if uint8(stor11[arg1].field_416) != 4:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
                require ext_call.success
                emit LogCreate(3, msg.value - minFee, arg1);
                return 3
        stor2.length++
        totalChequeValue = totalChequeValue + msg.value - minFee
        stor11[arg1].field_0 = arg2
        address(stor11[arg1].field_256) = msg.sender
        uint8(stor11[arg1].field_416) = 1
        stor11[arg1].field_512 = msg.value - minFee
        stor11[arg1].field_768 = block.timestamp
        uint32(stor11[arg1].field_1024) = arg3
        Mask(224, 0, stor11[arg1].field_1056) = 0
        uint8(stor11[arg1].field_1280) = 0
        stor11[arg1].field_1536 % 1 = 0
        emit LogCreate(0, msg.value - minFee, arg1);
    return 0
}

function Redeem(string arg1, string arg2, address arg3) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    _97 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
    _98 = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]), 11)
    require uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416) <= 4
    if not uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416):
        emit LogRedeem(4, 0, arg3, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]));
        return 4
    require uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416) <= 4
    if uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416) == 4:
        emit LogRedeem(9, 0, arg3, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]));
        return 9
    if address(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_256) != msg.sender:
        require uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416) <= 4
        if uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416) != 1:
            emit LogRedeem(5, 0, arg3, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]));
            return 5
        if uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_1280) > maxAttempt:
            emit LogRedeem(6, 0, arg3, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]));
            return 6
        if stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_1024 > 0:
            if block.timestamp > stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_768 + stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_1024:
                emit LogRedeem(7, 0, arg3, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]));
                return 7
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
    if stor[_98] != sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len arg2.length + arg1.length]):
        stor5[_98] = uint8(stor5[_98] + 1)
        emit LogRedeem(5, 0, arg3, _97);
        return 5
    totalRedeemedCheque++
    stor5.length += stor2[_98]
    uint8(moderators[_98].field_160) = 4
    stor2[_98] = 0
    call arg3 with:
       value stor2[_98] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogRedeem(0, stor2[_98], arg3, _97);
    return 0
}

function VerifyCheque(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if msg.sender == owner:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        _62 = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]), 11)
        if uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416) <= 4:
            if not uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416):
                return 4, 0, 0, 0, 0
            if uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416) <= 4:
                if uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416) == 4:
                    return 9, 4, 0, 0, 0
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
                if stor[_62] != sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len arg2.length + arg1.length]):
                    return 5, 0, 0, 0, 0
                if uint8(moderators[_62].field_160) <= 4:
                    return 0, uint8(moderators[_62].field_0), stor2[_62], stor5[_62], 0
    else:
        require 0 < moderators.length
        idx = 0
        while address(moderators[idx].field_0) != msg.sender:
            require idx + 1 < moderators.length
            mem[0] = 1
            idx = idx + 1
            continue 
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
        _119 = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]), 11)
        if uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416) <= 4:
            if not uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416):
                return 4, 0, 0, 0, 0
            if uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416) <= 4:
                if uint8(stor11[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416) == 4:
                    return 9, 4, 0, 0, 0
                mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
                mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
                mem[arg1.length + ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32] = mem[ceil32(arg1.length) + floor32(arg2.length) + -(arg2.length % 32) + 192 len arg2.length % 32]
                if stor[_119] != sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len arg2.length + arg1.length]):
                    return 5, 0, 0, 0, 0
                if uint8(moderators[_119].field_160) <= 4:
                    return 0, uint8(moderators[_119].field_0), stor2[_119], stor5[_119], 0
    revert
}



}
