contract main {


// =======================  Init code  ======================


address stor1;

function _fallback() payable {
    stor1 = code.data[2656 len 20]
    return code.data[110 len 2534]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
address sub_4b005402Address;

function sub_4b005402(?) {
    return sub_4b005402Address
}

function _fallback() payable {
    revert 
}

function updateStatus(uint256 arg1, uint256 arg2) {
    if stor0[arg1].field_0:
        if stor0[arg1].field_256 == arg2:
            stor0[arg1].field_512 = 1
}

function sub_d3e47e25(?) {
    call sub_4b005402Address with:
       funct Mask(32, 224, sha3('pairWithNextContract()')) >> 224
         gas gas_remaining - 25050 wei
}

function create(uint256 arg1, uint256 arg2) {
    if msg.sender == sub_4b005402Address:
        if not stor0[arg1].field_512:
            stor0[arg1].field_0 = 1
            stor0[arg1].field_512 = 0
            stor0[arg1].field_256 = arg2
}

function sub_205a26fb(?) {
    if not stor0[arg1].field_0:
        mem[320] = mem[343 len 9]
        return Array(len=41, data='There is no letter of credit wit', 'h this id', mem[320])
    mem[320] = mem[344 len 8]
    return Array(len=40, data='There is a letter of credit with', ' this id', mem[320])
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

function checkStatus(uint256 arg1) {
    if stor0[arg1].field_0:
        if stor0[arg1].field_512:
            mem[256] = Mask(160, 48, 'Letter of credit is closed') >> 48, mem[282 len 6]
            return Array(len=26, data=mem[256])
    if not stor0[arg1].field_0:
        mem[320] = mem[343 len 9]
        return Array(len=41, data='There is no letter of credit wit', 'h this id', mem[320])
    mem[256] = Mask(128, 64, 'Letter of credit is open') >> 64, mem[280 len 8]
    return Array(len=24, data=mem[256])
}



}
