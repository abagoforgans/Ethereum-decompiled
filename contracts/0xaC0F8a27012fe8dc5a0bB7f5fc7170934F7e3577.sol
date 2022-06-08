contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;

function orderSubmitted(bytes32 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor0[arg1])
}

function _fallback() payable {
    revert with 0, 'UNSUPPORTED'
}

function submitOrder(bytes arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    if arg1.length < 736:
        revert with 0, ''
    mem[3264 len arg1.length] = arg1[all]
    mem[arg1.length + 3264] = 0
    if arg1.length < 32:
        revert with 0, 32, 12, 0xfe494e56414c49445f53495a4500000000000000000000000000000000000000
    mem[2048] = mem[3276 len 20]
    mem[ceil32(arg1.length) + 3296 len arg1.length] = arg1[all]
    mem[ceil32(arg1.length) + arg1.length + 3296] = 0
    if arg1.length < 64:
        revert with 0, 32, 12, 0xfe494e56414c49445f53495a4500000000000000000000000000000000000000
    mem[2080] = mem[ceil32(arg1.length) + 3340 len 20]
    mem[(2 * ceil32(arg1.length)) + 3328 len arg1.length] = arg1[all]
    mem[(2 * ceil32(arg1.length)) + arg1.length + 3328] = 0
    if arg1.length < 96:
        revert with 0, 32, 12, 0xfe494e56414c49445f53495a4500000000000000000000000000000000000000
    mem[2112] = mem[(2 * ceil32(arg1.length)) + 3404 len 20]
    mem[(4 * ceil32(arg1.length)) + 3360 len arg1.length] = arg1[all]
    mem[(4 * ceil32(arg1.length)) + arg1.length + 3360] = 0
    if arg1.length < 128:
        revert with 0, 32, 12, 0xfe494e56414c49445f53495a4500000000000000000000000000000000000000
    mem[2144] = mem[(4 * ceil32(arg1.length)) + 3456]
    mem[(6 * ceil32(arg1.length)) + 3392 len arg1.length] = arg1[all]
    mem[(6 * ceil32(arg1.length)) + arg1.length + 3392] = 0
    if arg1.length < 160:
        revert with 0, 32, 12, 0xfe494e56414c49445f53495a4500000000000000000000000000000000000000
    mem[2176] = mem[(6 * ceil32(arg1.length)) + 3520]
    mem[(7 * ceil32(arg1.length)) + 3424 len arg1.length] = arg1[all]
    mem[(7 * ceil32(arg1.length)) + arg1.length + 3424] = 0
    if arg1.length < 192:
        revert with 0, 32, 12, 0xfe494e56414c49445f53495a4500000000000000000000000000000000000000
    mem[(8 * ceil32(arg1.length)) + 3648 len arg1.length] = arg1[all]
    mem[(8 * ceil32(arg1.length)) + arg1.length + 3648] = 0
    if arg1.length < 224:
        revert with 0, 32, 12, 0xfe494e56414c49445f53495a4500000000000000000000000000000000000000
    mem[2336] = mem[(8 * ceil32(arg1.length)) + 3852 len 20]
    mem[(10 * ceil32(arg1.length)) + 3872 len arg1.length] = arg1[all]
    mem[(10 * ceil32(arg1.length)) + arg1.length + 3872] = 0
    if arg1.length < 256:
        revert with 0, 32, 12, 0xfe494e56414c49445f53495a4500000000000000000000000000000000000000
    mem[2432] = mem[(10 * ceil32(arg1.length)) + 4108 len 20]
    mem[(11 * ceil32(arg1.length)) + 3904 len arg1.length] = arg1[all]
    mem[(11 * ceil32(arg1.length)) + arg1.length + 3904] = 0
    if arg1.length < 288:
        revert with 0, 32, 12, 0xfe494e56414c49445f53495a4500000000000000000000000000000000000000
    mem[2464] = mem[(11 * ceil32(arg1.length)) + 4172 len 20]
    mem[(12 * ceil32(arg1.length)) + 3936 len arg1.length] = arg1[all]
    mem[(12 * ceil32(arg1.length)) + arg1.length + 3936] = 0
    if arg1.length < 320:
        revert with 0, 32, 12, 0xfe494e56414c49445f53495a4500000000000000000000000000000000000000
    mem[2496] = mem[(12 * ceil32(arg1.length)) + 4224]
    mem[(13 * ceil32(arg1.length)) + 4032 len arg1.length] = arg1[all]
    mem[(13 * ceil32(arg1.length)) + arg1.length + 4032] = 0
    if arg1.length < 352:
        revert with 0, 32, 12, 0xfe494e56414c49445f53495a4500000000000000000000000000000000000000
    mem[2592] = mem[(13 * ceil32(arg1.length)) + 4352] > 0
    mem[(14 * ceil32(arg1.length)) + 4064 len arg1.length] = arg1[all]
    mem[(14 * ceil32(arg1.length)) + arg1.length + 4064] = 0
    if arg1.length < 384:
        mem[(16 * ceil32(arg1.length)) + 4064] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[(16 * ceil32(arg1.length)) + 4068] = 32
        mem[(16 * ceil32(arg1.length)) + 4100] = 12
        mem[(16 * ceil32(arg1.length)) + 4132] = 0xfe494e56414c49445f53495a4500000000000000000000000000000000000000
        revert with memory
          from (16 * ceil32(arg1.length)) + 4064
           len (5 * ceil32(arg1.length)) + 100
    mem[2624] = mem[(14 * ceil32(arg1.length)) + 4428 len 20]
    mem[(16 * ceil32(arg1.length)) + 4096 len arg1.length] = arg1[all]
    mem[(16 * ceil32(arg1.length)) + arg1.length + 4096] = 0
    if arg1.length < 416:
        revert with 0, 
                    32,
                    12,
                    0xfe494e56414c49445f53495a4500000000000000000000000000000000000000,
                    mem[(18 * ceil32(arg1.length)) + 4196 len 9 * ceil32(arg1.length)]
    mem[2656] = mem[(16 * ceil32(arg1.length)) + 4480]
    mem[(18 * ceil32(arg1.length)) + 4128 len arg1.length] = arg1[all]
    mem[(18 * ceil32(arg1.length)) + arg1.length + 4128] = 0
    if arg1.length < 448:
        revert with 0, 32, 12, 0xfe494e56414c49445f53495a4500000000000000000000000000000000000000
    mem[2720] = mem[(18 * ceil32(arg1.length)) + 4574 len 2]
    mem[(19 * ceil32(arg1.length)) + 4160 len arg1.length] = arg1[all]
    mem[(19 * ceil32(arg1.length)) + arg1.length + 4160] = 0
    if arg1.length < 480:
        revert with 0, 32, 12, 0xfe494e56414c49445f53495a4500000000000000000000000000000000000000
    mem[2752] = mem[(19 * ceil32(arg1.length)) + 4638 len 2]
    mem[(20 * ceil32(arg1.length)) + 4192 len arg1.length] = arg1[all]
    mem[(20 * ceil32(arg1.length)) + arg1.length + 4192] = 0
    if arg1.length < 512:
        revert with 0, 
                    32,
                    12,
                    0xfe494e56414c49445f53495a4500000000000000000000000000000000000000,
                    mem[(22 * ceil32(arg1.length)) + 4292 len 17 * ceil32(arg1.length)]
    mem[2784] = mem[(20 * ceil32(arg1.length)) + 4684 len 20]
    mem[(22 * ceil32(arg1.length)) + 4224 len arg1.length] = arg1[all]
    mem[(22 * ceil32(arg1.length)) + arg1.length + 4224] = 0
    if arg1.length < 544:
        revert with 0, 32, 12, 0xfe494e56414c49445f53495a4500000000000000000000000000000000000000
    mem[2816] = mem[(22 * ceil32(arg1.length)) + 4766 len 2]
    mem[(23 * ceil32(arg1.length)) + 4256 len arg1.length] = arg1[all]
    mem[(23 * ceil32(arg1.length)) + arg1.length + 4256] = 0
    if arg1.length < 576:
        revert with 0, 32, 12, 0xfe494e56414c49445f53495a4500000000000000000000000000000000000000
    require mem[(23 * ceil32(arg1.length)) + 4800] <= 0
    mem[3040] = mem[(23 * ceil32(arg1.length)) + 4800]
    mem[(24 * ceil32(arg1.length)) + 4288 len arg1.length] = arg1[all]
    mem[(24 * ceil32(arg1.length)) + arg1.length + 4288] = 0
    if arg1.length < 608:
        revert with 0, 32, 12, 0xfe494e56414c49445f53495a4500000000000000000000000000000000000000
    require mem[(24 * ceil32(arg1.length)) + 4864] <= 0
    mem[3072] = mem[(24 * ceil32(arg1.length)) + 4864]
    mem[(25 * ceil32(arg1.length)) + 4320 len arg1.length] = arg1[all]
    mem[(25 * ceil32(arg1.length)) + arg1.length + 4320] = 0
    if arg1.length < 640:
        revert with 0, 32, 12, 0xfe494e56414c49445f53495a4500000000000000000000000000000000000000
    require mem[(25 * ceil32(arg1.length)) + 4928] <= 0
    mem[3104] = mem[(25 * ceil32(arg1.length)) + 4928]
    mem[(26 * ceil32(arg1.length)) + 4352 len arg1.length] = arg1[all]
    mem[(26 * ceil32(arg1.length)) + arg1.length + 4352] = 0
    if arg1.length < 672:
        revert with 0, 32, 12, 0xfe494e56414c49445f53495a4500000000000000000000000000000000000000
    mem[3136] = mem[(26 * ceil32(arg1.length)) + 4992]
    mem[(27 * ceil32(arg1.length)) + 4384 len arg1.length] = arg1[all]
    mem[(27 * ceil32(arg1.length)) + arg1.length + 4384] = 0
    if arg1.length < 704:
        revert with 0, 32, 12, 0xfe494e56414c49445f53495a4500000000000000000000000000000000000000
    mem[3168] = mem[(27 * ceil32(arg1.length)) + 5056]
    mem[(28 * ceil32(arg1.length)) + 4416 len arg1.length] = arg1[all]
    mem[(28 * ceil32(arg1.length)) + arg1.length + 4416] = 0
    if arg1.length < 736:
        revert with 0, 
                    32,
                    12,
                    0xfe494e56414c49445f53495a4500000000000000000000000000000000000000,
                    mem[(30 * ceil32(arg1.length)) + 4516 len 33 * ceil32(arg1.length)]
    _188 = mem[(28 * ceil32(arg1.length)) + 5120]
    mem[(30 * ceil32(arg1.length)) + 4416] = 12
    mem[(30 * ceil32(arg1.length)) + 4448] = 0xfe494e56414c49445f53495a4500000000000000000000000000000000000000
    if arg1.length != _188 + 736:
        mem[(30 * ceil32(arg1.length)) + 4580 len 0] = None
        revert with 0, '', 0, mem[(30 * ceil32(arg1.length)) + 4580 len 33 * ceil32(arg1.length)]
    mem[(30 * ceil32(arg1.length)) + 4480] = 26
    mem[(30 * ceil32(arg1.length)) + 4512] = 'UNAUTHORIZED_ONCHAIN_ORDER'
    if msg.sender == mem[2060 len 20]:
        _204 = sha3(mem[(28 * ceil32(arg1.length)) + 5152 len mem[(28 * ceil32(arg1.length)) + 5120]])
        mem[(30 * ceil32(arg1.length)) + 4704] = mem[2496]
        mem[(30 * ceil32(arg1.length)) + 4736] = mem[3276 len 20]
        mem[(30 * ceil32(arg1.length)) + 4768] = mem[2080]
        mem[(30 * ceil32(arg1.length)) + 4800] = mem[2112]
        mem[(30 * ceil32(arg1.length)) + 4832] = 0
        mem[(30 * ceil32(arg1.length)) + 4864] = mem[(8 * ceil32(arg1.length)) + 3852 len 20]
        mem[(30 * ceil32(arg1.length)) + 4896] = mem[2432]
        mem[(30 * ceil32(arg1.length)) + 4928] = mem[2464]
        mem[(30 * ceil32(arg1.length)) + 4960] = mem[2784]
        mem[(30 * ceil32(arg1.length)) + 4992] = mem[2624]
        mem[(30 * ceil32(arg1.length)) + 5024] = mem[2816]
        mem[(30 * ceil32(arg1.length)) + 5056] = mem[2720]
        mem[(30 * ceil32(arg1.length)) + 5088] = mem[2752]
        mem[(30 * ceil32(arg1.length)) + 5120] = mem[2592]
        mem[(30 * ceil32(arg1.length)) + 5152] = mem[3040]
        mem[(30 * ceil32(arg1.length)) + 5184] = mem[3072]
        mem[(30 * ceil32(arg1.length)) + 5216] = mem[3104]
        mem[(30 * ceil32(arg1.length)) + 5248] = mem[3136]
        mem[(30 * ceil32(arg1.length)) + 5280] = mem[3168]
        mem[(30 * ceil32(arg1.length)) + 5312] = _204
        if stor0[6401][0xaea25658c273c666156bd427f83a666135fcde6887a6c25fc1cd1562bc4f3f34][sha3(0x40b942178d2a51f1f61934268590778feb8114db632db7d88537c98d2b05c5f2, mem[2144], mem[2176], mem[2656], mem[(7 * ceil32(arg1.length)) + 3584], mem[2496], mem[3276 len 20], mem[2080], mem[2112], 0, mem[(8 * ceil32(arg1.length)) + 3852 len 20], mem[2432], mem[2464], mem[2784], mem[2624], mem[2816], mem[2720], mem[2752], mem[2592], mem[3040], mem[3072], mem[3104], mem[3136], mem[3168], _204)]:
            mem[(30 * ceil32(arg1.length)) + 4708 len 0] = None
            revert with 0, 'ALREADY_EXIST', 0, mem[(30 * ceil32(arg1.length)) + 4708 len 33 * ceil32(arg1.length)]
        stor0[6401][0xaea25658c273c666156bd427f83a666135fcde6887a6c25fc1cd1562bc4f3f34][sha3(0x40b942178d2a51f1f61934268590778feb8114db632db7d88537c98d2b05c5f2, mem[2144], mem[2176], mem[2656], mem[(7 * ceil32(arg1.length)) + 3584], mem[2496], mem[3276 len 20], mem[2080], mem[2112], 0, mem[(8 * ceil32(arg1.length)) + 3852 len 20], mem[2432], mem[2464], mem[2784], mem[2624], mem[2816], mem[2720], mem[2752], mem[2592], mem[3040], mem[3072], mem[3104], mem[3136], mem[3168], _204)] = 1
        mem[(30 * ceil32(arg1.length)) + 4640] = 64
        mem[(30 * ceil32(arg1.length)) + 4672] = arg1.length
        mem[(30 * ceil32(arg1.length)) + 4704 len arg1.length] = arg1[all]
        mem[arg1.length + (30 * ceil32(arg1.length)) + 4704] = 0
        emit 0x59f85850: sha3(6401, 0xaea25658c273c666156bd427f83a666135fcde6887a6c25fc1cd1562bc4f3f34, sha3(0x40b942178d2a51f1f61934268590778feb8114db632db7d88537c98d2b05c5f2, mem[2144], mem[2176], mem[2656], mem[(7 * ceil32(arg1.length)) + 3584], mem[2496], mem[3276 len 20], mem[2080], mem[2112], 0, mem[(8 * ceil32(arg1.length)) + 3852 len 20], mem[2432], mem[2464], mem[2784], mem[2624], mem[2816], mem[2720], mem[2752], mem[2592], mem[3040], mem[3072], mem[3104], mem[3136], mem[3168], _204)), Array(len=arg1.length, data=arg1[all])
        return sha3(6401, 0xaea25658c273c666156bd427f83a666135fcde6887a6c25fc1cd1562bc4f3f34, sha3(0x40b942178d2a51f1f61934268590778feb8114db632db7d88537c98d2b05c5f2, mem[2144], mem[2176], mem[2656], mem[(7 * ceil32(arg1.length)) + 3584], mem[2496], mem[3276 len 20], mem[2080], mem[2112], 0, mem[(8 * ceil32(arg1.length)) + 3852 len 20], mem[2432], mem[2464], mem[2784], mem[2624], mem[2816], mem[2720], mem[2752], mem[2592], mem[3040], mem[3072], mem[3104], mem[3136], mem[3168], _204)), 
               mem[(30 * ceil32(arg1.length)) + 4640 len 33 * ceil32(arg1.length)]
    if mem[2348 len 20] != msg.sender:
        mem[(30 * ceil32(arg1.length)) + 4644 len 0] = None
        revert with 0, 'UNAUTHORIZED_ONCHAIN_ORDER', 0, mem[(30 * ceil32(arg1.length)) + 4644 len 33 * ceil32(arg1.length)]
    _241 = sha3(mem[(28 * ceil32(arg1.length)) + 5152 len mem[(28 * ceil32(arg1.length)) + 5120]])
    mem[(30 * ceil32(arg1.length)) + 4704] = mem[2496]
    mem[(30 * ceil32(arg1.length)) + 4736] = mem[3276 len 20]
    mem[(30 * ceil32(arg1.length)) + 4768] = mem[2080]
    mem[(30 * ceil32(arg1.length)) + 4800] = mem[2112]
    mem[(30 * ceil32(arg1.length)) + 4832] = 0
    mem[(30 * ceil32(arg1.length)) + 4864] = mem[(8 * ceil32(arg1.length)) + 3852 len 20]
    mem[(30 * ceil32(arg1.length)) + 4896] = mem[2432]
    mem[(30 * ceil32(arg1.length)) + 4928] = mem[2464]
    mem[(30 * ceil32(arg1.length)) + 4960] = mem[2784]
    mem[(30 * ceil32(arg1.length)) + 4992] = mem[2624]
    mem[(30 * ceil32(arg1.length)) + 5024] = mem[2816]
    mem[(30 * ceil32(arg1.length)) + 5056] = mem[2720]
    mem[(30 * ceil32(arg1.length)) + 5088] = mem[2752]
    mem[(30 * ceil32(arg1.length)) + 5120] = mem[2592]
    mem[(30 * ceil32(arg1.length)) + 5152] = mem[3040]
    mem[(30 * ceil32(arg1.length)) + 5184] = mem[3072]
    mem[(30 * ceil32(arg1.length)) + 5216] = mem[3104]
    mem[(30 * ceil32(arg1.length)) + 5248] = mem[3136]
    mem[(30 * ceil32(arg1.length)) + 5280] = mem[3168]
    mem[(30 * ceil32(arg1.length)) + 5312] = _241
    if stor0[6401][0xaea25658c273c666156bd427f83a666135fcde6887a6c25fc1cd1562bc4f3f34][sha3(0x40b942178d2a51f1f61934268590778feb8114db632db7d88537c98d2b05c5f2, mem[2144], mem[2176], mem[2656], mem[(7 * ceil32(arg1.length)) + 3584], mem[2496], mem[3276 len 20], mem[2080], mem[2112], 0, mem[(8 * ceil32(arg1.length)) + 3852 len 20], mem[2432], mem[2464], mem[2784], mem[2624], mem[2816], mem[2720], mem[2752], mem[2592], mem[3040], mem[3072], mem[3104], mem[3136], mem[3168], _241)]:
        mem[(30 * ceil32(arg1.length)) + 4708 len 0] = None
        revert with 0, 'ALREADY_EXIST', 0, mem[(30 * ceil32(arg1.length)) + 4708 len 33 * ceil32(arg1.length)]
    stor0[6401][0xaea25658c273c666156bd427f83a666135fcde6887a6c25fc1cd1562bc4f3f34][sha3(0x40b942178d2a51f1f61934268590778feb8114db632db7d88537c98d2b05c5f2, mem[2144], mem[2176], mem[2656], mem[(7 * ceil32(arg1.length)) + 3584], mem[2496], mem[3276 len 20], mem[2080], mem[2112], 0, mem[(8 * ceil32(arg1.length)) + 3852 len 20], mem[2432], mem[2464], mem[2784], mem[2624], mem[2816], mem[2720], mem[2752], mem[2592], mem[3040], mem[3072], mem[3104], mem[3136], mem[3168], _241)] = 1
    mem[(30 * ceil32(arg1.length)) + 4640] = 64
    mem[(30 * ceil32(arg1.length)) + 4672] = arg1.length
    mem[(30 * ceil32(arg1.length)) + 4704 len arg1.length] = arg1[all]
    mem[arg1.length + (30 * ceil32(arg1.length)) + 4704] = 0
    emit 0x59f85850: sha3(6401, 0xaea25658c273c666156bd427f83a666135fcde6887a6c25fc1cd1562bc4f3f34, sha3(0x40b942178d2a51f1f61934268590778feb8114db632db7d88537c98d2b05c5f2, mem[2144], mem[2176], mem[2656], mem[(7 * ceil32(arg1.length)) + 3584], mem[2496], mem[3276 len 20], mem[2080], mem[2112], 0, mem[(8 * ceil32(arg1.length)) + 3852 len 20], mem[2432], mem[2464], mem[2784], mem[2624], mem[2816], mem[2720], mem[2752], mem[2592], mem[3040], mem[3072], mem[3104], mem[3136], mem[3168], _241)), Array(len=arg1.length, data=arg1[all])
    return sha3(6401, 0xaea25658c273c666156bd427f83a666135fcde6887a6c25fc1cd1562bc4f3f34, sha3(0x40b942178d2a51f1f61934268590778feb8114db632db7d88537c98d2b05c5f2, mem[2144], mem[2176], mem[2656], mem[(7 * ceil32(arg1.length)) + 3584], mem[2496], mem[3276 len 20], mem[2080], mem[2112], 0, mem[(8 * ceil32(arg1.length)) + 3852 len 20], mem[2432], mem[2464], mem[2784], mem[2624], mem[2816], mem[2720], mem[2752], mem[2592], mem[3040], mem[3072], mem[3104], mem[3136], mem[3168], _241)), 
           mem[(30 * ceil32(arg1.length)) + 4640 len 33 * ceil32(arg1.length)]
}



}
