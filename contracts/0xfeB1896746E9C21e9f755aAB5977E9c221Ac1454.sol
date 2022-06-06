contract main {




// =====================  Runtime code  =====================


array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address owner;
mapping of address sub_60f39d18;
mapping of struct stor8;
mapping of struct sub_7f6f3d79;
mapping of uint256 stor10;
array of uint256 stor11;
mapping of address stor12;
mapping of uint256 fee;
mapping of uint8 stor14;
uint8 stor15;
uint256 stor16;
uint8 stor17;
address stor17; offset 8
address stor18;
array of uint256 stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function name() {
    return name[0 len name.length]
}

function getVanityOwner(bytes12 arg1) {
    return address(sub_60f39d18[Mask(96, 160, arg1)])
}

function getFee(bytes12 arg1) {
    return fee[Mask(96, 160, arg1)]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function sub_60f39d18(?) {
    return address(sub_60f39d18[Mask(96, 160, arg1)])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function sub_7f6f3d79(?) {
    return sub_7f6f3d79[arg1][Mask(96, 160, arg2)].field_0
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_b51ec3bb(?) {
    return bool(uint8(stor17.field_0))
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function setLEMB(address arg1) {
    require msg.sender == owner
    stor18 = arg1
}

function enableFees(bool arg1) {
    require msg.sender == owner
    stor15 = uint8(arg1)
}

function setVanityPurchaseCost(uint256 arg1) {
    require msg.sender == owner
    stor16 = arg1
}

function setLeaseExchange(address arg1) {
    require msg.sender == owner
    address(stor17.field_8) = arg1
}

function freezeTransfers(bool arg1) {
    require msg.sender == owner
    uint8(stor17.field_0) = uint8(arg1)
}

function sub_24304f8b(?) {
    require msg.sender == owner
    symbol[] = Array(len=arg1.length, data=arg1[all])
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_267d9074(?) {
    require msg.sender == owner
    allowance[msg.sender][this.address] = arg1
    return 1
}

function sub_e5014b8c(?) {
    require arg1 < stor11.length
    return (stor11[0.5 / arg1].field_0 / 256^(12 * bool(arg1)) << 160)
}

function vanityAllowance(address arg1, bytes12 arg2, address arg3) {
    return (arg3 == stor12[address(arg1)][Mask(96, 160, arg2)])
}

function sub_b7fe896a(?) {
    if not stor14[Mask(96, 160, arg1)]:
        return bool(stor14[Mask(96, 160, arg1)])
    return bool(stor15)
}

function setVanityFee(bytes12 arg1, uint256 arg2) {
    require msg.sender == owner
    require arg2 >= 0
    fee[Mask(96, 160, arg1)] = arg2
}

function sub_29bf81e4(?) {
    require arg2 < stor8[arg1].field_0
    return (stor8[arg1][0.5 / arg2].field_0 / 256^(12 * bool(arg2)) << 160)
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function clearVanityApproval(bytes12 arg1) {
    require msg.sender == address(sub_60f39d18[Mask(96, 160, arg1)])
    stor12[msg.sender][Mask(96, 160, arg1)] = 0
    return 1
}

function approveVanity(address arg1, bytes12 arg2) {
    require msg.sender == address(sub_60f39d18[Mask(96, 160, arg2)])
    stor12[msg.sender][Mask(96, 160, arg2)] = arg1
    emit ApprovedVanity(msg.sender, address(arg1), Mask(96, 160, arg2));
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    if address(stor17.field_8) == arg1:
        require ext_code.size(stor18)
        call stor18.getAmountForUserMining(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg2 >= ext_call.return_data[0]
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require not uint8(stor17.field_0)
    require ext_code.size(stor18)
    call stor18.getAmountForUserMining(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 + ext_call.return_data[0] <= balanceOf[address(msg.sender)]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 0
}

function decreaseApproval(address arg1, uint256 arg2) {
    if address(stor17.field_8) == arg1:
        require ext_code.size(stor18)
        call stor18.getAmountForUserMining(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg2 <= allowance[msg.sender][address(arg1)]
        require allowance[msg.sender][address(arg1)] - arg2 >= ext_call.return_data[0]
    if arg2 <= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] -= arg2
    else:
        allowance[msg.sender][address(arg1)] = 0
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 0
}

function getAllVanities() {
    if not stor11.length:
        mem[(32 * stor11.length) + 128] = 32
        mem[(32 * stor11.length) + 160] = stor11.length
        mem[(32 * stor11.length) + 192 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
        return memory
          from (32 * stor11.length) + 128
           len (96 * stor11.length) + 64
    mem[128] = uint256(stor11.field_0) / 256^0 << 160
    idx = 128
    s = 0
    while (32 * stor11.length) + 96 > idx:
        mem[idx + 32] = uint256(stor11.field_0) / 256^((-12 * s + 23 / 32) + s + (-1 * s + 23 / 32 * s) + 12) << 160
        idx = idx + 32
        s = (-12 * s + 23 / 32) + s + (-1 * s + 23 / 32 * s) + 12
        continue 
    mem[(32 * stor11.length) + 192 len floor32(stor11.length)] = mem[128 len floor32(stor11.length)]
    return Array(len=stor11.length, data=mem[128 len floor32(stor11.length)], mem[(32 * stor11.length) + floor32(stor11.length) + 192 len (32 * stor11.length) - floor32(stor11.length)]), 
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require not uint8(stor17.field_0)
    if address(stor17.field_8) != msg.sender:
        require not uint8(stor17.field_0)
        require ext_code.size(stor18)
        call stor18.getAmountForUserMining(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require arg3 + ext_call.return_data[0] <= balanceOf[address(arg1)]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 0
}

function getMyVanities() {
    if stor8[msg.sender].field_0:
        mem[128] = Mask(96, 160, Mask(96, 0, stor8[msg.sender].field_0))
        if (32 * stor8[msg.sender].field_0) + 32 > 64:
            mem[160] = stor8[msg.sender].field_0 / 256^12 << 160
            idx = 160
            s = 12
            t = sha3(sha3(msg.sender, 8))
            while (32 * stor8[msg.sender].field_0) + 96 > idx:
                mem[idx + 32] = stor[(0.03125 / s + 23) + t] / 256^((-12 * s + 23 / 32) + s + (-1 * s + 23 / 32 * s) + 12) << 160
                idx = idx + 32
                s = (-12 * s + 23 / 32) + s + (-1 * s + 23 / 32 * s) + 12
                t = (s + 23 / 32) + t
                continue 
    mem[(32 * stor8[msg.sender].field_0) + 128] = 32
    mem[(32 * stor8[msg.sender].field_0) + 160] = stor8[msg.sender].field_0
    mem[(32 * stor8[msg.sender].field_0) + 192 len floor32(stor8[msg.sender].field_0)] = mem[128 len floor32(stor8[msg.sender].field_0)]
    return memory
      from (32 * stor8[msg.sender].field_0) + 128
       len (96 * stor8[msg.sender].field_0) + 64
}

function purchaseVanity(bytes12 arg1) {
    require not address(sub_60f39d18[Mask(96, 160, arg1)])
    require not uint8(stor17.field_0)
    require ext_code.size(stor18)
    call stor18.getAmountForUserMining(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require stor16 + ext_call.return_data[0] <= balanceOf[address(msg.sender)]
    require stor16 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= stor16
    require stor16 + balanceOf[this.address] >= balanceOf[this.address]
    balanceOf[this.address] += stor16
    emit Transfer(stor16, msg.sender, this.address);
    uint256(sub_60f39d18[Mask(96, 160, arg1)]) = msg.sender or Mask(96, 160, uint256(sub_60f39d18[Mask(96, 160, arg1)]))
    stor8[msg.sender].field_0++
    stor8[msg.sender][uint255(stor8[msg.sender].field_1)].field_0 = Mask(96, 160, arg1) >> 160 * 256^(12 * bool(stor8[msg.sender].field_0)) or !(test266151307() * 256^(12 * bool(stor8[msg.sender].field_0))) and stor8[msg.sender][uint255(stor8[msg.sender].field_1)].field_0
    require 1 <= stor8[msg.sender].field_0
    sub_7f6f3d79[msg.sender][Mask(96, 160, arg1)].field_0 = stor8[msg.sender].field_0 - 1
    stor11.length++
    stor175B[uint255(stor11.length.field_1)] = Mask(96, 160, arg1) >> 160 * 256^(12 * bool(stor11.length)) or !(test266151307() * 256^(12 * bool(stor11.length))) and stor175B[uint255(stor11.length.field_1)]
    require 1 <= stor11.length
    stor10[Mask(96, 160, arg1)] = stor11.length - 1
    emit VanityPurchased(msg.sender, Mask(96, 160, arg1));
    return 0
}

function transferVanity(bytes12 arg1, address arg2) {
    require arg2
    require msg.sender == address(sub_60f39d18[Mask(96, 160, arg1)])
    address(sub_60f39d18[Mask(96, 160, arg1)]) = arg2
    stor8[address(arg2)].field_0++
    stor8[address(arg2)][uint255(stor8[address(arg2)].field_1)].field_0 = !(test266151307() * 256^(12 * bool(stor8[address(arg2)].field_0))) and stor8[address(arg2)][uint255(stor8[address(arg2)].field_1)].field_0 or 256^(12 * bool(stor8[address(arg2)].field_0)) * Mask(96, 160, arg1) >> 160
    require 1 <= stor8[address(arg2)].field_0
    sub_7f6f3d79[address(arg2)][Mask(96, 160, arg1)].field_0 = stor8[address(arg2)].field_0 - 1
    require 1 <= stor8[msg.sender].field_0
    require stor8[msg.sender].field_0 - 1 < stor8[msg.sender].field_0
    require sub_7f6f3d79[msg.sender][Mask(96, 160, arg1)].field_0 < stor8[msg.sender].field_0
    stor8[msg.sender][uint255(stor9[msg.sender][Mask(96, 160, arg1)].field_1)].field_0 = Mask(96, 0, stor8[msg.sender][0.5 / stor8[msg.sender].field_0 - 1].field_8 * 12 * bool(stor8[msg.sender].field_0 - 1)) * 256^(12 * bool(sub_7f6f3d79[msg.sender][Mask(96, 160, arg1)].field_0)) or !(test266151307() * 256^(12 * bool(sub_7f6f3d79[msg.sender][Mask(96, 160, arg1)].field_0))) and stor8[msg.sender][uint255(stor9[msg.sender][Mask(96, 160, arg1)].field_1)].field_0
    require stor8[msg.sender].field_0 - 1 < stor8[address(msg.sender)].field_0
    stor8[address(msg.sender)][0.5 / stor8[msg.sender].field_0 - 1].field_0 = !(test266151307() * 256^(12 * bool(stor8[msg.sender].field_0 - 1))) and stor8[address(msg.sender)][0.5 / stor8[msg.sender].field_0 - 1].field_0
    stor8[msg.sender].field_0--
    if stor8[msg.sender].field_0 > stor8[msg.sender].field_0 - 1:
        idx = uint255(stor8[msg.sender].field_1)
        while stor8[msg.sender].field_0 + 1 / 2 > idx:
            stor8[msg.sender][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_7f6f3d79[msg.sender][Mask(96, 160, arg1)].field_0 = 0
    sub_7f6f3d79[msg.sender][stor8[msg.sender][0.5 / stor8[msg.sender].field_0 - 1].field_0 / 256^(12 * bool(stor8[msg.sender].field_0 - 1)) << 160].field_0 = sub_7f6f3d79[msg.sender][Mask(96, 160, arg1)].field_0
    emit TransferVanity(msg.sender, address(arg2), Mask(96, 160, arg1));
    return 1
}

function transferVanityFrom(address arg1, address arg2, bytes12 arg3) {
    require arg2
    require address(sub_60f39d18[Mask(96, 160, arg3)]) == arg1
    require msg.sender == stor12[address(arg1)][Mask(96, 160, arg3)]
    address(sub_60f39d18[Mask(96, 160, arg3)]) = arg2
    stor8[address(arg2)].field_0++
    stor8[address(arg2)][uint255(stor8[address(arg2)].field_1)].field_0 = !(test266151307() * 256^(12 * bool(stor8[address(arg2)].field_0))) and stor8[address(arg2)][uint255(stor8[address(arg2)].field_1)].field_0 or 256^(12 * bool(stor8[address(arg2)].field_0)) * Mask(96, 160, arg3) >> 160
    require 1 <= stor8[address(arg2)].field_0
    sub_7f6f3d79[address(arg2)][Mask(96, 160, arg3)].field_0 = stor8[address(arg2)].field_0 - 1
    require 1 <= stor8[address(arg1)].field_0
    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
    require sub_7f6f3d79[address(arg1)][Mask(96, 160, arg3)].field_0 < stor8[address(arg1)].field_0
    stor8[address(arg1)][uint255(stor9[address(arg1)][Mask(96, 160, arg3)].field_1)].field_0 = Mask(96, 0, stor8[address(arg1)][0.5 / stor8[address(arg1)].field_0 - 1].field_8 * 12 * bool(stor8[address(arg1)].field_0 - 1)) * 256^(12 * bool(sub_7f6f3d79[address(arg1)][Mask(96, 160, arg3)].field_0)) or !(test266151307() * 256^(12 * bool(sub_7f6f3d79[address(arg1)][Mask(96, 160, arg3)].field_0))) and stor8[address(arg1)][uint255(stor9[address(arg1)][Mask(96, 160, arg3)].field_1)].field_0
    require stor8[address(arg1)].field_0 - 1 < stor8[address(arg1)].field_0
    stor8[address(arg1)][0.5 / stor8[address(arg1)].field_0 - 1].field_0 = !(test266151307() * 256^(12 * bool(stor8[address(arg1)].field_0 - 1))) and stor8[address(arg1)][0.5 / stor8[address(arg1)].field_0 - 1].field_0
    stor8[address(arg1)].field_0--
    if stor8[address(arg1)].field_0 > stor8[address(arg1)].field_0 - 1:
        idx = uint255(stor8[address(arg1)].field_1)
        while stor8[address(arg1)].field_0 + 1 / 2 > idx:
            stor8[address(arg1)][idx].field_0 = 0
            idx = idx + 1
            continue 
    sub_7f6f3d79[address(arg1)][Mask(96, 160, arg3)].field_0 = 0
    sub_7f6f3d79[address(arg1)][stor8[address(arg1)][0.5 / stor8[address(arg1)].field_0 - 1].field_0 / 256^(12 * bool(stor8[address(arg1)].field_0 - 1)) << 160].field_0 = sub_7f6f3d79[address(arg1)][Mask(96, 160, arg3)].field_0
    emit TransferVanity(msg.sender, address(arg2), Mask(96, 160, arg3));
    return 1
}



}
