contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor5;
uint256 stor6;
uint256 stor36B6;

function _fallback() {
    stor0 = msg.sender
    mem[96] = 0
    mem[128] = 1000 * 10^18
    mem[160] = 4000 * 10^18
    mem[192] = 10000 * 10^18
    stor6 = 4
    s = 0xf652222313e28459528d920b65115c16c04f3efc82aaedc97be59f3f377c0d3f
    idx = 96
    while 224 > idx:
        Mask(80, 0, stor[s].field_0) = mem[idx + 22 len 10]
        Mask(176, 0, stor[s].field_80) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = -4378011421452794913566920378714311891690811000051339835953921858539404653245
    while stor6 - 0x9addddcec1d7ba6ad726df49aeea3e93fb0c1037d551236841a60c0c883f2c1 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    mem[224] = 15
    mem[256] = 14
    mem[288] = 13
    mem[320] = 12
    stor5 = 4
    s = 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0
    idx = 224
    while 352 > idx:
        uint8(stor[s].field_0) = mem[idx + 31 len 1]
        Mask(248, 0, stor[s].field_8) = 0
        s = s + 1
        idx = idx + 32
        continue 
    if stor5 + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db4:
        stor36B6 = 0
        idx = 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db5
        while stor5 + 0x36b6384b5eca791c62761152d0c79bb0604c104a5fb6f4eb0703f3154bb3db0 > idx:
            uint256(stor[idx].field_0) = 0
            idx = idx + 1
            continue 
    return code.data[400 len 2300]
}



// =====================  Runtime code  =====================


#
#  - _fallback()
#


}
