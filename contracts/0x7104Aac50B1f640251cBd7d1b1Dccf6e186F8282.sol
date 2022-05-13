contract main {




// =====================  Runtime code  =====================


#
#  - isInvulnerableByArea(uint256 arg1)
#  - multiPurchase(uint32[] arg1, uint8[] arg2, uint8[] arg3, uint8[] arg4, string arg5)
#
const totalSupply = 10^6


uint256 stor0;
address ceoAddress;
uint256 promoCount;
array of struct stor4;
array of uint256 stor5;
mapping of address ownerOf;
array of struct stor2000005;
mapping of uint256 ownerPixelCount;
mapping of uint256 stor2000007;
mapping of address pixelToApproved;
mapping of uint8 stor2000009;

function getApproved(uint256 arg1) {
    return pixelToApproved[arg1]
}

function ceoAddress() {
    return ceoAddress
}

function promoCount() {
    return promoCount
}

function pixelToApproved(uint256 arg1) {
    return pixelToApproved[arg1]
}

function ownerOf(uint256 arg1) {
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    return ownerPixelCount[address(arg1)]
}

function getOwnerPixelCount(address arg1) {
    return ownerPixelCount[address(arg1)]
}

function getPixelText(uint256 arg1) {
    return uint256(stor[(2 * arg1) + 5][0 len stor[(2 * arg1) + 5].length])
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor1E84[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function exists(uint256 arg1) {
    return not not ownerOf[arg1]
}

function assignCEO(address arg1) {
    require msg.sender == ceoAddress
    require arg1
    ceoAddress = arg1
}

function getPixelPrice(uint256 arg1) {
    if not stor1E84[arg1]:
        return 10^15
    return stor1E84[arg1]
}

function getPixelColour(uint256 arg1) {
    require arg1 < 10^6
    return uint8(stor4[arg1].field_0), uint8(stor4[arg1].field_0), uint8(stor4[arg1].field_48)
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor1E84[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) {
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor1E84[stor1E84[arg2]][address(msg.sender)]
    if pixelToApproved[arg2]:
        pixelToApproved[arg2] = arg1
        emit Approval(arg2, msg.sender, arg1);
    else:
        if arg1:
            pixelToApproved[arg2] = arg1
            emit Approval(arg2, msg.sender, arg1);
}

function payout(address arg1) {
    require msg.sender == ceoAddress
    if arg1:
        call arg1 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        call ceoAddress with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function pixels(uint256 arg1) {
    require arg1 < 10^6
    mem[128] = uint256(stor[sha3((2 * arg1) + 5)])
    idx = 128
    s = 0
    while stor[(2 * arg1) + 5].length + 96 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((2 * arg1) + 5) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    return uint32(stor4[arg1].field_0), 
           uint8(stor4[arg1].field_0),
           uint8(stor4[arg1].field_0),
           uint8(stor4[arg1].field_0),
           Array(len=stor[(2 * arg1) + 5].length, data=mem[128 len stor[(2 * arg1) + 5].length])
}

function updateAllPixelDetails(uint256 arg1, uint8 arg2, uint8 arg3, uint8 arg4, uint256 arg5, string arg6) {
    if ownerOf[arg1] != msg.sender:
        if pixelToApproved[arg1] != msg.sender:
            require stor1E84[stor1E84[arg1]][address(msg.sender)]
    require arg5 <= stor1E84[arg1]
    require arg5 >= 10^15
    require arg6.length < 101
    stor1E84[arg1] = arg5
    emit PriceChanged(arg1, stor1E84[arg1], arg5);
    require arg1 < 10^6
    uint8(stor4[arg1].field_32) = arg2
    uint8(stor4[arg1].field_40) = arg3
    uint8(stor4[arg1].field_48) = arg4
    emit ColourChanged(arg1, arg2 << 248, arg3 << 248, arg4);
    stor5[arg1] = (2 * arg6.length) + 1
    s = 0
    idx = arg6 + 36
    while arg6 + arg6.length + 36 > idx:
        uint256(stor[s + sha3((2 * arg1) + 5)]) = cd[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = Mask(251, 0, arg6.length + 31) >> 5
    while stor[(2 * arg1) + 5].length + 31 / 32 > idx:
        uint256(stor[idx + sha3((2 * arg1) + 5)]) = 0
        idx = idx + 1
        continue 
    emit TextChanged(arg1, Array(len=arg6.length, data=arg6[all]));
}

function promoPurchase(uint32 arg1, uint8 arg2, uint8 arg3, uint8 arg4, string arg5) {
    require msg.sender
    require not ownerOf[arg1 << 224]
    require promoCount < 5000
    require arg5.length < 101
    require arg1 < 10^6
    uint32(stor4[2 * uint32(arg1)].field_0) = arg1
    uint8(stor4[2 * uint32(arg1)].field_32) = arg2
    uint8(stor4[2 * uint32(arg1)].field_40) = arg3
    uint8(stor4[2 * uint32(arg1)].field_48) = arg4
    uint256(stor[sha3((2 * uint32(arg1)) + 5)][]) = Array(len=arg5.length, data=arg5[all])
    stor1E84[arg1 << 224] = stor0
    emit ColourChanged(arg1 << 224, arg2 << 248, arg3 << 248, arg4);
    require ownerPixelCount[address(msg.sender)] + 1 >= ownerPixelCount[address(msg.sender)]
    ownerPixelCount[address(msg.sender)]++
    uint256(stor1E84[address(msg.sender)].field_0)++
    uint32(stor1E84[address(msg.sender)][uint256(stor1E84[address(msg.sender)].field_0)].field_0) = arg1
    Mask(224, 0, stor1E84[address(msg.sender)][uint256(stor1E84[address(msg.sender)].field_0)].field_32) = 0
    ownerOf[arg1 << 224] = msg.sender
    emit Transfer(arg1, 0, msg.sender);
    promoCount++
}

function getPixelsOwned(address arg1) {
    if not uint256(stor1E84[address(arg1)].field_0):
        mem[(32 * uint256(stor1E84[address(arg1)].field_0)) + 128] = 32
        mem[(32 * uint256(stor1E84[address(arg1)].field_0)) + 160] = uint256(stor1E84[address(arg1)].field_0)
        mem[(32 * uint256(stor1E84[address(arg1)].field_0)) + 192 len floor32(uint256(stor1E84[address(arg1)].field_0))] = mem[128 len floor32(uint256(stor1E84[address(arg1)].field_0))]
        return memory
          from (32 * uint256(stor1E84[address(arg1)].field_0)) + 128
           len (96 * uint256(stor1E84[address(arg1)].field_0)) + 64
    mem[128] = uint256(stor1E84[address(arg1)].field_0)
    idx = 128
    s = 0
    while (32 * uint256(stor1E84[address(arg1)].field_0)) + 96 > idx:
        mem[idx + 32] = uint256(stor1E84[address(arg1)][s].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * uint256(stor1E84[address(arg1)].field_0)) + 192 len floor32(uint256(stor1E84[address(arg1)].field_0))] = mem[128 len floor32(uint256(stor1E84[address(arg1)].field_0))]
    return Array(len=uint256(stor1E84[address(arg1)].field_0), data=mem[128 len floor32(uint256(stor1E84[address(arg1)].field_0))], mem[(32 * uint256(stor1E84[address(arg1)].field_0)) + floor32(uint256(stor1E84[address(arg1)].field_0)) + 192 len (32 * uint256(stor1E84[address(arg1)].field_0)) - floor32(uint256(stor1E84[address(arg1)].field_0))]), 
}

function transfer(address arg1, uint256 arg2) {
    if ownerOf[arg2] != msg.sender:
        if pixelToApproved[arg2] != msg.sender:
            require stor1E84[stor1E84[arg2]][address(msg.sender)]
    require arg1
    require ownerPixelCount[address(arg1)] + 1 >= ownerPixelCount[address(arg1)]
    ownerPixelCount[address(arg1)]++
    uint256(stor1E84[address(arg1)].field_0)++
    uint256(stor1E84[address(arg1)][uint256(stor1E84[address(arg1)].field_0)].field_0) = arg2
    if msg.sender:
        idx = 0
        while idx < uint256(stor1E84[address(msg.sender)].field_0):
            require idx < uint256(stor1E84[address(msg.sender)].field_0)
            if uint256(stor1E84[address(msg.sender)][idx].field_0) == arg2:
                require uint256(stor1E84[address(msg.sender)].field_0) - 1 < uint256(stor1E84[address(msg.sender)].field_0)
                require idx < uint256(stor1E84[address(msg.sender)].field_0)
                uint256(stor1E84[address(msg.sender)][idx].field_0) = uint256(stor1E84[address(msg.sender)][uint256(stor1E84[address(msg.sender)].field_0)].field_0)
                require uint256(stor1E84[address(msg.sender)].field_0) - 1 < uint256(stor1E84[address(msg.sender)].field_0)
                uint256(stor1E84[address(msg.sender)][uint256(stor1E84[address(msg.sender)].field_0)].field_0) = 0
            mem[0] = msg.sender
            mem[32] = 2000005
            idx = idx + 1
            continue 
        require 1 <= ownerPixelCount[address(msg.sender)]
        ownerPixelCount[address(msg.sender)]--
    ownerOf[arg2] = arg1
    emit Transfer(arg2, msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if ownerOf[arg3] != msg.sender:
        if pixelToApproved[arg3] != msg.sender:
            require stor1E84[stor1E84[arg3]][address(msg.sender)]
    require arg1
    require arg2
    require ownerOf[arg3] == arg1
    if pixelToApproved[arg3]:
        pixelToApproved[arg3] = 0
        emit Approval(arg3, arg1, 0);
    require ownerPixelCount[address(arg2)] + 1 >= ownerPixelCount[address(arg2)]
    ownerPixelCount[address(arg2)]++
    uint256(stor1E84[address(arg2)].field_0)++
    uint256(stor1E84[address(arg2)][uint256(stor1E84[address(arg2)].field_0)].field_0) = arg3
    if arg1:
        idx = 0
        while idx < uint256(stor1E84[address(arg1)].field_0):
            require idx < uint256(stor1E84[address(arg1)].field_0)
            if uint256(stor1E84[address(arg1)][idx].field_0) == arg3:
                require uint256(stor1E84[address(arg1)].field_0) - 1 < uint256(stor1E84[address(arg1)].field_0)
                require idx < uint256(stor1E84[address(arg1)].field_0)
                uint256(stor1E84[address(arg1)][idx].field_0) = uint256(stor1E84[address(arg1)][uint256(stor1E84[address(arg1)].field_0)].field_0)
                require uint256(stor1E84[address(arg1)].field_0) - 1 < uint256(stor1E84[address(arg1)].field_0)
                uint256(stor1E84[address(arg1)][uint256(stor1E84[address(arg1)].field_0)].field_0) = 0
            mem[0] = arg1
            mem[32] = 2000005
            idx = idx + 1
            continue 
        require 1 <= ownerPixelCount[address(arg1)]
        ownerPixelCount[address(arg1)]--
    ownerOf[arg3] = arg2
    emit Transfer(arg3, arg1, arg2);
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    if ownerOf[arg3] != msg.sender:
        if pixelToApproved[arg3] != msg.sender:
            require stor1E84[stor1E84[arg3]][address(msg.sender)]
    if ownerOf[arg3] != msg.sender:
        if pixelToApproved[arg3] != msg.sender:
            require stor1E84[stor1E84[arg3]][address(msg.sender)]
    require arg1
    require arg2
    require ownerOf[arg3] == arg1
    if pixelToApproved[arg3]:
        pixelToApproved[arg3] = 0
        emit Approval(arg3, arg1, 0);
    require ownerPixelCount[address(arg2)] + 1 >= ownerPixelCount[address(arg2)]
    ownerPixelCount[address(arg2)]++
    uint256(stor1E84[address(arg2)].field_0)++
    uint256(stor1E84[address(arg2)][uint256(stor1E84[address(arg2)].field_0)].field_0) = arg3
    if arg1:
        idx = 0
        while idx < uint256(stor1E84[address(arg1)].field_0):
            require idx < uint256(stor1E84[address(arg1)].field_0)
            if uint256(stor1E84[address(arg1)][idx].field_0) == arg3:
                require uint256(stor1E84[address(arg1)].field_0) - 1 < uint256(stor1E84[address(arg1)].field_0)
                require idx < uint256(stor1E84[address(arg1)].field_0)
                uint256(stor1E84[address(arg1)][idx].field_0) = uint256(stor1E84[address(arg1)][uint256(stor1E84[address(arg1)].field_0)].field_0)
                require uint256(stor1E84[address(arg1)].field_0) - 1 < uint256(stor1E84[address(arg1)].field_0)
                uint256(stor1E84[address(arg1)][uint256(stor1E84[address(arg1)].field_0)].field_0) = 0
            mem[0] = arg1
            mem[32] = 2000005
            idx = idx + 1
            continue 
        require 1 <= ownerPixelCount[address(arg1)]
        ownerPixelCount[address(arg1)]--
    ownerOf[arg3] = arg2
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    if ownerOf[arg3] != msg.sender:
        if pixelToApproved[arg3] != msg.sender:
            require stor1E84[stor1E84[arg3]][address(msg.sender)]
    if ownerOf[arg3] != msg.sender:
        if pixelToApproved[arg3] != msg.sender:
            require stor1E84[stor1E84[arg3]][address(msg.sender)]
    if ownerOf[arg3] != msg.sender:
        if pixelToApproved[arg3] != msg.sender:
            require stor1E84[stor1E84[arg3]][address(msg.sender)]
    require arg1
    require arg2
    require ownerOf[arg3] == arg1
    if pixelToApproved[arg3]:
        pixelToApproved[arg3] = 0
        emit Approval(arg3, arg1, 0);
    require ownerPixelCount[address(arg2)] + 1 >= ownerPixelCount[address(arg2)]
    ownerPixelCount[address(arg2)]++
    uint256(stor1E84[address(arg2)].field_0)++
    uint256(stor1E84[address(arg2)][uint256(stor1E84[address(arg2)].field_0)].field_0) = arg3
    if arg1:
        idx = 0
        while idx < uint256(stor1E84[address(arg1)].field_0):
            require idx < uint256(stor1E84[address(arg1)].field_0)
            if uint256(stor1E84[address(arg1)][idx].field_0) == arg3:
                require uint256(stor1E84[address(arg1)].field_0) - 1 < uint256(stor1E84[address(arg1)].field_0)
                require idx < uint256(stor1E84[address(arg1)].field_0)
                uint256(stor1E84[address(arg1)][idx].field_0) = uint256(stor1E84[address(arg1)][uint256(stor1E84[address(arg1)].field_0)].field_0)
                require uint256(stor1E84[address(arg1)].field_0) - 1 < uint256(stor1E84[address(arg1)].field_0)
                uint256(stor1E84[address(arg1)][uint256(stor1E84[address(arg1)].field_0)].field_0) = 0
            mem[0] = arg1
            mem[32] = 2000005
            idx = idx + 1
            continue 
        require 1 <= ownerPixelCount[address(arg1)]
        ownerPixelCount[address(arg1)]--
    ownerOf[arg3] = arg2
    emit Transfer(arg3, arg1, arg2);
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, 96, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
}

function getPixelData(uint256 arg1) {
    require arg1 < 10^6
    if stor1E84[arg1]:
        mem[128] = uint256(stor[sha3((2 * arg1) + 5)])
        idx = 128
        s = 0
        while stor[(2 * arg1) + 5].length + 96 > idx:
            mem[idx + 32] = uint256(stor[s + sha3((2 * arg1) + 5) + 1])
            idx = idx + 32
            s = s + 1
            continue 
        return uint32(stor4[arg1].field_0), 
               ownerOf[arg1],
               uint8(stor4[arg1].field_0),
               uint8(stor4[arg1].field_0),
               uint8(stor4[arg1].field_0),
               stor1E84[arg1],
               Array(len=stor[(2 * arg1) + 5].length, data=mem[128 len stor[(2 * arg1) + 5].length])
    mem[32] = 2000004
    mem[96] = stor[(2 * arg1) + 5].length
    mem[0] = (2 * arg1) + 5
    mem[128] = uint256(stor[sha3((2 * arg1) + 5)])
    idx = 128
    s = 0
    while stor[(2 * arg1) + 5].length + 96 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((2 * arg1) + 5) + 1])
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor[(2 * arg1) + 5].length) + 128] = uint32(stor4[arg1].field_0)
    mem[ceil32(stor[(2 * arg1) + 5].length) + 160] = ownerOf[arg1]
    mem[ceil32(stor[(2 * arg1) + 5].length) + 192] = uint8(stor4[arg1].field_32)
    mem[ceil32(stor[(2 * arg1) + 5].length) + 224] = uint8(stor4[arg1].field_40)
    mem[ceil32(stor[(2 * arg1) + 5].length) + 256] = uint8(stor4[arg1].field_48)
    mem[ceil32(stor[(2 * arg1) + 5].length) + 288] = 10^15
    mem[ceil32(stor[(2 * arg1) + 5].length) + 320] = 224
    mem[ceil32(stor[(2 * arg1) + 5].length) + 352] = stor[(2 * arg1) + 5].length
    mem[ceil32(stor[(2 * arg1) + 5].length) + 384 len ceil32(stor[(2 * arg1) + 5].length)] = mem[128 len ceil32(stor[(2 * arg1) + 5].length)]
    if not stor[(2 * arg1) + 5].length % 32:
        return uint32(stor4[arg1].field_0), 
               ownerOf[arg1],
               uint8(stor4[arg1].field_0),
               uint8(stor4[arg1].field_0),
               uint8(stor4[arg1].field_0),
               10^15,
               224,
               stor[(2 * arg1) + 5].length,
               mem[128 len stor[(2 * arg1) + 5].length]
    mem[floor32(stor[(2 * arg1) + 5].length) + ceil32(stor[(2 * arg1) + 5].length) + 384] = mem[floor32(stor[(2 * arg1) + 5].length) + ceil32(stor[(2 * arg1) + 5].length) + -stor[(2 * arg1) + 5].length % 32 + 416 len stor[(2 * arg1) + 5].length % 32]
    return uint32(stor4[arg1].field_0), 
           ownerOf[arg1],
           uint8(stor4[arg1].field_0),
           uint8(stor4[arg1].field_0),
           uint8(stor4[arg1].field_0),
           10^15,
           224,
           stor[(2 * arg1) + 5].length,
           mem[128 len ceil32(stor[(2 * arg1) + 5].length)],
           mem[(2 * ceil32(stor[(2 * arg1) + 5].length)) + 384 len floor32(stor[(2 * arg1) + 5].length) + -ceil32(stor[(2 * arg1) + 5].length) + 32]
}



}
