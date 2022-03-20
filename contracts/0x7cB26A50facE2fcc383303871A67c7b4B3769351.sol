contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = 0
    return code.data[23 len 1445]
}



// =====================  Runtime code  =====================


uint256 stor0;
uint256 sub_5e02eb7d;
mapping of uint256 stor2;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702949;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702952;

function sub_5e02eb7d(?) payable {
    return sub_5e02eb7d
}

function sqrt(uint256 arg1) payable {
    if arg1 > stor0 + 1:
        return 0
    require arg1 < stor0
    return stor290D[arg1]
}

function changeName(string arg1) payable {
    if stor2[address(msg.sender)] != 0:
        require stor2[address(msg.sender)] < stor0
        uint256(stor[sha3(code.data[1413 len 32] + (3 * stor2[address(msg.sender)]) + 1)][].field_0) = Array(len=arg1.length, data=arg1[all])
}

function masterCalculator(uint256 arg1) payable {
    require arg1 < stor0
    mem[224] = uint256(stor[sha3((3 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564)].field_0)
    idx = 224
    s = 0
    while stor[(3 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564].length + 224 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((3 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564) + 1].field_0)
        idx = idx + 32
        s = s + 1
        continue 
    return address(stor[(3 * arg1) + code.data[1413 len 32]].field_0), 
           Array(len=stor[(3 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564].length, data=mem[224 len stor[(3 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564].length + (floor32(stor[(3 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564].length - 1) + -stor[(3 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564].length + 32 % 32)]),
           stor290D[arg1]
}

function _fallback() payable {
    if 10^15 == msg.value:
        if eth.balance(this.address) > 2 * 10^15:
            require stor0 != 0
            require stor0 + 1 < stor0
            uint256(stor[code.data[1413 len 32] + (3 * stor0) + 3].field_0) = msg.sender or Mask(96, 160, uint256(stor[code.data[1413 len 32] + (3 * stor0) + 3].field_0))
            bool(stor[code.data[1413 len 32] + (3 * stor0) + 4].field_0) = 0
            uint255(stor[code.data[1413 len 32] + (3 * stor0) + 4].field_1) = 21
            Mask(248, 0, stor[code.data[1413 len 32] + (3 * stor0) + 4].field_8) = 'masterly calculated: ' / 256
            idx = 0
            while stor[code.data[1413 len 32] + (3 * stor0) + 4].length + 31 / 32 > idx:
                uint256(stor[idx + sha3(code.data[1413 len 32] + (3 * stor0) + 4)].field_0) = 0
                idx = idx + 1
                continue 
            sub_5e02eb7d += 100 * 10^18
            s = sub_5e02eb7d + 100000000000000000001 / 2
            t = sub_5e02eb7d + 100 * 10^18
            while s < t:
                s = s + (sub_5e02eb7d + 100 * 10^18 / s) / 2
                t = s
                continue 
            require stor0 + 1 < stor0
            stor290D[stor0] = t
            stor2[address(msg.sender)] = stor0 + 1
            sub_5e02eb7d++
            if stor0 > 3:
                require stor0 - 3 < stor0
                call address(stor[code.data[1413 len 32] + (3 * stor0) - 9].field_0) with:
                   value 2 * 10^15 wei
                     gas 0 wei
}



}
