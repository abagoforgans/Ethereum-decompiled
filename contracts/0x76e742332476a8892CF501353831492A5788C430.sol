contract main {


// =======================  Init code  ======================


address stor0;
address stor1;
uint256 stor2;

function _fallback() {
    stor0 = code.data[8051 len 20]
    stor1 = code.data[8083 len 20]
    stor2 = 0
    if not stor2 <= 0:
        mem[0] = 2
        idx = 0
        while sha3(2) + (7 * stor2) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            address(stor[idx + sha3(mem[0]) + 1]) = 0
            Mask(168, 0, stor[idx + sha3(mem[0]) + 2]) = 0
            address(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 4].length:
                mem[0] = idx + sha3(mem[0]) + 4
                s = sha3(idx + sha3(mem[0]) + 4)
                while sha3(idx + sha3(mem[0]) + 4) + (stor[idx + sha3(mem[0]) + 4].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 5].length:
                mem[0] = idx + sha3(mem[0]) + 5
                if sha3(idx + sha3(mem[0]) + 5) + (stor[idx + sha3(mem[0]) + 5].length + 31 / 32) > sha3(idx + sha3(mem[0]) + 5):
                    uint256(stor[sha3(idx + sha3(mem[0]) + 5)]) = 0
                    s = sha3(idx + sha3(mem[0]) + 5) + 1
                    while sha3(idx + sha3(mem[0]) + 5) + (stor[idx + sha3(mem[0]) + 5].length + 31 / 32) > s:
                        uint256(stor[s]) = 0
                        s = s + 1
                        continue 
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            idx = idx + 7
            continue 
    return code.data[420 len 7619]
}



// =====================  Runtime code  =====================


#
#  - createContractor(address arg1, address arg2, bool arg3, address arg4, string arg5, string arg6, bool arg7)
#
address passDaoAddress;
address projectCreatorAddress;
array of struct contractors;

function contractors(uint256 arg1) {
    require arg1 < contractors.length
    mem[384] = stor[sha3((7 * arg1) + ('name', 'contractors', 2) + 4)].field_0
    idx = 384
    s = 0
    while stor[(7 * arg1) + ('name', 'contractors', 2) + 4].length + 384 > idx + 32:
        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'contractors', 2) + 4)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(7 * arg1) + ('name', 'contractors', 2) + 4].length + (floor32(stor[(7 * arg1) + ('name', 'contractors', 2) + 4].length - 1) + -stor[(7 * arg1) + ('name', 'contractors', 2) + 4].length + 32 % 32) + 384] = stor[(7 * arg1) + ('name', 'contractors', 2) + 5].length
    mem[stor[(7 * arg1) + ('name', 'contractors', 2) + 4].length + (floor32(stor[(7 * arg1) + ('name', 'contractors', 2) + 4].length - 1) + -stor[(7 * arg1) + ('name', 'contractors', 2) + 4].length + 32 % 32) + 416] = stor[sha3((7 * arg1) + ('name', 'contractors', 2) + 5)].field_0
    idx = stor[(7 * arg1) + ('name', 'contractors', 2) + 4].length + (floor32(stor[(7 * arg1) + ('name', 'contractors', 2) + 4].length - 1) + -stor[(7 * arg1) + ('name', 'contractors', 2) + 4].length + 32 % 32) + 416
    s = 0
    while stor[(7 * arg1) + ('name', 'contractors', 2) + 4].length + (floor32(stor[(7 * arg1) + ('name', 'contractors', 2) + 4].length - 1) + -stor[(7 * arg1) + ('name', 'contractors', 2) + 4].length + 32 % 32) + stor[(7 * arg1) + ('name', 'contractors', 2) + 5].length + 416 > idx + 32:
        mem[idx + 32] = stor[s + sha3((7 * arg1) + ('name', 'contractors', 2) + 5)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return contractors[arg1].field_0, 
           contractors[arg1].field_256,
           contractors[arg1].field_512,
           bool(contractors[arg1].field_672),
           contractors[arg1].field_768,
           Array(len=stor[(7 * arg1) + ('name', 'contractors', 2) + 4].length, data=mem[384 len stor[(7 * arg1) + ('name', 'contractors', 2) + 4].length + (floor32(stor[(7 * arg1) + ('name', 'contractors', 2) + 4].length - 1) + -stor[(7 * arg1) + ('name', 'contractors', 2) + 4].length + 32 % 32) + stor[(7 * arg1) + ('name', 'contractors', 2) + 5].length + (floor32(stor[(7 * arg1) + ('name', 'contractors', 2) + 5].length - 1) + -stor[(7 * arg1) + ('name', 'contractors', 2) + 5].length + 32 % 32) + 32]),
           stor[(7 * arg1) + ('name', 'contractors', 2) + 4].length + (floor32(stor[(7 * arg1) + ('name', 'contractors', 2) + 4].length - 1) + -stor[(7 * arg1) + ('name', 'contractors', 2) + 4].length + 32 % 32) + 288,
           contractors[arg1].field_1536
}

function passDao() {
    return passDaoAddress
}

function projectCreator() {
    return projectCreatorAddress
}

function numberOfContractors() {
    return contractors.length
}

function _fallback() payable {
    revert 
}



}
