contract main {


// =======================  Init code  ======================


const _fallback = code.data[18 len 340]




// =====================  Runtime code  =====================


array of struct stor0;

function _fallback() payable {
    mem[64] = 96
    if not calldata.size:
        idx = 0
        while idx < 10:
            _12 = mem[64]
            mem[64] = mem[64] + 64
            mem[_12] = 10
            mem[_12 + 32] = 'Bwwwaaaaaa'
            require idx < stor0.length
            mem[0] = idx + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
            bool(stor0[idx].field_0) = 0
            uint255(stor0[idx].field_1) = 10
            Mask(248, 0, stor0[idx].field_8) = 'Bwwwaaaaaa' / 256
            s = sha3(s + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563)
            while sha3(s + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563) + (stor0[s].length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            s = s + 1
            continue 
    else:
        idx = 0
        while idx < 10:
            _14 = mem[64]
            mem[64] = mem[64] + 64
            mem[_14] = 10
            mem[_14 + 32] = 'Bwwwaaaaaa'
            require idx < stor0.length
            mem[0] = idx + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
            bool(stor0[idx].field_0) = 0
            uint255(stor0[idx].field_1) = 10
            Mask(248, 0, stor0[idx].field_8) = 'Bwwwaaaaaa' / 256
            s = sha3(s + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563)
            while sha3(s + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563) + (stor0[s].length + 31 / 32) > s:
                stor[s] = 0
                s = s + 1
                continue 
            s = s + 1
            continue 
    call msg.sender with:
       value msg.value wei
         gas 0 wei
}



}
