contract main {




// =====================  Runtime code  =====================


const VERSION = 1


mapping of struct sub_ada78075;
mapping of address sub_0d69ac04;
mapping of address sub_2b19e34e;

function sub_0d69ac04(?) payable {
    require calldata.size - 4 >= 32
    return sub_0d69ac04[Mask(32, 224, arg1)]
}

function sub_2b19e34e(?) payable {
    require calldata.size - 4 >= 32
    return sub_2b19e34e[Mask(160, 96, arg1)]
}

function sub_ada78075(?) payable {
    require calldata.size - 4 >= 32
    if sub_ada78075[address(arg1)].field_1024 <= 0:
        revert with 0, 'Unlisted Validator'
    return Mask(160, 96, sub_ada78075[address(arg1)].field_768)
}

function _fallback() payable {
    revert
}

function isValidator(address arg1) payable {
    require calldata.size - 4 >= 32
    return (sub_ada78075[address(arg1)].field_1024 > 0)
}

function sub_50d8f786(?) payable {
    require calldata.size - 4 >= 32
    if sub_ada78075[address(arg1)].field_1024 <= 0:
        revert with 0, 'Unlisted Validator'
    return sub_ada78075[address(arg1)].field_1024, sub_ada78075[address(arg1)].field_1280
}

function leave() payable {
    if sub_ada78075[address(msg.sender)].field_1024 <= 0:
        revert with 0, 'Sender is not a listed Validator'
    sub_0d69ac04[Mask(32, 224, stor0[address(msg.sender)].field_256)] = 0
    sub_2b19e34e[Mask(160, 96, stor0[address(msg.sender)].field_768)] = 0
    sub_ada78075[address(msg.sender)].field_0 = 0
    if 31 < sub_ada78075[address(msg.sender)].length:
        idx = 0
        while sub_ada78075[address(msg.sender)].length + 31 / 32 > idx:
            sub_ada78075[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_ada78075[address(msg.sender)].field_256 = 0
    sub_ada78075[address(msg.sender)].field_512 = 0
    if 31 < sub_ada78075[address(msg.sender)][2].length:
        idx = 0
        while sub_ada78075[address(msg.sender)][2].length + 31 / 32 > idx:
            sub_ada78075[address(msg.sender)][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    sub_ada78075[address(msg.sender)].field_768 = 0
    sub_ada78075[address(msg.sender)].field_1024 = 0
    sub_ada78075[address(msg.sender)].field_1280 = 0
    emit 0x457a63bb: msg.sender
}

function sub_9b9fb164(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    if arg1.length <= 0:
        revert with 0, 'Please provide a valid name'
    if arg3.length <= 0:
        revert with 0, 'Please provide a valid website'
    if sub_ada78075[address(msg.sender)].field_1024 <= 0:
        revert with 0, 'Validator doesnt exist'
    if not Mask(32, 224, arg2):
        revert with 0, 
                    32,
                    73,
                    0x72506c65617365207061737320612076616c6964206970206164647265737320726570726573656e74656420617320616e206172726179206f662065786163746c7920342062797465,
                    mem[ceil32(arg1.length) + ceil32(arg3.length) + 301 len 23]
    if not Mask(160, 96, arg4):
        revert with 0, 
                    32,
                    35,
                    0x72506c656173652070726f7669646520612076616c6964204f72627320416464726573,
                    mem[ceil32(arg1.length) + ceil32(arg3.length) + 263 len 29]
    if sub_0d69ac04[Mask(32, 224, arg2)]:
        if sub_0d69ac04[Mask(32, 224, arg2)] != msg.sender:
            revert with 0, 
                        32,
                        49,
                        0x734950204164647265737320697320616c726561647920696e2075736520627920616e6f746865722076616c696461746f,
                        mem[ceil32(arg1.length) + ceil32(arg3.length) + 277 len 15]
    if sub_2b19e34e[Mask(160, 96, arg4)]:
        if sub_2b19e34e[Mask(160, 96, arg4)] != msg.sender:
            revert with 0, 
                        32,
                        51,
                        0xfe4f726273204164647265737320697320616c726561647920696e2075736520627920616e6f746865722076616c696461746f,
                        mem[ceil32(arg1.length) + ceil32(arg3.length) + 279 len 13]
    sub_0d69ac04[Mask(32, 224, stor0[address(msg.sender)].field_256)] = 0
    sub_2b19e34e[Mask(160, 96, stor0[address(msg.sender)].field_768)] = 0
    sub_0d69ac04[Mask(32, 224, arg2)] = msg.sender
    sub_2b19e34e[Mask(160, 96, arg4)] = msg.sender
    sub_ada78075[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_ada78075[address(msg.sender)].field_256 = arg2
    sub_ada78075[address(msg.sender)][2][].field_0 = Array(len=arg3.length, data=arg3[all])
    sub_ada78075[address(msg.sender)].field_768 = Mask(160, 96, arg4) >> 96
    sub_ada78075[address(msg.sender)].field_1280 = block.number
    emit 0xb3a3a562: msg.sender
}

function sub_c611e584(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg3.length
    mem[ceil32(arg1.length) + 160 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + arg3.length + 160] = 0
    if arg1.length <= 0:
        revert with 0, 'Please provide a valid name'
    if arg3.length <= 0:
        revert with 0, 'Please provide a valid website'
    if sub_ada78075[address(msg.sender)].field_1024 > 0:
        revert with 0, 'Validator already exists'
    if not Mask(32, 224, arg2):
        revert with 0, 
                    32,
                    73,
                    0x72506c65617365207061737320612076616c6964206970206164647265737320726570726573656e74656420617320616e206172726179206f662065786163746c7920342062797465,
                    mem[ceil32(arg1.length) + ceil32(arg3.length) + 301 len 23]
    if not Mask(160, 96, arg4):
        revert with 0, 
                    32,
                    35,
                    0x72506c656173652070726f7669646520612076616c6964204f72627320416464726573,
                    mem[ceil32(arg1.length) + ceil32(arg3.length) + 263 len 29]
    if sub_0d69ac04[Mask(32, 224, arg2)]:
        revert with 0, 'IP address already in use'
    if sub_2b19e34e[Mask(160, 96, arg4)]:
        revert with 0, 
                    32,
                    51,
                    0xfe4f726273204164647265737320697320616c726561647920696e2075736520627920616e6f746865722076616c696461746f,
                    mem[ceil32(arg1.length) + ceil32(arg3.length) + 279 len 13]
    sub_0d69ac04[Mask(32, 224, arg2)] = msg.sender
    sub_2b19e34e[Mask(160, 96, arg4)] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 160] = 96
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 192] = Mask(32, 224, arg2)
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 224] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 256] = Mask(160, 96, arg4)
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 288] = block.number
    mem[ceil32(arg1.length) + ceil32(arg3.length) + 320] = block.number
    sub_ada78075[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
    sub_ada78075[address(msg.sender)].field_256 = arg2
    sub_ada78075[address(msg.sender)][2][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
    sub_ada78075[address(msg.sender)].field_768 = Mask(160, 96, arg4) >> 96
    sub_ada78075[address(msg.sender)].field_1024 = block.number
    sub_ada78075[address(msg.sender)].field_1280 = block.number
    emit ValidatorRegistered(msg.sender);
}

function sub_2536f8b5(?) payable {
    require calldata.size - 4 >= 32
    if sub_ada78075[address(arg1)].field_1024 <= 0:
        revert with 0, 'Unlisted Validator'
    mem[32] = 0
    mem[96] = sub_ada78075[address(arg1)].length
    mem[128] = sub_ada78075[address(arg1)].field_0
    idx = 128
    s = 0
    while sub_ada78075[address(arg1)].length + 96 > idx:
        mem[idx + 32] = sub_ada78075[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(sub_ada78075[address(arg1)].length) + ceil32(sub_ada78075[address(arg1)][2].length) + 160
    mem[ceil32(sub_ada78075[address(arg1)].length) + 128] = sub_ada78075[address(arg1)][2].length
    mem[0] = sha3(address(arg1), 0) + 2
    mem[ceil32(sub_ada78075[address(arg1)].length) + 160] = sub_ada78075[address(arg1)][2].field_0
    idx = ceil32(sub_ada78075[address(arg1)].length) + 160
    s = 0
    while ceil32(sub_ada78075[address(arg1)].length) + sub_ada78075[address(arg1)][2].length + 128 > idx:
        mem[idx + 32] = sub_ada78075[address(arg1)][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_ada78075[address(arg1)].length) + ceil32(sub_ada78075[address(arg1)][2].length) + 192] = Mask(32, 224, sub_ada78075[address(arg1)].field_256)
    mem[ceil32(sub_ada78075[address(arg1)].length) + ceil32(sub_ada78075[address(arg1)][2].length) + 256] = Mask(160, 96, sub_ada78075[address(arg1)].field_768)
    mem[ceil32(sub_ada78075[address(arg1)].length) + ceil32(sub_ada78075[address(arg1)][2].length) + 160] = 128
    mem[ceil32(sub_ada78075[address(arg1)].length) + ceil32(sub_ada78075[address(arg1)][2].length) + 288] = sub_ada78075[address(arg1)].length
    mem[ceil32(sub_ada78075[address(arg1)].length) + ceil32(sub_ada78075[address(arg1)][2].length) + 320 len ceil32(sub_ada78075[address(arg1)].length)] = mem[128 len ceil32(sub_ada78075[address(arg1)].length)]
    mem[ceil32(sub_ada78075[address(arg1)].length) + ceil32(sub_ada78075[address(arg1)][2].length) + 224] = sub_ada78075[address(arg1)].length + 160
    mem[sub_ada78075[address(arg1)].length + ceil32(sub_ada78075[address(arg1)].length) + ceil32(sub_ada78075[address(arg1)][2].length) + 320] = sub_ada78075[address(arg1)][2].length
    mem[sub_ada78075[address(arg1)].length + ceil32(sub_ada78075[address(arg1)].length) + ceil32(sub_ada78075[address(arg1)][2].length) + 352 len ceil32(sub_ada78075[address(arg1)][2].length)] = mem[ceil32(sub_ada78075[address(arg1)].length) + 160 len ceil32(sub_ada78075[address(arg1)][2].length)]
    if not sub_ada78075[address(arg1)][2].length % 32:
        return Array(len=sub_ada78075[address(arg1)].length, data=mem[128 len ceil32(sub_ada78075[address(arg1)].length)], mem[(2 * ceil32(sub_ada78075[address(arg1)].length)) + ceil32(sub_ada78075[address(arg1)][2].length) + 320 len sub_ada78075[address(arg1)][2].length + sub_ada78075[address(arg1)].length + -ceil32(sub_ada78075[address(arg1)].length) + 32]), 
               Mask(32, 224, sub_ada78075[address(arg1)].field_256),
               sub_ada78075[address(arg1)].length + 160,
               Mask(160, 96, sub_ada78075[address(arg1)].field_768)
    mem[floor32(sub_ada78075[address(arg1)][2].length) + sub_ada78075[address(arg1)].length + ceil32(sub_ada78075[address(arg1)].length) + ceil32(sub_ada78075[address(arg1)][2].length) + 352] = mem[floor32(sub_ada78075[address(arg1)][2].length) + sub_ada78075[address(arg1)].length + ceil32(sub_ada78075[address(arg1)].length) + ceil32(sub_ada78075[address(arg1)][2].length) + -sub_ada78075[address(arg1)][2].length % 32 + 384 len sub_ada78075[address(arg1)][2].length % 32]
    return Array(len=sub_ada78075[address(arg1)].length, data=mem[128 len ceil32(sub_ada78075[address(arg1)].length)], mem[(2 * ceil32(sub_ada78075[address(arg1)].length)) + ceil32(sub_ada78075[address(arg1)][2].length) + 320 len floor32(sub_ada78075[address(arg1)][2].length) + sub_ada78075[address(arg1)].length + -ceil32(sub_ada78075[address(arg1)].length) + 64]), 
           Mask(32, 224, sub_ada78075[address(arg1)].field_256),
           sub_ada78075[address(arg1)].length + 160,
           Mask(160, 96, sub_ada78075[address(arg1)].field_768)
}

function sub_f35d2a8f(?) payable {
    if sub_ada78075[address(msg.sender)].field_1024 <= 0:
        revert with 0, 'Unlisted Validator'
    mem[32] = 0
    mem[96] = sub_ada78075[address(msg.sender)].length
    mem[128] = sub_ada78075[address(msg.sender)].field_0
    idx = 128
    s = 0
    while sub_ada78075[address(msg.sender)].length + 96 > idx:
        mem[idx + 32] = sub_ada78075[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(sub_ada78075[address(msg.sender)].length) + ceil32(sub_ada78075[address(msg.sender)][2].length) + 160
    mem[ceil32(sub_ada78075[address(msg.sender)].length) + 128] = sub_ada78075[address(msg.sender)][2].length
    mem[0] = sha3(address(msg.sender), 0) + 2
    mem[ceil32(sub_ada78075[address(msg.sender)].length) + 160] = sub_ada78075[address(msg.sender)][2].field_0
    idx = ceil32(sub_ada78075[address(msg.sender)].length) + 160
    s = 0
    while ceil32(sub_ada78075[address(msg.sender)].length) + sub_ada78075[address(msg.sender)][2].length + 128 > idx:
        mem[idx + 32] = sub_ada78075[address(msg.sender)][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_ada78075[address(msg.sender)].length) + ceil32(sub_ada78075[address(msg.sender)][2].length) + 192] = Mask(32, 224, sub_ada78075[address(msg.sender)].field_256)
    mem[ceil32(sub_ada78075[address(msg.sender)].length) + ceil32(sub_ada78075[address(msg.sender)][2].length) + 256] = Mask(160, 96, sub_ada78075[address(msg.sender)].field_768)
    mem[ceil32(sub_ada78075[address(msg.sender)].length) + ceil32(sub_ada78075[address(msg.sender)][2].length) + 160] = 128
    mem[ceil32(sub_ada78075[address(msg.sender)].length) + ceil32(sub_ada78075[address(msg.sender)][2].length) + 288] = sub_ada78075[address(msg.sender)].length
    mem[ceil32(sub_ada78075[address(msg.sender)].length) + ceil32(sub_ada78075[address(msg.sender)][2].length) + 320 len ceil32(sub_ada78075[address(msg.sender)].length)] = mem[128 len ceil32(sub_ada78075[address(msg.sender)].length)]
    mem[ceil32(sub_ada78075[address(msg.sender)].length) + ceil32(sub_ada78075[address(msg.sender)][2].length) + 224] = sub_ada78075[address(msg.sender)].length + 160
    mem[sub_ada78075[address(msg.sender)].length + ceil32(sub_ada78075[address(msg.sender)].length) + ceil32(sub_ada78075[address(msg.sender)][2].length) + 320] = sub_ada78075[address(msg.sender)][2].length
    mem[sub_ada78075[address(msg.sender)].length + ceil32(sub_ada78075[address(msg.sender)].length) + ceil32(sub_ada78075[address(msg.sender)][2].length) + 352 len ceil32(sub_ada78075[address(msg.sender)][2].length)] = mem[ceil32(sub_ada78075[address(msg.sender)].length) + 160 len ceil32(sub_ada78075[address(msg.sender)][2].length)]
    if not sub_ada78075[address(msg.sender)][2].length % 32:
        return Array(len=sub_ada78075[address(msg.sender)].length, data=mem[128 len ceil32(sub_ada78075[address(msg.sender)].length)], mem[(2 * ceil32(sub_ada78075[address(msg.sender)].length)) + ceil32(sub_ada78075[address(msg.sender)][2].length) + 320 len sub_ada78075[address(msg.sender)][2].length + sub_ada78075[address(msg.sender)].length + -ceil32(sub_ada78075[address(msg.sender)].length) + 32]), 
               Mask(32, 224, sub_ada78075[address(msg.sender)].field_256),
               sub_ada78075[address(msg.sender)].length + 160,
               Mask(160, 96, sub_ada78075[address(msg.sender)].field_768)
    mem[floor32(sub_ada78075[address(msg.sender)][2].length) + sub_ada78075[address(msg.sender)].length + ceil32(sub_ada78075[address(msg.sender)].length) + ceil32(sub_ada78075[address(msg.sender)][2].length) + 352] = mem[floor32(sub_ada78075[address(msg.sender)][2].length) + sub_ada78075[address(msg.sender)].length + ceil32(sub_ada78075[address(msg.sender)].length) + ceil32(sub_ada78075[address(msg.sender)][2].length) + -sub_ada78075[address(msg.sender)][2].length % 32 + 384 len sub_ada78075[address(msg.sender)][2].length % 32]
    return Array(len=sub_ada78075[address(msg.sender)].length, data=mem[128 len ceil32(sub_ada78075[address(msg.sender)].length)], mem[(2 * ceil32(sub_ada78075[address(msg.sender)].length)) + ceil32(sub_ada78075[address(msg.sender)][2].length) + 320 len floor32(sub_ada78075[address(msg.sender)][2].length) + sub_ada78075[address(msg.sender)].length + -ceil32(sub_ada78075[address(msg.sender)].length) + 64]), 
           Mask(32, 224, sub_ada78075[address(msg.sender)].field_256),
           sub_ada78075[address(msg.sender)].length + 160,
           Mask(160, 96, sub_ada78075[address(msg.sender)].field_768)
}



}
