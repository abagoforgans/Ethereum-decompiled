contract main {




// =====================  Runtime code  =====================


#
#  - sub_2536f8b5(?)
#
const VERSION = 1


mapping of struct sub_ada78075;
mapping of address sub_8e970312;
mapping of address lookupUrl;
mapping of address sub_3aee80a8;
mapping of address sub_3b0a5cdf;

function sub_3aee80a8(?) payable {
    require calldata.size - 4 >= 32
    return sub_3aee80a8[arg1]
}

function sub_3b0a5cdf(?) payable {
    require calldata.size - 4 >= 32
    return sub_3b0a5cdf[arg1]
}

function lookupUrl(bytes32 arg1) payable {
    require calldata.size - 4 >= 32
    return lookupUrl[arg1]
}

function sub_8e970312(?) payable {
    require calldata.size - 4 >= 32
    return sub_8e970312[arg1]
}

function sub_ada78075(?) payable {
    require calldata.size - 4 >= 32
    if sub_ada78075[address(arg1)].length <= 0:
        revert with 0, 'Unlisted Validator'
    return address(sub_ada78075[address(arg1)].field_768)
}

function _fallback() payable {
    revert
}

function isValidator(address arg1) payable {
    require calldata.size - 4 >= 32
    return (sub_ada78075[address(arg1)].length > 0)
}

function sub_7f72185a(?) payable {
    require calldata.size - 4 >= 32
    if sub_ada78075[address(arg1)].length <= 0:
        revert with 0, 'Unlisted Validator'
    return sub_ada78075[address(arg1)].field_1024, sub_ada78075[address(arg1)].field_1280
}

function leave() payable {
    mem[64] = 96
    if sub_ada78075[address(msg.sender)].length <= 0:
        revert with 0, 'Sender is not a listed Validator'
    mem[96] = sub_ada78075[address(msg.sender)].field_0
    idx = 96
    s = 0
    while sub_ada78075[address(msg.sender)].length + 96 > idx + 32:
        mem[idx + 32] = sub_ada78075[address(msg.sender)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    sub_8e970312[mem[96 len stor0[address(msg.sender)].length]] = 0
    mem[0] = sha3(address(msg.sender), 0) + 2
    mem[96] = sub_ada78075[address(msg.sender)][2].field_0
    idx = mem[64]
    s = 0
    while sub_ada78075[address(msg.sender)][2].length + 96 > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[0] = sha3(mem[mem[64] len sub_ada78075[address(msg.sender)][2].length + -mem[64] + 96])
    lookupUrl[mem[0]] = 0
    _1083 = mem[64]
    mem[0] = sha3(address(msg.sender), 0) + 1
    mem[mem[64]] = sub_ada78075[address(msg.sender)][1].field_0
    idx = mem[64]
    s = 0
    while _1083 + sub_ada78075[address(msg.sender)][1].length > idx + 32:
        mem[idx + 32] = stor[s + sha3(mem[0]) + 1]
        idx = idx + 32
        s = s + 1
        continue 
    mem[0] = sha3(mem[mem[64] len _1083 + sub_ada78075[address(msg.sender)][1].length - mem[64]])
    sub_3aee80a8[mem[0]] = 0
    sub_3b0a5cdf[address(stor0[address(msg.sender)].field_768)] = 0
    sub_ada78075[address(msg.sender)].field_0 = 0
    if 31 < sub_ada78075[address(msg.sender)].length:
        idx = 0
        while sub_ada78075[address(msg.sender)].length + 31 / 32 > idx:
            sub_ada78075[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_ada78075[address(msg.sender)].field_256 = 0
    if 31 < sub_ada78075[address(msg.sender)][1].length:
        idx = 0
        while sub_ada78075[address(msg.sender)][1].length + 31 / 32 > idx:
            sub_ada78075[address(msg.sender)][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
    sub_ada78075[address(msg.sender)].field_512 = 0
    if 31 < sub_ada78075[address(msg.sender)][2].length:
        idx = 0
        while sub_ada78075[address(msg.sender)][2].length + 31 / 32 > idx:
            sub_ada78075[address(msg.sender)][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
    address(sub_ada78075[address(msg.sender)].field_768) = 0
    sub_ada78075[address(msg.sender)].field_1024 = 0
    sub_ada78075[address(msg.sender)].field_1280 = 0
    emit 0x457a63bb: msg.sender
}

function sub_c6858e27(?) payable {
    require calldata.size - 4 >= 128
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + arg2.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + 128] = arg2.length
    mem[ceil32(arg1.length) + 160 len arg2.length] = arg2[all]
    mem[ceil32(arg1.length) + arg2.length + 160] = 0
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + arg3.length + 36 <= calldata.size
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 160] = arg3.length
    mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len arg3.length] = arg3[all]
    mem[ceil32(arg1.length) + ceil32(arg2.length) + arg3.length + 192] = 0
    if arg1.length <= 0:
        revert with 0, 'Please provide a valid name'
    if arg3.length <= 0:
        revert with 0, 'Please provide a valid website'
    if arg2.length != 4:
        revert with 0, 
                    32,
                    68,
                    0xfe506c65617365207061737320616e206970206164647265737320726570726573656e74656420617320616e206172726179206f662065786163746c7920342062797465,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 328 len 28]
    if not arg4:
        revert with 0, 
                    32,
                    35,
                    0x72506c656173652070726f7669646520612076616c6964204f72627320416464726573,
                    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 295 len 29]
    if sub_8e970312[arg1[all]]:
        if sub_8e970312[arg1[all]] != msg.sender:
            revert with 0, 
                        32,
                        43,
                        0x724e616d6520697320616c726561647920696e2075736520627920616e6f746865722076616c696461746f,
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 303 len 21]
    if lookupUrl[arg3[all]]:
        if lookupUrl[arg3[all]] != msg.sender:
            revert with 0, 
                        32,
                        42,
                        0x7355524c20697320616c726561647920696e2075736520627920616e6f746865722076616c696461746f,
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 302 len 22]
    if sub_3aee80a8[arg2[all]]:
        if sub_3aee80a8[arg2[all]] != msg.sender:
            revert with 0, 
                        32,
                        49,
                        0x724950204164647265737320697320616c726561647920696e2075736520627920616e6f746865722076616c696461746f,
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 309 len 15]
    if sub_3b0a5cdf[address(arg4)]:
        if sub_3b0a5cdf[address(arg4)] != msg.sender:
            revert with 0, 
                        32,
                        51,
                        0x734f726273204164647265737320697320616c726561647920696e2075736520627920616e6f746865722076616c696461746f,
                        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 311 len 13]
    sub_8e970312[arg1[all]] = msg.sender
    lookupUrl[arg3[all]] = msg.sender
    sub_3aee80a8[arg2[all]] = msg.sender
    sub_3b0a5cdf[address(arg4)] = msg.sender
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 192] = 96
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 224] = ceil32(arg1.length) + 128
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 256] = ceil32(arg1.length) + ceil32(arg2.length) + 160
    mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 288] = arg4
    if sub_ada78075[address(msg.sender)].field_1024:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320] = sub_ada78075[address(msg.sender)].field_1024
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = block.number
        sub_ada78075[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
        sub_ada78075[address(msg.sender)][1][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
        sub_ada78075[address(msg.sender)][2][].field_0 = Array(len=Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)], data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])
        address(sub_ada78075[address(msg.sender)].field_768) = arg4
    else:
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 320] = block.number
        mem[ceil32(arg1.length) + ceil32(arg2.length) + ceil32(arg3.length) + 352] = block.number
        sub_ada78075[address(msg.sender)][].field_0 = Array(len=arg1.length, data=arg1[all])
        sub_ada78075[address(msg.sender)][1][].field_0 = Array(len=Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)], data=mem[ceil32(arg1.length) + 160 len Mask(8 * -ceil32(arg1.length) + arg1.length + 32, 0, 0), mem[arg1.length + 160 len -arg1.length + ceil32(arg1.length)]])
        sub_ada78075[address(msg.sender)][2][].field_0 = Array(len=Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)], data=mem[ceil32(arg1.length) + ceil32(arg2.length) + 192 len Mask(8 * -ceil32(arg2.length) + arg2.length + 32, 0, 0), mem[ceil32(arg1.length) + arg2.length + 192 len -arg2.length + ceil32(arg2.length)]])
        address(sub_ada78075[address(msg.sender)].field_768) = arg4
        sub_ada78075[address(msg.sender)].field_1024 = block.number
    sub_ada78075[address(msg.sender)].field_1280 = block.number
    emit ValidatorRegistered(msg.sender);
}

function sub_e7b11622(?) payable {
    require calldata.size - 4 >= 32
    mem[32] = 0
    mem[96] = sub_ada78075[arg1].length
    mem[128] = sub_ada78075[arg1].field_0
    idx = 128
    s = 0
    while sub_ada78075[arg1].length + 96 > idx:
        mem[idx + 32] = sub_ada78075[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_ada78075[arg1].length) + 128] = sub_ada78075[arg1][1].length
    mem[ceil32(sub_ada78075[arg1].length) + 160] = sub_ada78075[arg1][1].field_0
    idx = ceil32(sub_ada78075[arg1].length) + 160
    s = 0
    while ceil32(sub_ada78075[arg1].length) + sub_ada78075[arg1][1].length + 128 > idx:
        mem[idx + 32] = sub_ada78075[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 192
    mem[ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + 160] = sub_ada78075[arg1][2].length
    mem[0] = sha3(arg1, 0) + 2
    mem[ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + 192] = sub_ada78075[arg1][2].field_0
    idx = ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + 192
    s = 0
    while ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + sub_ada78075[arg1][2].length + 160 > idx:
        mem[idx + 32] = sub_ada78075[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 288] = address(sub_ada78075[arg1].field_768)
    mem[ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 320] = sub_ada78075[arg1].field_1024
    mem[ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 352] = sub_ada78075[arg1].field_1280
    mem[ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 192] = 192
    mem[ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 384] = sub_ada78075[arg1].length
    mem[ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 416 len ceil32(sub_ada78075[arg1].length)] = mem[128 len ceil32(sub_ada78075[arg1].length)]
    mem[ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 224] = sub_ada78075[arg1].length + 224
    mem[sub_ada78075[arg1].length + ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 416] = sub_ada78075[arg1][1].length
    mem[sub_ada78075[arg1].length + ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 448 len ceil32(sub_ada78075[arg1][1].length)] = mem[ceil32(sub_ada78075[arg1].length) + 160 len ceil32(sub_ada78075[arg1][1].length)]
    if not sub_ada78075[arg1][1].length % 32:
        mem[ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 256] = sub_ada78075[arg1][1].length + sub_ada78075[arg1].length + 256
        mem[sub_ada78075[arg1][1].length + sub_ada78075[arg1].length + ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 448] = sub_ada78075[arg1][2].length
        mem[sub_ada78075[arg1][1].length + sub_ada78075[arg1].length + ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 480 len ceil32(sub_ada78075[arg1][2].length)] = mem[ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + 192 len ceil32(sub_ada78075[arg1][2].length)]
        if not sub_ada78075[arg1][2].length % 32:
            return Array(len=sub_ada78075[arg1].length, data=mem[128 len ceil32(sub_ada78075[arg1].length)], mem[(2 * ceil32(sub_ada78075[arg1].length)) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 416 len sub_ada78075[arg1][2].length + sub_ada78075[arg1][1].length + sub_ada78075[arg1].length + -ceil32(sub_ada78075[arg1].length) + 64]), 
                   sub_ada78075[arg1].length + 224,
                   sub_ada78075[arg1][1].length + sub_ada78075[arg1].length + 256,
                   address(sub_ada78075[arg1].field_768),
                   sub_ada78075[arg1].field_1024,
                   sub_ada78075[arg1].field_1280
        mem[floor32(sub_ada78075[arg1][2].length) + sub_ada78075[arg1][1].length + sub_ada78075[arg1].length + ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 480] = mem[floor32(sub_ada78075[arg1][2].length) + sub_ada78075[arg1][1].length + sub_ada78075[arg1].length + ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + -sub_ada78075[arg1][2].length % 32 + 512 len sub_ada78075[arg1][2].length % 32]
        return Array(len=sub_ada78075[arg1].length, data=mem[128 len ceil32(sub_ada78075[arg1].length)], mem[(2 * ceil32(sub_ada78075[arg1].length)) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 416 len floor32(sub_ada78075[arg1][2].length) + sub_ada78075[arg1][1].length + sub_ada78075[arg1].length + -ceil32(sub_ada78075[arg1].length) + 96]), 
               sub_ada78075[arg1].length + 224,
               sub_ada78075[arg1][1].length + sub_ada78075[arg1].length + 256,
               address(sub_ada78075[arg1].field_768),
               sub_ada78075[arg1].field_1024,
               sub_ada78075[arg1].field_1280
    mem[floor32(sub_ada78075[arg1][1].length) + sub_ada78075[arg1].length + ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 448] = mem[floor32(sub_ada78075[arg1][1].length) + sub_ada78075[arg1].length + ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + -sub_ada78075[arg1][1].length % 32 + 480 len sub_ada78075[arg1][1].length % 32]
    mem[ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 256] = floor32(sub_ada78075[arg1][1].length) + sub_ada78075[arg1].length + 288
    mem[floor32(sub_ada78075[arg1][1].length) + sub_ada78075[arg1].length + ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 480] = sub_ada78075[arg1][2].length
    mem[floor32(sub_ada78075[arg1][1].length) + sub_ada78075[arg1].length + ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 512 len ceil32(sub_ada78075[arg1][2].length)] = mem[ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + 192 len ceil32(sub_ada78075[arg1][2].length)]
    if not sub_ada78075[arg1][2].length % 32:
        return Array(len=sub_ada78075[arg1].length, data=mem[128 len ceil32(sub_ada78075[arg1].length)], mem[(2 * ceil32(sub_ada78075[arg1].length)) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 416 len sub_ada78075[arg1][2].length + floor32(sub_ada78075[arg1][1].length) + sub_ada78075[arg1].length + -ceil32(sub_ada78075[arg1].length) + 96]), 
               sub_ada78075[arg1].length + 224,
               floor32(sub_ada78075[arg1][1].length) + sub_ada78075[arg1].length + 288,
               address(sub_ada78075[arg1].field_768),
               sub_ada78075[arg1].field_1024,
               sub_ada78075[arg1].field_1280
    mem[floor32(sub_ada78075[arg1][2].length) + floor32(sub_ada78075[arg1][1].length) + sub_ada78075[arg1].length + ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 512] = mem[floor32(sub_ada78075[arg1][2].length) + floor32(sub_ada78075[arg1][1].length) + sub_ada78075[arg1].length + ceil32(sub_ada78075[arg1].length) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + -sub_ada78075[arg1][2].length % 32 + 544 len sub_ada78075[arg1][2].length % 32]
    return Array(len=sub_ada78075[arg1].length, data=mem[128 len ceil32(sub_ada78075[arg1].length)], mem[(2 * ceil32(sub_ada78075[arg1].length)) + ceil32(sub_ada78075[arg1][1].length) + ceil32(sub_ada78075[arg1][2].length) + 416 len floor32(sub_ada78075[arg1][2].length) + floor32(sub_ada78075[arg1][1].length) + sub_ada78075[arg1].length + -ceil32(sub_ada78075[arg1].length) + 128]), 
           sub_ada78075[arg1].length + 224,
           floor32(sub_ada78075[arg1][1].length) + sub_ada78075[arg1].length + 288,
           address(sub_ada78075[arg1].field_768),
           sub_ada78075[arg1].field_1024,
           sub_ada78075[arg1].field_1280
}



}
