contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() {
    stor0 = msg.sender
    stor1 = code.data[3433 len 20]
    stor2 = code.data[3453 len 32]
    return code.data[208 len 3213]
}



// =====================  Runtime code  =====================


address owner;
address treasuryAddress;
uint256 fee;

function count() {
    return stor4.length
}

function treasury() {
    return treasuryAddress
}

function owner() {
    return owner
}

function fee() {
    return fee
}

function _fallback() payable {
    revert
}

function paid(address arg1) {
    return (stor3[address(arg1)].field_256 > 0)
}

function setOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function setTreasury(address arg1) {
    require msg.sender == owner
    treasuryAddress = arg1
}

function payer(address arg1) {
    if stor3[address(arg1)].field_512:
        mem[192] = stor3[address(arg1)][2].field_0
        idx = 192
        s = 0
        while (32 * stor3[address(arg1)].field_512) + 160 > idx:
            mem[idx + 32] = stor3[address(arg1)][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
    mem[(32 * stor3[address(arg1)].field_512) + 288 len floor32(stor3[address(arg1)].field_512)] = mem[192 len floor32(stor3[address(arg1)].field_512)]
    return stor3[address(arg1)].field_256, 
           Array(len=stor3[address(arg1)].field_512, data=mem[192 len floor32(stor3[address(arg1)].field_512)], mem[(32 * stor3[address(arg1)].field_512) + floor32(stor3[address(arg1)].field_512) + 288 len (32 * stor3[address(arg1)].field_512) - floor32(stor3[address(arg1)].field_512)])
}

function sub_63d2655a(?) {
    mem[128] = 0
    if arg1 + arg2 <= stor4.length:
        idx = 0
        while idx < arg2:
            require idx + arg1 < stor4.length
            mem[0] = 4
            require idx < arg2
            mem[(32 * idx) + 192] = address(stor[idx + arg1 + ('name', 'stor4', 4)])
            idx = idx + 1
            continue 
        mem[(32 * arg2 + 1) + 160] = 32
        mem[(32 * arg2 + 1) + 224 len floor32(arg2)] = mem[192 len floor32(arg2)]
        return Array(len=arg2, data=mem[192 len floor32(arg2)], mem[(32 * arg2 + 1) + floor32(arg2) + 224 len (32 * arg2) - floor32(arg2)]), 
    mem[160] = stor4.length - arg1
    idx = 0
    while idx < stor4.length - arg1:
        require idx + arg1 < stor4.length
        mem[0] = 4
        require idx < mem[160]
        mem[(32 * idx) + 192] = address(stor[idx + arg1 + ('name', 'stor4', 4)])
        idx = idx + 1
        continue 
    mem[(32 * stor4.length + -arg1 + 1) + 160] = 32
    mem[(32 * stor4.length + -arg1 + 1) + 192] = mem[160]
    mem[(32 * stor4.length + -arg1 + 1) + 224 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
    return 32, mem[(32 * stor4.length + -arg1 + 1) + 192 len (32 * mem[160]) + 32]
}

function pay(address arg1) payable {
    require arg1
    require msg.value == fee
    if stor3[address(arg1)].field_512:
        mem[160] = stor3[address(arg1)][2].field_0
        idx = 160
        s = 0
        while (32 * stor3[address(arg1)].field_512) + 128 > idx:
            mem[idx + 32] = stor3[address(arg1)][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
    if not stor3[address(arg1)].field_256:
        stor3[address(arg1)].field_0 = stor4.length
        stor4.length++
        if not stor4.length <= stor4.length + 1:
            idx = stor4.length + 1
            while stor4.length > idx:
                uint256(stor4[idx]) = 0
                idx = idx + 1
                continue 
        address(stor4[stor4.length]) = arg1
    idx = 0
    s = 0
    while idx < stor3[address(arg1)].field_512:
        require idx < stor3[address(arg1)].field_512
        if mem[(32 * idx) + 172 len 20] != msg.sender:
            idx = idx + 1
            s = s
            continue 
        idx = idx + 1
        s = 1
        continue 
    if not s:
        stor3[address(arg1)].field_512++
        if not stor3[address(arg1)].field_512 <= stor3[address(arg1)].field_512 + 1:
            idx = stor3[address(arg1)].field_512 + 1
            while stor3[address(arg1)].field_512 > idx:
                stor3[address(arg1)][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
        stor[stor3[address(arg1)].field_512 + ('array', 2, ('map', ('mask_shl', 160, 0, 0, ('param', 'arg1')), ('name', 'stor3', 3)))].field_0 = msg.sender
    stor3[address(arg1)].field_256++
    emit Paid(arg1);
    call treasuryAddress with:
       value msg.value wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
