contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
mapping of uint256 stor4;
array of struct stor5;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = msg.value
    if 0 == stor4[address(msg.sender)]:
        stor5.length++
        if not stor5.length <= stor5.length + 1:
            idx = stor5.length + 1
            while stor5.length > idx:
                stor5[idx].field_0 = 0
                idx = idx + 1
                continue 
        require stor5.length < stor5.length
        stor5[stor5.length].field_0 = stor5[stor5.length].field_160
    return code.data[202 len 1953]
}



// =====================  Runtime code  =====================


address richestAddress;
uint256 stor0;
array of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 memberId;
array of struct stor5;
array of struct stor6;
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
    require arg1 < stor5.length
    return members[arg1]
}

function mostSent() {
    return stor1.length
}

function _fallback() payable {
  stop
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

function becomeRichest() payable {
    if msg.value <= stor1.length:
        return 0
    stor2[address(stor0)] += msg.value
    uint256(stor0) = msg.sender or Mask(96, 160, uint256(stor0))
    stor1.length = msg.value
    return 1
}

function sub_029d010d(?) {
    if 0 == memberId[address(msg.sender)]:
        stor5.length++
        if not stor5.length <= stor5.length + 1:
            idx = stor5.length + 1
            while stor5.length > idx:
                address(stor5[idx].field_0) = 0
                idx = idx + 1
                continue 
        require stor5.length < stor5.length
        uint256(stor5[stor5.length].field_0) = Mask(96, 0, stor5[stor5.length].field_160)
}

function proposals(uint256 arg1) {
    require arg1 < stor6.length
    mem[416] = uint256(stor[sha3((10 * arg1) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2bf)])
    idx = 416
    s = 0
    while stor[(10 * arg1) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2bf].length + 416 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((10 * arg1) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2bf) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor6[arg1].field_0), 
           storF652[arg1],
           Array(len=stor[(10 * arg1) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2bf].length, data=mem[416 len stor[(10 * arg1) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2bf].length + (floor32(stor[(10 * arg1) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2bf].length - 1) + -stor[(10 * arg1) - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2bf].length + 32 % 32)]),
           storF652[arg1],
           bool(uint8(storF652[arg1].field_0)),
           bool(uint8(storF652[arg1].field_8)),
           storF652[arg1],
           storF652[arg1],
           storF652[arg1]
}

function sub_de68e593(?) {
    stor6.length++
    if not stor6.length <= stor6.length + 1:
        mem[0] = 6
        idx = (10 * stor6.length) + 10
        while sha3(6) + (10 * stor6.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint16(stor[idx + sha3(mem[0]) + 4]) = 0
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            uint256(stor[idx + sha3(mem[0]) + 7]) = 0
            uint256(stor[idx + sha3(mem[0]) + 8]) = 0
            mem[0] = idx + sha3(mem[0]) + 8
            s = sha3(mem[0])
            while sha3(idx + sha3(mem[0]) + 8) + (2 * uint256(stor[idx + sha3(mem[0]) + 8])) > s:
                Mask(168, 0, stor[s]) = 0
                stor1[s] = 0
                if 31 < stor[s + 1].length:
                    mem[0] = s + 1
                    t = sha3(s + 1)
                    while sha3(s + 1) + (stor[s + 1].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                s = s + 2
                continue 
            idx = idx + 10
            continue 
    require stor6.length < stor6.length
    uint256(stor6[stor6.length].field_0) = arg1 or Mask(96, 160, uint256(stor6[stor6.length].field_0))
    uint256(stor6[stor6.length].field_256) = arg2
    uint256(stor[sha3((10 * stor6.length) + ('name', 'stor6', 6) + 2)][].field_0) = Array(len=arg3.length, data=arg3[all])
    uint256(stor6[stor6.length].field_768) = block.timestamp + 600
    uint16(stor6[stor6.length].field_1024) = 0
    uint256(stor6[stor6.length].field_1280) = 0
    return stor6.length
}



}
