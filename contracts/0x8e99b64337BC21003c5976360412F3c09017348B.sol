contract main {


// =======================  Init code  ======================


address stor0;
array of uint256 stor1;
array of uint256 stor2;
uint8 stor3;

function _fallback() payable {
    stor0 = 0xb0719bdac19fd64438450d3b5aedd3a4f100cba6
    mem[128] = 0x191f8e6b533ae64600273df1ecb821891e1c649326edfc7921aeea37c1960586
    stor1.length = 65
    s = 0
    idx = 128
    while 160 > idx:
        stor1[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 1
    while stor1.length + 31 / 32 > idx:
        stor1[idx] = 0
        idx = idx + 1
        continue 
    mem[192] = 'all funds will be returned to ma'
    mem[224] = 'ss team after identity verificat'
    mem[256] = 'ion'
    stor2.length = 135
    s = 0
    idx = 192
    while 259 > idx:
        stor2[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 3
    while stor2.length + 31 / 32 > idx:
        stor2[idx] = 0
        idx = idx + 1
        continue 
    stor3 = 0
    require not msg.value
    return code.data[670 len 1063]
}



// =====================  Runtime code  =====================


address whitehatAddress;
array of uint256 massTeamMsgHash;
array of uint256 dontPanic;
uint8 stor3;

function whitehat() {
    return whitehatAddress
}

function signedByWhiteHat() {
    return bool(stor3)
}

function massTeamMsgHash() {
    return massTeamMsgHash[0 len massTeamMsgHash.length]
}

function dontPanic() {
    return dontPanic[0 len dontPanic.length]
}

function _fallback() {
    require msg.sender == whitehatAddress
    stor3 = 1
}



}
