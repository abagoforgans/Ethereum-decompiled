contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 4817]




// =====================  Runtime code  =====================


#
#  - sub_ff0c67f0(?)
#
uint8 blockDelay; offset 160
uint8 blockExpiration; offset 168
address developerAddress;
uint256 maxGamble;
uint256 minGamble;
address WINTOKENADDRESS;
uint256 emissionRate;
array of struct sub_c1e77c4a;
mapping of uint256 stor7;
mapping of uint8 stor8;

function minGamble() {
    return minGamble
}

function maxGamble() {
    return maxGamble
}

function emissionRate() {
    return emissionRate
}

function sub_c1e77c4a(?) {
    require arg1 < sub_c1e77c4a.length
    require sub_c1e77c4a[arg1].field_176 <= 5
    return sub_c1e77c4a[arg1].field_0, 
           bool(sub_c1e77c4a[arg1].field_160),
           bool(sub_c1e77c4a[arg1].field_168),
           sub_c1e77c4a[arg1].field_0,
           sub_c1e77c4a[arg1].field_256,
           sub_c1e77c4a[arg1].field_512,
           sub_c1e77c4a[arg1].field_768,
           sub_c1e77c4a[arg1].field_1024,
           sub_c1e77c4a[arg1].field_1280
}

function developer() {
    return developerAddress
}

function blockExpiration() {
    return blockExpiration
}

function blockDelay() {
    return blockDelay
}

function WINTOKENADDRESS() {
    return WINTOKENADDRESS
}

function sub_c5f329bf(?) payable {
  stop
}

function _fallback() payable {
    revert 
}

function spinTheWheel(address arg1) {
  stop
}

function sub_69cb86aa(?) {
    if arg1:
        if stor8[address(arg1)] <= 1:
            if stor8[address(arg1)] != 1:
                return 0
            if stor7[address(arg1)] < sub_c1e77c4a.length:
                if bool(sub_c1e77c4a[stor7[address(arg1)]].field_160) != 1:
                    if stor7[address(arg1)] < sub_c1e77c4a.length:
                        if block.number > sub_c1e77c4a[stor7[address(arg1)]].field_768 + blockDelay:
                            if block.number > sub_c1e77c4a[stor7[address(arg1)]].field_768 + blockExpiration:
                                return 1
                            if block.hash(sub_c1e77c4a[stor7[address(arg1)]].field_768 + blockDelay):
                                return 1
    else:
        if stor8[address(msg.sender)] <= 1:
            if stor8[address(msg.sender)] != 1:
                return 0
            if stor7[address(msg.sender)] < sub_c1e77c4a.length:
                if bool(sub_c1e77c4a[stor7[address(msg.sender)]].field_160) != 1:
                    if stor7[address(msg.sender)] < sub_c1e77c4a.length:
                        if block.number > sub_c1e77c4a[stor7[address(msg.sender)]].field_768 + blockDelay:
                            if block.number > sub_c1e77c4a[stor7[address(msg.sender)]].field_768 + blockExpiration:
                                return 1
                            if block.hash(sub_c1e77c4a[stor7[address(msg.sender)]].field_768 + blockDelay):
                                return 1
    revert 
}



}
