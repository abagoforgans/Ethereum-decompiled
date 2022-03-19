contract main {


// =======================  Init code  ======================


array of uint256 stor0;
array of uint256 stor1;
array of uint256 stor2;

function _fallback() payable {
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        mem[0] = 0
        idx = (4 * stor0.length + 1) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563
        while (4 * stor0.length) + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e563 > idx:
            address(stor[idx]) = 0
            stor1[idx] = 0
            mem[0] = idx + 1
            s = sha3(mem[0])
            while sha3(idx + 1) + stor1[idx] > s:
                uint256(stor[s]) = 0
                if 31 < stor[s].length:
                    mem[0] = s
                    t = sha3(s)
                    while sha3(s) + (stor[s].length + 31 / 32) > t:
                        uint256(stor[t]) = 0
                        t = t + 1
                        continue 
                s = s + 1
                continue 
            stor2[idx] = 0
            mem[0] = idx + 2
            s = sha3(idx + 2)
            while sha3(idx + 2) + stor2[idx] > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    require stor0.length < stor0.length
    stor0[stor0.length] = msg.sender or Mask(96, 160, stor0[stor0.length])
    stor[(4 * stor0.length) + ('name', 'stor0', 0) + 3]['sadfsadfdfdf'] = 4
    return code.data[407 len 119]
}



// =====================  Runtime code  =====================


array of address users;

function users(uint256 arg1) payable {
    require arg1 < users.length
    return users[arg1]
}

function _fallback() payable {
  stop
}



}
