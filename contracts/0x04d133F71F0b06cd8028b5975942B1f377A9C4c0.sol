contract main {




// =====================  Runtime code  =====================


const acceptBid = 0


uint8 stor0; offset 160
address owner;
address whitelistAddress;
address stor2;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of address sub_a0f0fcdf;
mapping of address stor7;
mapping of uint256 stor8;
mapping of uint256 stor9;
uint256 totalSupply;
uint8 sub_20085a30;
uint8 stor11; offset 8
uint256 stor12;
mapping of struct bids;
uint256 sub_c00c4da1;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_20085a30(?) {
    require sub_20085a30 <= 1
    return sub_20085a30
}

function decimals() {
    return decimals
}

function bids(uint256 arg1) {
    return bids[arg1].field_0, bids[arg1].field_256, bids[arg1].field_512, bids[arg1].field_768
}

function matured() {
    return bool(stor0)
}

function ico() {
    return bool(stor11)
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a0f0fcdf(?) {
    return sub_a0f0fcdf[address(arg1)]
}

function sub_c00c4da1(?) {
    return sub_c00c4da1
}

function whitelistAddress() {
    return whitelistAddress
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function mature() {
    require msg.sender == owner
    stor0 = 1
    emit 0x18102326 
    return 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function balanceOf(address arg1) {
    if not stor0:
        return stor8[address(arg1)]
    else:
        return 0
}

function allowance(address arg1, address arg2) {
    if not stor0:
        return stor9[address(arg1)][address(arg2)]
    else:
        return 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function changeWhitelistContract(address arg1) {
    require msg.sender == owner
    if not stor0:
        require ext_code.size(arg1) > 0
        stor2 = arg1
        whitelistAddress = arg1
        emit 0xe771f107: arg1
}

function sub_04f2f622(?) {
    require msg.sender == owner
    if not stor0:
        require sub_a0f0fcdf[address(arg1)]
        stor7[stor6[address(arg1)]] = 0
        sub_a0f0fcdf[address(arg1)] = 0
        emit ChangeExchange(arg1, 0);
}

function sub_f2c584a0(?) {
    require msg.sender == owner
    if not stor0:
        require ext_code.size(arg1) > 0
        require ext_code.size(arg2) > 0
        sub_a0f0fcdf[address(arg1)] = arg2
        stor7[address(arg2)] = arg2
        emit ChangeExchange(arg1, arg2);
}

function sub_08508b52(?) {
    if msg.sender:
        require ext_code.size(stor2)
        call stor2.0x3af32abf with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require stor0
            return 0
        else:
            return 0
    else:
        return 0
}

function sub_a4c2ea5b(?) {
    if msg.sender:
        require ext_code.size(stor2)
        call stor2.0x3af32abf with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            require stor0
            return 0
        else:
            return 0
    else:
        return 0
}

function deposit(address arg1, uint256 arg2) {
    require msg.sender == owner
    if stor0:
        return 0
    require arg1
    require ext_code.size(stor2)
    call stor2.0x3af32abf with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 + stor8[address(arg1)] >= stor8[address(arg1)]
    stor8[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, arg1);
    emit TotalSupply(totalSupply);
    return 1
}

function withdraw(uint256 arg1) {
    if not msg.sender:
        return 0
    require ext_code.size(stor2)
    call stor2.0x3af32abf with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if stor0:
        return 0
    require arg1 <= stor8[msg.sender]
    require arg1 <= stor8[msg.sender]
    stor8[msg.sender] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Transfer(arg1, msg.sender, 0);
    emit TotalSupply(totalSupply);
    return 1
}

function approve(address arg1, uint256 arg2) {
    if not msg.sender:
        return 0
    require ext_code.size(stor2)
    call stor2.0x3af32abf with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if stor0:
        return 0
    require arg1
    require ext_code.size(stor2)
    call stor2.0x3af32abf with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor9[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    if not msg.sender:
        return 0
    require ext_code.size(stor2)
    call stor2.0x3af32abf with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if stor0:
        return 0
    require arg1
    require ext_code.size(stor2)
    call stor2.0x3af32abf with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 + stor9[msg.sender][address(arg1)] >= stor9[msg.sender][address(arg1)]
    stor9[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + stor9[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if not msg.sender:
        return 0
    require ext_code.size(stor2)
    call stor2.0x3af32abf with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if stor0:
        return 0
    require arg1
    require ext_code.size(stor2)
    call stor2.0x3af32abf with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if arg2 >= stor9[msg.sender][address(arg1)]:
        stor9[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= stor9[msg.sender][address(arg1)]
        stor9[msg.sender][address(arg1)] -= arg2
    emit Approval(stor9[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function removeBid(uint256 arg1) {
    if not msg.sender:
        return 0
    require ext_code.size(stor2)
    call stor2.0x3af32abf with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if owner != msg.sender:
        require msg.sender == bids[arg1].field_256
    require ext_code.size(bids[arg1].field_0)
    call bids[arg1].field_0.0x454c87b3 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require ext_code.size(bids[arg1].field_0)
        call bids[arg1].field_0.0x8508b52 with:
             gas gas_remaining wei
            args bids[arg1].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
    require bids[arg1].field_512 <= stor8[address(this.address)]
    stor8[address(this.address)] -= bids[arg1].field_512
    require bids[arg1].field_512 + stor8[stor13[arg1].field_256] >= stor8[stor13[arg1].field_256]
    stor8[stor13[arg1].field_256] += bids[arg1].field_512
    emit Transfer(bids[arg1].field_512, this.address, bids[arg1].field_256);
    require bids[arg1].field_512 <= sub_c00c4da1
    sub_c00c4da1 -= bids[arg1].field_512
    bids[arg1].field_0 = 0
    bids[arg1].field_256 = 0
    bids[arg1].field_512 = 0
    bids[arg1].field_768 = 0
    emit RemoveBid(arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if not msg.sender:
        return 0
    require ext_code.size(stor2)
    call stor2.0x3af32abf with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if stor0:
        return 0
    require arg1
    require ext_code.size(stor2)
    call stor2.0x3af32abf with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2
    require ext_code.size(stor2)
    call stor2.0x3af32abf with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 != this.address
    require ext_code.size(msg.sender) <= 0
    require arg3 + sub_c00c4da1 >= sub_c00c4da1
    sub_c00c4da1 += arg3
    require ext_code.size(arg2)
    call arg2.0xa4c2ea5b with:
         gas gas_remaining wei
        args arg3, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    bids[stor12].field_0 = arg2
    bids[stor12].field_256 = msg.sender
    bids[stor12].field_512 = arg3
    bids[stor12].field_768 = ext_call.return_data[0]
    emit 0xb250059d: arg3, ext_call.return_data[0], stor12, arg2, msg.sender
    stor12++
    require arg3 <= stor8[address(arg1)]
    stor8[address(arg1)] -= arg3
    require arg3 + stor8[arg2] >= stor8[arg2]
    stor8[address(arg2)] = arg3 + stor8[arg2]
    require arg3 <= stor9[address(arg1)][msg.sender]
    stor9[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_f3b29279(?) {
    require msg.sender == owner
    if stor0:
        return 0
    require not stor8[address(arg3)]
    require arg3
    require ext_code.size(stor2)
    call stor2.0x3af32abf with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require ext_code.size(arg1)
    call arg1.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0x313ce567 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        require 10^ext_call.return_data[31 len 1] > 0
        require 10^ext_call.return_data[31 len 1]
        stor8[address(arg3)] = 0 / 10^uint8(ext_call.return_data[0])
        require (0 / 10^uint8(ext_call.return_data[0])) + totalSupply >= totalSupply
        totalSupply += 0 / 10^uint8(ext_call.return_data[0])
        emit Transfer((0 / 10^uint8(ext_call.return_data[0])), 0, arg3);
        emit 0x2d846790: address(arg1), address(arg2), address(arg3), ext_call.return_data[0], 0 / 10^uint8(ext_call.return_data[0])
    else:
        require 10^decimals * ext_call.return_data[0] / ext_call.return_data[0] == 10^decimals
        require 10^ext_call.return_data[31 len 1] > 0
        require 10^ext_call.return_data[31 len 1]
        stor8[address(arg3)] = 10^decimals * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])
        require (10^decimals * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])) + totalSupply >= totalSupply
        totalSupply += 10^decimals * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])
        emit Transfer((10^decimals * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])), 0, arg3);
        emit 0x2d846790: address(arg1), address(arg2), address(arg3), ext_call.return_data[0], 10^decimals * ext_call.return_data[0] / 10^uint8(ext_call.return_data[0])
    emit TotalSupply(totalSupply);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if not msg.sender:
        return 0
    require ext_code.size(stor2)
    call stor2.0x3af32abf with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if stor0:
        return 0
    require arg1
    require ext_code.size(stor2)
    call stor2.0x3af32abf with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require msg.sender
    require ext_code.size(stor2)
    call stor2.0x3af32abf with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if ext_code.size(arg1) > 0:
        require arg1 != this.address
        require ext_code.size(msg.sender) <= 0
        require arg2 + sub_c00c4da1 >= sub_c00c4da1
        sub_c00c4da1 += arg2
        require ext_code.size(arg1)
        call arg1.0xa4c2ea5b with:
             gas gas_remaining wei
            args arg2, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        bids[stor12].field_0 = arg1
        bids[stor12].field_256 = msg.sender
        bids[stor12].field_512 = arg2
        bids[stor12].field_768 = ext_call.return_data[0]
        emit 0xb250059d: arg2, ext_call.return_data[0], stor12, arg1, msg.sender
        stor12++
    if ext_code.size(msg.sender) > 0:
        require arg2 <= stor8[address(this.address)]
        stor8[address(this.address)] -= arg2
        if ext_code.size(arg1) > 0:
            require arg2 + stor8[this.address] >= stor8[this.address]
            stor8[address(this.address)] = arg2 + stor8[this.address]
            emit Transfer(arg2, this.address, this.address);
        else:
            require arg2 + stor8[arg1] >= stor8[arg1]
            stor8[address(arg1)] = arg2 + stor8[arg1]
            emit Transfer(arg2, this.address, arg1);
    else:
        require arg2 <= stor8[address(msg.sender)]
        stor8[address(msg.sender)] -= arg2
        if ext_code.size(arg1) > 0:
            require arg2 + stor8[this.address] >= stor8[this.address]
            stor8[address(this.address)] = arg2 + stor8[this.address]
            emit Transfer(arg2, msg.sender, this.address);
        else:
            require arg2 + stor8[arg1] >= stor8[arg1]
            stor8[address(arg1)] = arg2 + stor8[arg1]
            emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function sub_8f6efd53(?) {
    mem[64] = (32 * arg1.length) + 128
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    if stor0:
        return 0
    idx = 0
    while idx < arg1.length:
        require idx < mem[96]
        _45 = mem[(32 * idx) + 128]
        _48 = mem[64]
        mem[64] = mem[64] + 128
        mem[_48] = 0
        mem[_48 + 32] = 0
        mem[_48 + 64] = 0
        mem[_48 + 96] = 0
        mem[0] = _45
        mem[32] = 13
        _50 = mem[64]
        mem[64] = mem[64] + 128
        mem[_50] = bids[_45].field_0
        mem[_50 + 32] = bids[_45].field_256
        mem[_50 + 64] = bids[_45].field_512
        mem[_50 + 96] = bids[_45].field_768
        require bids[_45].field_0
        require bids[_45].field_512 <= sub_c00c4da1
        sub_c00c4da1 -= bids[_45].field_512
        require ext_code.size(bids[_45].field_0)
        call bids[_45].field_0.0x5d452201 with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(bids[_45].field_0)
        call bids[_45].field_0.issuer() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require address(ext_call.return_data[0])
        mem[mem[64] + 4] = bids[_45].field_256
        mem[mem[64] + 36] = bids[_45].field_768
        require ext_code.size(bids[_45].field_0)
        call bids[_45].field_0.0x8d434d68 with:
             gas gas_remaining wei
            args bids[_45].field_256, bids[_45].field_768
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require ext_code.size(bids[_45].field_0)
        call bids[_45].field_0.issuer() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require bids[_45].field_512 <= stor8[address(this.address)]
        stor8[address(this.address)] -= bids[_45].field_512
        require bids[_45].field_512 + stor8[address(ext_call.return_data[0])] >= stor8[address(ext_call.return_data[0])]
        stor8[address(ext_call.return_data[0])] += bids[_45].field_512
        mem[mem[64]] = bids[_45].field_512
        emit Transfer(bids[_45].field_512, this.address, address(ext_call.return_data[0]));
        mem[0] = _45
        mem[32] = 13
        bids[_45].field_0 = 0
        bids[_45].field_256 = 0
        bids[_45].field_512 = 0
        bids[_45].field_768 = 0
        emit RemoveBid(_45);
        idx = idx + 1
        continue 
    return 1
}

function bid(address arg1, uint256 arg2, uint256 arg3) {
    if not msg.sender:
        return 0
    require ext_code.size(stor2)
    call stor2.0x3af32abf with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        return 0
    if stor0:
        return 0
    require arg1 != this.address
    require arg1
    require ext_code.size(stor2)
    call stor2.0x3af32abf with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg1
    require ext_code.size(stor2)
    call stor2.0x3af32abf with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require msg.sender
    require ext_code.size(stor2)
    call stor2.0x3af32abf with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if ext_code.size(arg1) > 0:
        require arg1 != this.address
        require ext_code.size(msg.sender) <= 0
        require arg2 + sub_c00c4da1 >= sub_c00c4da1
        sub_c00c4da1 += arg2
        require ext_code.size(arg1)
        call arg1.0xa4c2ea5b with:
             gas gas_remaining wei
            args arg2, arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        bids[stor12].field_0 = arg1
        bids[stor12].field_256 = msg.sender
        bids[stor12].field_512 = arg2
        bids[stor12].field_768 = ext_call.return_data[0]
        emit 0xb250059d: arg2, ext_call.return_data[0], stor12, arg1, msg.sender
        stor12++
    if ext_code.size(msg.sender) > 0:
        require arg2 <= stor8[address(this.address)]
        stor8[address(this.address)] -= arg2
        if ext_code.size(arg1) > 0:
            require arg2 + stor8[this.address] >= stor8[this.address]
            stor8[address(this.address)] = arg2 + stor8[this.address]
            emit Transfer(arg2, this.address, this.address);
        else:
            require arg2 + stor8[arg1] >= stor8[arg1]
            stor8[address(arg1)] = arg2 + stor8[arg1]
            emit Transfer(arg2, this.address, arg1);
    else:
        require arg2 <= stor8[address(msg.sender)]
        stor8[address(msg.sender)] -= arg2
        if ext_code.size(arg1) > 0:
            require arg2 + stor8[this.address] >= stor8[this.address]
            stor8[address(this.address)] = arg2 + stor8[this.address]
            emit Transfer(arg2, msg.sender, this.address);
        else:
            require arg2 + stor8[arg1] >= stor8[arg1]
            stor8[address(arg1)] = arg2 + stor8[arg1]
            emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
