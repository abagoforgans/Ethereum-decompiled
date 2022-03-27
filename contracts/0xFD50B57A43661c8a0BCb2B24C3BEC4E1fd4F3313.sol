contract main {


// =======================  Init code  ======================


const _fallback = code.data[25 len 835]




// =====================  Runtime code  =====================


function issues(uint256 arg1) {
    return issues[arg1][0 len issues[arg1].length]
}

function _fallback() payable {
    revert 
}

function addIssue(string arg1) {
    mem[128 len arg1.length] = arg1[all]
    issues.length++
    if not issues.length <= issues.length + 1:
        mem[0] = 0
        idx = issues.length + 1
        while sha3(0) + issues.length > idx + sha3(mem[0]):
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
    require issues.length < issues.length
    issues[issues.length] = (2 * arg1.length) + 1
    s = 0
    idx = 128
    while arg1.length + 128 > idx:
        issues[issues.length + s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    if issues[issues.length].length + 31 / 32 > Mask(251, 0, arg1.length + 31) >> 5:
        stor[('array', ('stor', ('length', ('name', 'issues', 0))), ('name', 'issues', 0)) + (Mask(251, 0, arg1.length + 31) >> 5)] = 0
        idx = (Mask(251, 0, arg1.length + 31) >> 5) + 1
        while issues[issues.length].length + 31 / 32 > idx:
            issues[issues.length + idx] = 0
            idx = idx + 1
            continue 
}



}
