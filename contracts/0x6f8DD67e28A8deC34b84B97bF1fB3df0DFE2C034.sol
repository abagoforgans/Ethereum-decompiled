contract main {


// =======================  Init code  ======================


address stor0;
uint128 stor1; offset 160
address stor1;
uint256 stor2;
uint256 stor3;
uint8 stor4;
mapping of struct stor5;
mapping of uint256 stor6;

function _fallback() payable {
    Mask(96, 0, stor1.field_160) = 1
    stor2 = 2 * 10^15
    stor3 = 0
    stor4 = 70
    if code.data[9167 len 32]:
        stor2 = code.data[9167 len 32]
    if not code.data[9211 len 20]:
        address(stor1.field_0) = msg.sender
    else:
        address(stor1.field_0) = code.data[9211 len 20]
    stor0 = msg.sender
    stor5[1].field_0 = 195
    stor5[1].field_8 = 0
    stor5[2].field_0 = 200
    stor5[2].field_8 = 0
    stor5[3].field_0 = 900
    stor6[1] = 2 * 10^15
    stor6[2] = 2 * 10^15
    stor6[3] = 2 * 10^15
    return code.data[771 len 8396]
}



// =====================  Runtime code  =====================


#
#  - sub_30c894df(?)
#
address owner;
uint8 stor1; offset 160
uint128 stor1; offset 160
address operatorAddress;
uint256 minBet;
uint256 sub_04ed00ac;
uint8 sub_aaae0284;
mapping of struct sub_3d12d02c;
mapping of uint256 sub_375c3e7a;
mapping of struct sub_ab6b1f68;

function sub_04ed00ac(?) {
    return sub_04ed00ac
}

function isActive() {
    return bool(uint8(stor1.field_160))
}

function sub_375c3e7a(?) {
    return sub_375c3e7a[arg1]
}

function sub_3d12d02c(?) {
    return sub_3d12d02c[arg1].field_0
}

function operator() {
    return operatorAddress
}

function owner() {
    return owner
}

function minBet() {
    return minBet
}

function sub_aaae0284(?) {
    return sub_aaae0284
}

function sub_ab6b1f68(?) {
    require sub_ab6b1f68[arg1][arg2].field_768 <= 3
    require sub_ab6b1f68[arg1][arg2].field_1296 <= 3
    mem[448] = sub_ab6b1f68[arg1][arg2][4].field_0
    idx = 448
    s = 0
    while sub_ab6b1f68[arg1][arg2][4].length + 448 > idx + 32:
        mem[idx + 32] = sub_ab6b1f68[arg1][arg2][s + 4].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return sub_ab6b1f68[arg1][arg2].field_0, 
           sub_ab6b1f68[arg1][arg2].field_256,
           sub_ab6b1f68[arg1][arg2].field_512,
           sub_ab6b1f68[arg1][arg2].field_768,
           Array(len=sub_ab6b1f68[arg1][arg2][4].length, data=mem[448 len sub_ab6b1f68[arg1][arg2][4].length + (floor32(sub_ab6b1f68[arg1][arg2][4].length - 1) + -sub_ab6b1f68[arg1][arg2][4].length + 32 % 32)]),
           sub_ab6b1f68[arg1][arg2].field_1280,
           sub_ab6b1f68[arg1][arg2].field_1280,
           sub_ab6b1f68[arg1][arg2].field_1280,
           sub_ab6b1f68[arg1][arg2].field_1536,
           bool(sub_ab6b1f68[arg1][arg2].field_1792)
}

function ownerkill() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    require msg.sender == owner
}

function sub_a4de306b(?) {
    require msg.sender == operatorAddress
    sub_aaae0284 = arg1
}

function setMinBet(uint256 arg1) {
    require msg.sender == operatorAddress
    minBet = arg1
}

function setOperator(address arg1) {
    require msg.sender == owner
    operatorAddress = arg1
}

function sub_a87783ba(?) {
    require msg.sender == operatorAddress
    Mask(96, 0, stor1.field_160) = 1
}

function sub_b139b032(?) {
    require msg.sender == operatorAddress
    Mask(96, 0, stor1.field_160) = 0
}

function sub_7e2f5b59(?) {
    require msg.sender == operatorAddress
    sub_3d12d02c[1].field_0 = 195
    sub_3d12d02c[1].field_8 = 0
}

function sub_81bd88e0(?) {
    require msg.sender == operatorAddress
    sub_3d12d02c[1].field_0 = 200
    sub_3d12d02c[1].field_8 = 0
}

function sub_3d24cd04(?) {
    require msg.sender == operatorAddress
    require sub_3d12d02c[arg1 << 248].field_0
    sub_375c3e7a[arg1 << 248] = arg2
}

function transferToOwner(uint256 arg1) {
    require msg.sender == owner
    if eth.balance(this.address) - arg1 - sub_04ed00ac <= 0:
        emit 0xeaa8cb7c: owner, arg1
    else:
        call owner with:
           value arg1 wei
             gas 2300 * is_zero(value) wei
        require ext_call.success
}

function bet(uint8 arg1, uint256 arg2) payable {
    require uint8(stor1.field_160)
    require msg.value >= minBet
    require (eth.balance(this.address) * sub_aaae0284 / 100) - sub_04ed00ac - (msg.value * sub_3d12d02c[arg1 << 248].field_0 / 100) > 0
    require sub_3d12d02c[arg1 << 248].field_0
    require not sub_ab6b1f68[address(msg.sender)][arg2].field_0
    require msg.value <= sub_375c3e7a[arg1 << 248]
    require arg1 <= 3
    sub_ab6b1f68[address(msg.sender)][arg2].field_0 = arg2
    sub_ab6b1f68[address(msg.sender)][arg2].field_256 = msg.sender
    sub_ab6b1f68[address(msg.sender)][arg2].field_512 = msg.value
    require arg1 <= 3
    sub_ab6b1f68[address(msg.sender)][arg2].field_768 = arg1
    sub_ab6b1f68[address(msg.sender)][arg2].field_1024 = 0
    sub_ab6b1f68[address(msg.sender)][arg2].field_1025 = 0
    sub_ab6b1f68[address(msg.sender)][arg2].field_1032 = mem[800 len 31]
    idx = 0
    while sub_ab6b1f68[address(msg.sender)][arg2][4].length + 31 / 32 > idx:
        sub_ab6b1f68[address(msg.sender)][arg2][idx + 4].field_0 = 0
        idx = idx + 1
        continue 
    sub_ab6b1f68[address(msg.sender)][arg2].field_1280 = 0
    sub_ab6b1f68[address(msg.sender)][arg2].field_1536 = 0
    sub_ab6b1f68[address(msg.sender)][arg2].field_1288 = 0
    sub_ab6b1f68[address(msg.sender)][arg2].field_1536 = 0
    sub_ab6b1f68[address(msg.sender)][arg2].field_1296 = 0
    sub_ab6b1f68[address(msg.sender)][arg2].field_1536 = 0
    sub_ab6b1f68[address(msg.sender)][arg2].field_1536 = 0
    sub_ab6b1f68[address(msg.sender)][arg2].field_1792 = 0
    emit 0xfad9a2bb: arg2, arg1 << 248, msg.value, msg.sender
    sub_04ed00ac += msg.value * sub_3d12d02c[arg1 << 248].field_0 / 100
}



}
