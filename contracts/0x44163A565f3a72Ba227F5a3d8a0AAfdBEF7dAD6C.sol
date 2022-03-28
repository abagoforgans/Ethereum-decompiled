contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - sub_31b16fee(?)
#  - members(uint256 arg1)
#  - getMember(uint256 arg1)
#
address stor0;
uint256 stor1;
mapping of uint256 memberId;
array of struct pks;

function memberId(address arg1) {
    return memberId[arg1]
}

function pks(uint256 arg1) {
    return pks[arg1][0 len pks[arg1].length].field_0
}

function kill() {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
    revert 
}

function getMemberCount() {
    return (stor1 - 1)
}

function changeOwner(address arg1) {
    if stor0 == msg.sender:
        stor0 = arg1
}

function getPK(uint256 arg1) {
    if stor0 != msg.sender:
        return ''
    mem[160] = pks[arg1].field_0
    idx = 160
    s = 0
    while pks[arg1].length + 128 > idx:
        mem[idx + 32] = pks[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(pks[arg1].length) + 160] = 32
    mem[ceil32(pks[arg1].length) + 192] = pks[arg1].length
    if pks[arg1].length:
        mem[ceil32(pks[arg1].length) + 224] = mem[160]
        mem[ceil32(pks[arg1].length) + 256 len floor32(pks[arg1].length - 1)] = mem[192 len floor32(pks[arg1].length - 1)]
    return Array(len=pks[arg1].length, data=mem[ceil32(pks[arg1].length) + 224 len pks[arg1].length])
}

function sub_3f8aaf90(?) {
    mem[128 len arg2.length] = arg2[all]
    if stor0 == msg.sender:
        pks[stor2[address(arg1)]].field_0 = (2 * arg2.length) + 1
        s = 0
        idx = 128
        while arg2.length + 128 > idx:
            pks[stor2[address(arg1)]][s].field_0 = mem[idx]
            s = s + 1
            idx = idx + 32
            continue 
        if pks[stor2[address(arg1)]].length + 31 / 32 > Mask(251, 0, arg2.length + 31) >> 5:
            pks[stor2[address(arg1)]][Mask(251, 0, arg2.length + 31) >> 5].field_0 = 0
            idx = (Mask(251, 0, arg2.length + 31) >> 5) + 1
            while pks[stor2[address(arg1)]].length + 31 / 32 > idx:
                pks[stor2[address(arg1)]][idx].field_0 = 0
                idx = idx + 1
                continue 
}



}
