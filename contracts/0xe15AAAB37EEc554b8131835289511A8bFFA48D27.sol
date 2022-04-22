contract main {


// =======================  Init code  ======================


address stor1;
address stor2;
uint256 stor3;
uint256 stor4;
array of uint256 stor5;
bool stor18; offset 256
uint8 stor18;
uint8 stor18; offset 8
uint8 stor18; offset 16

function _fallback() payable {
    uint8(stor18.field_0) = 0
    uint8(stor18.field_8) = 1
    uint8(stor18.field_0) = 0
    uint8(stor18.field_8) = 1
    uint8(stor18.field_16) = 0
    stor18.field_256 % 1 = 0
    require not msg.value
    mem[96 len 416] = code.data[2048 len 416]
    stor2 = msg.sender
    stor3 = code.data[2048 len 32]
    stor1 = code.data[2092 len 20]
    stor4 = code.data[2112 len 32]
    idx = 0
    while uint8(idx) < 10:
        stor5[uint8(idx)] = mem[(32 * uint8(idx)) + 192]
        idx = idx + 1
        continue 
    return code.data[237 len 1811]
}



// =====================  Runtime code  =====================


uint256 stor0;
address stor1;
address owner;
uint256 stor3;
uint256 stor4;
array of uint256 stor5;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint8 stor18;
uint8 stor18; offset 8
uint8 stor18; offset 16
uint256 stor18; offset 16
uint256 stor18; offset 8

function owner() {
    return owner
}

function lastChanceEnabled() {
    return bool(uint8(stor18.field_0))
}

function _fallback() payable {
    require uint8(stor18.field_16) <= 2
    require not uint8(stor18.field_16)
}

function toggleLastChance(bool arg1) {
    require owner == msg.sender
    require uint8(stor18.field_16) <= 2
    require not uint8(stor18.field_16)
    uint8(stor18.field_0) = uint8(not uint8(stor18.field_0))
    Mask(248, 0, stor18.field_8) = Mask(248, 0, arg1)
    Mask(240, 0, stor18.field_16) = Mask(240, 16, not uint8(stor18.field_0)) >> 16
}

function lastChance(address arg1, address arg2) {
    if uint8(stor18.field_0):
        if block.timestamp > stor17 + 60:
            if uint8(stor18.field_8):
                require sha3(arg2) == stor3
            call arg1 with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}

function setEmergencyAccount(bytes32 arg1, bytes32 arg2) {
    require stor1 == msg.sender
    require arg2
    require arg1
    require 0 < 10
    idx = 0
    while stor5[uint8(idx)] != sha3(arg2):
        require uint8(idx + 1) < 10
        mem[96] = arg2
        idx = idx + 1
        continue 
    stor16 = block.timestamp
    uint8(stor18.field_16) = 2
    stor0 = arg1
}

function transferByOwner(address arg1, uint256 arg2) payable {
    require owner == msg.sender
    require uint8(stor18.field_16) <= 2
    require not uint8(stor18.field_16)
    require arg2 <= eth.balance(this.address)
    require arg1
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
    stor17 = block.timestamp
}

function withdrawByResque() {
    require sha3(msg.sender) == stor3
    require uint8(stor18.field_16) <= 2
    if uint8(stor18.field_16) != 1:
        stor15 = block.timestamp
        uint8(stor18.field_16) = 1
    else:
        if block.timestamp > stor15 + 60:
            require uint8(stor18.field_16) <= 2
            require uint8(stor18.field_16) == 1
            call msg.sender with:
               value eth.balance(this.address) wei
                 gas 2300 * is_zero(value) wei
            require ext_call.success
}

function withdrawByEmergency(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    mem[arg1.length + ceil32(arg1.length) + 128] = address(msg.sender)
    require sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len (arg1.length % 32) + 20]) == stor0
    require block.timestamp > stor16 + (24 * 3600)
    mem[ceil32(arg1.length) + 128 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32] = mem[-(arg1.length % 32) + floor32(arg1.length) + 160 len arg1.length % 32]
    require sha3(call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 128 len arg1.length % 32]) == stor4
    require uint8(stor18.field_16) <= 2
    require uint8(stor18.field_16) == 2
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
