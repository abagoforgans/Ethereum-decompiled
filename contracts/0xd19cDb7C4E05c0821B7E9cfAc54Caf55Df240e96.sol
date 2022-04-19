contract main {


// =======================  Init code  ======================


const _fallback = code.data[33 len 1768]




// =====================  Runtime code  =====================


array of struct stor0;
mapping of struct donationBoxes;

function donationBoxes(bytes32 arg1) {
    return address(donationBoxes[arg1].field_0), 
           uint256(donationBoxes[arg1].field_256),
           uint256(donationBoxes[arg1].field_512),
           uint256(donationBoxes[arg1].field_768),
           bool(uint8(donationBoxes[arg1].field_1024))
}

function _fallback() payable {
    revert
}

function claimId(bytes32 arg1, uint256 arg2) {
    require not uint8(donationBoxes[arg1].field_1024)
    address(donationBoxes[arg1].field_0) = msg.sender
    uint256(donationBoxes[arg1].field_256) = arg2
    uint256(donationBoxes[arg1].field_512) = 0
    uint256(donationBoxes[arg1].field_768) = 0
    uint8(donationBoxes[arg1].field_1024) = 1
}

function transferDonations(bytes32 arg1, address arg2) {
    require address(donationBoxes[arg1].field_0) == msg.sender
    require uint8(donationBoxes[arg1].field_1024)
    require uint256(donationBoxes[arg1].field_768) > 0
    call arg2 with:
       value uint256(donationBoxes[arg1].field_768) wei
         gas 2300 * is_zero(value) wei
    require ext_call.success
}

function donations(bytes32 arg1, uint256 arg2) {
    require arg2 < uint256(stor0[arg1].field_0)
    mem[256] = uint256(stor[sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3)].field_0)
    idx = 256
    s = 0
    while stor[(4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor0[arg1][arg2].field_0), 
           uint256(stor0[arg1][arg2].field_256),
           uint256(stor0[arg1][arg2].field_512),
           Array(len=stor[(4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length, data=mem[256 len stor[(4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length + (floor32(stor[(4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length - 1) + -stor[(4 * arg2) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3].length + 32 % 32)])
}

function donate(bytes32 arg1, bytes32 arg2, bytes arg3) payable {
    require uint8(donationBoxes[arg1].field_1024)
    require msg.value >= uint256(donationBoxes[arg1].field_256)
    uint256(stor0[arg1].field_0)++
    if not uint256(stor0[arg1].field_0) <= uint256(stor0[arg1].field_0) + 1:
        mem[0] = sha3(arg1, 0)
        idx = 4 * uint256(stor0[arg1].field_0) + 1
        while sha3(sha3(arg1, 0)) + (4 * uint256(stor0[arg1].field_0)) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 3].length:
                mem[0] = idx + sha3(mem[0]) + 3
                s = sha3(idx + sha3(mem[0]) + 3)
                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 4
            continue 
    address(stor0[arg1][uint256(stor0[arg1].field_0)].field_0) = msg.sender
    uint256(stor0[arg1][uint256(stor0[arg1].field_0)].field_256) = msg.value
    uint256(stor0[arg1][uint256(stor0[arg1].field_0)].field_512) = arg2
    uint256(stor[sha3((4 * uint256(stor0[arg1].field_0)) + ('map', ('param', 'arg1'), ('name', 'stor0', 0)) + 3)][].field_0) = Array(len=arg3.length, data=arg3[all])
    require msg.value + uint256(donationBoxes[arg1].field_768) >= uint256(donationBoxes[arg1].field_768)
    uint256(donationBoxes[arg1].field_768) += msg.value
    require uint256(donationBoxes[arg1].field_512) + 1 >= uint256(donationBoxes[arg1].field_512)
    uint256(donationBoxes[arg1].field_512)++
}



}
