contract main {


// =======================  Init code  ======================


address stor2;

function _fallback() {
    stor2 = code.data[2305 len 20]
    return code.data[116 len 2177]
}



// =====================  Runtime code  =====================


mapping of struct stor0;
address sub_39e36016Address;
address stor2;

function sub_39e36016(?) {
    return sub_39e36016Address
}

function close() {
    if stor2 != msg.sender:
    selfdestruct(stor2)
}

function _fallback() payable {
    revert 
}

function sub_0f2b8bcf(?) {
    if tx.origin == stor2:
        sub_39e36016Address = msg.sender
}

function create(bytes32 arg1, bytes32 arg2) {
    if msg.sender == stor2:
        if not stor0[arg1].field_0:
            stor0[arg1].field_0 = 1
            stor0[arg1].field_256 = arg2
}

function sub_8fe87ffa(?) {
    if msg.sender == stor2:
        if stor0[arg1].field_0:
            call sub_39e36016Address with:
               funct Mask(32, 224, sha3('create(bytes32,bytes32)')) >> 224
                 gas gas_remaining - 25050 wei
                args arg1, stor0[arg1].field_256
}

function checkId(bytes32 arg1) {
    if not stor0[arg1].field_0:
        mem[320] = mem[343 len 9]
        return Array(len=41, data='There is no letter of credit wit', 'h this id', mem[320])
    mem[320] = mem[344 len 8]
    return Array(len=40, data='There is a letter of credit with', ' this id', mem[320])
}

function sub_db6fb225(?) {
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
