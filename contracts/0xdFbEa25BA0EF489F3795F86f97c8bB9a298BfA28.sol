contract main {


// =======================  Init code  ======================


uint256 stor0;
uint256 stor1;
uint8 stor2;
array of uint256 stor3;
array of uint256 stor4;
uint8 stor5;
array of uint8 stor14;

function _fallback() payable {
    stor0 = msg.sender or Mask(96, 160, stor0)
    stor1 = code.data[15286 len 32]
    stor5 = 5
    stor2 = 42
    stor3.length = stor5
    if not stor3.length <= stor5:
        idx = stor5 + 31 / 32
        while stor3.length + 31 / 32 > idx:
            stor3[idx] = 0
            idx = idx + 1
            continue 
        stor4.length = stor5
        if not stor4.length > stor5:
            idx = 0
            while uint8(idx) < stor2:
                require uint8(idx) < stor3.length
                mem[0] = 3
                stor3[uint8(idx) / 32] = 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor3[uint8(idx) / 32]
                idx = idx + 1
                continue 
            mem[128] = 1
            mem[160] = 2
            uint256(stor14[0]) = 2
            s = 0
            idx = 128
            while 192 > idx:
                uint256(stor14[0]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[0])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 2
            s = sha3(sha3(0, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = None + 3 / 32 * None
            while uint256(stor14[0]) + 31 / 32 > idx:
                uint8(stor14[0][idx]) = 0
                idx = idx + 1
                continue 
            mem[192] = 0
            mem[224] = 2
            mem[256] = 3
            mem[288] = 4
            uint256(stor14[1]) = 4
            s = 0
            idx = 192
            while 320 > idx:
                uint256(stor14[1]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[1])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 4
            s = sha3(sha3(1, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (-2 * None + 3 / 32) + (None * None + 3 / 32)
            while uint256(stor14[1]) + 31 / 32 > idx:
                uint8(stor14[1][idx]) = 0
                idx = idx + 1
                continue 
            mem[320] = 0
            mem[352] = 1
            mem[384] = 3
            mem[416] = 6
            uint256(stor14[2]) = 4
            s = 0
            idx = 320
            while 448 > idx:
                uint256(stor14[2]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[2])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 4
            s = sha3(sha3(2, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (-2 * None + 3 / 32) + (None * None + 3 / 32)
            while uint256(stor14[2]) + 31 / 32 > idx:
                uint8(stor14[2][idx]) = 0
                idx = idx + 1
                continue 
            mem[448] = 1
            mem[480] = 2
            mem[512] = 4
            mem[544] = 6
            mem[576] = 7
            uint256(stor14[3]) = 5
            s = 0
            idx = 448
            while 608 > idx:
                uint256(stor14[3]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[3])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 5
            s = sha3(sha3(3, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (-3 * None + 3 / 32) + (None * None + 3 / 32)
            while uint256(stor14[3]) + 31 / 32 > idx:
                uint8(stor14[3][idx]) = 0
                idx = idx + 1
                continue 
            mem[608] = 3
            mem[640] = 5
            mem[672] = 7
            uint256(stor14[4]) = 3
            s = 0
            idx = 608
            while 704 > idx:
                uint256(stor14[4]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[4])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 3
            s = sha3(sha3(4, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = -(None + 3 / 32) + (None * None + 3 / 32)
            while uint256(stor14[4]) + 31 / 32 > idx:
                uint8(stor14[4][idx]) = 0
                idx = idx + 1
                continue 
            mem[704] = 4
            mem[736] = 13
            uint256(stor14[5]) = 2
            s = 0
            idx = 704
            while 768 > idx:
                uint256(stor14[5]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[5])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 2
            s = sha3(sha3(5, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
        else:
            idx = stor5 + 31 / 32
            while stor4.length + 31 / 32 > idx:
                stor4[idx] = 0
                idx = idx + 1
                continue 
            idx = 0
            while uint8(idx) < stor2:
                require uint8(idx) < stor3.length
                mem[0] = 3
                stor3[uint8(idx) / 32] = 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor3[uint8(idx) / 32]
                idx = idx + 1
                continue 
            mem[128] = 1
            mem[160] = 2
            uint256(stor14[0]) = 2
            s = 0
            idx = 128
            while 192 > idx:
                uint256(stor14[0]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[0])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 2
            s = sha3(sha3(0, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = None + 3 / 32 * None
            while uint256(stor14[0]) + 31 / 32 > idx:
                uint8(stor14[0][idx]) = 0
                idx = idx + 1
                continue 
            mem[192] = 0
            mem[224] = 2
            mem[256] = 3
            mem[288] = 4
            uint256(stor14[1]) = 4
            s = 0
            idx = 192
            while 320 > idx:
                uint256(stor14[1]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[1])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 4
            s = sha3(sha3(1, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (-2 * None + 3 / 32) + (None * None + 3 / 32)
            while uint256(stor14[1]) + 31 / 32 > idx:
                uint8(stor14[1][idx]) = 0
                idx = idx + 1
                continue 
            mem[320] = 0
            mem[352] = 1
            mem[384] = 3
            mem[416] = 6
            uint256(stor14[2]) = 4
            s = 0
            idx = 320
            while 448 > idx:
                uint256(stor14[2]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[2])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 4
            s = sha3(sha3(2, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (-2 * None + 3 / 32) + (None * None + 3 / 32)
            while uint256(stor14[2]) + 31 / 32 > idx:
                uint8(stor14[2][idx]) = 0
                idx = idx + 1
                continue 
            mem[448] = 1
            mem[480] = 2
            mem[512] = 4
            mem[544] = 6
            mem[576] = 7
            uint256(stor14[3]) = 5
            s = 0
            idx = 448
            while 608 > idx:
                uint256(stor14[3]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[3])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 5
            s = sha3(sha3(3, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (-3 * None + 3 / 32) + (None * None + 3 / 32)
            while uint256(stor14[3]) + 31 / 32 > idx:
                uint8(stor14[3][idx]) = 0
                idx = idx + 1
                continue 
            mem[608] = 3
            mem[640] = 5
            mem[672] = 7
            uint256(stor14[4]) = 3
            s = 0
            idx = 608
            while 704 > idx:
                uint256(stor14[4]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[4])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 3
            s = sha3(sha3(4, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = -(None + 3 / 32) + (None * None + 3 / 32)
            while uint256(stor14[4]) + 31 / 32 > idx:
                uint8(stor14[4][idx]) = 0
                idx = idx + 1
                continue 
            mem[704] = 4
            mem[736] = 13
            uint256(stor14[5]) = 2
            s = 0
            idx = 704
            while 768 > idx:
                uint256(stor14[5]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[5])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
    else:
        stor4.length = stor5
        if not stor4.length <= stor5:
            idx = stor5 + 31 / 32
            while stor4.length + 31 / 32 > idx:
                stor4[idx] = 0
                idx = idx + 1
                continue 
            idx = 0
            while uint8(idx) < stor2:
                require uint8(idx) < stor3.length
                mem[0] = 3
                stor3[uint8(idx) / 32] = 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor3[uint8(idx) / 32]
                idx = idx + 1
                continue 
            mem[128] = 1
            mem[160] = 2
            uint256(stor14[0]) = 2
            s = 0
            idx = 128
            while 192 > idx:
                uint256(stor14[0]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[0])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 2
            s = sha3(sha3(0, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = None + 3 / 32 * None
            while uint256(stor14[0]) + 31 / 32 > idx:
                uint8(stor14[0][idx]) = 0
                idx = idx + 1
                continue 
            mem[192] = 0
            mem[224] = 2
            mem[256] = 3
            mem[288] = 4
            uint256(stor14[1]) = 4
            s = 0
            idx = 192
            while 320 > idx:
                uint256(stor14[1]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[1])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 4
            s = sha3(sha3(1, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (-2 * None + 3 / 32) + (None * None + 3 / 32)
            while uint256(stor14[1]) + 31 / 32 > idx:
                uint8(stor14[1][idx]) = 0
                idx = idx + 1
                continue 
            mem[320] = 0
            mem[352] = 1
            mem[384] = 3
            mem[416] = 6
            uint256(stor14[2]) = 4
            s = 0
            idx = 320
            while 448 > idx:
                uint256(stor14[2]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[2])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 4
            s = sha3(sha3(2, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (-2 * None + 3 / 32) + (None * None + 3 / 32)
            while uint256(stor14[2]) + 31 / 32 > idx:
                uint8(stor14[2][idx]) = 0
                idx = idx + 1
                continue 
            mem[448] = 1
            mem[480] = 2
            mem[512] = 4
            mem[544] = 6
            mem[576] = 7
            uint256(stor14[3]) = 5
            s = 0
            idx = 448
            while 608 > idx:
                uint256(stor14[3]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[3])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 5
            s = sha3(sha3(3, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (-3 * None + 3 / 32) + (None * None + 3 / 32)
            while uint256(stor14[3]) + 31 / 32 > idx:
                uint8(stor14[3][idx]) = 0
                idx = idx + 1
                continue 
            mem[608] = 3
            mem[640] = 5
            mem[672] = 7
            uint256(stor14[4]) = 3
            s = 0
            idx = 608
            while 704 > idx:
                uint256(stor14[4]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[4])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 3
            s = sha3(sha3(4, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = -(None + 3 / 32) + (None * None + 3 / 32)
            while uint256(stor14[4]) + 31 / 32 > idx:
                uint8(stor14[4][idx]) = 0
                idx = idx + 1
                continue 
            mem[704] = 4
            mem[736] = 13
            uint256(stor14[5]) = 2
            s = 0
            idx = 704
            while 768 > idx:
                uint256(stor14[5]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[5])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 2
            s = sha3(sha3(5, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
        else:
            idx = 0
            while uint8(idx) < stor2:
                require uint8(idx) < stor3.length
                mem[0] = 3
                stor3[uint8(idx) / 32] = 256^(idx % 32) or !(255 * 256^(idx % 32)) and stor3[uint8(idx) / 32]
                idx = idx + 1
                continue 
            mem[128] = 1
            mem[160] = 2
            uint256(stor14[0]) = 2
            s = 0
            idx = 128
            while 192 > idx:
                uint256(stor14[0]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[0])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 2
            s = sha3(sha3(0, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = None + 3 / 32 * None
            while uint256(stor14[0]) + 31 / 32 > idx:
                uint8(stor14[0][idx]) = 0
                idx = idx + 1
                continue 
            mem[192] = 0
            mem[224] = 2
            mem[256] = 3
            mem[288] = 4
            uint256(stor14[1]) = 4
            s = 0
            idx = 192
            while 320 > idx:
                uint256(stor14[1]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[1])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 4
            s = sha3(sha3(1, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (-2 * None + 3 / 32) + (None * None + 3 / 32)
            while uint256(stor14[1]) + 31 / 32 > idx:
                uint8(stor14[1][idx]) = 0
                idx = idx + 1
                continue 
            mem[320] = 0
            mem[352] = 1
            mem[384] = 3
            mem[416] = 6
            uint256(stor14[2]) = 4
            s = 0
            idx = 320
            while 448 > idx:
                uint256(stor14[2]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[2])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 4
            s = sha3(sha3(2, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (-2 * None + 3 / 32) + (None * None + 3 / 32)
            while uint256(stor14[2]) + 31 / 32 > idx:
                uint8(stor14[2][idx]) = 0
                idx = idx + 1
                continue 
            mem[448] = 1
            mem[480] = 2
            mem[512] = 4
            mem[544] = 6
            mem[576] = 7
            uint256(stor14[3]) = 5
            s = 0
            idx = 448
            while 608 > idx:
                uint256(stor14[3]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[3])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 5
            s = sha3(sha3(3, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = (-3 * None + 3 / 32) + (None * None + 3 / 32)
            while uint256(stor14[3]) + 31 / 32 > idx:
                uint8(stor14[3][idx]) = 0
                idx = idx + 1
                continue 
            mem[608] = 3
            mem[640] = 5
            mem[672] = 7
            uint256(stor14[4]) = 3
            s = 0
            idx = 608
            while 704 > idx:
                uint256(stor14[4]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[4])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 3
            s = sha3(sha3(4, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = -(None + 3 / 32) + (None * None + 3 / 32)
            while uint256(stor14[4]) + 31 / 32 > idx:
                uint8(stor14[4][idx]) = 0
                idx = idx + 1
                continue 
            mem[704] = 4
            mem[736] = 13
            uint256(stor14[5]) = 2
            s = 0
            idx = 704
            while 768 > idx:
                uint256(stor14[5]) = mem[idx] * 256^s or !(255 * 256^s) and uint256(stor14[5])
                s = s + -(s + 1 / 32) + (-1 * s * s + 1 / 32) + 1
                idx = idx + 32
                continue 
            idx = 2
            s = sha3(sha3(5, 14))
            while idx:
                stor[s] = !(255 * 256^idx) and stor[s]
                idx = idx + -(idx + 1 / 32) + (-1 * idx * idx + 1 / 32) + 1
                s = (idx + 1 / 32) + s
                continue 
            idx = None + 3 / 32 * None
            while uint256(stor14[5]) + 31 / 32 > idx:
                uint8(stor14[5][idx]) = 0
                idx = idx + 1
                continue 
            uint256(stor14[6]) = 3
    # nil
}



// =====================  Runtime code  =====================


address stor0;
uint256 stor1;
array of uint256 stor15;
uint8 stor2;
array of uint256 stor4;
uint8 stor5;
array of address stor6;
array of uint256 stor7;

function kill() payable {
    if stor0 != msg.sender:
    selfdestruct(stor0)
}

function _fallback() payable {
  stop
}

function sub_438da31f(?) payable {
    return uint8(uint8(sha3(block.hash(block.number - 1), arg1)) % arg2)
}

function register() payable {
    if msg.value < stor1:
        return 30
    idx = 0
    while uint8(idx) < stor5:
        require uint8(idx) < stor6.length
        mem[0] = 6
        if address(stor6[uint8(idx)]) != msg.sender:
            idx = idx + 1
            continue 
        return 10
    if stor6.length < stor5:
        return 20
    stor6.length++
    if not stor6.length > stor6.length + 1:
        uint256(stor6[stor6.length]) = msg.sender or Mask(96, 160, uint256(stor6[stor6.length]))
        require stor6.length - 1 < stor7.length
        mem[0] = 7
        uint256(stor7[0.03125 / stor6.length - 1]) = 256^(stor6.length - 1 % 32) or !(255 * 256^(stor6.length - 1 % 32)) and uint256(stor7[0.03125 / stor6.length - 1])
        call stor0 with:
           value stor1 / 100 wei
             gas 0 wei
        if stor6.length == stor5:
            idx = 0
            while uint8(idx) < stor5:
                s = idx
                while uint8(s) < uint8(s + (stor2 / stor5)):
                    require uint8(s) < stor4.length
                    mem[0] = 4
                    uint256(stor4[uint8(s) / 32]) = idx * 256^(s % 32) or !(255 * 256^(s % 32)) and uint256(stor4[uint8(s) / 32])
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            while uint8(idx) < uint8(uint8(stor2 / stor5) % stor5):
                mem[96] = block.hash(block.number - 1)
                mem[128] = block.timestamp
                require uint8((stor5 * stor2 / stor5) + idx) < stor4.length
                uint256(stor4[uint8((stor5 * stor2 / stor5) + idx) / 32]) = uint8(sha3(block.hash(block.number - 1), block.timestamp)) % stor5 * 256^((stor5 * stor2 / stor5) + idx % 32) or !(255 * 256^((stor5 * stor2 / stor5) + idx % 32)) and uint256(stor4[uint8((stor5 * stor2 / stor5) + idx) / 32])
                require uint8(uint8(sha3(block.hash(block.number - 1), block.timestamp)) % stor5) < stor15.length
                mem[0] = 15
                stor15[uint8(uint8(('map', ('blockhash', ('add', -1, 'number')), 'timestamp')) % stor5) / 32] = -256^(uint8(sha3(block.hash(block.number - 1), block.timestamp)) % stor5 % 32) + (stor('array', ('mask_shl', 3, 5, -5, ('mod', ('mask_shl', 8, 0, 0, ('map', ('blockhash', ('add', -1, 'number')), 'timestamp')), ('stor', 8, 0, ('name', 'stor5', 5)))), ('name', 'stor15', 15))[uint8(uint8(sha3(block.hash(block.number - 1), block.timestamp)) % stor5)] * 256^(uint8(sha3(block.hash(block.number - 1), block.timestamp)) % stor5 % 32)) or !(255 * 256^(uint8(sha3(block.hash(block.number - 1), block.timestamp)) % stor5 % 32)) and stor15[uint8(uint8(('map', ('blockhash', ('add', -1, 'number')), 'timestamp')) % stor5) / 32]
                idx = idx + 1
                s = uint8(sha3(block.hash(block.number - 1), block.timestamp)) % stor5
                continue 
            mem[64] = (32 * stor4.length) + 128
            mem[96] = stor4.length
            if not stor4.length:
                idx = 0
                s = 0
                s = 0
                while uint8(idx) < stor4.length - 1:
                    mem[mem[64]] = block.hash(block.number - 1)
                    mem[mem[64] + 32] = block.timestamp
                    require uint8(idx) < mem[96]
                    _539 = mem[(32 * uint8(idx)) + 128]
                    require uint8(idx + (uint8(sha3(block.hash(block.number - 1), block.timestamp)) % uint8(stor2 - idx))) < mem[96]
                    require uint8(idx) < mem[96]
                    mem[(32 * uint8(idx)) + 128] = mem[(32 * uint8(idx + (uint8(sha3(block.hash(block.number - 1), block.timestamp)) % uint8(stor2 - idx)))) + 159 len 1]
                    require uint8(idx + (uint8(sha3(block.hash(block.number - 1), block.timestamp)) % uint8(stor2 - idx))) < mem[96]
                    mem[(32 * uint8(idx + (uint8(sha3(block.hash(block.number - 1), block.timestamp)) % uint8(stor2 - idx)))) + 128] = uint8(_539)
                    idx = idx + 1
                    s = _539
                    s = uint8(sha3(block.hash(block.number - 1), block.timestamp)) % uint8(stor2 - idx)
                    continue 
                _538 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = stor4.length
                if not stor4.length:
                    mem[mem[64] + 32] = 96
                    mem[mem[64] + 96] = stor7.length
                    if not stor7.length:
                        emit 0x3216bf44: 64, 96, stor4.length, stor7.length
                    else:
                        mem[mem[64] + 128] = uint8(stor7)
                        s = mem[64] + 128
                        s = 0
                        while _538 + (32 * stor7.length) + 128 > None + 32:
                            mem[None + 32] = stor('name', 'stor7', 7)[-(0.03125 / (_539 * None) + 1) + (_539 * None) + (-1 * 0.03125 / (_539 * None) + 1 * _539 * None) + 1]
                            s = None + 32
                            s = -((_539 * None) + 1 / 32) + (_539 * None) + (-1 * (_539 * None) + 1 / 32 * _539 * None) + 1
                            continue 
                        emit 0x3216bf44: mem[mem[64] len _538 + (32 * stor7.length) + -mem[64] + 128]
                else:
                    mem[mem[64] + 96] = uint8(stor4)
                    idx = mem[64] + 96
                    s = 0
                    while mem[64] + (32 * stor4.length) + 96 > idx + 32:
                        mem[idx + 32] = stor('name', 'stor4', 4)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
                    mem[mem[64] + 32] = (32 * stor4.length) + 96
                    mem[_538 + (32 * stor4.length) + 96] = stor7.length
                    if not stor7.length:
                        emit 0x3216bf44: mem[mem[64] len _538 + (32 * stor4.length) + -mem[64] + 128]
                    else:
                        mem[_538 + (32 * stor4.length) + 128] = uint8(stor7)
                        idx = _538 + (32 * stor4.length) + 128
                        s = 0
                        while _538 + (32 * stor4.length) + (32 * stor7.length) + 128 > idx + 32:
                            mem[idx + 32] = stor('name', 'stor7', 7)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                            idx = idx + 32
                            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                            continue 
                        emit 0x3216bf44: mem[mem[64] len _538 + (32 * stor4.length) + (32 * stor7.length) + -mem[64] + 128]
            else:
                mem[0] = 4
                mem[128] = uint8(stor4)
                idx = 128
                s = 0
                while (32 * stor4.length) + 96 > idx:
                    mem[idx + 32] = stor('name', 'stor4', 4)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                idx = 0
                s = 0
                s = 0
                while uint8(idx) < stor4.length - 1:
                    mem[mem[64]] = block.hash(block.number - 1)
                    mem[mem[64] + 32] = block.timestamp
                    require uint8(idx) < mem[96]
                    _652 = mem[(32 * uint8(idx)) + 128]
                    require uint8(idx + (uint8(sha3(block.hash(block.number - 1), block.timestamp)) % uint8(stor2 - idx))) < mem[96]
                    require uint8(idx) < mem[96]
                    mem[(32 * uint8(idx)) + 128] = mem[(32 * uint8(idx + (uint8(sha3(block.hash(block.number - 1), block.timestamp)) % uint8(stor2 - idx)))) + 159 len 1]
                    require uint8(idx + (uint8(sha3(block.hash(block.number - 1), block.timestamp)) % uint8(stor2 - idx))) < mem[96]
                    mem[(32 * uint8(idx + (uint8(sha3(block.hash(block.number - 1), block.timestamp)) % uint8(stor2 - idx)))) + 128] = uint8(_652)
                    idx = idx + 1
                    s = _652
                    s = uint8(sha3(block.hash(block.number - 1), block.timestamp)) % uint8(stor2 - idx)
                    continue 
                _651 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = stor4.length
                if not stor4.length:
                    mem[mem[64] + 32] = 96
                    mem[mem[64] + 96] = stor7.length
                    if not stor7.length:
                        emit 0x3216bf44: 64, 96, stor4.length, stor7.length
                    else:
                        mem[mem[64] + 128] = uint8(stor7)
                        s = mem[64] + 128
                        s = 0
                        while _651 + (32 * stor7.length) + 128 > None + 32:
                            mem[None + 32] = stor('name', 'stor7', 7)[-(0.03125 / (_652 * None) + 1) + (_652 * None) + (-1 * 0.03125 / (_652 * None) + 1 * _652 * None) + 1]
                            s = None + 32
                            s = -((_652 * None) + 1 / 32) + (_652 * None) + (-1 * (_652 * None) + 1 / 32 * _652 * None) + 1
                            continue 
                        emit 0x3216bf44: mem[mem[64] len _651 + (32 * stor7.length) + -mem[64] + 128]
                else:
                    mem[mem[64] + 96] = uint8(stor4)
                    idx = mem[64] + 96
                    s = 0
                    while mem[64] + (32 * stor4.length) + 96 > idx + 32:
                        mem[idx + 32] = stor('name', 'stor4', 4)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
                    mem[mem[64] + 32] = (32 * stor4.length) + 96
                    mem[_651 + (32 * stor4.length) + 96] = stor7.length
                    if not stor7.length:
                        emit 0x3216bf44: mem[mem[64] len _651 + (32 * stor4.length) + -mem[64] + 128]
                    else:
                        mem[_651 + (32 * stor4.length) + 128] = uint8(stor7)
                        idx = _651 + (32 * stor4.length) + 128
                        s = 0
                        while _651 + (32 * stor4.length) + (32 * stor7.length) + 128 > idx + 32:
                            mem[idx + 32] = stor('name', 'stor7', 7)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                            idx = idx + 32
                            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                            continue 
                        emit 0x3216bf44: mem[mem[64] len _651 + (32 * stor4.length) + (32 * stor7.length) + -mem[64] + 128]
    else:
        idx = stor6.length + 1
        while stor6.length > idx:
            uint256(stor6[idx]) = 0
            idx = idx + 1
            continue 
        uint256(stor6[stor6.length]) = msg.sender or Mask(96, 160, uint256(stor6[stor6.length]))
        require stor6.length - 1 < stor7.length
        mem[0] = 7
        uint256(stor7[0.03125 / stor6.length - 1]) = 256^(stor6.length - 1 % 32) or !(255 * 256^(stor6.length - 1 % 32)) and uint256(stor7[0.03125 / stor6.length - 1])
        call stor0 with:
           value stor1 / 100 wei
             gas 0 wei
        if stor6.length == stor5:
            idx = 0
            while uint8(idx) < stor5:
                s = idx
                while uint8(s) < uint8(s + (stor2 / stor5)):
                    require uint8(s) < stor4.length
                    mem[0] = 4
                    uint256(stor4[uint8(s) / 32]) = idx * 256^(s % 32) or !(255 * 256^(s % 32)) and uint256(stor4[uint8(s) / 32])
                    s = s + 1
                    continue 
                idx = idx + 1
                continue 
            idx = 0
            s = 0
            while uint8(idx) < uint8(uint8(stor2 / stor5) % stor5):
                mem[96] = block.hash(block.number - 1)
                mem[128] = block.timestamp
                require uint8((stor5 * stor2 / stor5) + idx) < stor4.length
                uint256(stor4[uint8((stor5 * stor2 / stor5) + idx) / 32]) = uint8(sha3(block.hash(block.number - 1), block.timestamp)) % stor5 * 256^((stor5 * stor2 / stor5) + idx % 32) or !(255 * 256^((stor5 * stor2 / stor5) + idx % 32)) and uint256(stor4[uint8((stor5 * stor2 / stor5) + idx) / 32])
                require uint8(uint8(sha3(block.hash(block.number - 1), block.timestamp)) % stor5) < stor15.length
                mem[0] = 15
                stor15[uint8(uint8(('map', ('blockhash', ('add', -1, 'number')), 'timestamp')) % stor5) / 32] = -256^(uint8(sha3(block.hash(block.number - 1), block.timestamp)) % stor5 % 32) + (stor('array', ('mask_shl', 3, 5, -5, ('mod', ('mask_shl', 8, 0, 0, ('map', ('blockhash', ('add', -1, 'number')), 'timestamp')), ('stor', 8, 0, ('name', 'stor5', 5)))), ('name', 'stor15', 15))[uint8(uint8(sha3(block.hash(block.number - 1), block.timestamp)) % stor5)] * 256^(uint8(sha3(block.hash(block.number - 1), block.timestamp)) % stor5 % 32)) or !(255 * 256^(uint8(sha3(block.hash(block.number - 1), block.timestamp)) % stor5 % 32)) and stor15[uint8(uint8(('map', ('blockhash', ('add', -1, 'number')), 'timestamp')) % stor5) / 32]
                idx = idx + 1
                s = uint8(sha3(block.hash(block.number - 1), block.timestamp)) % stor5
                continue 
            mem[64] = (32 * stor4.length) + 128
            mem[96] = stor4.length
            if not stor4.length:
                idx = 0
                s = 0
                s = 0
                while uint8(idx) < stor4.length - 1:
                    mem[mem[64]] = block.hash(block.number - 1)
                    mem[mem[64] + 32] = block.timestamp
                    require uint8(idx) < mem[96]
                    _655 = mem[(32 * uint8(idx)) + 128]
                    require uint8(idx + (uint8(sha3(block.hash(block.number - 1), block.timestamp)) % uint8(stor2 - idx))) < mem[96]
                    require uint8(idx) < mem[96]
                    mem[(32 * uint8(idx)) + 128] = mem[(32 * uint8(idx + (uint8(sha3(block.hash(block.number - 1), block.timestamp)) % uint8(stor2 - idx)))) + 159 len 1]
                    require uint8(idx + (uint8(sha3(block.hash(block.number - 1), block.timestamp)) % uint8(stor2 - idx))) < mem[96]
                    mem[(32 * uint8(idx + (uint8(sha3(block.hash(block.number - 1), block.timestamp)) % uint8(stor2 - idx)))) + 128] = uint8(_655)
                    idx = idx + 1
                    s = _655
                    s = uint8(sha3(block.hash(block.number - 1), block.timestamp)) % uint8(stor2 - idx)
                    continue 
                _654 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = stor4.length
                if not stor4.length:
                    mem[mem[64] + 32] = 96
                    mem[mem[64] + 96] = stor7.length
                    if not stor7.length:
                        emit 0x3216bf44: 64, 96, stor4.length, stor7.length
                    else:
                        mem[mem[64] + 128] = uint8(stor7)
                        s = mem[64] + 128
                        s = 0
                        while _654 + (32 * stor7.length) + 128 > None + 32:
                            mem[None + 32] = stor('name', 'stor7', 7)[-(0.03125 / (_655 * None) + 1) + (_655 * None) + (-1 * 0.03125 / (_655 * None) + 1 * _655 * None) + 1]
                            s = None + 32
                            s = -((_655 * None) + 1 / 32) + (_655 * None) + (-1 * (_655 * None) + 1 / 32 * _655 * None) + 1
                            continue 
                        emit 0x3216bf44: mem[mem[64] len _654 + (32 * stor7.length) + -mem[64] + 128]
                else:
                    mem[mem[64] + 96] = uint8(stor4)
                    idx = mem[64] + 96
                    s = 0
                    while mem[64] + (32 * stor4.length) + 96 > idx + 32:
                        mem[idx + 32] = stor('name', 'stor4', 4)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
                    mem[mem[64] + 32] = (32 * stor4.length) + 96
                    mem[_654 + (32 * stor4.length) + 96] = stor7.length
                    if not stor7.length:
                        emit 0x3216bf44: mem[mem[64] len _654 + (32 * stor4.length) + -mem[64] + 128]
                    else:
                        mem[_654 + (32 * stor4.length) + 128] = uint8(stor7)
                        idx = _654 + (32 * stor4.length) + 128
                        s = 0
                        while _654 + (32 * stor4.length) + (32 * stor7.length) + 128 > idx + 32:
                            mem[idx + 32] = stor('name', 'stor7', 7)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                            idx = idx + 32
                            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                            continue 
                        emit 0x3216bf44: mem[mem[64] len _654 + (32 * stor4.length) + (32 * stor7.length) + -mem[64] + 128]
            else:
                mem[0] = 4
                mem[128] = uint8(stor4)
                idx = 128
                s = 0
                while (32 * stor4.length) + 96 > idx:
                    mem[idx + 32] = stor('name', 'stor4', 4)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                    idx = idx + 32
                    s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                    continue 
                idx = 0
                s = 0
                s = 0
                while uint8(idx) < stor4.length - 1:
                    mem[mem[64]] = block.hash(block.number - 1)
                    mem[mem[64] + 32] = block.timestamp
                    require uint8(idx) < mem[96]
                    _738 = mem[(32 * uint8(idx)) + 128]
                    require uint8(idx + (uint8(sha3(block.hash(block.number - 1), block.timestamp)) % uint8(stor2 - idx))) < mem[96]
                    require uint8(idx) < mem[96]
                    mem[(32 * uint8(idx)) + 128] = mem[(32 * uint8(idx + (uint8(sha3(block.hash(block.number - 1), block.timestamp)) % uint8(stor2 - idx)))) + 159 len 1]
                    require uint8(idx + (uint8(sha3(block.hash(block.number - 1), block.timestamp)) % uint8(stor2 - idx))) < mem[96]
                    mem[(32 * uint8(idx + (uint8(sha3(block.hash(block.number - 1), block.timestamp)) % uint8(stor2 - idx)))) + 128] = uint8(_738)
                    idx = idx + 1
                    s = _738
                    s = uint8(sha3(block.hash(block.number - 1), block.timestamp)) % uint8(stor2 - idx)
                    continue 
                _737 = mem[64]
                mem[mem[64]] = 64
                mem[mem[64] + 64] = stor4.length
                if not stor4.length:
                    mem[mem[64] + 32] = 96
                    mem[mem[64] + 96] = stor7.length
                    if not stor7.length:
                        emit 0x3216bf44: 64, 96, stor4.length, stor7.length
                    else:
                        mem[mem[64] + 128] = uint8(stor7)
                        s = mem[64] + 128
                        s = 0
                        while _737 + (32 * stor7.length) + 128 > None + 32:
                            mem[None + 32] = stor('name', 'stor7', 7)[-(0.03125 / (_738 * None) + 1) + (_738 * None) + (-1 * 0.03125 / (_738 * None) + 1 * _738 * None) + 1]
                            s = None + 32
                            s = -((_738 * None) + 1 / 32) + (_738 * None) + (-1 * (_738 * None) + 1 / 32 * _738 * None) + 1
                            continue 
                        emit 0x3216bf44: mem[mem[64] len _737 + (32 * stor7.length) + -mem[64] + 128]
                else:
                    mem[mem[64] + 96] = uint8(stor4)
                    idx = mem[64] + 96
                    s = 0
                    while mem[64] + (32 * stor4.length) + 96 > idx + 32:
                        mem[idx + 32] = stor('name', 'stor4', 4)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                        idx = idx + 32
                        s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                        continue 
                    mem[mem[64] + 32] = (32 * stor4.length) + 96
                    mem[_737 + (32 * stor4.length) + 96] = stor7.length
                    if not stor7.length:
                        emit 0x3216bf44: mem[mem[64] len _737 + (32 * stor4.length) + -mem[64] + 128]
                    else:
                        mem[_737 + (32 * stor4.length) + 128] = uint8(stor7)
                        idx = _737 + (32 * stor4.length) + 128
                        s = 0
                        while _737 + (32 * stor4.length) + (32 * stor7.length) + 128 > idx + 32:
                            mem[idx + 32] = stor('name', 'stor7', 7)[-(0.03125 / s + 1) + s + (-1 * 0.03125 / s + 1 * s) + 1]
                            idx = idx + 32
                            s = -(s + 1 / 32) + s + (-1 * s + 1 / 32 * s) + 1
                            continue 
                        emit 0x3216bf44: mem[mem[64] len _737 + (32 * stor4.length) + (32 * stor7.length) + -mem[64] + 128]
    return (stor6.length - 1)
}



}
