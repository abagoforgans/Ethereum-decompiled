contract main {


// =======================  Init code  ======================


array of address stor0;
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
    address(stor0[stor0.length]) = 0x82ab1649f370ccf9f2a5006130c4fca28db2587e
    uint256(stor[(4 * stor0.length) + ('name', 'stor0', 0) + 3]['sadfsadfdfdf']) = 4
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        mem[0] = 0
        idx = 4 * stor0.length + 1
        while sha3(0) + (4 * stor0.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            mem[0] = idx + sha3(mem[0]) + 1
            s = sha3(mem[0])
            while sha3(idx + sha3(mem[0]) + 1) + uint256(stor[idx + sha3(mem[0]) + 1]) > s:
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
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            mem[0] = idx + sha3(mem[0]) + 2
            s = sha3(idx + sha3(mem[0]) + 2)
            while sha3(idx + sha3(mem[0]) + 2) + uint256(stor[idx + sha3(mem[0]) + 2]) > s:
                uint256(stor[s]) = 0
                s = s + 1
                continue 
            idx = idx + 1
            continue 
    require stor0.length < stor0.length
    address(stor0[stor0.length]) = 0x36eaf0157ebe256088a779c12e96a3dc6f53426c
    uint256(stor[sha3('hash1sfsdbkljfsdfldsfkjbr3838euk', 'lsfbjksjklhdf', (4 * stor0.length) + ('name', 'stor0', 0) + 3)]) = 2
    uint256(stor[sha3('hash3dsfhu4r89fb4f832eknf94949if', 'vnri303000dvv', (4 * stor0.length) + ('name', 'stor0', 0) + 3)]) = 4
    uint256(stor[sha3('hash2sadfdfvfvvflkvnfdfefieofbef', '23m54pdjkedb9', (4 * stor0.length) + ('name', 'stor0', 0) + 3)]) = 3
    return code.data[1023 len 119]
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
