contract main {




// =====================  Runtime code  =====================


#
#  - sub_463fd1af(?)
#  - sub_c15778db(?)
#  - sub_d6d0faee(?)
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
mapping of uint256 sub_0ee77b1a;
array of uint256 name;
array of uint256 symbol;
address sub_95d506fcAddress;
address sub_ba207d9bAddress;
array of struct stor266;
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

function sub_0ee77b1a(?) payable {
    require calldata.size - 4 >= 32
    require ownerOf[arg1]
    return sub_0ee77b1a[arg1]
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

function sub_8c504b67(?) payable {
    require calldata.size - 4 >= 32
    if not stor267[arg1].field_1280:
        return 0
    require ext_code.size(sub_95d506fcAddress)
    staticcall sub_95d506fcAddress.0x32bf361b with:
            gas gas_remaining wei
           args stor267[arg1].field_1280
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    return not bool(ext_call.return_data[32])
}

function initialize() payable {
    if not uint8(stor0.field_8):
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
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
        call arg2.onERC721Received(address arg1, address arg2, uint256 arg3, bytes arg4) with:
             gas gas_remaining wei
            args 0, uint32(msg.sender), address(arg1), arg3, 128, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require 0x150b7a0200000000000000000000000000000000000000000000000000000000 == Mask(32, 224, ext_call.return_data[0])
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
        mem[(2 * ceil32(stor267[arg1][1].length)) + ceil32(stor267[arg1][2].length) + ceil32(stor267[arg1][3].length) + 448] = stor267[arg1][2].length
        mem[(2 * ceil32(stor267[arg1][1].length)) + ceil32(stor267[arg1][2].length) + ceil32(stor267[arg1][3].length) + 480 len ceil32(stor267[arg1][2].length)] = mem[ceil32(stor267[arg1][1].length) + 160 len ceil32(stor267[arg1][2].length)]
        if ceil32(stor267[arg1][2].length) > stor267[arg1][2].length:
            mem[stor267[arg1][2].length + (2 * ceil32(stor267[arg1][1].length)) + ceil32(stor267[arg1][2].length) + ceil32(stor267[arg1][3].length) + 480] = 0
    else:
        mem[stor267[arg1][1].length + ceil32(stor267[arg1][1].length) + ceil32(stor267[arg1][2].length) + ceil32(stor267[arg1][3].length) + 448] = 0
        mem[(2 * ceil32(stor267[arg1][1].length)) + ceil32(stor267[arg1][2].length) + ceil32(stor267[arg1][3].length) + 448] = stor267[arg1][2].length
        mem[(2 * ceil32(stor267[arg1][1].length)) + ceil32(stor267[arg1][2].length) + ceil32(stor267[arg1][3].length) + 480 len ceil32(stor267[arg1][2].length)] = mem[ceil32(stor267[arg1][1].length) + 160 len ceil32(stor267[arg1][2].length)]
        if ceil32(stor267[arg1][2].length) > stor267[arg1][2].length:
            mem[stor267[arg1][2].length + (2 * ceil32(stor267[arg1][1].length)) + ceil32(stor267[arg1][2].length) + ceil32(stor267[arg1][3].length) + 480] = 0
        mem[(2 * ceil32(stor267[arg1][1].length)) + (2 * ceil32(stor267[arg1][2].length)) + ceil32(stor267[arg1][3].length) + 480] = stor267[arg1][3].length
        mem[(2 * ceil32(stor267[arg1][1].length)) + (2 * ceil32(stor267[arg1][2].length)) + ceil32(stor267[arg1][3].length) + 512 len ceil32(stor267[arg1][3].length)] = mem[ceil32(stor267[arg1][1].length) + ceil32(stor267[arg1][2].length) + 192 len ceil32(stor267[arg1][3].length)]
        if ceil32(stor267[arg1][3].length) > stor267[arg1][3].length:
            mem[stor267[arg1][3].length + (2 * ceil32(stor267[arg1][1].length)) + (2 * ceil32(stor267[arg1][2].length)) + ceil32(stor267[arg1][3].length) + 512] = 0
    return stor267[arg1].field_0, 
           Array(len=stor267[arg1][1].length, data=mem[128 len ceil32(stor267[arg1][1].length)], stor267[arg1][2].length, mem[ceil32(stor267[arg1][1].length) + 160 len ceil32(stor267[arg1][2].length)], stor267[arg1][3].length, mem[ceil32(stor267[arg1][1].length) + ceil32(stor267[arg1][2].length) + 192 len ceil32(stor267[arg1][3].length)]),
           ceil32(stor267[arg1][1].length) + 256,
           ceil32(stor267[arg1][1].length) + ceil32(stor267[arg1][2].length) + 288,
           stor267[arg1].field_1024,
           stor267[arg1].field_1280,
           stor267[arg1].field_1536
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

function tokenURI(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = arg1
    mem[32] = 102
    require ownerOf[arg1]
    if not this.address:
        mem[96] = 1
        mem[128] = '0'
        if not arg1:
            mem[256] = uint256(stor266.field_0)
            idx = 256
            s = 0
            while stor266.length + 224 > idx:
                mem[idx + 32] = stor266[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[stor266.length + 256] = '0x'
            mem[stor266.length + 258 len 0] = None
            mem[stor266.length + 258] = Mask(232, 0, '0x'), mem[stor266.length + 288 len 2] or 0
            mem[stor266.length + 259] = '/0x'
            mem[stor266.length + 262 len 0] = None
            mem[stor266.length + 262 len 31] = Mask(232, 0, '/0x'), mem[stor266.length + 291 len 2]
            mem[stor266.length + 263] = 32
            mem[stor266.length + 295] = mem[224]
            mem[stor266.length + 327 len ceil32(mem[224])] = mem[256 len ceil32(mem[224])]
            if ceil32(mem[224]) > mem[224]:
                mem[mem[224] + stor266.length + 327] = 0
            return Array(len=mem[224], data=mem[stor266.length + 327 len ceil32(mem[224])])
        s = 0
        idx = arg1
        while idx:
            s = s + 1
            idx = idx / 16
            continue 
        mem[160] = s
        mem[64] = ceil32(s) + 192
        if not s:
            t = s - 1
            idx = arg1
            while idx:
                require t < mem[160]
                if idx % 16 > 9:
                    mem[t + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 55, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 55, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) - 256
                else:
                    mem[t + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) - 256
                t = t - 1
                idx = idx / 16
                continue 
            _201 = mem[64]
            mem[0] = 266
            mem[mem[64] + 32] = uint256(stor266.field_0)
            idx = mem[64] + 32
            s = 0
            while _201 + stor266.length > idx:
                mem[idx + 32] = stor266[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[_201 + stor266.length + 32] = '0x'
            _609 = mem[96]
            mem[_201 + stor266.length + 34 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_201 + stor266.length + floor32(mem[96]) + 34] = 256^(-(mem[96] % 32) + 32) - 1 and mem[_201 + stor266.length + floor32(mem[96]) + 34] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
            mem[_201 + stor266.length + _609 + 34] = '/0x'
            _919 = mem[160]
            mem[_201 + stor266.length + _609 + 37 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
            mem[_201 + stor266.length + _609 + floor32(mem[160]) + -(mem[160] % 32) + 69 len mem[160] % 32] = mem[floor32(mem[160]) + -(mem[160] % 32) + 224 len mem[160] % 32]
            _1101 = mem[64]
            mem[64] = _919 + _201 + stor266.length + _609 + 37
            mem[_919 + _201 + stor266.length + _609 + 37] = 32
            _1165 = mem[_1101]
            mem[_919 + _201 + stor266.length + _609 + 69] = mem[_1101]
            mem[_919 + _201 + stor266.length + _609 + 101 len ceil32(_1165)] = mem[_1101 + 32 len ceil32(_1165)]
            if ceil32(_1165) > _1165:
                mem[_1165 + _919 + _201 + stor266.length + _609 + 101] = 0
            return 32, mem[_919 + _201 + stor266.length + _609 + 69 len ceil32(_1165) + 32]
        mem[192 len s] = code.data[18150 len s]
        t = s - 1
        idx = arg1
        while idx:
            require t < mem[160]
            if idx % 16 > 9:
                mem[t + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 55, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 55, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) - 256
            else:
                mem[t + 192 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) - 256
            t = t - 1
            idx = idx / 16
            continue 
        _202 = mem[64]
        mem[0] = 266
        mem[mem[64] + 32] = uint256(stor266.field_0)
        idx = mem[64] + 32
        s = 0
        while _202 + stor266.length > idx:
            mem[idx + 32] = stor266[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[_202 + stor266.length + 32] = '0x'
        _610 = mem[96]
        mem[_202 + stor266.length + 34 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_202 + stor266.length + floor32(mem[96]) + 34] = 256^(-(mem[96] % 32) + 32) - 1 and mem[_202 + stor266.length + floor32(mem[96]) + 34] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
        mem[_202 + stor266.length + _610 + 34] = '/0x'
        _925 = mem[160]
        mem[_202 + stor266.length + _610 + 37 len floor32(mem[160])] = mem[192 len floor32(mem[160])]
        mem[_202 + stor266.length + _610 + floor32(mem[160]) + -(mem[160] % 32) + 69 len mem[160] % 32] = mem[floor32(mem[160]) + -(mem[160] % 32) + 224 len mem[160] % 32]
        _1105 = mem[64]
        mem[64] = _925 + _202 + stor266.length + _610 + 37
        mem[_925 + _202 + stor266.length + _610 + 37] = 32
        _1166 = mem[_1105]
        mem[_925 + _202 + stor266.length + _610 + 69] = mem[_1105]
        mem[_925 + _202 + stor266.length + _610 + 101 len ceil32(_1166)] = mem[_1105 + 32 len ceil32(_1166)]
        if ceil32(_1166) > _1166:
            mem[_1166 + _925 + _202 + stor266.length + _610 + 101] = 0
        return 32, mem[_925 + _202 + stor266.length + _610 + 69 len ceil32(_1166) + 32]
    s = 0
    idx = this.address
    while idx:
        s = s + 1
        idx = idx / 16
        continue 
    mem[96] = s
    mem[64] = ceil32(s) + 128
    if not s:
        t = s - 1
        idx = this.address
        while idx:
            require t < mem[96]
            if idx % 16 > 9:
                mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 55, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 55, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) - 256
            else:
                mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) - 256
            t = t - 1
            idx = idx / 16
            continue 
        if not arg1:
            _219 = mem[64]
            mem[64] = mem[64] + 64
            mem[_219] = 1
            mem[_219 + 32] = '0'
            _240 = mem[64]
            mem[0] = 266
            mem[mem[64] + 32] = uint256(stor266.field_0)
            idx = mem[64] + 32
            s = 0
            while _240 + stor266.length > idx:
                mem[idx + 32] = stor266[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[_240 + stor266.length + 32] = '0x'
            _607 = mem[96]
            mem[_240 + stor266.length + 34 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_240 + stor266.length + floor32(mem[96]) + 34] = 256^(-(mem[96] % 32) + 32) - 1 and mem[_240 + stor266.length + floor32(mem[96]) + 34] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
            mem[_240 + stor266.length + _607 + 34] = '/0x'
            _891 = mem[_219]
            mem[_240 + stor266.length + _607 + 37 len floor32(mem[_219])] = mem[_219 + 32 len floor32(mem[_219])]
            mem[_240 + stor266.length + _607 + floor32(mem[_219]) + -(mem[_219] % 32) + 69 len mem[_219] % 32] = mem[_219 + floor32(mem[_219]) + -(mem[_219] % 32) + 64 len mem[_219] % 32]
            _1077 = mem[64]
            mem[64] = _891 + _240 + stor266.length + _607 + 37
            mem[_891 + _240 + stor266.length + _607 + 37] = 32
            _1157 = mem[_1077]
            mem[_891 + _240 + stor266.length + _607 + 69] = mem[_1077]
            mem[_891 + _240 + stor266.length + _607 + 101 len ceil32(_1157)] = mem[_1077 + 32 len ceil32(_1157)]
            if ceil32(_1157) > _1157:
                mem[_1157 + _891 + _240 + stor266.length + _607 + 101] = 0
            return 32, mem[_891 + _240 + stor266.length + _607 + 69 len ceil32(_1157) + 32]
        s = 0
        idx = arg1
        while idx:
            s = s + 1
            idx = idx / 16
            continue 
        _354 = mem[64]
        mem[mem[64]] = s
        mem[64] = mem[64] + ceil32(s) + 32
        if not s:
            t = s - 1
            idx = arg1
            while idx:
                require t < mem[_354]
                if idx % 16 > 9:
                    mem[_354 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 55, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 55, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) - 256
                else:
                    mem[_354 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) - 256
                t = t - 1
                idx = idx / 16
                continue 
            _647 = mem[64]
            mem[0] = 266
            mem[mem[64] + 32] = uint256(stor266.field_0)
            idx = mem[64] + 32
            s = 0
            while _647 + stor266.length > idx:
                mem[idx + 32] = stor266[s].field_256
                idx = idx + 32
                s = s + 1
                continue 
            mem[_647 + stor266.length + 32] = '0x'
            _1055 = mem[96]
            mem[_647 + stor266.length + 34 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
            mem[_647 + stor266.length + floor32(mem[96]) + 34] = 256^(-(mem[96] % 32) + 32) - 1 and mem[_647 + stor266.length + floor32(mem[96]) + 34] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
            mem[_647 + stor266.length + _1055 + 34] = '/0x'
            _1222 = mem[_354]
            mem[_647 + stor266.length + _1055 + 37 len floor32(mem[_354])] = mem[_354 + 32 len floor32(mem[_354])]
            mem[_647 + stor266.length + _1055 + floor32(mem[_354]) + -(mem[_354] % 32) + 69 len mem[_354] % 32] = mem[_354 + floor32(mem[_354]) + -(mem[_354] % 32) + 64 len mem[_354] % 32]
            _1309 = mem[64]
            mem[64] = _1222 + _647 + stor266.length + _1055 + 37
            mem[_1222 + _647 + stor266.length + _1055 + 37] = 32
            _1327 = mem[_1309]
            mem[_1222 + _647 + stor266.length + _1055 + 69] = mem[_1309]
            mem[_1222 + _647 + stor266.length + _1055 + 101 len ceil32(_1327)] = mem[_1309 + 32 len ceil32(_1327)]
            if ceil32(_1327) > _1327:
                mem[_1327 + _1222 + _647 + stor266.length + _1055 + 101] = 0
            return 32, mem[_1222 + _647 + stor266.length + _1055 + 69 len ceil32(_1327) + 32]
        mem[_354 + 32 len s] = code.data[18150 len s]
        t = s - 1
        idx = arg1
        while idx:
            require t < mem[_354]
            if idx % 16 > 9:
                mem[_354 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 55, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 55, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) - 256
            else:
                mem[_354 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) - 256
            t = t - 1
            idx = idx / 16
            continue 
        _648 = mem[64]
        mem[0] = 266
        mem[mem[64] + 32] = uint256(stor266.field_0)
        idx = mem[64] + 32
        s = 0
        while _648 + stor266.length > idx:
            mem[idx + 32] = stor266[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[_648 + stor266.length + 32] = '0x'
        _1056 = mem[96]
        mem[_648 + stor266.length + 34 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_648 + stor266.length + floor32(mem[96]) + 34] = 256^(-(mem[96] % 32) + 32) - 1 and mem[_648 + stor266.length + floor32(mem[96]) + 34] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
        mem[_648 + stor266.length + _1056 + 34] = '/0x'
        _1228 = mem[_354]
        mem[_648 + stor266.length + _1056 + 37 len floor32(mem[_354])] = mem[_354 + 32 len floor32(mem[_354])]
        mem[_648 + stor266.length + _1056 + floor32(mem[_354]) + -(mem[_354] % 32) + 69 len mem[_354] % 32] = mem[_354 + floor32(mem[_354]) + -(mem[_354] % 32) + 64 len mem[_354] % 32]
        _1313 = mem[64]
        mem[64] = _1228 + _648 + stor266.length + _1056 + 37
        mem[_1228 + _648 + stor266.length + _1056 + 37] = 32
        _1328 = mem[_1313]
        mem[_1228 + _648 + stor266.length + _1056 + 69] = mem[_1313]
        mem[_1228 + _648 + stor266.length + _1056 + 101 len ceil32(_1328)] = mem[_1313 + 32 len ceil32(_1328)]
        if ceil32(_1328) > _1328:
            mem[_1328 + _1228 + _648 + stor266.length + _1056 + 101] = 0
        return 32, mem[_1228 + _648 + stor266.length + _1056 + 69 len ceil32(_1328) + 32]
    mem[128 len s] = code.data[18150 len s]
    t = s - 1
    idx = this.address
    while idx:
        require t < mem[96]
        if idx % 16 > 9:
            mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 55, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 55, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) - 256
        else:
            mem[t + 128 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) - 256
        t = t - 1
        idx = idx / 16
        continue 
    if not arg1:
        _220 = mem[64]
        mem[64] = mem[64] + 64
        mem[_220] = 1
        mem[_220 + 32] = '0'
        _241 = mem[64]
        mem[0] = 266
        mem[mem[64] + 32] = uint256(stor266.field_0)
        idx = mem[64] + 32
        s = 0
        while _241 + stor266.length > idx:
            mem[idx + 32] = stor266[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[_241 + stor266.length + 32] = '0x'
        _608 = mem[96]
        mem[_241 + stor266.length + 34 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_241 + stor266.length + floor32(mem[96]) + 34] = 256^(-(mem[96] % 32) + 32) - 1 and mem[_241 + stor266.length + floor32(mem[96]) + 34] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
        mem[_241 + stor266.length + _608 + 34] = '/0x'
        _913 = mem[_220]
        mem[_241 + stor266.length + _608 + 37 len floor32(mem[_220])] = mem[_220 + 32 len floor32(mem[_220])]
        mem[_241 + stor266.length + _608 + floor32(mem[_220]) + -(mem[_220] % 32) + 69 len mem[_220] % 32] = mem[_220 + floor32(mem[_220]) + -(mem[_220] % 32) + 64 len mem[_220] % 32]
        _1097 = mem[64]
        mem[64] = _913 + _241 + stor266.length + _608 + 37
        mem[_913 + _241 + stor266.length + _608 + 37] = 32
        _1164 = mem[_1097]
        mem[_913 + _241 + stor266.length + _608 + 69] = mem[_1097]
        mem[_913 + _241 + stor266.length + _608 + 101 len ceil32(_1164)] = mem[_1097 + 32 len ceil32(_1164)]
        if ceil32(_1164) > _1164:
            mem[_1164 + _913 + _241 + stor266.length + _608 + 101] = 0
        return 32, mem[_913 + _241 + stor266.length + _608 + 69 len ceil32(_1164) + 32]
    s = 0
    idx = arg1
    while idx:
        s = s + 1
        idx = idx / 16
        continue 
    _363 = mem[64]
    mem[mem[64]] = s
    mem[64] = mem[64] + ceil32(s) + 32
    if not s:
        t = s - 1
        idx = arg1
        while idx:
            require t < mem[_363]
            if idx % 16 > 9:
                mem[_363 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 55, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 55, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) - 256
            else:
                mem[_363 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) - 256
            t = t - 1
            idx = idx / 16
            continue 
        _655 = mem[64]
        mem[0] = 266
        mem[mem[64] + 32] = uint256(stor266.field_0)
        idx = mem[64] + 32
        s = 0
        while _655 + stor266.length > idx:
            mem[idx + 32] = stor266[s].field_256
            idx = idx + 32
            s = s + 1
            continue 
        mem[_655 + stor266.length + 32] = '0x'
        _1057 = mem[96]
        mem[_655 + stor266.length + 34 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[_655 + stor266.length + floor32(mem[96]) + 34] = 256^(-(mem[96] % 32) + 32) - 1 and mem[_655 + stor266.length + floor32(mem[96]) + 34] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
        mem[_655 + stor266.length + _1057 + 34] = '/0x'
        _1235 = mem[_363]
        mem[_655 + stor266.length + _1057 + 37 len floor32(mem[_363])] = mem[_363 + 32 len floor32(mem[_363])]
        mem[_655 + stor266.length + _1057 + floor32(mem[_363]) + -(mem[_363] % 32) + 69 len mem[_363] % 32] = mem[_363 + floor32(mem[_363]) + -(mem[_363] % 32) + 64 len mem[_363] % 32]
        _1317 = mem[64]
        mem[64] = _1235 + _655 + stor266.length + _1057 + 37
        mem[_1235 + _655 + stor266.length + _1057 + 37] = 32
        _1329 = mem[_1317]
        mem[_1235 + _655 + stor266.length + _1057 + 69] = mem[_1317]
        mem[_1235 + _655 + stor266.length + _1057 + 101 len ceil32(_1329)] = mem[_1317 + 32 len ceil32(_1329)]
        if ceil32(_1329) > _1329:
            mem[_1329 + _1235 + _655 + stor266.length + _1057 + 101] = 0
        return 32, mem[_1235 + _655 + stor266.length + _1057 + 69 len ceil32(_1329) + 32]
    mem[_363 + 32 len s] = code.data[18150 len s]
    t = s - 1
    idx = arg1
    while idx:
        require t < mem[_363]
        if idx % 16 > 9:
            mem[_363 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 55, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 55, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) - 256
        else:
            mem[_363 + t + 32 len 8] = Mask(8, -(('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) + 256, 0) << (('mask_shl', 8, 0, 245, ('add', 48, ('mask_shl', 4, 0, 0, ('var', 0)))), 0) - 256
        t = t - 1
        idx = idx / 16
        continue 
    _656 = mem[64]
    mem[0] = 266
    mem[mem[64] + 32] = uint256(stor266.field_0)
    idx = mem[64] + 32
    s = 0
    while _656 + stor266.length > idx:
        mem[idx + 32] = stor266[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[_656 + stor266.length + 32] = '0x'
    _1058 = mem[96]
    mem[_656 + stor266.length + 34 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
    mem[_656 + stor266.length + floor32(mem[96]) + 34] = 256^(-(mem[96] % 32) + 32) - 1 and mem[_656 + stor266.length + floor32(mem[96]) + 34] or mem[floor32(mem[96]) + 128] and !(256^(-(mem[96] % 32) + 32) - 1)
    mem[_656 + stor266.length + _1058 + 34] = '/0x'
    _1241 = mem[_363]
    mem[_656 + stor266.length + _1058 + 37 len floor32(mem[_363])] = mem[_363 + 32 len floor32(mem[_363])]
    mem[_656 + stor266.length + _1058 + floor32(mem[_363]) + -(mem[_363] % 32) + 69 len mem[_363] % 32] = mem[_363 + floor32(mem[_363]) + -(mem[_363] % 32) + 64 len mem[_363] % 32]
    _1321 = mem[64]
    mem[64] = _1241 + _656 + stor266.length + _1058 + 37
    mem[_1241 + _656 + stor266.length + _1058 + 37] = 32
    _1330 = mem[_1321]
    mem[_1241 + _656 + stor266.length + _1058 + 69] = mem[_1321]
    mem[_1241 + _656 + stor266.length + _1058 + 101 len ceil32(_1330)] = mem[_1321 + 32 len ceil32(_1330)]
    if ceil32(_1330) > _1330:
        mem[_1330 + _1241 + _656 + stor266.length + _1058 + 101] = 0
    return 32, mem[_1241 + _656 + stor266.length + _1058 + 69 len ceil32(_1330) + 32]
}



}
