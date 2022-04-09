contract main {


// =======================  Init code  ======================


array of uint256 stor0;
address stor1;
array of uint256 stor2;

function _fallback() {
    mem[96 len -2275] = code.data[2754 len -2275]
    mem[64] = -2179
    stor1 = mem[108 len 20]
    stor0[] = Array(len=mem[mem[128] + 96], data=mem[mem[128] + 128 len mem[mem[128] + 96]])
    stor2.length = mem[mem[160] + 96]
    if not mem[mem[160] + 96]:
        idx = 0
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    else:
        s = 0
        idx = mem[160] + 128
        while mem[160] + (32 * mem[mem[160] + 96]) + 128 > idx:
            stor2[s] = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, (32 * mem[mem[160] + 96]) + 31) >> 5
        while stor2.length > idx:
            stor2[idx] = 0
            idx = idx + 1
            continue 
    return code.data[479 len 2275]
}



// =====================  Runtime code  =====================


#
#  - fund()
#
array of uint256 name;
address owner;
array of uint256 recipients;
mapping of uint256 sub_c69507dd;

function name() {
    return name[0 len name.length]
}

function owner() {
    return owner
}

function sub_c69507dd(?) {
    return sub_c69507dd[arg1]
}

function recipients(uint256 arg1) {
    require arg1 < recipients.length
    return recipients[arg1]
}

function close() {
    require msg.sender == owner
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function withdraw(bytes32 arg1, address arg2) {
    require msg.sender == owner
    hash = sha256hash(arg1) 
    require sha256hash.result
    require sub_c69507dd[hash] > 0
    emit Withdraw(hash, sub_c69507dd[hash]);
    sub_c69507dd[hash] = 0
    call arg2 with:
       value sub_c69507dd[hash] wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}



}
