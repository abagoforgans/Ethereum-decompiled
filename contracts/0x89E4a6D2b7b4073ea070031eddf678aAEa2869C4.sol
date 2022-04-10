contract main {


// =======================  Init code  ======================


address stor1;
uint8 stor6; offset 16
uint16 stor6; offset 24
uint256 stor7;
uint16 stor8;
uint256 stor9;

function _fallback() payable {
    uint16(stor6.field_24) = 0
    stor7 = 0
    stor8 = 0
    stor9 = 63
    require not msg.value
    stor1 = msg.sender
    uint8(stor6.field_16) = 3
    return code.data[112 len 1430]
}



// =====================  Runtime code  =====================


address sub_e1b3e86fAddress;
address feeAddress;
uint256 sub_27058c76;
uint256 sub_d2aeb68b;
uint256 stor4;
uint256 sub_4b6e3878;
uint8 sub_3e701e6e; offset 8
uint8 stor6; offset 16
uint256 stor6; offset 32
uint256 stor7;
uint8 stor8;
uint256 stor8;
uint256 stor9;

function sub_27058c76(?) {
    return sub_27058c76
}

function sub_3e701e6e(?) {
    return sub_3e701e6e
}

function sub_4b6e3878(?) {
    return sub_4b6e3878
}

function FeeAddress() {
    return feeAddress
}

function sub_d2aeb68b(?) {
    return sub_d2aeb68b
}

function sub_e1b3e86f(?) {
    return sub_e1b3e86fAddress
}

function _fallback() payable {
    revert
}

function sub_a9e23734(?) {
    require feeAddress == msg.sender
    stor9 = arg1
}

function changeFee(uint8 arg1) {
    require feeAddress == msg.sender
    uint8(stor6.field_16) = arg1
}

function sub_65c1a75a(?) payable {
    mem[128 len arg1.length] = arg1[all]
    require arg2 >= 0
    require arg2 <= 6
    if not msg.value:
        Mask(224, 0, stor6.field_32) = 0
        revert
    sub_e1b3e86fAddress = msg.sender
    sub_27058c76 += msg.value * uint8(-uint8(stor6.field_16) + 100) / 100
    stor4 += 10 * msg.value / 100
    if stor4 + (10 * msg.value / 100) >= 10^16:
        stor4 = 0
        call feeAddress with:
           value stor4 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    Mask(224, 0, stor6.field_32) = 1
    mem[ceil32(arg1.length) + 128] = block.hash(block.number - stor9)
    mem[ceil32(arg1.length) + 160 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
    mem[ceil32(arg1.length) + floor32(arg1.length) + -(arg1.length % 32) + 192 len arg1.length % 32] = mem[floor32(arg1.length) + -(arg1.length % 32) + 160 len arg1.length % 32]
    stor7 = sha3(block.hash(block.number - stor9), call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]) % 6
    require sha3(block.hash(block.number - stor9), call.data[arg1 + 36 len floor32(arg1.length)], mem[ceil32(arg1.length) + floor32(arg1.length) + 160 len arg1.length % 32]) % 6 >= 0
    require stor7 <= 6
    uint256(stor8) = arg2 == stor7 or Mask(248, 8, uint256(stor8))
    if uint8(arg2 == stor7):
        sub_27058c76 = 0
        sub_d2aeb68b = sub_27058c76
        call msg.sender with:
           value sub_27058c76 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
    emit 0xeb3bacf1: arg2, stor7, sub_27058c76, sub_d2aeb68b, msg.sender, bool(uint8(stor8)), 1
}



}
