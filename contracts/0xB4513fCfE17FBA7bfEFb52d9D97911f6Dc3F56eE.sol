contract main {


// =======================  Init code  ======================


array of uint256 stor0;

function _fallback() {
    mem[96 len -1004] = code.data[1485 len -1004]
    mem[64] = -908
    stor0.length++
    if not stor0.length <= stor0.length + 1:
        mem[0] = 0
        idx = stor0.length + 1
        while sha3(0) + stor0.length > idx + sha3(mem[0]):
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
    stor0[stor0.length][] = Array(len=mem[mem[96] + 96], data=mem[mem[96] + 128 len mem[mem[96] + 96]])
    return code.data[481 len 1004]
}



// =====================  Runtime code  =====================


array of uint256 drawFortune;

function drawFortune() {
    return drawFortune[block.hash(block.number - 1) % drawFortune.length][0 len drawFortune[block.hash(block.number - 1) % drawFortune.length].length]
}

function _fallback() payable {
    revert
}

function addFortune(string arg1) {
    drawFortune.length++
    if not drawFortune.length <= drawFortune.length + 1:
        mem[0] = 0
        idx = drawFortune.length + 1
        while sha3(0) + drawFortune.length > idx + sha3(mem[0]):
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
    drawFortune[drawFortune.length][] = Array(len=arg1.length, data=arg1[all])
}



}
