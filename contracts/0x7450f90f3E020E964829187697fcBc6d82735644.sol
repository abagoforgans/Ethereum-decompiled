contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor1;
uint256 stor2;
uint256 stor4;

function _fallback() payable {
    mem[96] = 11
    mem[128] = 2
    mem[160] = 3
    mem[192] = 4
    mem[224] = 5
    mem[256] = 6
    mem[288] = 7
    mem[320] = 8
    mem[352] = 9
    mem[384] = 10
    mem[416] = 10
    mem[448] = 10
    mem[480] = 10
    s = 0
    idx = 96
    while 512 > idx:
        stor4 = mem[idx + 31 len 1] * 256^s or !(255 * 256^s) and stor4
        s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
        idx = idx + 32
        continue 
    idx = 13
    s = 4
    while idx:
        uint256(stor[s]) = !(255 * 256^idx) and uint256(stor[s])
        idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
        s = (idx + 1 / 32) + s
        continue 
    idx = (-11 * None + 3 / 32) + (None * None + 3 / 32) + 4
    while 5 > idx:
        uint8(stor[idx]) = 0
        idx = idx + 1
        continue 
    require not msg.value
    stor0 = msg.sender
    stor1 = code.data[5698 len 32]
    stor2 = code.data[5730 len 32]
    return code.data[415 len 5283]
}



// =====================  Runtime code  =====================


#
#  - determineOutcome(bytes32 arg1, uint8[] arg2, uint8[] arg3)
#  - stand(uint8[] arg1, bytes32 arg2, uint8[] arg3)
#
address owner;
uint256 minimumBet;
uint256 maximumBet;
mapping of uint8 stor3;
mapping of struct stor5;
mapping of struct stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;

function maximumBet() {
    return maximumBet
}

function owner() {
    return owner
}

function authorized(address arg1) {
    return bool(stor3[arg1])
}

function minimumBet() {
    return minimumBet
}

function close() {
    require owner == msg.sender
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setMaximumBet(uint256 arg1) {
    require owner == msg.sender
    maximumBet = arg1
}

function setMinimumBet(uint256 arg1) {
    require owner == msg.sender
    minimumBet = arg1
}

function authorize(address arg1) {
    require owner == msg.sender
    stor3[address(arg1)] = 1
}

function deauthorize(address arg1) {
    require owner == msg.sender
    stor3[address(arg1)] = 0
}

function gameExists(bytes32 arg1) {
    if not stor5[arg1].field_512:
        return 0
    return 1
}

function double(bytes32 arg1, uint8 arg2, uint256 arg3) {
    require stor3[address(msg.sender)]
    require arg3 == stor5[arg1].field_768
    require arg2 <= stor6[arg1].field_0
    require not stor7[arg1][arg2 << 248]
    stor7[arg1][arg2 << 248] = 1
    emit Double(arg2, arg1);
}

function initGame(address arg1, uint256 arg2, bytes32 arg3, bytes32 arg4, bytes32 arg5) {
    require stor3[address(msg.sender)]
    require arg2 >= minimumBet
    require arg2 <= maximumBet
    require not stor5[arg4].field_512
    stor5[arg4].field_0 = arg3
    stor5[arg4].field_256 = arg4
    stor5[arg4].field_512 = arg1
    stor5[arg4].field_768 = arg2
    emit NewGame(arg3, arg4, arg5, address(arg1), arg2, arg4);
}

function surrender(bytes32 arg1) {
    require stor3[address(msg.sender)]
    require sha3(arg1) == stor5[arg1].field_256
    require not stor8[arg1]
    stor8[arg1] = 1
    call msg.sender with:
       funct Mask(32, 224, sha3('shift(address,uint256)')) >> 224
         gas gas_remaining - 25710 wei
        args stor5[arg1].field_512, stor5[arg1].field_769
    require ext_call.success
    emit Result(stor5[arg1].field_512, stor5[arg1].field_769, sha3(arg1));
}

function split(bytes32 arg1, uint8 arg2, uint256 arg3) {
    require stor3[address(msg.sender)]
    require arg3 == stor5[arg1].field_768
    require stor6[arg1].field_0 < 3
    stor6[arg1].field_0++
    if not stor6[arg1].field_0 <= stor6[arg1].field_0 + 1:
        idx = stor6[arg1].field_0 + 32 / 32
        while stor6[arg1].field_0 + 31 / 32 > idx:
            stor6[arg1][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor6[arg1][stor6[arg1].field_5].field_0 = stor6[arg1][stor6[arg1].field_5].field_0 and !(255 * 256^stor6[arg1].field_0) or 256^stor6[arg1].field_0 * arg2
    emit Split(arg2, arg1);
}

function checkDeck(bytes32 arg1, uint8[] arg2, bytes32 arg3) {
    mem[96] = arg2.length
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg2.length) + 128] = 0
    mem[(32 * arg2.length) + 160] = arg2.length
    idx = 0
    while uint8(idx) < arg2.length:
        require uint8(idx) < arg2.length
        require uint8(idx) < mem[(32 * arg2.length) + 160]
        mem[(32 * arg2.length) + uint8(idx) + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 8, 0, 5, ('var', 0))), 32))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('mem', ('range', ('add', 128, ('mask_shl', 8, 0, 5, ('var', 0))), 32))), 0) - 256
        idx = idx + 1
        continue 
    mem[(64 * arg2.length) + 192 len floor32(mem[(32 * arg2.length) + 160])] = mem[(32 * arg2.length) + 192 len floor32(mem[(32 * arg2.length) + 160])]
    mem[(64 * arg2.length) + floor32(mem[(32 * arg2.length) + 160]) + -(mem[(32 * arg2.length) + 160] % 32) + 224 len mem[(32 * arg2.length) + 160] % 32] = mem[(32 * arg2.length) + floor32(mem[(32 * arg2.length) + 160]) + -(mem[(32 * arg2.length) + 160] % 32) + 224 len mem[(32 * arg2.length) + 160] % 32]
    mem[mem[(32 * arg2.length) + 160] + (64 * arg2.length) + 192] = arg3
    if sha3(mem[(64 * arg2.length) + 192 len mem[(32 * arg2.length) + 160] + 32]) == stor5[arg1].field_0:
        return 1
    return 0
}



}
