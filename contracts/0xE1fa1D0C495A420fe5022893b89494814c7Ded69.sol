contract main {




// =====================  Runtime code  =====================


#
#  - sub_5e924246(?)
#
uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
uint256 stor1; offset 32
uint256 sub_543ca195;
uint32 stor2;
address feeCollectorAddress;
uint256 stor2;
address tokenAddress;
mapping of struct stor4;
uint256 candidateCount;
mapping of uint256 sub_d64ac4a6;
mapping of uint256 sub_5f609695;
mapping of uint256 sub_12f2a2a9;

function sub_12f2a2a9(?) {
    return sub_12f2a2a9[arg1][arg2]
}

function sub_543ca195(?) {
    return sub_543ca195
}

function paused() {
    return bool(uint8(stor0.field_160))
}

function sub_5f609695(?) {
    return sub_5f609695[arg1]
}

function owner() {
    return owner
}

function candidateCount() {
    return candidateCount
}

function feeCollector() {
    return address(feeCollectorAddress)
}

function sub_d64ac4a6(?) {
    return sub_d64ac4a6[Mask(96, 160, arg1)]
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    return (owner == arg1)
}

function sub_6afee780(?) {
    require owner == msg.sender
    sub_543ca195 = arg1
}

function transferOwnership(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setFeeCollector(address arg1) {
    require owner == msg.sender
    address(feeCollectorAddress) = arg1
}

function unpause() {
    require owner == msg.sender
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpause()
}

function pause() {
    require owner == msg.sender
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Pause()
}

function sub_3207bcf0(?) {
    require owner == msg.sender
    if sub_d64ac4a6[Mask(96, 160, arg1)] <= 0:
        revert with 0, 'name not registered.'
    stor4[stor6[Mask(96, 160, arg1)]].field_768 = arg2
}

function sub_ebfd4148(?) {
    require owner == msg.sender
    if sub_5f609695[address(arg2)]:
        revert with 0, 'new addr should not have name'
    if address(stor4[stor6[Mask(96, 160, arg1)]].field_96) == arg2:
        revert with 0, 'new address is expected'
    address(stor4[stor6[Mask(96, 160, arg1)]].field_96) = arg2
    sub_5f609695[address(arg2)] = sub_d64ac4a6[Mask(96, 160, arg1)]
    sub_5f609695[address(stor4[stor6[Mask(96, 160, arg1)]].field_0)] = 0
}

function candidates(uint256 arg1) {
    mem[32] = 4
    mem[96] = stor4[arg1][1].length
    mem[128] = stor4[arg1][1].field_0
    idx = 128
    s = 0
    while stor4[arg1][1].length + 96 > idx:
        mem[idx + 32] = stor4[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[64] = ceil32(stor4[arg1][1].length) + ceil32(stor4[arg1][2].length) + 160
    mem[ceil32(stor4[arg1][1].length) + 128] = stor4[arg1][2].length
    mem[0] = sha3(arg1, 4) + 2
    mem[ceil32(stor4[arg1][1].length) + 160] = stor4[arg1][2].field_0
    idx = ceil32(stor4[arg1][1].length) + 160
    s = 0
    while ceil32(stor4[arg1][1].length) + stor4[arg1][2].length + 128 > idx:
        mem[idx + 32] = stor4[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor4[arg1][1].length) + ceil32(stor4[arg1][2].length) + 160] = Mask(96, 160, Mask(96, 0, stor4[arg1].field_0))
    mem[ceil32(stor4[arg1][1].length) + ceil32(stor4[arg1][2].length) + 192] = address(stor4[arg1].field_96)
    mem[ceil32(stor4[arg1][1].length) + ceil32(stor4[arg1][2].length) + 288] = stor4[arg1].field_768
    mem[ceil32(stor4[arg1][1].length) + ceil32(stor4[arg1][2].length) + 224] = 160
    mem[ceil32(stor4[arg1][1].length) + ceil32(stor4[arg1][2].length) + 320] = stor4[arg1][1].length
    mem[ceil32(stor4[arg1][1].length) + ceil32(stor4[arg1][2].length) + 352 len ceil32(stor4[arg1][1].length)] = mem[128 len ceil32(stor4[arg1][1].length)]
    mem[ceil32(stor4[arg1][1].length) + ceil32(stor4[arg1][2].length) + 256] = stor4[arg1][1].length + 192
    mem[stor4[arg1][1].length + ceil32(stor4[arg1][1].length) + ceil32(stor4[arg1][2].length) + 352] = stor4[arg1][2].length
    mem[stor4[arg1][1].length + ceil32(stor4[arg1][1].length) + ceil32(stor4[arg1][2].length) + 384 len ceil32(stor4[arg1][2].length)] = mem[ceil32(stor4[arg1][1].length) + 160 len ceil32(stor4[arg1][2].length)]
    if not stor4[arg1][2].length % 32:
        return Mask(96, 160, Mask(96, 0, stor4[arg1].field_0)), 
               address(stor4[arg1].field_0),
               Array(len=stor4[arg1][1].length, data=mem[128 len ceil32(stor4[arg1][1].length)], mem[(2 * ceil32(stor4[arg1][1].length)) + ceil32(stor4[arg1][2].length) + 352 len stor4[arg1][2].length + stor4[arg1][1].length + -ceil32(stor4[arg1][1].length) + 32]),
               stor4[arg1][1].length + 192,
               stor4[arg1].field_768
    mem[floor32(stor4[arg1][2].length) + stor4[arg1][1].length + ceil32(stor4[arg1][1].length) + ceil32(stor4[arg1][2].length) + 384] = mem[floor32(stor4[arg1][2].length) + stor4[arg1][1].length + ceil32(stor4[arg1][1].length) + ceil32(stor4[arg1][2].length) + -stor4[arg1][2].length % 32 + 416 len stor4[arg1][2].length % 32]
    return Mask(96, 160, Mask(96, 0, stor4[arg1].field_0)), 
           address(stor4[arg1].field_0),
           Array(len=stor4[arg1][1].length, data=mem[128 len ceil32(stor4[arg1][1].length)], mem[(2 * ceil32(stor4[arg1][1].length)) + ceil32(stor4[arg1][2].length) + 352 len floor32(stor4[arg1][2].length) + stor4[arg1][1].length + -ceil32(stor4[arg1][1].length) + 64]),
           stor4[arg1][1].length + 192,
           stor4[arg1].field_768
}

function sub_690c1f22(?) {
    require not uint8(stor0.field_160)
    if ('cd', 36).length > 64:
        revert with 0, 'io address is not valid'
    if ('cd', 68).length > 64:
        revert with 0, 'io address is not valid'
    idx = 0
    while idx < 12:
        if Mask(8, -(('mask_shl', 96, 160, -3, ('cd', 4)), 0) + 256, idx) << (('mask_shl', 96, 160, -3, ('cd', 4)), 0) - 8 < 0x6100000000000000000000000000000000000000000000000000000000000000:
            if Mask(8, -(('mask_shl', 96, 160, -3, ('cd', 4)), 0) + 256, idx) << (('mask_shl', 96, 160, -3, ('cd', 4)), 0) - 8 < 0x3000000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, -(('mask_shl', 96, 160, -3, ('cd', 4)), 0) + 256, idx):
                    revert with 0, 'invalid candiadate name.'
            else:
                if Mask(8, -(('mask_shl', 96, 160, -3, ('cd', 4)), 0) + 256, idx) << (('mask_shl', 96, 160, -3, ('cd', 4)), 0) - 8 > 0x3900000000000000000000000000000000000000000000000000000000000000:
                    if Mask(8, -(('mask_shl', 96, 160, -3, ('cd', 4)), 0) + 256, idx):
                        revert with 0, 'invalid candiadate name.'
        else:
            if Mask(8, -(('mask_shl', 96, 160, -3, ('cd', 4)), 0) + 256, idx) << (('mask_shl', 96, 160, -3, ('cd', 4)), 0) - 8 > 0x7a00000000000000000000000000000000000000000000000000000000000000:
                if Mask(8, -(('mask_shl', 96, 160, -3, ('cd', 4)), 0) + 256, idx) << (('mask_shl', 96, 160, -3, ('cd', 4)), 0) - 8 < 0x3000000000000000000000000000000000000000000000000000000000000000:
                    if Mask(8, -(('mask_shl', 96, 160, -3, ('cd', 4)), 0) + 256, idx):
                        revert with 0, 'invalid candiadate name.'
                else:
                    if Mask(8, -(('mask_shl', 96, 160, -3, ('cd', 4)), 0) + 256, idx) << (('mask_shl', 96, 160, -3, ('cd', 4)), 0) - 8 > 0x3900000000000000000000000000000000000000000000000000000000000000:
                        if Mask(8, -(('mask_shl', 96, 160, -3, ('cd', 4)), 0) + 256, idx):
                            revert with 0, 'invalid candiadate name.'
        idx = idx + 1
        continue 
    if sub_5f609695[address(msg.sender)] > 0:
        if not sub_d64ac4a6[Mask(96, 160, cd[4])]:
            sub_d64ac4a6[Mask(96, 160, Mask(96, 0, stor4[stor7[address(msg.sender)]].field_0))] = 0
            Mask(96, 0, stor4[stor7[address(msg.sender)]].field_0) = Mask(96, 160, cd[4]) >> 160
            sub_d64ac4a6[Mask(96, 160, cd[4])] = sub_5f609695[address(msg.sender)]
        mem[ceil32(('cd', 36).length) + ceil32(('cd', 68).length) + 192 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
        if sub_12f2a2a9[mem[ceil32(('cd', 36).length) + ceil32(('cd', 68).length) + 192]][mem[ceil32(('cd', 36).length) + ceil32(('cd', 68).length) + 224]]:
            stor4[stor7[address(msg.sender)]].field_512 = (2 * ('cd', 68).length) + 1
            s = 0
            idx = cd[68] + 36
            while cd[68] + ('cd', 68).length + 36 > idx:
                stor4[stor7[address(msg.sender)]][s + 2].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
            while stor4[stor7[address(msg.sender)]][2].length + 31 / 32 > idx:
                stor4[stor7[address(msg.sender)]][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
            mem[(2 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + 416] = stor4[stor7[address(msg.sender)]][1].field_0
            idx = (2 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + 416
            s = 0
            while (2 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + stor4[stor7[address(msg.sender)]][1].length + 416 > idx + 32:
                mem[idx + 32] = stor4[stor7[address(msg.sender)]][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(2 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + stor4[stor7[address(msg.sender)]][1].length + (floor32(stor4[stor7[address(msg.sender)]][1].length - 1) + -stor4[stor7[address(msg.sender)]][1].length + 32 % 32) + 416] = stor4[stor7[address(msg.sender)]][2].length
            mem[(2 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + stor4[stor7[address(msg.sender)]][1].length + (floor32(stor4[stor7[address(msg.sender)]][1].length - 1) + -stor4[stor7[address(msg.sender)]][1].length + 32 % 32) + 448] = stor4[stor7[address(msg.sender)]][2].field_0
            idx = (2 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + stor4[stor7[address(msg.sender)]][1].length + (floor32(stor4[stor7[address(msg.sender)]][1].length - 1) + -stor4[stor7[address(msg.sender)]][1].length + 32 % 32) + 448
            s = 0
            while (2 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + stor4[stor7[address(msg.sender)]][1].length + (floor32(stor4[stor7[address(msg.sender)]][1].length - 1) + -stor4[stor7[address(msg.sender)]][1].length + 32 % 32) + stor4[stor7[address(msg.sender)]][2].length + 448 > idx + 32:
                mem[idx + 32] = stor4[stor7[address(msg.sender)]][s + 2].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit 0x3340640a: sub_5f609695[address(msg.sender)], Mask(96, 160, cd[4]), msg.sender, Array(len=stor4[stor7[address(msg.sender)]][1].length, data=mem[(2 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + 416 len stor4[stor7[address(msg.sender)]][1].length + (floor32(stor4[stor7[address(msg.sender)]][1].length - 1) + -stor4[stor7[address(msg.sender)]][1].length + 32 % 32) + stor4[stor7[address(msg.sender)]][2].length + (floor32(stor4[stor7[address(msg.sender)]][2].length - 1) + -stor4[stor7[address(msg.sender)]][2].length + 32 % 32) + 32], ('cd', 100).length, call.data[cd[100] + 36 len ('cd', 100).length]), stor4[stor7[address(msg.sender)]][1].length + (floor32(stor4[stor7[address(msg.sender)]][1].length - 1) + -stor4[stor7[address(msg.sender)]][1].length + 32 % 32) + 224, stor4[stor7[address(msg.sender)]][1].length + (floor32(stor4[stor7[address(msg.sender)]][1].length - 1) + -stor4[stor7[address(msg.sender)]][1].length + 32 % 32) + stor4[stor7[address(msg.sender)]][2].length + (floor32(stor4[stor7[address(msg.sender)]][2].length - 1) + -stor4[stor7[address(msg.sender)]][2].length + 32 % 32) + 256
        else:
            mem[(2 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + 224] = stor4[stor7[address(msg.sender)]][1].field_0
            idx = (2 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + 224
            s = 0
            while (2 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + stor4[stor7[address(msg.sender)]][1].length + 192 > idx:
                mem[idx + 32] = stor4[stor7[address(msg.sender)]][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            if stor4[stor7[address(msg.sender)]][1].length > 0:
                sub_12f2a2a9[mem[(2 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + 224]][mem[(2 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + 256]] = 0
            stor4[stor7[address(msg.sender)]].field_256 = (2 * ('cd', 36).length) + 1
            s = 0
            idx = cd[36] + 36
            while cd[36] + ('cd', 36).length + 36 > idx:
                stor4[stor7[address(msg.sender)]][s + 1].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
            while stor4[stor7[address(msg.sender)]][1].length + 31 / 32 > idx:
                stor4[stor7[address(msg.sender)]][idx + 1].field_0 = 0
                idx = idx + 1
                continue 
            mem[(2 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + ceil32(stor4[stor7[address(msg.sender)]][1].length) + 256 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
            if ('cd', 36).length > 0:
                sub_12f2a2a9[mem[(2 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + ceil32(stor4[stor7[address(msg.sender)]][1].length) + 256]][mem[(2 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + ceil32(stor4[stor7[address(msg.sender)]][1].length) + 288]] = sub_5f609695[address(msg.sender)]
            stor4[stor7[address(msg.sender)]].field_512 = (2 * ('cd', 68).length) + 1
            s = 0
            idx = cd[68] + 36
            while cd[68] + ('cd', 68).length + 36 > idx:
                stor4[stor7[address(msg.sender)]][s + 2].field_0 = cd[idx]
                s = s + 1
                idx = idx + 32
                continue 
            idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
            while stor4[stor7[address(msg.sender)]][2].length + 31 / 32 > idx:
                stor4[stor7[address(msg.sender)]][idx + 2].field_0 = 0
                idx = idx + 1
                continue 
            mem[(4 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + ceil32(stor4[stor7[address(msg.sender)]][1].length) + 480] = stor4[stor7[address(msg.sender)]][1].field_0
            idx = (4 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + ceil32(stor4[stor7[address(msg.sender)]][1].length) + 480
            s = 0
            while (4 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + ceil32(stor4[stor7[address(msg.sender)]][1].length) + stor4[stor7[address(msg.sender)]][1].length + 480 > idx + 32:
                mem[idx + 32] = stor4[stor7[address(msg.sender)]][s + 1].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[(4 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + ceil32(stor4[stor7[address(msg.sender)]][1].length) + stor4[stor7[address(msg.sender)]][1].length + (floor32(stor4[stor7[address(msg.sender)]][1].length - 1) + -stor4[stor7[address(msg.sender)]][1].length + 32 % 32) + 480] = stor4[stor7[address(msg.sender)]][2].length
            mem[(4 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + ceil32(stor4[stor7[address(msg.sender)]][1].length) + stor4[stor7[address(msg.sender)]][1].length + (floor32(stor4[stor7[address(msg.sender)]][1].length - 1) + -stor4[stor7[address(msg.sender)]][1].length + 32 % 32) + 512] = stor4[stor7[address(msg.sender)]][2].field_0
            idx = (4 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + ceil32(stor4[stor7[address(msg.sender)]][1].length) + stor4[stor7[address(msg.sender)]][1].length + (floor32(stor4[stor7[address(msg.sender)]][1].length - 1) + -stor4[stor7[address(msg.sender)]][1].length + 32 % 32) + 512
            s = 0
            while (4 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + ceil32(stor4[stor7[address(msg.sender)]][1].length) + stor4[stor7[address(msg.sender)]][1].length + (floor32(stor4[stor7[address(msg.sender)]][1].length - 1) + -stor4[stor7[address(msg.sender)]][1].length + 32 % 32) + stor4[stor7[address(msg.sender)]][2].length + 512 > idx + 32:
                mem[idx + 32] = stor4[stor7[address(msg.sender)]][s + 2].field_256
                idx = idx + 32
                s = s + 1
                continue 
            emit 0x3340640a: sub_5f609695[address(msg.sender)], Mask(96, 160, cd[4]), msg.sender, Array(len=stor4[stor7[address(msg.sender)]][1].length, data=mem[(4 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + ceil32(stor4[stor7[address(msg.sender)]][1].length) + 480 len stor4[stor7[address(msg.sender)]][1].length + (floor32(stor4[stor7[address(msg.sender)]][1].length - 1) + -stor4[stor7[address(msg.sender)]][1].length + 32 % 32) + stor4[stor7[address(msg.sender)]][2].length + (floor32(stor4[stor7[address(msg.sender)]][2].length - 1) + -stor4[stor7[address(msg.sender)]][2].length + 32 % 32) + 32], ('cd', 100).length, call.data[cd[100] + 36 len ('cd', 100).length]), stor4[stor7[address(msg.sender)]][1].length + (floor32(stor4[stor7[address(msg.sender)]][1].length - 1) + -stor4[stor7[address(msg.sender)]][1].length + 32 % 32) + 224, stor4[stor7[address(msg.sender)]][1].length + (floor32(stor4[stor7[address(msg.sender)]][1].length - 1) + -stor4[stor7[address(msg.sender)]][1].length + 32 % 32) + stor4[stor7[address(msg.sender)]][2].length + (floor32(stor4[stor7[address(msg.sender)]][2].length - 1) + -stor4[stor7[address(msg.sender)]][2].length + 32 % 32) + 256
    else:
        if sub_d64ac4a6[Mask(96, 160, cd[4])]:
            revert with 0, 'name taken'
        mem[ceil32(('cd', 36).length) + ceil32(('cd', 68).length) + 192 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
        require not sub_12f2a2a9[mem[ceil32(('cd', 36).length) + ceil32(('cd', 68).length) + 192]][mem[ceil32(('cd', 36).length) + ceil32(('cd', 68).length) + 224]]
        mem[(2 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + 196] = msg.sender
        require ext_code.size(tokenAddress)
        call tokenAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(feeCollectorAddress), sub_543ca195
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Fee required'
        candidateCount++
        Mask(96, 0, stor4[stor5].field_0) = Mask(96, 160, cd[4]) >> 160
        address(stor4[stor5].field_96) = msg.sender
        stor4[stor5].field_256 = (2 * ('cd', 36).length) + 1
        s = 0
        idx = cd[36] + 36
        while cd[36] + ('cd', 36).length + 36 > idx:
            stor4[stor5][s + 1].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, ('cd', 36).length + 31) >> 5
        while stor4[stor5][1].length + 31 / 32 > idx:
            stor4[stor5][idx + 1].field_0 = 0
            idx = idx + 1
            continue 
        stor4[stor5].field_512 = (2 * ('cd', 68).length) + 1
        s = 0
        idx = cd[68] + 36
        while cd[68] + ('cd', 68).length + 36 > idx:
            stor4[stor5][s + 2].field_0 = cd[idx]
            s = s + 1
            idx = idx + 32
            continue 
        idx = Mask(251, 0, ('cd', 68).length + 31) >> 5
        while stor4[stor5][2].length + 31 / 32 > idx:
            stor4[stor5][idx + 2].field_0 = 0
            idx = idx + 1
            continue 
        stor4[stor5].field_768 = 1
        sub_d64ac4a6[Mask(96, 160, cd[4])] = candidateCount
        sub_5f609695[address(msg.sender)] = candidateCount
        mem[(2 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + 224 len ('cd', 36).length] = call.data[cd[36] + 36 len ('cd', 36).length]
        if ('cd', 36).length > 0:
            stor[sha3(uint32(stor2), stor1, sha3(mem[(2 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + 224 len 4], Mask(224, 0, stor2), 8))] = candidateCount
        mem[(4 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + 448] = stor4[stor5][1].field_0
        idx = (4 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + 448
        s = 0
        while (4 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + stor4[stor5][1].length + 448 > idx + 32:
            mem[idx + 32] = stor4[stor5][s + 1].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[(4 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + stor4[stor5][1].length + (floor32(stor4[stor5][1].length - 1) + -stor4[stor5][1].length + 32 % 32) + 448] = stor4[stor5][2].length
        mem[(4 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + stor4[stor5][1].length + (floor32(stor4[stor5][1].length - 1) + -stor4[stor5][1].length + 32 % 32) + 480] = stor4[stor5][2].field_0
        idx = (4 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + stor4[stor5][1].length + (floor32(stor4[stor5][1].length - 1) + -stor4[stor5][1].length + 32 % 32) + 480
        s = 0
        while (4 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + stor4[stor5][1].length + (floor32(stor4[stor5][1].length - 1) + -stor4[stor5][1].length + 32 % 32) + stor4[stor5][2].length + 480 > idx + 32:
            mem[idx + 32] = stor4[stor5][s + 2].field_256
            idx = idx + 32
            s = s + 1
            continue 
        emit 0x3340640a: candidateCount, Mask(96, 160, cd[4]), msg.sender, Array(len=stor4[stor5][1].length, data=mem[(4 * ceil32(('cd', 36).length)) + ceil32(('cd', 68).length) + 448 len stor4[stor5][1].length + (floor32(stor4[stor5][1].length - 1) + -stor4[stor5][1].length + 32 % 32) + stor4[stor5][2].length + (floor32(stor4[stor5][2].length - 1) + -stor4[stor5][2].length + 32 % 32) + 32], ('cd', 100).length, call.data[cd[100] + 36 len ('cd', 100).length]), stor4[stor5][1].length + (floor32(stor4[stor5][1].length - 1) + -stor4[stor5][1].length + 32 % 32) + 224, stor4[stor5][1].length + (floor32(stor4[stor5][1].length - 1) + -stor4[stor5][1].length + 32 % 32) + stor4[stor5][2].length + (floor32(stor4[stor5][2].length - 1) + -stor4[stor5][2].length + 32 % 32) + 256
}



}
