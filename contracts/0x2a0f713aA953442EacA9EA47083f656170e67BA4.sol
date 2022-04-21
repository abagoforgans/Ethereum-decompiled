contract main {


// =======================  Init code  ======================


const _fallback = code.data[30 len 2031]




// =====================  Runtime code  =====================


array of uint256 allByAuthor;
array of uint256 authors;
array of struct all;

function allByAuthor(address arg1, uint256 arg2) {
    require arg2 < allByAuthor[arg1]
    return allByAuthor[arg1][arg2]
}

function all(uint256 arg1) {
    require arg1 < all.length
    mem[256] = uint256(stor[sha3((4 * arg1) + ('name', 'all', 2) + 2)].field_0)
    idx = 256
    s = 0
    while stor[(4 * arg1) + ('name', 'all', 2) + 2].length + 256 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((4 * arg1) + ('name', 'all', 2) + 2)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[stor[(4 * arg1) + ('name', 'all', 2) + 2].length + (floor32(stor[(4 * arg1) + ('name', 'all', 2) + 2].length - 1) + -stor[(4 * arg1) + ('name', 'all', 2) + 2].length + 32 % 32) + 256] = stor[(4 * arg1) + ('name', 'all', 2) + 3].length
    mem[stor[(4 * arg1) + ('name', 'all', 2) + 2].length + (floor32(stor[(4 * arg1) + ('name', 'all', 2) + 2].length - 1) + -stor[(4 * arg1) + ('name', 'all', 2) + 2].length + 32 % 32) + 288] = uint256(stor[sha3((4 * arg1) + ('name', 'all', 2) + 3)].field_0)
    idx = stor[(4 * arg1) + ('name', 'all', 2) + 2].length + (floor32(stor[(4 * arg1) + ('name', 'all', 2) + 2].length - 1) + -stor[(4 * arg1) + ('name', 'all', 2) + 2].length + 32 % 32) + 288
    s = 0
    while stor[(4 * arg1) + ('name', 'all', 2) + 2].length + (floor32(stor[(4 * arg1) + ('name', 'all', 2) + 2].length - 1) + -stor[(4 * arg1) + ('name', 'all', 2) + 2].length + 32 % 32) + stor[(4 * arg1) + ('name', 'all', 2) + 3].length + 288 > idx + 32:
        mem[idx + 32] = uint256(stor[s + sha3((4 * arg1) + ('name', 'all', 2) + 3)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    return address(all[arg1].field_0), 
           uint256(all[arg1].field_256),
           Array(len=stor[(4 * arg1) + ('name', 'all', 2) + 2].length, data=mem[256 len stor[(4 * arg1) + ('name', 'all', 2) + 2].length + (floor32(stor[(4 * arg1) + ('name', 'all', 2) + 2].length - 1) + -stor[(4 * arg1) + ('name', 'all', 2) + 2].length + 32 % 32) + stor[(4 * arg1) + ('name', 'all', 2) + 3].length + (floor32(stor[(4 * arg1) + ('name', 'all', 2) + 3].length - 1) + -stor[(4 * arg1) + ('name', 'all', 2) + 3].length + 32 % 32) + 32]),
           stor[(4 * arg1) + ('name', 'all', 2) + 2].length + (floor32(stor[(4 * arg1) + ('name', 'all', 2) + 2].length - 1) + -stor[(4 * arg1) + ('name', 'all', 2) + 2].length + 32 % 32) + 160
}

function size() {
    return all.length
}

function publicationCount(address arg1) {
    return allByAuthor[address(arg1)]
}

function authors(address arg1) {
    return authors[arg1][0 len authors[arg1].length]
}

function _fallback() payable {
    revert
}

function sign(string arg1) {
    authors[address(msg.sender)] = (2 * arg1.length) + 1
    s = 0
    idx = arg1 + 36
    while arg1 + arg1.length + 36 > idx:
        authors[address(msg.sender)][s] = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg1.length + 31) >> 5
    while authors[address(msg.sender)].length + 31 / 32 > idx:
        authors[address(msg.sender)][idx] = 0
        idx = idx + 1
        continue 
}

function publish(string arg1, string arg2) {
    all.length++
    if not all.length <= all.length + 1:
        mem[0] = 2
        idx = 4 * all.length + 1
        while sha3(2) + (4 * all.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 3].length:
                mem[0] = idx + sha3(mem[0]) + 3
                s = sha3(idx + sha3(mem[0]) + 3)
                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 4
            continue 
    address(all[all.length].field_0) = msg.sender
    uint256(all[all.length].field_256) = block.timestamp
    uint256(stor[sha3((4 * all.length) + ('name', 'all', 2) + 2)][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((4 * all.length) + ('name', 'all', 2) + 3)][].field_0) = Array(len=arg2.length, data=arg2[all])
    allByAuthor[address(msg.sender)]++
    if not allByAuthor[address(msg.sender)] <= allByAuthor[address(msg.sender)] + 1:
        idx = allByAuthor[address(msg.sender)] + 1
        while allByAuthor[address(msg.sender)] > idx:
            allByAuthor[address(msg.sender)][idx] = 0
            idx = idx + 1
            continue 
    allByAuthor[address(msg.sender)][allByAuthor[address(msg.sender)]] = all.length
    return all.length
}

function publishBytes(string arg1, bytes arg2) {
    all.length++
    if not all.length <= all.length + 1:
        mem[0] = 2
        idx = 4 * all.length + 1
        while sha3(2) + (4 * all.length) > idx + sha3(mem[0]):
            address(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            uint256(stor[idx + sha3(mem[0]) + 2]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 2].length:
                mem[0] = idx + sha3(mem[0]) + 2
                s = sha3(idx + sha3(mem[0]) + 2)
                while sha3(idx + sha3(mem[0]) + 2) + (stor[idx + sha3(mem[0]) + 2].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 3].length:
                mem[0] = idx + sha3(mem[0]) + 3
                s = sha3(idx + sha3(mem[0]) + 3)
                while sha3(idx + sha3(mem[0]) + 3) + (stor[idx + sha3(mem[0]) + 3].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            idx = idx + 4
            continue 
    address(all[all.length].field_0) = msg.sender
    uint256(all[all.length].field_256) = block.timestamp
    uint256(stor[sha3((4 * all.length) + ('name', 'all', 2) + 2)][].field_0) = Array(len=arg1.length, data=arg1[all])
    uint256(stor[sha3((4 * all.length) + ('name', 'all', 2) + 3)][].field_0) = Array(len=arg2.length, data=arg2[all])
    allByAuthor[address(msg.sender)]++
    if not allByAuthor[address(msg.sender)] <= allByAuthor[address(msg.sender)] + 1:
        idx = allByAuthor[address(msg.sender)] + 1
        while allByAuthor[address(msg.sender)] > idx:
            allByAuthor[address(msg.sender)][idx] = 0
            idx = idx + 1
            continue 
    allByAuthor[address(msg.sender)][allByAuthor[address(msg.sender)]] = all.length
    return all.length
}



}
