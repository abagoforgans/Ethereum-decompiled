contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = code.data[2757 len 32]
    return code.data[55 len 2702]
}



// =====================  Runtime code  =====================


address tokenAddress;
mapping of uint8 stor99;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702949;
array of struct stor18569430475105882587588266137607568536673111973893317399460219858819262702950;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702954;

function tokenAddress() payable {
    return tokenAddress
}

function _fallback() payable {
  stop
}

function vote(uint256 arg1, bool arg2) payable {
    require arg1 < stor0.length
    require bool(uint8(stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e56b][address(msg.sender)])) != 1
    require bool(uint8(stor290D[arg1].field_0)) != 1
    require block.timestamp <= stor290D[arg1]
    uint8(stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e56b][address(msg.sender)]) = 1
    revert 
}

function executeProposal(uint256 arg1) payable {
    mem[64] = 96
    require arg1 < stor0.length
    require block.timestamp >= uint256(stor0[arg1].field_512)
    require not uint8(stor0[arg1].field_768)
    s = 0
    s = 0
    idx = 0
    s = 0
    while idx < uint256(stor0[arg1].field_1024):
        mem[0] = (9 * arg1) + sha3(0) + 4
        mem[100] = address(stor[idx + sha3((9 * arg1) + ('name', 'stor0', 0) + 4)].field_0)
        call tokenAddress.balanceOf(address rg1) with:
             gas gas_remaining - 25050 wei
            args address(stor[idx + sha3((9 * arg1) + ('name', 'stor0', 0) + 4)].field_0)
        mem[96] = ext_call.return_data[0]
        require ext_call.success
        if bool(uint8(stor[idx + sha3((9 * arg1) + ('name', 'stor0', 0) + 4)].field_160)) != 1:
            s = ext_call.return_data[0]
            s = idx + sha3((9 * arg1) + sha3(0) + 4)
            idx = idx + 1
            s = s
            continue 
        s = ext_call.return_data[0]
        s = idx + sha3((9 * arg1) + sha3(0) + 4)
        idx = idx + 1
        s = ext_call.return_data[0] + s
        continue 
    uint8(stor0[arg1].field_768) = 1
    if s > 0:
        mem[0] = (9 * arg1) + sha3(0) + 6
        mem[96] = uint256(stor[sha3((9 * arg1) + ('name', 'stor0', 0) + 6)].field_0)
        idx = mem[64]
        s = 0
        while stor[(9 * arg1) + ('name', 'stor0', 0) + 6].length + 96 > idx + 32:
            mem[idx + 32] = uint256(stor[s + sha3(mem[0]) + 1])
            idx = idx + 32
            s = s + 1
            continue 
        call address(stor0[arg1].field_0).mem[mem[64] len 4] with:
           value 10^18 * uint256(stor0[arg1].field_256) wei
             gas gas_remaining - 34050 wei
            args mem[mem[64] + 4 len stor[(9 * arg1) + ('name', 'stor0', 0) + 6].length + (floor32(stor[(9 * arg1) + ('name', 'stor0', 0) + 6].length - 1) + -stor[(9 * arg1) + ('name', 'stor0', 0) + 6].length + 32 % 32) + -mem[64] + 92]
        require ext_call.success
        uint8(stor0[arg1].field_776) = 1
}

function sub_24a7f211(?) payable {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        mem[0] = 0
        idx = (9 * stor0.length) + 9
        while sha3(0) + (9 * stor0.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            uint16(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            mem[0] = idx + sha3(mem[0]) + 4
            s = sha3(idx + sha3(mem[0]) + 4)
            while sha3(idx + sha3(mem[0]) + 4) + uint256(stor[idx + sha3(mem[0]) + 4]) > s:
                Mask(168, 0, stor[s]) = 0
                s = s + 1
                continue 
            uint256(stor[idx + sha3(mem[0]) + 5]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 5].length:
                mem[0] = idx + sha3(mem[0]) + 5
                s = sha3(idx + sha3(mem[0]) + 5)
                while sha3(idx + sha3(mem[0]) + 5) + (stor[idx + sha3(mem[0]) + 5].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 6].length:
                mem[0] = idx + sha3(mem[0]) + 6
                s = sha3(idx + sha3(mem[0]) + 6)
                while sha3(idx + sha3(mem[0]) + 6) + (stor[idx + sha3(mem[0]) + 6].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 7]) = 0
            idx = idx + 9
            continue 
    require stor0.length < stor0.length
    uint256(stor0[stor0.length].field_0) = arg1 or Mask(96, 160, uint256(stor0[stor0.length].field_0))
    stor290D[stor0.length] = arg2
    stor290D[stor0.length] = block.timestamp + (60 * arg3)
    uint256(stor[sha3((9 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568)][]) = Array(len=arg4.length, data=arg4[all])
    stor290D[stor0.length] = sha3(address(arg1), arg2, arg5[all])
    uint8(stor290D[stor0.length].field_0) = 0
    uint8(stor290D[stor0.length].field_8) = 0
    uint256(stor[sha3((9 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e569)][]) = Array(len=arg5.length, data=arg5[all])
    return stor0.length
}

function proposals(uint256 arg1) payable {
    require arg1 < stor0.length
    mem[384] = uint256(stor[sha3((9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568)])
    idx = 384
    s = 0
    while stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568].length + 384 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568].length + (floor32(stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568].length - 1) + -stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568].length + 32 % 32) + 384] = stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e569].length
    mem[stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568].length + (floor32(stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568].length - 1) + -stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568].length + 32 % 32) + 416] = uint256(stor[sha3((9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e569)])
    idx = stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568].length + (floor32(stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568].length - 1) + -stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568].length + 32 % 32) + 416
    s = 0
    while stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568].length + (floor32(stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568].length - 1) + -stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568].length + 32 % 32) + stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e569].length + 416 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e569) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor0[arg1].field_0), 
           stor290D[arg1],
           stor290D[arg1],
           bool(uint8(stor290D[arg1].field_0)),
           bool(uint8(stor290D[arg1].field_8)),
           Array(len=stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568].length, data=mem[384 len stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568].length + (floor32(stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568].length - 1) + -stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568].length + 32 % 32) + stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e569].length + (floor32(stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e569].length - 1) + -stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e569].length + 32 % 32) + 32]),
           stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568].length + (floor32(stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568].length - 1) + -stor[(9 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e568].length + 32 % 32) + 288,
           stor290D[arg1]
}



}
