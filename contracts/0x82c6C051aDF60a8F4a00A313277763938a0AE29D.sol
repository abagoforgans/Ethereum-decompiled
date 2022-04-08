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
bool stor9; offset 256
uint8 stor9;
uint8 stor9; offset 8

function _fallback() payable {
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor5 = 0
    stor6 = 10
    stor7 = 10^16
    stor8 = 0
    uint8(stor9.field_0) = 3
    uint8(stor9.field_8) = 0
    stor9.field_256 % 1 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[119 len 8601]
}



// =====================  Runtime code  =====================


address owner;
array of struct moderators;
array of uint256 stor2;
array of uint256 stor3;
array of uint256 stor4;
array of uint8 stor5;
uint256 commissionFee;
uint256 minChequeValue;
uint256 maxChequeValue;
uint8 maxAttempt;
uint8 stor9; offset 8
uint256 stor9; offset 8
mapping of struct stor10;

function maxAttempt() {
    return maxAttempt
}

function commissionFee() {
    return commissionFee
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
    return stor4.length
}

function totalChequeValue() {
    return stor3.length
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
    return bool(uint8(stor9.field_8))
}

function Kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function ChangeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
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

function SetCommissionValue(uint256 arg1) {
    if owner != msg.sender:
        require 0 < moderators.length
        idx = 0
        while address(moderators[idx].field_0) != msg.sender:
            require idx + 1 < moderators.length
            mem[0] = 1
            idx = idx + 1
            continue 
    commissionFee = arg1
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
    Mask(248, 0, stor9.field_8) = Mask(248, 0, arg1)
}

function AddModerator(address arg1) {
    require owner == msg.sender
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
    if arg2 > eth.balance(this.address) - stor3.length + stor5.length:
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
    require owner == msg.sender
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
                idx = moderators.length + sha3(1) - 1
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
    require uint8(stor10[arg1].field_416) <= 3
    if not uint8(stor10[arg1].field_416):
        emit 0xd9a2ede2: 4, arg1
        return 4
    stor4.length++
    stor5.length += stor10[arg1].field_512
    stor10[arg1].field_0 = 0
    Mask(168, 0, stor10[arg1].field_256) = 0
    stor10[arg1].field_512 = 0
    stor10[arg1].field_768 = 0
    stor10[arg1].field_1024 = 0
    uint8(stor10[arg1].field_1280) = 0
    call address(stor10[arg1].field_256) with:
       value stor10[arg1].field_512 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0xd9a2ede2: 0, arg1
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
    require uint8(stor10[arg1].field_416) <= 3
    if not uint8(stor10[arg1].field_416):
        return 0
    if stor10[arg1].field_1024 <= 0:
        if uint8(stor10[arg1].field_416) <= 3:
            return uint8(stor10[arg1].field_256), stor10[arg1].field_512, uint8(stor10[arg1].field_1280), 0
    else:
        if block.timestamp <= stor10[arg1].field_768:
            if stor10[arg1].field_1024 <= 0:
                return 3, stor10[arg1].field_512, uint8(stor10[arg1].field_1280), 0
            if uint8(stor10[arg1].field_416) <= 3:
                return uint8(stor10[arg1].field_256), stor10[arg1].field_512, uint8(stor10[arg1].field_1280), stor10[arg1].field_1024
        else:
            if stor10[arg1].field_1024 <= block.timestamp - stor10[arg1].field_768:
                return 3, stor10[arg1].field_512, uint8(stor10[arg1].field_1280), 0
            if uint8(stor10[arg1].field_416) <= 3:
                return uint8(stor10[arg1].field_256), 
                       stor10[arg1].field_512,
                       uint8(stor10[arg1].field_1280),
                       stor10[arg1].field_1024 - block.timestamp + stor10[arg1].field_768
    ('gt', ('type', 8, ('field', 416, ('stor', ('map', ('param', 'arg1'), ('name', 'stor10', 10))))), 3)
    revert
}

function Create(uint256 arg1, uint256 arg2, uint32 arg3) payable {
    require bool(uint8(stor9.field_8)) != 1
    if msg.value < minChequeValue:
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0x6f3cc246: 2, 0, arg1
        return 2
    if maxChequeValue > 0:
        if msg.value > maxChequeValue:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
            emit 0x6f3cc246: 1, 0, arg1
            return 1
    require uint8(stor10[arg1].field_416) <= 3
    if uint8(stor10[arg1].field_416):
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0x6f3cc246: 3, 0, arg1
        return 3
    stor2.length++
    stor3.length = (1000 * msg.value / 1000) - (commissionFee * msg.value / 1000) + stor3.length
    stor10[arg1].field_0 = arg2
    address(stor10[arg1].field_256) = msg.sender
    address(stor10[arg1].field_256) = msg.sender
    uint8(stor10[arg1].field_416) = 1
    stor10[arg1].field_512 = (1000 * msg.value / 1000) - (commissionFee * msg.value / 1000)
    stor10[arg1].field_768 = block.timestamp
    uint32(stor10[arg1].field_1024) = arg3
    Mask(224, 0, stor10[arg1].field_1056) = 0
    uint8(stor10[arg1].field_1280) = 0
    stor10[arg1].field_1536 % 1 = 0
    emit 0x6f3cc246: 0, (1000 * msg.value / 1000) - (commissionFee * msg.value / 1000), arg1
    return 0
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
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    require uint8(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416) <= 3
    if not uint8(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416):
        emit 0xd9a2ede2: 4, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
        return 4
    stor4.length++
    stor5.length += stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_512
    stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_0 = 0
    Mask(168, 0, stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_256) = 0
    stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_512 = 0
    stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_768 = 0
    stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_1024 = 0
    uint8(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_1280) = 0
    call address(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_256) with:
       value stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_512 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit 0xd9a2ede2: 0, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    return 0
}

function GetChequeInfo(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    _26 = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]), 10)
    require uint8(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416) <= 3
    if not uint8(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416):
        return 0
    if stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_1024 <= 0:
        require uint8(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416) <= 3
        mem[ceil32(arg1.length) + 128] = uint8(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416)
        return mem[ceil32(arg1.length) + 128], stor2[_26], stor5[_26], 0
    if block.timestamp <= stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_768:
        if stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_1024 <= 0:
            return 3, 
                   stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_512,
                   uint8(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_1280),
                   0
        require uint8(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416) <= 3
        mem[ceil32(arg1.length) + 128] = uint8(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416)
        return mem[ceil32(arg1.length) + 128], stor2[_26], stor5[_26], stor4[_26]
    if stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_1024 <= block.timestamp - stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_768:
        return 3, 
               stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_512,
               uint8(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_1280),
               0
    require uint8(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416) <= 3
    mem[ceil32(arg1.length) + 128] = uint8(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416)
    return mem[ceil32(arg1.length) + 128], stor2[_26], stor5[_26], stor4[_26] - block.timestamp + stor3[_26]
}

function Redeem(string arg1, string arg2, address arg3) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    _113 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
    _114 = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]), 10)
    require uint8(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416) <= 3
    if not uint8(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416):
        emit LogRedeem(4, 0, arg3, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]));
        return 4
    if address(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_256) != msg.sender:
        require uint8(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416) <= 3
        if uint8(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416) != 1:
            emit LogRedeem(5, 0, arg3, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]));
            return 5
        if uint8(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_1280) > maxAttempt:
            emit LogRedeem(6, 0, arg3, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]));
            return 6
        if stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_1024 > 0:
            if block.timestamp > stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_768 + stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_1024:
                emit LogRedeem(7, 0, arg3, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]));
                return 7
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + floor32(arg2.length) + 160] = mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + floor32(arg2.length) + 160] and 256^(-(arg2.length % 32) + 32) - 1 or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 160 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
    if stor[_114] != sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len arg1.length + arg2.length]):
        stor5[_114] = uint8(stor5[_114] + 1)
        emit LogRedeem(5, 0, arg3, _113);
        return 5
    stor4.length++
    stor5.length += stor2[_114]
    stor10[_113].field_0 = 0
    Mask(168, 0, stor10[_113].field_256) = 0
    stor10[_113].field_512 = 0
    stor10[_113].field_768 = 0
    stor10[_113].field_1024 = 0
    uint8(stor10[_113].field_1280) = 0
    call arg3 with:
       value stor2[_114] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogRedeem(0, stor2[_114], arg3, _113);
    return 0
}

function VerifyCheque(string arg1, string arg2) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    if owner == msg.sender:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        _58 = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]), 10)
        if uint8(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416) <= 3:
            if not uint8(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416):
                return 4, 0, 0, 0, 0
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
            mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + floor32(arg2.length) + 160] = mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + floor32(arg2.length) + 160] and 256^(-(arg2.length % 32) + 32) - 1 or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 160 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
            if stor[_58] != sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len arg1.length + arg2.length]):
                return 5, 0, 0, 0, 0
            if uint8(moderators[_58].field_160) <= 3:
                return 0, uint8(moderators[_58].field_0), stor2[_58], stor5[_58], 0
    else:
        require 0 < moderators.length
        idx = 0
        while address(moderators[idx].field_0) != msg.sender:
            require idx + 1 < moderators.length
            mem[0] = 1
            idx = idx + 1
            continue 
        mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
        _111 = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]), 10)
        if uint8(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416) <= 3:
            if not uint8(stor10[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416):
                return 4, 0, 0, 0, 0
            mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
            mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + 160 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
            mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + floor32(arg2.length) + 160] = mem[ceil32(arg1.length) + ceil32(arg2.length) + arg1.length + floor32(arg2.length) + 160] and 256^(-(arg2.length % 32) + 32) - 1 or call.data[arg2 + floor32(arg2.length) + 36 len arg2.length % 32], mem[ceil32(arg1.length) + arg2.length + 160 len -(arg2.length % 32) + 32] and !(256^(-(arg2.length % 32) + 32) - 1)
            if stor[_111] != sha3(mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len arg1.length + arg2.length]):
                return 5, 0, 0, 0, 0
            if uint8(moderators[_111].field_160) <= 3:
                return 0, uint8(moderators[_111].field_0), stor2[_111], stor5[_111], 0
    revert
}



}
