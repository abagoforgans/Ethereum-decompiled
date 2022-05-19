contract main {




// =====================  Runtime code  =====================


const onTransfer(address arg1, address arg2, uint256 arg3) = 1

const onApprove(address arg1, address arg2, uint256 arg3) = 1

const proxyPayment(address arg1) = 0


address controllerAddress;
array of struct vote;
address tokenFactoryAddress;
address tokenAddress;

function nPolls() {
    return vote.length
}

function getVote(uint256 arg1, address arg2) {
    require arg1 < vote.length
    return uint256(stor[('name', 'vote', 1) + (8 * arg1) + 5][address(arg2)].field_0)
}

function tokenFactory() {
    return tokenFactoryAddress
}

function controller() {
    return controllerAddress
}

function token() {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function changeController(address arg1) {
    require msg.sender == controllerAddress
    controllerAddress = arg1
}

function sqrt(uint256 arg1) {
    s = arg1 + 1 / 2
    t = arg1
    while s < t:
        require s
        s = (arg1 / s) + s / 2
        t = s
        continue 
    return t
}

function cancelPoll(uint256 arg1) {
    require msg.sender == controllerAddress
    require arg1 < vote.length
    require uint256(vote[arg1].field_256) < block.number
    uint8(vote[arg1].field_672) = 1
    emit PollCanceled(arg1);
}

function canVote(uint256 arg1) {
    if arg1 >= vote.length:
        return 0
    require ext_code.size(address(vote[arg1].field_512))
    call address(vote[arg1].field_512).balanceOfAt(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, uint256(vote[arg1].field_0) - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number < uint256(vote[arg1].field_0):
        return block.number >= uint256(vote[arg1].field_0)
    if block.number > uint256(vote[arg1].field_256):
        return block.number <= uint256(vote[arg1].field_256)
    if uint8(vote[arg1].field_672):
        return not bool(uint8(vote[arg1].field_672))
    return bool(ext_call.return_data[0])
}

function unvote(uint256 arg1) {
    require arg1 < vote.length
    require block.number >= uint256(vote[arg1].field_0)
    require block.number < uint256(vote[arg1].field_256)
    require not uint8(vote[arg1].field_672)
    if uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0):
        require uint256(vote[arg1].field_768)
        require uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0) <= uint256(vote[arg1].field_1536)
        uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0) = 0
        uint256(vote[arg1].field_768)--
        uint256(vote[arg1].field_1536) -= uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0)
        s = (uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0) / 10^18) + 1 / 2
        t = uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0) / 10^18
        while s < t:
            require s
            s = (uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0) / 10^18 / s) + s / 2
            t = s
            continue 
        uint256(vote[arg1].field_1792) -= t
        require ext_code.size(address(vote[arg1].field_512))
        call address(vote[arg1].field_512).0x23b872dd with:
             gas gas_remaining wei
            args this.address, msg.sender, uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit 0x16866317: uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0), arg1, msg.sender
}

function sub_6c6e0e45(?) {
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > 0
    require arg1 > block.number
    vote.length++
    if vote.length > vote.length + 1:
        mem[0] = 1
        idx = 8 * vote.length + 1
        while sha3(1) + (8 * vote.length) > idx + sha3(mem[0]):
            uint256(stor[idx + sha3(mem[0])]) = 0
            uint256(stor[idx + sha3(mem[0]) + 1]) = 0
            Mask(168, 0, stor[idx + sha3(mem[0]) + 2]) = 0
            uint256(stor[idx + sha3(mem[0]) + 3]) = 0
            uint256(stor[idx + sha3(mem[0]) + 4]) = 0
            if 31 < stor[idx + sha3(mem[0]) + 4].length:
                mem[0] = idx + sha3(mem[0]) + 4
                s = sha3(idx + sha3(mem[0]) + 4)
                while sha3(idx + sha3(mem[0]) + 4) + (stor[idx + sha3(mem[0]) + 4].length + 31 / 32) > s:
                    uint256(stor[s]) = 0
                    s = s + 1
                    continue 
            uint256(stor[idx + sha3(mem[0]) + 6]) = 0
            uint256(stor[idx + sha3(mem[0]) + 7]) = 0
            idx = idx + 8
            continue 
    require vote.length < vote.length
    uint256(vote[vote.length].field_0) = block.number
    uint256(vote[vote.length].field_256) = arg1
    uint256(vote[vote.length].field_768) = 0
    uint256(stor[sha3((8 * vote.length) + ('name', 'vote', 1) + 4)][].field_0) = Array(len=arg2.length, data=arg2[all])
    require ext_code.size(tokenAddress)
    call tokenAddress.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenFactoryAddress)
    call tokenFactoryAddress.createCloneToken(address arg1, uint256 arg2, string arg3, uint8 arg4, string arg5, bool arg6) with:
         gas gas_remaining wei
        args tokenAddress, block.number - 1, 192, ext_call.return_data[0] << 248, 256, 1, 16, 'SNT Voting Token', 3, 'SVT'
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(vote[vote.length].field_512) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(vote[vote.length].field_512))
    emit PollCreated(vote.length);
    return vote.length
}

function sub_4c84ca8d(?) {
    require arg1 < vote.length
    require block.number >= uint256(vote[arg1].field_0)
    require block.number < uint256(vote[arg1].field_256)
    require not uint8(vote[arg1].field_672)
    require arg1 < vote.length
    require block.number >= uint256(vote[arg1].field_0)
    require block.number < uint256(vote[arg1].field_256)
    require not uint8(vote[arg1].field_672)
    if uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0):
        require uint256(vote[arg1].field_768)
        require uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0) <= uint256(vote[arg1].field_1536)
        uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0) = 0
        uint256(vote[arg1].field_768)--
        uint256(vote[arg1].field_1536) -= uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0)
        s = (uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0) / 10^18) + 1 / 2
        t = uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0) / 10^18
        while s < t:
            require s
            s = (uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0) / 10^18 / s) + s / 2
            t = s
            continue 
        uint256(vote[arg1].field_1792) -= t
        require ext_code.size(address(vote[arg1].field_512))
        call address(vote[arg1].field_512).0x23b872dd with:
             gas gas_remaining wei
            args this.address, msg.sender, uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit 0x16866317: uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0), arg1, msg.sender
    require ext_code.size(address(vote[arg1].field_512))
    call address(vote[arg1].field_512).0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_call.return_data[0] >= arg2
    require arg2
    require ext_code.size(address(vote[arg1].field_512))
    call address(vote[arg1].field_512).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0) = arg2
    uint256(vote[arg1].field_768)++
    uint256(vote[arg1].field_1536) += arg2
    s = (arg2 / 10^18) + 1 / 2
    t = arg2 / 10^18
    while s < t:
        require s
        s = (arg2 / 10^18 / s) + s / 2
        t = s
        continue 
    uint256(vote[arg1].field_1792) += t
    emit Vote(arg2, arg1, msg.sender);
}

function vote(uint256 arg1) {
    require arg1 < vote.length
    require block.number >= uint256(vote[arg1].field_0)
    require block.number < uint256(vote[arg1].field_256)
    require not uint8(vote[arg1].field_672)
    require arg1 < vote.length
    require block.number >= uint256(vote[arg1].field_0)
    require block.number < uint256(vote[arg1].field_256)
    require not uint8(vote[arg1].field_672)
    if uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0):
        require uint256(vote[arg1].field_768)
        require uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0) <= uint256(vote[arg1].field_1536)
        uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0) = 0
        uint256(vote[arg1].field_768)--
        uint256(vote[arg1].field_1536) -= uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0)
        s = (uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0) / 10^18) + 1 / 2
        t = uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0) / 10^18
        while s < t:
            require s
            s = (uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0) / 10^18 / s) + s / 2
            t = s
            continue 
        uint256(vote[arg1].field_1792) -= t
        require ext_code.size(address(vote[arg1].field_512))
        call address(vote[arg1].field_512).0x23b872dd with:
             gas gas_remaining wei
            args this.address, msg.sender, uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        emit 0x16866317: uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0), arg1, msg.sender
    require ext_code.size(address(vote[arg1].field_512))
    call address(vote[arg1].field_512).0x70a08231 with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(address(vote[arg1].field_512))
    call address(vote[arg1].field_512).0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, this.address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    uint256(stor[(8 * arg1) + ('name', 'vote', 1) + 5][msg.sender].field_0) = ext_call.return_data[0]
    uint256(vote[arg1].field_768)++
    uint256(vote[arg1].field_1536) += ext_call.return_data[0]
    s = (ext_call.return_data[0] / 10^18) + 1 / 2
    t = ext_call.return_data[0] / 10^18
    while s < t:
        require s
        s = (ext_call.return_data[0] / 10^18 / s) + s / 2
        t = s
        continue 
    uint256(vote[arg1].field_1792) += t
    emit Vote(ext_call.return_data[0], arg1, msg.sender);
}

function poll(uint256 arg1) {
    require arg1 < vote.length
    mem[132] = uint256(vote[arg1].field_0) - 1
    require ext_code.size(address(vote[arg1].field_512))
    call address(vote[arg1].field_512).balanceOfAt(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, uint256(vote[arg1].field_0) - 1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    mem[128] = uint256(stor[sha3((8 * arg1) + ('name', 'vote', 1) + 4)].field_0)
    idx = 128
    s = 0
    while stor[(8 * arg1) + ('name', 'vote', 1) + 4].length + 96 > idx:
        mem[idx + 32] = uint256(stor[s + sha3((8 * arg1) + ('name', 'vote', 1) + 4)].field_256)
        idx = idx + 32
        s = s + 1
        continue 
    require ext_code.size(address(vote[arg1].field_512))
    call address(vote[arg1].field_512).0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.number < uint256(vote[arg1].field_0):
        if uint8(vote[arg1].field_672):
            return uint256(vote[arg1].field_0), 
                   uint256(vote[arg1].field_256),
                   block.number >= uint256(vote[arg1].field_0),
                   address(vote[arg1].field_512),
                   bool(uint8(vote[arg1].field_672)),
                   Array(len=stor[(8 * arg1) + ('name', 'vote', 1) + 4].length, data=mem[128 len stor[(8 * arg1) + ('name', 'vote', 1) + 4].length]),
                   not bool(uint8(vote[arg1].field_672)),
                   ext_call.return_data[0],
                   uint256(vote[arg1].field_768),
                   uint256(vote[arg1].field_1536),
                   uint256(vote[arg1].field_1792)
        return uint256(vote[arg1].field_0), 
               uint256(vote[arg1].field_256),
               block.number >= uint256(vote[arg1].field_0),
               address(vote[arg1].field_512),
               bool(uint8(vote[arg1].field_672)),
               Array(len=stor[(8 * arg1) + ('name', 'vote', 1) + 4].length, data=mem[128 len stor[(8 * arg1) + ('name', 'vote', 1) + 4].length]),
               block.number >= uint256(vote[arg1].field_256),
               ext_call.return_data[0],
               uint256(vote[arg1].field_768),
               uint256(vote[arg1].field_1536),
               uint256(vote[arg1].field_1792)
    if block.number > uint256(vote[arg1].field_256):
        if uint8(vote[arg1].field_672):
            return uint256(vote[arg1].field_0), 
                   uint256(vote[arg1].field_256),
                   block.number <= uint256(vote[arg1].field_256),
                   address(vote[arg1].field_512),
                   bool(uint8(vote[arg1].field_672)),
                   Array(len=stor[(8 * arg1) + ('name', 'vote', 1) + 4].length, data=mem[128 len stor[(8 * arg1) + ('name', 'vote', 1) + 4].length]),
                   not bool(uint8(vote[arg1].field_672)),
                   ext_call.return_data[0],
                   uint256(vote[arg1].field_768),
                   uint256(vote[arg1].field_1536),
                   uint256(vote[arg1].field_1792)
        return uint256(vote[arg1].field_0), 
               uint256(vote[arg1].field_256),
               block.number <= uint256(vote[arg1].field_256),
               address(vote[arg1].field_512),
               bool(uint8(vote[arg1].field_672)),
               Array(len=stor[(8 * arg1) + ('name', 'vote', 1) + 4].length, data=mem[128 len stor[(8 * arg1) + ('name', 'vote', 1) + 4].length]),
               block.number >= uint256(vote[arg1].field_256),
               ext_call.return_data[0],
               uint256(vote[arg1].field_768),
               uint256(vote[arg1].field_1536),
               uint256(vote[arg1].field_1792)
    if uint8(vote[arg1].field_672):
        if uint8(vote[arg1].field_672):
            return uint256(vote[arg1].field_0), 
                   uint256(vote[arg1].field_256),
                   not bool(uint8(vote[arg1].field_672)),
                   address(vote[arg1].field_512),
                   bool(uint8(vote[arg1].field_672)),
                   Array(len=stor[(8 * arg1) + ('name', 'vote', 1) + 4].length, data=mem[128 len stor[(8 * arg1) + ('name', 'vote', 1) + 4].length]),
                   not bool(uint8(vote[arg1].field_672)),
                   ext_call.return_data[0],
                   uint256(vote[arg1].field_768),
                   uint256(vote[arg1].field_1536),
                   uint256(vote[arg1].field_1792)
        return uint256(vote[arg1].field_0), 
               uint256(vote[arg1].field_256),
               not bool(uint8(vote[arg1].field_672)),
               address(vote[arg1].field_512),
               bool(uint8(vote[arg1].field_672)),
               Array(len=stor[(8 * arg1) + ('name', 'vote', 1) + 4].length, data=mem[128 len stor[(8 * arg1) + ('name', 'vote', 1) + 4].length]),
               block.number >= uint256(vote[arg1].field_256),
               ext_call.return_data[0],
               uint256(vote[arg1].field_768),
               uint256(vote[arg1].field_1536),
               uint256(vote[arg1].field_1792)
    if uint8(vote[arg1].field_672):
        return uint256(vote[arg1].field_0), 
               uint256(vote[arg1].field_256),
               bool(ext_call.return_data[0]),
               address(vote[arg1].field_512),
               bool(uint8(vote[arg1].field_672)),
               Array(len=stor[(8 * arg1) + ('name', 'vote', 1) + 4].length, data=mem[128 len stor[(8 * arg1) + ('name', 'vote', 1) + 4].length]),
               not bool(uint8(vote[arg1].field_672)),
               ext_call.return_data[0],
               uint256(vote[arg1].field_768),
               uint256(vote[arg1].field_1536),
               uint256(vote[arg1].field_1792)
    return uint256(vote[arg1].field_0), 
           uint256(vote[arg1].field_256),
           bool(ext_call.return_data[0]),
           address(vote[arg1].field_512),
           bool(uint8(vote[arg1].field_672)),
           Array(len=stor[(8 * arg1) + ('name', 'vote', 1) + 4].length, data=mem[128 len stor[(8 * arg1) + ('name', 'vote', 1) + 4].length]),
           block.number >= uint256(vote[arg1].field_256),
           ext_call.return_data[0],
           uint256(vote[arg1].field_768),
           uint256(vote[arg1].field_1536),
           uint256(vote[arg1].field_1792)
}



}
