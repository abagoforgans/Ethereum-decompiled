contract main {




// =====================  Runtime code  =====================


array of struct stor0;
address stor1;
array of uint256 stor2;
uint256 stor3;
uint256 stor4;
address stor5;
address stor6;
address stor7;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702948;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702949;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702950;

function _fallback() payable {
    revert
}

function History(uint256 arg1) {
    require arg1 < stor0.length
    mem[128] = stor[sha3((4 * arg1) + ('name', 'stor0', 0) + 1)].field_0
    idx = 128
    s = 0
    while stor[(4 * arg1) + ('name', 'stor0', 0) + 1].length + 96 > idx:
        mem[idx + 32] = stor[s + sha3((4 * arg1) + ('name', 'stor0', 0) + 1)].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor0[arg1].field_0), 
           Array(len=stor[(4 * arg1) + ('name', 'stor0', 0) + 1].length, data=mem[128 len stor[(4 * arg1) + ('name', 'stor0', 0) + 1].length]),
           stor0[arg1].field_512,
           stor0[arg1].field_768
}

function sub_4b906714(?) payable {
    mem[128 len arg3.length] = arg3[all]
    require tx.origin == stor7
    mem[ceil32(arg3.length) + 128 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
    if not arg3.length % 32:
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 132 len arg3.length - 4]
    else:
        mem[floor32(arg3.length) + ceil32(arg3.length) + 128] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        call arg1.mem[ceil32(arg3.length) + 128 len 4] with:
           value arg2 wei
             gas gas_remaining wei
            args mem[ceil32(arg3.length) + 132 len floor32(arg3.length) + 28]
    require ext_call.success
}

function AddMessage(address arg1, uint256 arg2, string arg3) {
    mem[128 len arg3.length] = arg3[all]
    stor1 = arg1
    stor4 = block.timestamp
    stor3 = arg2
    uint256(stor2[]) = Array(len=arg3.length, data=arg3[all])
    stor0.length++
    address(stor0[stor0.length].field_0) = stor1
    if 31 >= stor2.length:
        stor290D[stor0.length] = stor2.length
        idx = 0
        while stor[(4 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564].length + 31 / 32 > idx:
            stor[idx + sha3((4 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564)] = 0
            idx = idx + 1
            continue 
    else:
        stor290D[stor0.length] = Mask(255, 1, (256 * not bool(stor2.length)) - 1 and stor2.length) + 1
        if not Mask(255, 1, (256 * not bool(stor2.length)) - 1 and stor2.length):
            idx = 0
            while stor[(4 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564].length + 31 / 32 > idx:
                stor[idx + sha3((4 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564)] = 0
                idx = idx + 1
                continue 
        else:
            s = 0
            idx = 0
            while stor2.length + 31 / 32 > idx:
                stor[s + sha3((4 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564)] = uint256(stor2[idx])
                s = s + 1
                idx = idx + 1
                continue 
            idx = stor2.length + 31 / 32
            while stor[(4 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564].length + 31 / 32 > idx:
                stor[idx + sha3((4 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564)] = 0
                idx = idx + 1
                continue 
    stor290D[stor0.length] = stor3
    stor290D[stor0.length] = stor4
    if msg.sender == stor5:
        if stor7 != arg1:
            if stor6 != tx.origin:
                require 0 < arg3.length
                if 'C' == Mask(8, 248, mem[128]):
                    require arg2 <= 0
}



}
