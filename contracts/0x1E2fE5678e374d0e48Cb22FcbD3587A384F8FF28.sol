contract main {


// =======================  Init code  ======================


address stor2;

function _fallback() payable {
    stor2 = code.data[1811 len 20]
    return code.data[110 len 1689]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
address sub_39e36016Address;

function sub_39e36016(?) {
    return sub_39e36016Address
}

function _fallback() payable {
    revert 
}

function sub_0f2b8bcf(?) {
    sub_39e36016Address = msg.sender
}

function create(uint256 arg1, uint256 arg2) {
    if not stor0[arg1].field_0:
        stor0[arg1].field_0 = 1
        stor0[arg1].field_256 = arg2
}

function sub_17e5fda6(?) {
    if stor0[arg1].field_0:
        call sub_39e36016Address with:
           funct Mask(32, 224, sha3('create(uint256,uint256)')) >> 224
             gas gas_remaining - 25050 wei
            args arg1, stor0[arg1].field_256
}

function sub_205a26fb(?) {
    if not stor0[arg1].field_0:
        mem[256] = Mask(192, 32, 'Letter of credit not created') >> 32, mem[284 len 4]
        return Array(len=28, data=mem[256])
    mem[256] = Mask(128, 64, 'Letter of credit created') >> 64, mem[280 len 8]
    return Array(len=24, data=mem[256])
}

function sub_632f8449(?) {
    if not stor0[arg1].field_0:
        mem[256] = mem[280 len 8]
        return Array(len=8, data=mem[256])
    if stor0[arg1].field_256 == arg2:
        mem[256] = Mask(144, 56, 'Correct id and hash value') >> 56, mem[281 len 7]
        return Array(len=25, data=mem[256])
    mem[256] = mem[272 len 16]
    return Array(len=16, data=mem[256])
}



}
