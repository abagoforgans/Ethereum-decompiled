contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor3;
uint256 stor4;
uint256 stor5;
uint256 stor6;
uint256 stor7;
bool stor8; offset 256
uint8 stor8;
uint8 stor8; offset 8

function _fallback() payable {
    stor1 = 0
    stor2 = 0
    stor3 = 0
    stor4 = 0
    stor5 = 10
    stor6 = 10^16
    stor7 = 0
    uint8(stor8.field_0) = 3
    uint8(stor8.field_8) = 0
    stor8.field_256 % 1 = 0
    require not msg.value
    stor0 = msg.sender
    return code.data[119 len 5030]
}



// =====================  Runtime code  =====================


address owner;
uint256 totalCheque;
array of uint256 stor2;
uint256 totalRedeemedCheque;
uint256 totalRedeemedValue;
array of uint8 stor5;
uint256 minChequeValue;
uint256 maxChequeValue;
uint8 maxAttempt;
uint8 isMaintaining; offset 8
uint256 stor8; offset 8
mapping of struct stor9;

function maxAttempt() {
    return maxAttempt
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

function sub_96a6f3a7(?) {
    return stor5.length
}

function totalRedeemedCheque() {
    return totalRedeemedCheque
}

function totalChequeValue() {
    return stor2.length
}

function totalCheque() {
    return totalCheque
}

function totalRedeemedValue() {
    return totalRedeemedValue
}

function isMaintaining() {
    return bool(isMaintaining)
}

function Kill() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_100a53ed(?) {
    require owner == msg.sender
    stor5.length = arg1
}

function SetMaxAttempt(uint8 arg1) {
    require owner == msg.sender
    maxAttempt = arg1
}

function ChangeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
    return 0
}

function SetMinChequeValue(uint256 arg1) {
    require owner == msg.sender
    minChequeValue = arg1
}

function SetMaxChequeValue(uint256 arg1) {
    require owner == msg.sender
    maxChequeValue = arg1
}

function UpdateMaintenance(bool arg1) {
    require owner == msg.sender
    stor8 = Mask(248, 0, arg1)
}

function WithdrawEther(address arg1, uint256 arg2) {
    require owner == msg.sender
    if arg2 > eth.balance(this.address) - stor2.length + totalRedeemedValue:
        emit LogWithdrawEther(8, 0, arg1);
        return 8
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogWithdrawEther(0, arg2, arg1);
    return 0
}

function Create(uint256 arg1, uint256 arg2, uint32 arg3) payable {
    require bool(isMaintaining) != 1
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
    require uint8(stor9[arg1].field_416) <= 3
    if uint8(stor9[arg1].field_416):
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
        emit 0x6f3cc246: 3, 0, arg1
        return 3
    totalCheque++
    stor2.length = (1000 * msg.value / 1000) - (stor5.length * msg.value / 1000) + stor2.length
    stor9[arg1].field_0 = arg2
    address(stor9[arg1].field_256) = msg.sender
    address(stor9[arg1].field_256) = msg.sender
    uint8(stor9[arg1].field_416) = 1
    stor9[arg1].field_512 = (1000 * msg.value / 1000) - (stor5.length * msg.value / 1000)
    stor9[arg1].field_768 = block.timestamp
    uint32(stor9[arg1].field_1024) = arg3
    Mask(224, 0, stor9[arg1].field_1056) = 0
    uint8(stor9[arg1].field_1280) = 0
    stor9[arg1].field_1536 % 1 = 0
    emit 0x6f3cc246: 0, (1000 * msg.value / 1000) - (stor5.length * msg.value / 1000), arg1
    return 0
}

function sub_a91481b1(?) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    require uint8(stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416) <= 3
    if not uint8(stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416):
        emit LogRefundCheque(4, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]));
        return 4
    totalRedeemedCheque++
    totalRedeemedValue += stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_512
    stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_0 = 0
    Mask(168, 0, stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_256) = 0
    stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_512 = 0
    stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_768 = 0
    stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_1024 = 0
    uint8(stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_1280) = 0
    call address(stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_256) with:
       value stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_512 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogRefundCheque(0, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]));
    return 0
}

function GetChequeInfo(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + 128] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + floor32(arg1.length) + 128] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    mem[0] = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32])
    require uint8(stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416) <= 3
    if not uint8(stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416):
        return 0
    if stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_1024 <= 0:
        require uint8(stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416) <= 3
        mem[ceil32(arg1.length) + 128] = uint8(stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416)
        return mem[ceil32(arg1.length) + 128], stor9[mem[0]].field_512, uint8(stor9[mem[0]].field_1280), 0
    if block.timestamp <= stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_768:
        if stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_1024 <= 0:
            return 3, 
                   stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_512,
                   uint8(stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_1280),
                   0
        require uint8(stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416) <= 3
        mem[ceil32(arg1.length) + 128] = uint8(stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416)
        return mem[ceil32(arg1.length) + 128], stor9[mem[0]].field_512, uint8(stor9[mem[0]].field_1280), stor9[mem[0]].field_1024
    if stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_1024 <= block.timestamp - stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_768:
        return 3, 
               stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_512,
               uint8(stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_1280),
               0
    require uint8(stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416) <= 3
    mem[ceil32(arg1.length) + 128] = uint8(stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]].field_416)
    return mem[ceil32(arg1.length) + 128], 
           stor9[mem[0]].field_512,
           uint8(stor9[mem[0]].field_1280),
           stor9[mem[0]].field_1024 - block.timestamp + stor9[mem[0]].field_768
}

function Redeem(string arg1, string arg2, address arg3) payable {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] = 256^(-(arg1.length % 32) + 32) - 1 and mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160] or call.data[arg1 + floor32(arg1.length) + 36 len arg1.length % 32], mem[arg1.length + 128 len -(arg1.length % 32) + 32] and !(256^(-(arg1.length % 32) + 32) - 1)
    _113 = sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32])
    _114 = sha3(sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]), 9)
    require uint8(stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416) <= 3
    if not uint8(stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416):
        emit LogRedeem(4, 0, arg3, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]));
        return 4
    if address(stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_256) != msg.sender:
        require uint8(stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416) <= 3
        if uint8(stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_416) != 1:
            emit LogRedeem(5, 0, arg3, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]));
            return 5
        if uint8(stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_1280) > maxAttempt:
            emit LogRedeem(6, 0, arg3, sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]));
            return 6
        if stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_1024 > 0:
            if block.timestamp > stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_768 + stor9[call.data[arg1 + 36 len floor32(arg1.length)]][mem[ceil32(arg1.length) + ceil32(arg2.length) + floor32(arg1.length) + 160 len arg1.length % 32]].field_1024:
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
    totalRedeemedCheque++
    totalRedeemedValue += stor2[_114]
    stor9[_113].field_0 = 0
    Mask(168, 0, stor9[_113].field_256) = 0
    stor9[_113].field_512 = 0
    stor9[_113].field_768 = 0
    stor9[_113].field_1024 = 0
    uint8(stor9[_113].field_1280) = 0
    call arg3 with:
       value stor2[_114] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    emit LogRedeem(0, stor2[_114], arg3, _113);
    return 0
}



}
