contract main {


// =======================  Init code  ======================


address stor0;

function _fallback() {
    stor0 = msg.sender
    return code.data[57 len 613]
}



// =====================  Runtime code  =====================


address stor0;

function del() {
    require stor0 == msg.sender
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function generateLuckyNumbers(uint256 arg1) {
    mem[128 len 64] = 0
    require block.hash(arg1)
    mem[96] = (block.hash(arg1) % 10) + 1
    s = 0
    idx = 0
    s = (block.hash(arg1) % 10) + 1
    s = block.hash(arg1)
    while idx < 255:
        s = var27002
        t = var27005
        while s < 32:
            require 256^s
            t = 0
            while uint8(t) < 1:
                if (block.hash(arg1 + -idx - 1) / 256^s % 10) + 1 != mem[(32 * uint8(t)) + 96]:
                    t = t + 1
                    continue 
                if uint8(t) == 1:
                    mem[128] = (block.hash(arg1 + -idx - 1) / 256^s % 10) + 1
                s = s + 1
                t = (block.hash(arg1 + -idx - 1) / 256^s % 10) + 1
                continue 
            if uint8(t) == 1:
                mem[128] = (block.hash(arg1 + -idx - 1) / 256^s % 10) + 1
            s = s + 1
            t = (block.hash(arg1 + -idx - 1) / 256^s % 10) + 1
            continue 
        s = s
        idx = idx + 1
        s = t
        s = block.hash(arg1 + -idx - 1)
        continue 
    return (block.hash(arg1) % 10) + 1, mem[128 len 64]
}



}
