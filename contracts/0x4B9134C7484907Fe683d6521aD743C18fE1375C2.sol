contract main {




// =====================  Runtime code  =====================


#
#  - sub_cd7e53cc(?)
#
uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address stor102;
address stor103;
address stor104;
array of uint256 stor105;
address stor106;
mapping of uint256 stor107;
array of struct stor108;
mapping of uint16 stor109;
mapping of struct stor110;
mapping of uint8 stor111;
array of uint256 stor112;
mapping of uint8 stor113;
address owner;

function owner() {
    return owner
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_5c019d2e(?) {
    require msg.sender == owner
    stor105[] = Array(len=arg1.length, data=arg1[all])
}

function sub_22cc9a02(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address supplied'
    stor106 = arg1
}

function sub_4081eead(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address supplied'
    stor102 = arg1
}

function sub_df2b9119(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address supplied'
    stor104 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setLibAddress(address arg1) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address supplied'
    stor103 = arg1
}

function sub_571ff873(?) {
    require ext_code.size(stor102)
    call stor102.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function balanceOf(address arg1) {
    require ext_code.size(stor102)
    call stor102.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function sub_7532e0d0(?) {
    require ext_code.size(stor102)
    call stor102.isTokenFrozen(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function sub_60c24cd9(?) {
    if arg1 < 0:
        revert with 0, 'Invalid cardId supplied'
    require ext_code.size(stor102)
    call stor102.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'Invalid cardId supplied'
    return stor109[arg1]
}

function sub_8aa7b4cc(?) {
    if arg1 < 0:
        revert with 0, 'Invalid cardId supplied'
    require ext_code.size(stor102)
    call stor102.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'Invalid cardId supplied'
    return stor111[arg1]
}

function setContractAddresses(address arg1, address arg2, address arg3) {
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid controller address supplied'
    if not arg2:
        revert with 0, 'Invalid packs address supplied'
    if not arg3:
        revert with 0, 'Invalid lib address supplied'
    stor106 = arg1
    stor104 = arg2
    stor103 = arg3
}

function sub_c5b8e386(?) {
    if arg1 < 0:
        revert with 0, 'Invalid cardId supplied'
    require ext_code.size(stor102)
    call stor102.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'Invalid cardId supplied'
    return uint8(stor110[arg1].field_0)
}

function sub_ba574496(?) {
    if arg1 < 0:
        revert with 0, 'Invalid cardId supplied'
    require ext_code.size(stor102)
    call stor102.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1 >= ext_call.return_data[0]:
        revert with 0, 'Invalid cardId supplied'
    mem[128] = stor108[arg1].field_0
    idx = 128
    s = 0
    while stor108[arg1].length + 96 > idx:
        mem[idx + 32] = stor108[arg1][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return Array(len=stor108[arg1].length, data=mem[128 len stor108[arg1].length])
}

function initialize(address arg1) {
    if uint8(stor0.field_8):
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
    else:
        if ext_code.size(this.address):
            if uint8(stor0.field_0):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
        Mask(248, 0, stor0.field_8) = 1
        uint8(stor0.field_0) = 1
        if not uint8(stor0.field_8):
            if ext_code.size(this.address):
                if uint8(stor0.field_0):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Contract instance has already been initialized'
    Mask(248, 0, stor0.field_8) = 1
    uint8(stor0.field_0) = 1
    owner = arg1
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
    mem[128] = 'https://crypto-cards.io/card-inf'
    mem[160] = 'o/'
    stor105.length = 69
    s = 0
    idx = 128
    while 162 > idx:
        stor105[s] = mem[idx]
        s = s + 1
        idx = idx + 32
        continue 
    idx = 2
    while stor105.length + 31 / 32 > idx:
        stor105[idx] = 0
        idx = idx + 1
        continue 
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function sub_d455b125(?) {
    if stor106 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Action only allowed by Controller contract'
    require ext_code.size(stor102)
    call stor102.isTokenFrozen(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Action only allowed on Unprinted Cards'
    if arg2 < 0:
        revert with 0, 'Invalid cardId supplied'
    require ext_code.size(stor102)
    call stor102.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 >= ext_call.return_data[0]:
        revert with 0, 'Invalid cardId supplied'
    require ext_code.size(stor102)
    call stor102.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid owner supplied or owner is not card-owner'
    if arg1 != ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid owner supplied or owner is not card-owner'
    stor107[arg2] = arg3
}

function sub_24e7f944(?) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    if stor106 != msg.sender:
        revert with 0, 'Action only allowed by Controller contract'
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        _21 = mem[(32 * idx) + 128]
        mem[(32 * arg2.length) + 132] = mem[(32 * idx) + 128]
        require ext_code.size(stor102)
        call stor102.ownerOf(uint256 arg1) with:
             gas gas_remaining wei
            args _21
        mem[(32 * arg2.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if address(ext_call.return_data[0]) == arg1:
            require idx < arg2.length
            stor107[mem[(32 * idx) + 128]] = 0
            s = sha3(mem[(32 * idx) + 128], 112)
            while sha3(mem[(32 * idx) + 128], 112) + 8 > s:
                stor[s] = 0
                s = s + 1
                continue 
            mem[0] = mem[(32 * idx) + 128]
            mem[32] = 113
            uint256(stor113[mem[(32 * idx) + 128]]) = 0
            require idx < arg2.length
            _37 = mem[(32 * idx) + 128]
            mem[(32 * arg2.length) + 128] = 0xb6854f9600000000000000000000000000000000000000000000000000000000
            mem[(32 * arg2.length) + 132] = _37
            require ext_code.size(stor102)
            call stor102.freezeToken(uint256 arg1) with:
                 gas gas_remaining wei
                args _37
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        idx = idx + 1
        continue 
}

function sub_11e07027(?) {
    if stor106 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Action only allowed by Controller contract'
    require ext_code.size(stor102)
    call stor102.isTokenFrozen(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Action only allowed on Unprinted Cards'
    if arg3 < 0:
        revert with 0, 'Invalid cardId supplied'
    require ext_code.size(stor102)
    call stor102.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 >= ext_call.return_data[0]:
        revert with 0, 'Invalid cardId supplied'
    require ext_code.size(stor102)
    call stor102.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid owner supplied or owner is not card-owner'
    if arg2 != ext_call.return_data[12 len 20]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid owner supplied or owner is not card-owner'
    if arg1 == ext_call.return_data[12 len 20]:
        revert with 0, 'Cannot transfer card to self'
    if stor107[arg3] <= 0:
        revert with 0, 'Card is not for sale'
    if arg4 < stor107[arg3]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Card price is greater than the price paid'
    if not address(ext_call.return_data[0]):
        revert with 0, 'Invalid from address supplied'
    if not arg1:
        revert with 0, 'Invalid to address supplied'
    stor107[arg3] = 0
    idx = 0
    while 8 > idx:
        stor112[arg3][idx] = 0
        idx = idx + 1
        continue 
    uint256(stor113[arg3]) = 0
    require ext_code.size(stor102)
    call stor102.tokenTransfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(arg1), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return stor107[arg3]
}

function sub_222a2478(?) {
    mem[128 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    mem[(32 * arg3.length) + 128] = arg4.length
    mem[(32 * arg3.length) + 160 len 32 * arg4.length] = call.data[arg4 + 36 len 32 * arg4.length]
    if stor106 != msg.sender:
        revert with 0, 'Action only allowed by Controller contract'
    require ext_code.size(stor102)
    call stor102.isTokenFrozen(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) == 1:
        revert with 0, 'Action only allowed on Unprinted Cards'
    if arg2 < 0:
        revert with 0, 'Invalid cardId supplied'
    require ext_code.size(stor102)
    call stor102.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 >= ext_call.return_data[0]:
        revert with 0, 'Invalid cardId supplied'
    require ext_code.size(stor102)
    call stor102.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    mem[(32 * arg3.length) + (32 * arg4.length) + 160] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Invalid owner supplied or owner is not card-owner'
    if arg1 != ext_call.return_data[12 len 20]:
        revert with 0, 'Invalid owner supplied or owner is not card-owner'
    idx = 0
    while 8 > idx:
        stor112[arg2][idx] = 0
        idx = idx + 1
        continue 
    uint256(stor113[arg2]) = 0
    idx = 0
    while idx < arg3.length:
        mem[0] = arg2
        mem[32] = 112
        require idx < arg3.length
        require uint8(mem[(32 * idx) + 128] - 1) < 256
        stor112[arg2][uint8(mem[(32 * idx) + 128] - 1) / 32] = 256^(mem[(32 * idx) + 128] - 1 % 32) or !(255 * 256^(mem[(32 * idx) + 128] - 1 % 32)) and stor112[arg2][uint8(mem[(32 * idx) + 128] - 1) / 32]
        idx = idx + 1
        continue 
    if arg4.length > 0:
        idx = 0
        while idx < arg4.length:
            mem[0] = arg2
            mem[32] = 113
            require idx < arg4.length
            require mem[(32 * idx) + (32 * arg3.length) + 191 len 1] < 4
            uint256(stor113[arg2][uint8(mem[(32 * idx) + (32 * arg3.length) + 160]) / 32]) = 256^(mem[(32 * idx) + (32 * arg3.length) + 160] % 32) or !(255 * 256^(mem[(32 * idx) + (32 * arg3.length) + 160] % 32)) and uint256(stor113[arg2][uint8(mem[(32 * idx) + (32 * arg3.length) + 160]) / 32])
            idx = idx + 1
            continue 
    else:
        if arg3.length > 0:
            uint8(stor113[arg2]) = 1
}

function sub_beb28e18(?) {
    if stor106 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Action only allowed by Controller contract'
    require ext_code.size(stor102)
    call stor102.isTokenFrozen(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if bool(ext_call.return_data[0]) == 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Action only allowed on Unprinted Cards'
    if arg3 < 0:
        revert with 0, 'Invalid tradeCardId supplied'
    require ext_code.size(stor102)
    call stor102.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg3 >= ext_call.return_data[0]:
        revert with 0, 'Invalid tradeCardId supplied'
    if arg2 < 0:
        revert with 0, 'Invalid ownerCardId supplied'
    require ext_code.size(stor102)
    call stor102.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg2 >= ext_call.return_data[0]:
        revert with 0, 'Invalid ownerCardId supplied'
    require ext_code.size(stor102)
    call stor102.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor102)
    call stor102.ownerOf(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if address(ext_call.return_data[0]) != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'owner supplied is not real owner of card'
    if not ext_call.return_data[12 len 20]:
        revert with 0, 'Invalid trade card owner'
    require uint8(stor110[arg2].field_0) < 256
    if bool(stor('array', ('stor', 3, 5, ('map', ('param', 'arg2'), ('name', 'stor110', 110))), ('map', ('param', 'arg3'), ('name', 'stor112', 112)))[stor110[arg2].field_0 % 32]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Owner-card cannot be traded for trade-card'
    if bool(uint8(stor113[arg3])) != 1:
        require uint8(stor111[arg2] + 1) < 4
        if bool(stor('array', ('mask_shl', 3, 5, -5, ('add', 1, ('stor', 8, 0, ('map', ('param', 'arg2'), ('name', 'stor111', 111))))), ('map', ('param', 'arg3'), ('name', 'stor113', 113)))[uint8(stor111[arg2] + 1)]) != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Owner-card does not match required generation for trade-card'
    if not address(ext_call.return_data[0]):
        revert with 0, 'Invalid from address supplied'
    if not address(ext_call.return_data[0]):
        revert with 0, 'Invalid to address supplied'
    stor107[arg2] = 0
    idx = 0
    while 8 > idx:
        stor112[arg2][idx] = 0
        idx = idx + 1
        continue 
    uint256(stor113[arg2]) = 0
    require ext_code.size(stor102)
    call stor102.tokenTransfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not address(ext_call.return_data[0]):
        revert with 0, 'Invalid from address supplied'
    if not address(ext_call.return_data[0]):
        revert with 0, 'Invalid to address supplied'
    stor107[arg3] = 0
    idx = 0
    while 8 > idx:
        stor112[arg3][idx] = 0
        idx = idx + 1
        continue 
    uint256(stor113[arg3]) = 0
    require ext_code.size(stor102)
    call stor102.tokenTransfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(ext_call.return_data[0])
}



}
