contract main {




// =====================  Runtime code  =====================


#
#  - initialize(address arg1, address arg2)
#  - sub_525b006f(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
mapping of uint8 stor51;
mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor105;
array of uint256 tokenOfOwnerByIndex;
mapping of uint256 stor157;
array of uint256 tokenByIndex;
array of uint256 name;
array of uint256 symbol;
array of uint256 tokenURI;
address sub_95d506fcAddress;
address sub_ba207d9bAddress;
mapping of struct stor266;
mapping of struct stor267;

function supportsInterface(bytes4 arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor51[Mask(32, 224, arg1)])
}

function name() payable {
    return name[0 len name.length]
}

function getApproved(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return approved[arg1]
}

function totalSupply() payable {
    return tokenByIndex.length
}

function tokenOfOwnerByIndex(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 < balanceOf[address(arg1)]
    require arg2 < tokenOfOwnerByIndex[address(arg1)]
    return tokenOfOwnerByIndex[address(arg1)][arg2]
}

function tokenByIndex(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < tokenByIndex.length
    return tokenByIndex[arg1]
}

function ownerOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return balanceOf[address(arg1)]
}

function sub_95d506fc(?) payable {
    return sub_95d506fcAddress
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_ba207d9b(?) payable {
    return sub_ba207d9bAddress
}

function tokenURI(uint256 arg1) payable {
    return tokenURI[arg1][0 len tokenURI[arg1].length]
}

function isApprovedForAll(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return bool(stor105[address(arg1)][address(arg2)])
}

function _fallback() payable {
    revert
}

function setApprovalForAll(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 != msg.sender
    stor105[msg.sender][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require ownerOf[arg2]
    require ownerOf[arg2] != arg1
    if ownerOf[arg2] != msg.sender:
        require stor105[stor102[arg2]][address(msg.sender)]
    approved[arg2] = arg1
    emit Approval(ownerOf[arg2], arg1, arg2);
}

function initialize() payable {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0xfe08c379a0000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    require stor51[0x80ac58cd00000000000000000000000000000000000000000000000000000000]
    stor51[0x780e9d6300000000000000000000000000000000000000000000000000000000] = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function initialize(string arg1, string arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 160 >= 128 and ceil32(arg1.length) + ceil32(arg2.length) + 160 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 'Contract instance has already been initialized'
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    require stor51[0x80ac58cd00000000000000000000000000000000000000000000000000000000]
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    stor51[0x5b5e139f00000000000000000000000000000000000000000000000000000000] = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor105[stor102[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[arg2] + 1 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + 1
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if tokenOfOwnerByIndex[address(arg1)] - 1 != stor157[arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor157[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor157[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor157[stor156[address(arg1)][stor156[address(arg1)]]] = stor157[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor157[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require ownerOf[arg3]
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor105[stor102[arg3]][address(msg.sender)]
    require ownerOf[arg3] == arg1
    require arg2
    if approved[arg3]:
        approved[arg3] = 0
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    require balanceOf[arg2] + 1 >= balanceOf[arg2]
    balanceOf[address(arg2)] = balanceOf[arg2] + 1
    ownerOf[arg3] = arg2
    emit Transfer(arg1, arg2, arg3);
    require 1 <= tokenOfOwnerByIndex[address(arg1)]
    if tokenOfOwnerByIndex[address(arg1)] - 1 != stor157[arg3]:
        require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
        require stor157[arg3] < tokenOfOwnerByIndex[address(arg1)]
        tokenOfOwnerByIndex[address(arg1)][stor157[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
        stor157[stor156[address(arg1)][stor156[address(arg1)]]] = stor157[arg3]
    tokenOfOwnerByIndex[address(arg1)]--
    if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
        idx = tokenOfOwnerByIndex[address(arg1)] - 1
        while tokenOfOwnerByIndex[address(arg1)] > idx:
            tokenOfOwnerByIndex[address(arg1)][idx] = 0
            idx = idx + 1
            continue 
    stor157[arg3] = tokenOfOwnerByIndex[address(arg2)]
    tokenOfOwnerByIndex[address(arg2)]++
    tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.0x150b7a02 with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
}

function initialize(string arg1, string arg2, address arg3, address arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 <= test266151307()
    require calldata.size > arg1 + 35
    require arg1.length <= test266151307()
    require ceil32(arg1.length) + 128 >= 96 and ceil32(arg1.length) + 128 <= test266151307()
    require arg1 + arg1.length + 36 <= calldata.size
    require arg2 <= test266151307()
    require calldata.size > arg2 + 35
    require arg2.length <= test266151307()
    require ceil32(arg2.length) + 160 >= 128 and ceil32(arg1.length) + ceil32(arg2.length) + 160 <= test266151307()
    require arg2 + arg2.length + 36 <= calldata.size
    if uint8(stor0.field_8):
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        sub_95d506fcAddress = arg3
        sub_ba207d9bAddress = arg4
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 'Contract instance has already been initialized'
        uint8(stor0.field_0) = 1
        uint8(stor0.field_8) = 1
        Mask(248, 0, stor0.field_8) = 0
        sub_95d506fcAddress = arg3
        sub_ba207d9bAddress = arg4
        if uint8(stor0.field_8):
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
        else:
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0, 'Contract instance has already been initialized'
            uint8(stor0.field_0) = 1
            uint8(stor0.field_8) = 1
            Mask(248, 0, stor0.field_8) = 0
            if not uint8(stor0.field_8):
                if ext_code.size(this.address):
                    if uint8(stor0.field_0):
                        revert with 0, 'Contract instance has already been initialized'
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    stor51[0x1ffc9a700000000000000000000000000000000000000000000000000000000] = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    stor51[0x80ac58cd00000000000000000000000000000000000000000000000000000000] = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 'Contract instance has already been initialized'
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    require stor51[0x80ac58cd00000000000000000000000000000000000000000000000000000000]
    stor51[0x780e9d6300000000000000000000000000000000000000000000000000000000] = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0, 'Contract instance has already been initialized'
    uint8(stor0.field_0) = 1
    uint8(stor0.field_8) = 1
    Mask(248, 0, stor0.field_8) = 0
    require stor51[0x80ac58cd00000000000000000000000000000000000000000000000000000000]
    name[] = Array(len=arg1.length, data=arg1[all])
    symbol[] = Array(len=arg2.length, data=arg2[all])
    stor51[0x5b5e139f00000000000000000000000000000000000000000000000000000000] = 1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function getTokenDetails(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[128] = stor267[arg1][1].field_0
    idx = 128
    s = 0
    while stor267[arg1][1].length + 96 > idx:
        mem[idx + 32] = stor267[arg1][s + 1].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor267[arg1][1].length) + 160] = stor267[arg1][2].field_0
    idx = ceil32(stor267[arg1][1].length) + 160
    s = 0
    while ceil32(stor267[arg1][1].length) + stor267[arg1][2].length + 128 > idx:
        mem[idx + 32] = stor267[arg1][s + 2].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(stor267[arg1][1].length) + ceil32(stor267[arg1][2].length) + 192] = stor267[arg1][3].field_0
    idx = ceil32(stor267[arg1][1].length) + ceil32(stor267[arg1][2].length) + 192
    s = 0
    while ceil32(stor267[arg1][1].length) + ceil32(stor267[arg1][2].length) + stor267[arg1][3].length + 160 > idx:
        mem[idx + 32] = stor267[arg1][s + 3].field_256
        idx = idx + 32
        s = s + 1
        continue 
    if ceil32(stor267[arg1][1].length) <= stor267[arg1][1].length:
        mem[(2 * ceil32(stor267[arg1][1].length)) + ceil32(stor267[arg1][2].length) + ceil32(stor267[arg1][3].length) + 416] = stor267[arg1][2].length
        mem[(2 * ceil32(stor267[arg1][1].length)) + ceil32(stor267[arg1][2].length) + ceil32(stor267[arg1][3].length) + 448 len ceil32(stor267[arg1][2].length)] = mem[ceil32(stor267[arg1][1].length) + 160 len ceil32(stor267[arg1][2].length)]
        if ceil32(stor267[arg1][2].length) > stor267[arg1][2].length:
            mem[stor267[arg1][2].length + (2 * ceil32(stor267[arg1][1].length)) + ceil32(stor267[arg1][2].length) + ceil32(stor267[arg1][3].length) + 448] = 0
        else:
            mem[(2 * ceil32(stor267[arg1][1].length)) + (2 * ceil32(stor267[arg1][2].length)) + ceil32(stor267[arg1][3].length) + 448] = stor267[arg1][3].length
            mem[(2 * ceil32(stor267[arg1][1].length)) + (2 * ceil32(stor267[arg1][2].length)) + ceil32(stor267[arg1][3].length) + 480 len ceil32(stor267[arg1][3].length)] = mem[ceil32(stor267[arg1][1].length) + ceil32(stor267[arg1][2].length) + 192 len ceil32(stor267[arg1][3].length)]
            if ceil32(stor267[arg1][3].length) > stor267[arg1][3].length:
                mem[stor267[arg1][3].length + (2 * ceil32(stor267[arg1][1].length)) + (2 * ceil32(stor267[arg1][2].length)) + ceil32(stor267[arg1][3].length) + 480] = 0
    else:
        mem[stor267[arg1][1].length + ceil32(stor267[arg1][1].length) + ceil32(stor267[arg1][2].length) + ceil32(stor267[arg1][3].length) + 416] = 0
        mem[(2 * ceil32(stor267[arg1][1].length)) + ceil32(stor267[arg1][2].length) + ceil32(stor267[arg1][3].length) + 416] = stor267[arg1][2].length
        mem[(2 * ceil32(stor267[arg1][1].length)) + ceil32(stor267[arg1][2].length) + ceil32(stor267[arg1][3].length) + 448 len ceil32(stor267[arg1][2].length)] = mem[ceil32(stor267[arg1][1].length) + 160 len ceil32(stor267[arg1][2].length)]
        if ceil32(stor267[arg1][2].length) > stor267[arg1][2].length:
            mem[stor267[arg1][2].length + (2 * ceil32(stor267[arg1][1].length)) + ceil32(stor267[arg1][2].length) + ceil32(stor267[arg1][3].length) + 448] = 0
        mem[(2 * ceil32(stor267[arg1][1].length)) + (2 * ceil32(stor267[arg1][2].length)) + ceil32(stor267[arg1][3].length) + 448] = stor267[arg1][3].length
        mem[(2 * ceil32(stor267[arg1][1].length)) + (2 * ceil32(stor267[arg1][2].length)) + ceil32(stor267[arg1][3].length) + 480 len ceil32(stor267[arg1][3].length)] = mem[ceil32(stor267[arg1][1].length) + ceil32(stor267[arg1][2].length) + 192 len ceil32(stor267[arg1][3].length)]
        if ceil32(stor267[arg1][3].length) > stor267[arg1][3].length:
            mem[stor267[arg1][3].length + (2 * ceil32(stor267[arg1][1].length)) + (2 * ceil32(stor267[arg1][2].length)) + ceil32(stor267[arg1][3].length) + 480] = 0
    return stor267[arg1].field_0, 
           Array(len=stor267[arg1][1].length, data=mem[128 len ceil32(stor267[arg1][1].length)], stor267[arg1][2].length, mem[ceil32(stor267[arg1][1].length) + 160 len ceil32(stor267[arg1][2].length)], stor267[arg1][3].length, mem[ceil32(stor267[arg1][1].length) + ceil32(stor267[arg1][2].length) + 192 len ceil32(stor267[arg1][3].length)]),
           ceil32(stor267[arg1][1].length) + 224,
           ceil32(stor267[arg1][1].length) + ceil32(stor267[arg1][2].length) + 256,
           stor266[arg1].field_0,
           stor266[arg1].field_256
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) payable {
    require calldata.size - 4 >= 128
    require arg4 <= test266151307()
    require calldata.size > arg4 + 35
    require arg4.length <= test266151307()
    require ceil32(arg4.length) + 128 >= 96 and ceil32(arg4.length) + 128 <= test266151307()
    require arg4 + arg4.length + 36 <= calldata.size
    require ownerOf[arg3]
    if msg.sender == ownerOf[arg3]:
        if ownerOf[arg3]:
            if ownerOf[arg3] == arg1:
                if arg2:
                    if approved[arg3]:
                        approved[arg3] = 0
                    if 1 <= balanceOf[address(arg1)]:
                        balanceOf[address(arg1)]--
                        if balanceOf[arg2] + 1 >= balanceOf[arg2]:
                            balanceOf[address(arg2)] = balanceOf[arg2] + 1
                            ownerOf[arg3] = arg2
                            emit Transfer(arg1, arg2, arg3);
                            if 1 <= tokenOfOwnerByIndex[address(arg1)]:
                                if tokenOfOwnerByIndex[address(arg1)] - 1 != stor157[arg3]:
                                    require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                                    require stor157[arg3] < tokenOfOwnerByIndex[address(arg1)]
                                    tokenOfOwnerByIndex[address(arg1)][stor157[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                                    stor157[stor156[address(arg1)][stor156[address(arg1)]]] = stor157[arg3]
                                tokenOfOwnerByIndex[address(arg1)]--
                                if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                                    idx = tokenOfOwnerByIndex[address(arg1)] - 1
                                    while tokenOfOwnerByIndex[address(arg1)] > idx:
                                        tokenOfOwnerByIndex[address(arg1)][idx] = 0
                                        idx = idx + 1
                                        continue 
                                stor157[arg3] = tokenOfOwnerByIndex[address(arg2)]
                                tokenOfOwnerByIndex[address(arg2)]++
                                tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                                if ext_code.size(arg2) <= 0:
                                if ext_code.size(arg2):
                                    call arg2 with:
                                         gas gas_remaining wei
                                        args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
    else:
        if ownerOf[arg3]:
            if approved[arg3] == msg.sender:
                if ownerOf[arg3]:
                    if ownerOf[arg3] == arg1:
                        if arg2:
                            if approved[arg3]:
                                approved[arg3] = 0
                            if 1 <= balanceOf[address(arg1)]:
                                balanceOf[address(arg1)]--
                                if balanceOf[arg2] + 1 >= balanceOf[arg2]:
                                    balanceOf[address(arg2)] = balanceOf[arg2] + 1
                                    ownerOf[arg3] = arg2
                                    emit Transfer(arg1, arg2, arg3);
                                    if 1 <= tokenOfOwnerByIndex[address(arg1)]:
                                        if tokenOfOwnerByIndex[address(arg1)] - 1 != stor157[arg3]:
                                            require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                                            require stor157[arg3] < tokenOfOwnerByIndex[address(arg1)]
                                            tokenOfOwnerByIndex[address(arg1)][stor157[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                                            stor157[stor156[address(arg1)][stor156[address(arg1)]]] = stor157[arg3]
                                        tokenOfOwnerByIndex[address(arg1)]--
                                        if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                                            idx = tokenOfOwnerByIndex[address(arg1)] - 1
                                            while tokenOfOwnerByIndex[address(arg1)] > idx:
                                                tokenOfOwnerByIndex[address(arg1)][idx] = 0
                                                idx = idx + 1
                                                continue 
                                        stor157[arg3] = tokenOfOwnerByIndex[address(arg2)]
                                        tokenOfOwnerByIndex[address(arg2)]++
                                        tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                                        if ext_code.size(arg2) <= 0:
                                        if ext_code.size(arg2):
                                            call arg2 with:
                                                 gas gas_remaining wei
                                                args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
            else:
                if stor105[stor102[arg3]][address(msg.sender)]:
                    if ownerOf[arg3]:
                        if ownerOf[arg3] == arg1:
                            if arg2:
                                if approved[arg3]:
                                    approved[arg3] = 0
                                if 1 <= balanceOf[address(arg1)]:
                                    balanceOf[address(arg1)]--
                                    if balanceOf[arg2] + 1 >= balanceOf[arg2]:
                                        balanceOf[address(arg2)] = balanceOf[arg2] + 1
                                        ownerOf[arg3] = arg2
                                        emit Transfer(arg1, arg2, arg3);
                                        if 1 <= tokenOfOwnerByIndex[address(arg1)]:
                                            if tokenOfOwnerByIndex[address(arg1)] - 1 != stor157[arg3]:
                                                require tokenOfOwnerByIndex[address(arg1)] - 1 < tokenOfOwnerByIndex[address(arg1)]
                                                require stor157[arg3] < tokenOfOwnerByIndex[address(arg1)]
                                                tokenOfOwnerByIndex[address(arg1)][stor157[arg3]] = tokenOfOwnerByIndex[address(arg1)][tokenOfOwnerByIndex[address(arg1)]]
                                                stor157[stor156[address(arg1)][stor156[address(arg1)]]] = stor157[arg3]
                                            tokenOfOwnerByIndex[address(arg1)]--
                                            if tokenOfOwnerByIndex[address(arg1)] > tokenOfOwnerByIndex[address(arg1)] - 1:
                                                idx = tokenOfOwnerByIndex[address(arg1)] - 1
                                                while tokenOfOwnerByIndex[address(arg1)] > idx:
                                                    tokenOfOwnerByIndex[address(arg1)][idx] = 0
                                                    idx = idx + 1
                                                    continue 
                                            stor157[arg3] = tokenOfOwnerByIndex[address(arg2)]
                                            tokenOfOwnerByIndex[address(arg2)]++
                                            tokenOfOwnerByIndex[address(arg2)][tokenOfOwnerByIndex[address(arg2)]] = arg3
                                            if ext_code.size(arg2) <= 0:
                                            if ext_code.size(arg2):
                                                call arg2 with:
                                                     gas gas_remaining wei
                                                    args msg.sender, address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
    revert
}



}
