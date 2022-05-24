contract main {




// =====================  Runtime code  =====================


const name = ' Arcona Digital Land'

const implementsERC721 = 1

const symbol = 'ARDL'


address owner;
mapping of uint8 stor1;
uint256 totalSupply;
uint256 stor3;
mapping of uint256 lands;
mapping of address ownerOf;
mapping of address approvedFor;
array of struct balanceOf;
mapping of uint256 stor8;

function totalSupply() {
    return totalSupply
}

function isAdmin(address arg1) {
    return bool(stor1[address(arg1)])
}

function approvedFor(uint256 arg1) {
    return approvedFor[arg1]
}

function ownerOf(uint256 arg1) {
    return ownerOf[arg1]
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)].field_0
}

function owner() {
    return owner
}

function lands(uint256 arg1) {
    return lands[arg1]
}

function _fallback() payable {
    revert
}

function allowance(address arg1, uint256 arg2) {
    return (approvedFor[arg2] == arg1)
}

function addAdmin(address arg1) {
    require msg.sender == owner
    require arg1
    stor1[address(arg1)] = 1
    emit AddAdmin(arg1);
}

function owns(address arg1, uint256 arg2) {
    if ownerOf[arg2] != arg1:
        return (ownerOf[arg2] == arg1)
    return not not ownerOf[arg2]
}

function delAdmin(address arg1) {
    require msg.sender == owner
    require stor1[address(arg1)]
    stor1[address(arg1)] = 0
    emit DelAdmin(arg1);
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2] == msg.sender
    require ownerOf[arg2]
    require arg1 != msg.sender
    if not approvedFor[arg2]:
        if not arg1:
            return 0
    approvedFor[arg2] = arg1
    emit Approval(msg.sender, arg1, arg2);
    return 1
}

function createLand(address arg1, uint256 arg2) {
    require stor1[address(msg.sender)]
    require arg1
    stor3++
    require not ownerOf[stor3]
    ownerOf[stor3] = arg1
    balanceOf[address(arg1)].field_0++
    balanceOf[address(arg1)][balanceOf[address(arg1)].field_0].field_0 = stor3
    stor8[stor3] = balanceOf[address(arg1)].field_0
    require totalSupply + 1 >= totalSupply
    totalSupply++
    lands[stor3] = arg2
    emit Transfer(0, arg1, stor3);
    emit NewLand(stor3, arg1);
    return stor3
}

function approveAndCall(address arg1, uint256 arg2, bytes arg3) {
    require ownerOf[arg2] == msg.sender
    require ownerOf[arg2]
    require arg1 != msg.sender
    if not approvedFor[arg2]:
        if not arg1:
            return 0
    approvedFor[arg2] = arg1
    emit Approval(msg.sender, arg1, arg2);
    require ext_code.size(arg1)
    call arg1.receiveApproval(address arg1, address arg2, uint256 arg3, bytes arg4) with:
         gas gas_remaining wei
        args msg.sender, this.address, arg2, Array(len=arg3.length, data=arg3[all])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function createAuction(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require ownerOf[arg2] == msg.sender
    require ownerOf[arg2]
    require arg1 != msg.sender
    if not approvedFor[arg2]:
        if not arg1:
            return 0
    approvedFor[arg2] = arg1
    emit Approval(msg.sender, arg1, arg2);
    require ext_code.size(arg1)
    call arg1.receiveCreateAuction(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), this.address, arg2, arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function createLandAndAuction(address arg1, uint256 arg2, address arg3, uint256 arg4, uint256 arg5) {
    require stor1[address(msg.sender)]
    require stor1[address(msg.sender)]
    require arg1
    stor3++
    require not ownerOf[stor3]
    ownerOf[stor3] = arg1
    balanceOf[address(arg1)].field_0++
    balanceOf[address(arg1)][balanceOf[address(arg1)].field_0].field_0 = stor3
    stor8[stor3] = balanceOf[address(arg1)].field_0
    require totalSupply + 1 >= totalSupply
    totalSupply++
    lands[stor3] = arg2
    emit Transfer(0, arg1, stor3);
    emit NewLand(stor3, arg1);
    require ownerOf[stor3] == msg.sender
    require ownerOf[stor3]
    require arg3 != msg.sender
    if not approvedFor[stor3]:
        require arg3
    approvedFor[stor3] = arg3
    emit Approval(msg.sender, arg3, stor3);
    require ext_code.size(arg3)
    call arg3.receiveCreateAuction(address arg1, address arg2, uint256 arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args 0, uint32(msg.sender), this.address, stor3, arg4, arg5
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function landsOf(address arg1) {
    if not balanceOf[address(arg1)].field_0:
        mem[(32 * balanceOf[address(arg1)].field_0) + 128] = 32
        mem[(32 * balanceOf[address(arg1)].field_0) + 160] = balanceOf[address(arg1)].field_0
        mem[(32 * balanceOf[address(arg1)].field_0) + 192 len floor32(balanceOf[address(arg1)].field_0)] = mem[128 len floor32(balanceOf[address(arg1)].field_0)]
        return memory
          from (32 * balanceOf[address(arg1)].field_0) + 128
           len (96 * balanceOf[address(arg1)].field_0) + 64
    mem[128] = balanceOf[address(arg1)].field_0
    idx = 128
    s = 0
    while (32 * balanceOf[address(arg1)].field_0) + 96 > idx:
        mem[idx + 32] = balanceOf[address(arg1)][s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * balanceOf[address(arg1)].field_0) + 192 len floor32(balanceOf[address(arg1)].field_0)] = mem[128 len floor32(balanceOf[address(arg1)].field_0)]
    return Array(len=balanceOf[address(arg1)].field_0, data=mem[128 len floor32(balanceOf[address(arg1)].field_0)], mem[(32 * balanceOf[address(arg1)].field_0) + floor32(balanceOf[address(arg1)].field_0) + 192 len (32 * balanceOf[address(arg1)].field_0) - floor32(balanceOf[address(arg1)].field_0)]), 
}

function createAuctionFromArray(address arg1, uint256[] arg2, uint256 arg3, uint256 arg4) {
    mem[128 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    idx = 0
    while idx < arg2.length:
        require idx < arg2.length
        require ownerOf[mem[(32 * idx) + 128]] == msg.sender
        require ownerOf[mem[(32 * idx) + 128]]
        require arg1 != msg.sender
        if not approvedFor[mem[(32 * idx) + 128]]:
            require arg1
        mem[0] = mem[(32 * idx) + 128]
        mem[32] = 6
        approvedFor[mem[(32 * idx) + 128]] = arg1
        emit Approval(msg.sender, arg1, mem[(32 * idx) + 128]);
        idx = idx + 1
        continue 
    mem[(32 * arg2.length) + 324 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    require ext_code.size(arg1)
    call arg1.receiveCreateAuctionFromArray(address arg1, address arg2, uint256[] arg3, uint256 arg4, uint256 arg5) with:
         gas gas_remaining wei
        args msg.sender, this.address, Array(len=arg2.length, data=call.data[arg2 + 36 len floor32(arg2.length)], mem[(32 * arg2.length) + floor32(arg2.length) + 324 len (32 * arg2.length) - floor32(arg2.length)]), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function ownerTransfer(address arg1, address arg2, uint256 arg3) {
    require stor1[address(msg.sender)]
    require ownerOf[arg3] == arg1
    require ownerOf[arg3]
    require arg2
    require ownerOf[arg3] != arg2
    require ownerOf[arg3] == arg1
    require ownerOf[arg3]
    approvedFor[arg3] = 0
    emit Approval(arg1, 0, arg3);
    require ownerOf[arg3] == arg1
    require ownerOf[arg3]
    require 1 <= balanceOf[address(arg1)].field_0
    require balanceOf[address(arg1)].field_0 - 1 < balanceOf[address(arg1)].field_0
    ownerOf[arg3] = 0
    require stor8[arg3] < balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)][stor8[arg3]].field_0 = balanceOf[address(arg1)][balanceOf[address(arg1)].field_0].field_0
    require balanceOf[address(arg1)].field_0 - 1 < balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)][balanceOf[address(arg1)].field_0].field_0 = 0
    balanceOf[address(arg1)].field_0--
    if balanceOf[address(arg1)].field_0 > balanceOf[address(arg1)].field_0 - 1:
        idx = balanceOf[address(arg1)].field_0 - 1
        while balanceOf[address(arg1)].field_0 > idx:
            balanceOf[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)].field_0].field_0] = stor8[arg3]
    require 1 <= totalSupply
    totalSupply--
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    balanceOf[address(arg2)].field_0++
    balanceOf[address(arg2)][balanceOf[address(arg2)].field_0].field_0 = arg3
    stor8[arg3] = balanceOf[address(arg2)].field_0
    require totalSupply + 1 >= totalSupply
    totalSupply++
    emit Transfer(arg1, arg2, arg3);
    return 1
}

function takeOwnership(uint256 arg1) {
    require approvedFor[arg1] == msg.sender
    require ownerOf[arg1] == ownerOf[arg1]
    require ownerOf[arg1]
    require msg.sender
    require ownerOf[arg1] != msg.sender
    require ownerOf[arg1] == ownerOf[arg1]
    require ownerOf[arg1]
    approvedFor[arg1] = 0
    emit Approval(ownerOf[arg1], 0, arg1);
    require ownerOf[arg1] == ownerOf[arg1]
    require ownerOf[arg1]
    require 1 <= balanceOf[stor5[arg1]].field_0
    require balanceOf[stor5[arg1]].field_0 - 1 < balanceOf[stor5[arg1]].field_0
    ownerOf[arg1] = 0
    require stor8[arg1] < balanceOf[stor5[arg1]].field_0
    balanceOf[stor5[arg1]][stor8[arg1]].field_0 = balanceOf[stor5[arg1]][balanceOf[stor5[arg1]].field_0].field_0
    require balanceOf[stor5[arg1]].field_0 - 1 < balanceOf[stor5[arg1]].field_0
    balanceOf[stor5[arg1]][balanceOf[stor5[arg1]].field_0].field_0 = 0
    balanceOf[stor5[arg1]].field_0--
    if balanceOf[stor5[arg1]].field_0 > balanceOf[stor5[arg1]].field_0 - 1:
        idx = balanceOf[stor5[arg1]].field_0 - 1
        while balanceOf[stor5[arg1]].field_0 > idx:
            balanceOf[stor5[arg1]][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor8[arg1] = 0
    stor8[stor7[stor5[arg1]][stor7[stor5[arg1]].field_0].field_0] = stor8[arg1]
    require 1 <= totalSupply
    totalSupply--
    require not ownerOf[arg1]
    ownerOf[arg1] = msg.sender
    balanceOf[address(msg.sender)].field_0++
    balanceOf[address(msg.sender)][balanceOf[address(msg.sender)].field_0].field_0 = arg1
    stor8[arg1] = balanceOf[address(msg.sender)].field_0
    require totalSupply + 1 >= totalSupply
    totalSupply++
    emit Transfer(ownerOf[arg1], msg.sender, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg2 != this.address
    require approvedFor[arg3] == msg.sender
    require ownerOf[arg3] == arg1
    require ownerOf[arg3]
    require arg2
    require ownerOf[arg3] != arg2
    require ownerOf[arg3] == arg1
    require ownerOf[arg3]
    approvedFor[arg3] = 0
    emit Approval(arg1, 0, arg3);
    require ownerOf[arg3] == arg1
    require ownerOf[arg3]
    require 1 <= balanceOf[address(arg1)].field_0
    require balanceOf[address(arg1)].field_0 - 1 < balanceOf[address(arg1)].field_0
    ownerOf[arg3] = 0
    require stor8[arg3] < balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)][stor8[arg3]].field_0 = balanceOf[address(arg1)][balanceOf[address(arg1)].field_0].field_0
    require balanceOf[address(arg1)].field_0 - 1 < balanceOf[address(arg1)].field_0
    balanceOf[address(arg1)][balanceOf[address(arg1)].field_0].field_0 = 0
    balanceOf[address(arg1)].field_0--
    if balanceOf[address(arg1)].field_0 > balanceOf[address(arg1)].field_0 - 1:
        idx = balanceOf[address(arg1)].field_0 - 1
        while balanceOf[address(arg1)].field_0 > idx:
            balanceOf[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor8[arg3] = 0
    stor8[stor7[address(arg1)][stor7[address(arg1)].field_0].field_0] = stor8[arg3]
    require 1 <= totalSupply
    totalSupply--
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    balanceOf[address(arg2)].field_0++
    balanceOf[address(arg2)][balanceOf[address(arg2)].field_0].field_0 = arg3
    stor8[arg3] = balanceOf[address(arg2)].field_0
    require totalSupply + 1 >= totalSupply
    totalSupply++
    emit Transfer(arg1, arg2, arg3);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require ownerOf[arg2] == msg.sender
    require ownerOf[arg2]
    require ownerOf[arg2] == msg.sender
    require ownerOf[arg2]
    require arg1
    require ownerOf[arg2] != arg1
    require ownerOf[arg2] == msg.sender
    require ownerOf[arg2]
    approvedFor[arg2] = 0
    emit Approval(msg.sender, 0, arg2);
    require ownerOf[arg2] == msg.sender
    require ownerOf[arg2]
    require 1 <= balanceOf[address(msg.sender)].field_0
    require balanceOf[address(msg.sender)].field_0 - 1 < balanceOf[address(msg.sender)].field_0
    ownerOf[arg2] = 0
    require stor8[arg2] < balanceOf[address(msg.sender)].field_0
    balanceOf[address(msg.sender)][stor8[arg2]].field_0 = balanceOf[address(msg.sender)][balanceOf[address(msg.sender)].field_0].field_0
    require balanceOf[address(msg.sender)].field_0 - 1 < balanceOf[address(msg.sender)].field_0
    balanceOf[address(msg.sender)][balanceOf[address(msg.sender)].field_0].field_0 = 0
    balanceOf[address(msg.sender)].field_0--
    if balanceOf[address(msg.sender)].field_0 > balanceOf[address(msg.sender)].field_0 - 1:
        idx = balanceOf[address(msg.sender)].field_0 - 1
        while balanceOf[address(msg.sender)].field_0 > idx:
            balanceOf[address(msg.sender)][idx].field_0 = 0
            idx = idx + 1
            continue 
    stor8[arg2] = 0
    stor8[stor7[address(msg.sender)][stor7[address(msg.sender)].field_0].field_0] = stor8[arg2]
    require 1 <= totalSupply
    totalSupply--
    require not ownerOf[arg2]
    ownerOf[arg2] = arg1
    balanceOf[address(arg1)].field_0++
    balanceOf[address(arg1)][balanceOf[address(arg1)].field_0].field_0 = arg2
    stor8[arg2] = balanceOf[address(arg1)].field_0
    require totalSupply + 1 >= totalSupply
    totalSupply++
    emit Transfer(msg.sender, arg1, arg2);
    return 1
}



}
