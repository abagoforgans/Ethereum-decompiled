contract main {


// =======================  Init code  ======================


uint256 stor1;
uint256 stor2;

function _fallback() payable {
    stor2 = msg.sender or Mask(96, 160, stor2)
    stor1 = 0
    return code.data[41 len 1444]
}



// =====================  Runtime code  =====================


array of uint256 peek;
uint256 size;
address owner;
array of uint256 stor18569430475105882587588266137607568536673111973893317399460219858819262702946;

function peek() payable {
    return stor[stor1 + ('name', 'peek', 0) - 1][0 len stor[stor1 + ('name', 'peek', 0) - 1].length]
}

function owner() payable {
    return owner
}

function size() payable {
    return size
}

function stack(uint256 arg1) payable {
    return peek[arg1][0 len peek[arg1].length]
}

function die() payable {
    if owner != msg.sender:
    selfdestruct(owner)
}

function _fallback() payable {
  stop
}

function isEmpty() payable {
    return (0 == size)
}

function push(string arg1) payable {
    peek.length++
    if not peek.length <= peek.length + 1:
        mem[0] = 0
        idx = peek.length + 1
        while sha3(0) + peek.length > idx + sha3(mem[0]):
            stor[idx + sha3(mem[0])] = 0
            if 31 < stor[idx + sha3(mem[0])].length:
                mem[0] = idx + sha3(mem[0])
                s = sha3(idx + sha3(mem[0]))
                while sha3(idx + sha3(mem[0])) + (stor[idx + sha3(mem[0])].length + 31 / 32) > s:
                    stor[s] = 0
                    s = s + 1
                    continue 
            idx = idx + 1
            continue 
    peek[peek.length][] = Array(len=arg1.length, data=arg1[all])
    size++
}

function pop() payable {
    require size - 1 < peek.length
    stor290D[stor1] = 0
    if 31 < stor[stor1 + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e562].length:
        idx = 0
        while stor[stor1 + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e562].length + 31 / 32 > idx:
            stor[idx + sha3(stor1 + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e562)] = 0
            idx = idx + 1
            continue 
    size--
    mem[160] = stor[sha3(stor1 + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e562)]
    idx = 160
    s = 0
    while stor[stor1 + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e562].length + 128 > idx:
        mem[idx + 32] = stor[s + sha3(stor1 + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e562) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor[stor1 + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e562].length, data=mem[160 len stor[stor1 + 0x290decd9548b62a8d60345a988386fc84ba6bc95484008f6362f93160ef3e562].length]), 
}



}
