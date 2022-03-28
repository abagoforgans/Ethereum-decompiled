contract main {


// =======================  Init code  ======================


#
#  - _fallback()
#


// =====================  Runtime code  =====================


#
#  - sub_02351be3(?)
#
address owner;
address signerAddress;
array of uint256 sub_c8a663ec;
mapping of struct record;

function signer() {
    return signerAddress
}

function record(address arg1) {
    mem[384] = record[arg1][1].field_0
    idx = 384
    s = 0
    while record[arg1][1].length + 384 > idx + 32:
        mem[idx + 32] = record[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return record[arg1].field_0, 
           Array(len=record[arg1][1].length, data=mem[384 len record[arg1][1].length + (floor32(record[arg1][1].length - 1) + -record[arg1][1].length + 32 % 32)]),
           record[arg1].field_512,
           record[arg1].field_768,
           record[arg1].field_1024,
           record[arg1].field_1280,
           record[arg1].field_1536,
           record[arg1].field_1792
}

function owner() {
    return owner
}

function sub_c8a663ec(?) {
    return sub_c8a663ec[0 len sub_c8a663ec.length]
}

function destroy() payable {
    selfdestruct(owner)
}

function _fallback() payable {
    revert
}

function sub_579b119a(?) payable {
    require msg.sender == owner
    if arg2 != 1:
        call owner with:
           value record[address(arg1)].field_1536 wei
             gas 2300 * is_zero(value) wei
    else:
        call arg1 with:
           value record[address(arg1)].field_1536 wei
             gas 2300 * is_zero(value) wei
    require ext_call.success
    record[address(arg1)].field_1536 = 0
}



}
