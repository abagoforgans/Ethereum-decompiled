contract main {


// =======================  Init code  ======================


uint256 stor1;

function _fallback() payable {
    stor1 = 0
    return code.data[26 len 1035]
}



// =====================  Runtime code  =====================


array of address stor0;
uint256 calculatedTo;
array of address stor18569430475105882587588266137607568536673111973893317399460219858819262702938;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702949;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702950;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702951;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702952;

function calculatedTo() payable {
    return calculatedTo
}

function sqrt(uint256 arg1) payable {
    if arg1 > stor0.length + 1:
        return 0
    require arg1 < stor0.length
    return stor290D[arg1]
}

function masterCalculator(uint256 arg1) payable {
    require arg1 < stor0.length
    mem[224] = stor[sha3((3 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564)]
    idx = 224
    s = 0
    while stor[(3 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564].length + 224 > idx + 32:
        mem[idx + 32] = stor[s + sha3((3 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    return stor0[arg1], 
           Array(len=stor[(3 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564].length, data=mem[224 len stor[(3 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564].length + (floor32(stor[(3 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564].length - 1) + -stor[(3 * arg1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e564].length + 32 % 32)]),
           stor290D[arg1]
}

function _fallback() payable {
    if 10^15 == msg.value:
        if eth.balance(this.address) > 2 * 10^15:
            require stor0.length + 1 < stor0.length
            stor290D[stor0.length] = msg.sender or Mask(96, 160, stor290D[stor0.length])
            stor290D[stor0.length] = 'masterly calculated: *'
            idx = 0
            while stor[(3 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e567].length + 31 / 32 > idx:
                stor[idx + sha3((3 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e567)] = 0
                idx = idx + 1
                continue 
            calculatedTo += 100 * 10^18
            s = calculatedTo + 100000000000000000001 / 2
            t = calculatedTo + 100 * 10^18
            while s < t:
                s = s + (calculatedTo + 100 * 10^18 / s) / 2
                t = s
                continue 
            require stor0.length + 1 < stor0.length
            stor290D[stor0.length] = t
            if stor0.length > 3:
                require stor0.length - 3 < stor0.length
                call stor290D[stor0.length] with:
                   value 2 * 10^15 wei
                     gas 0 wei
}



}
