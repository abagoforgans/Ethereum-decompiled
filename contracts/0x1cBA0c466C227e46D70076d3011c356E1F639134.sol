contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = msg.value
    return code.data[40 len 1252]
}



// =====================  Runtime code  =====================


address richestAddress;
uint256 stor0;
uint256 mostSent;
mapping of uint256 stor2;
mapping of uint256 stor3;
mapping of uint256 memberId;
uint256 stor5;
array of address stor6;
array of address members;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986688;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986690;
array of struct stor111414077815863400510004064629973595961579173665589224203503662149373724986691;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986692;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986693;
array of uint256 stor111414077815863400510004064629973595961579173665589224203503662149373724986694;

function richest() {
    return address(richestAddress)
}

function memberId(address arg1) {
    return memberId[arg1]
}

function members(uint256 arg1) {
    require arg1 < stor5
    return members[arg1]
}

function mostSent() {
    return mostSent
}

function _fallback() payable {
  stop
}

function sub_46232d21(?) {
    stor3[arg1[all]] = 100
    return 1
}

function becomeRichest() payable {
    if msg.value <= mostSent:
        return 0
    stor2[address(stor0)] += msg.value
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    mostSent = msg.value
    return 1
}

function withdraw() {
    stor2[address(msg.sender)] = 0
    call msg.sender with:
       value stor2[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        return 0
    return 1
}

function proposals(uint256 arg1) {
    require arg1 < stor6.length
    mem[416] = stor[sha3((10 * arg1) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2bf)]
    idx = 416
    s = 0
    while stor[(10 * arg1) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2bf].length + 416 > idx + 32:
        mem[idx + 32] = stor[s + sha3((10 * arg1) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2bf) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    return stor6[arg1], 
           storF652[arg1],
           Array(len=stor[(10 * arg1) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2bf].length, data=mem[416 len stor[(10 * arg1) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2bf].length + (floor32(stor[(10 * arg1) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2bf].length - 1) + -stor[(10 * arg1) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2bf].length + 32 % 32)]),
           storF652[arg1],
           bool(uint8(storF652[arg1].field_0)),
           bool(uint8(storF652[arg1].field_8)),
           storF652[arg1],
           storF652[arg1],
           storF652[arg1]
}



}
