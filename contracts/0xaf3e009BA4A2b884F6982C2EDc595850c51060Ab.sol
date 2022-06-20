contract main {




// =====================  Runtime code  =====================


const contractBalance = eth.balance(this.address)


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address stor102;
address stor103;
array of address stor104;
array of uint256 stor108;
uint256 stor112;
uint256 stor113;
uint256 sub_2ad42690;
uint256 sub_c53eed2d;
uint256 sub_29769d17;
uint256 sub_36e382ee;
uint8 sub_3944fc8e;
uint8 stor118; offset 8
uint8 stor118; offset 16
uint256 stor118; offset 16
uint256 stor118; offset 8

function sub_29769d17(?) {
    return sub_29769d17
}

function sub_2ad42690(?) {
    return sub_2ad42690
}

function sub_36e382ee(?) {
    return sub_36e382ee
}

function sub_3944fc8e(?) {
    return bool(sub_3944fc8e)
}

function owner() {
    return owner
}

function sub_c53eed2d(?) {
    return sub_c53eed2d
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function enablePurchases() {
    require msg.sender == owner
    sub_3944fc8e = 1
}

function disablePurchases() {
    require msg.sender == owner
    sub_3944fc8e = 0
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function sub_c461916a(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address supplied'
    stor102 = arg1
}

function sub_df2b9119(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address supplied'
    stor103 = arg1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
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

function sub_9dea171b(?) {
    require msg.sender == owner
    if not stor104.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'In-House Reserve Account is not set'
    if eth.balance(this.address) <= 0:
        revert with 0, 'Contract balance is zero'
    call stor104.length with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_0a7c3e2c(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    if uint8(stor118.field_16):
        revert with 0, 'Reserve Accounts already set'
    if arg1.length != 4:
        revert with 0, 'Invalid accounts supplied; must be an array of length 4'
    idx = 0
    while idx < 4:
        require idx < arg1.length
        if not mem[(32 * idx) + 140 len 20]:
            revert with 0, 'Invalid address supplied for reserve account'
        require idx < arg1.length
        require idx < 4
        stor104[idx] = mem[(32 * idx) + 140 len 20]
        idx = idx + 1
        continue 
    Mask(240, 0, stor118.field_16) = 1
}

function sub_13f48c88(?) {
    if stor103 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Action only allowed by Packs contract'
    if not arg1:
        revert with 0, 'Invalid address supplied'
    if not uint8(stor118.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tokens have not yet been distributed'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'amountOfGum must be greater than zero'
    if arg2 <= sub_29769d17:
        sub_29769d17 -= arg2
        require ext_code.size(stor102)
        call stor102.0xa9059cbb with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        return arg2
    sub_29769d17 = 0
    require ext_code.size(stor102)
    call stor102.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), sub_29769d17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return sub_29769d17
}

function sub_82488fda(?) {
    require msg.sender == owner
    if not uint8(stor118.field_16):
        revert with 0, 'Reserve accounts are not set'
    if uint8(stor118.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Tokens have already been distributed to reserve accounts'
    require ext_code.size(stor102)
    call stor102.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    idx = 0
    s = 0
    while idx < 4:
        require idx < 4
        mem[100] = stor104[idx]
        mem[132] = ext_call.return_data[0] * stor108[idx] / 100
        require ext_code.size(stor102)
        call stor102.0xa9059cbb with:
             gas gas_remaining wei
            args stor104[idx], ext_call.return_data[0] * stor108[idx] / 100
        mem[96] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        idx = idx + 1
        s = ext_call.return_data[0] * stor108[idx] / 100
        continue 
    sub_c53eed2d = ext_call.return_data[0] * stor112 / 100
    sub_29769d17 = ext_call.return_data[0] * stor113 / 100
    Mask(248, 0, stor118.field_8) = 1
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
    sub_2ad42690 = 40000 * 10^18
    mem[96] = 31
    mem[128] = 5
    mem[160] = 5
    mem[192] = 20
    mem[224] = 5
    mem[256] = 34
    s = 108
    idx = 96
    while 288 > idx:
        uint8(stor[s].field_0) = mem[idx + 31 len 1]
        Mask(248, 0, stor[s].field_8) = 0
        s = s + 1
        idx = idx + 32
        continue 
    idx = 114
    while 114 > idx:
        uint256(stor[idx].field_0) = 0
        idx = idx + 1
        continue 
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function sub_3aaaac4a(?) payable {
    if not sub_3944fc8e:
        revert with 0, 'Purchases are not enabled'
    if not uint8(stor118.field_8):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Tokens have not yet been distributed'
    if not msg.sender:
        revert with 0, 'Invalid address supplied'
    if msg.value <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'etherPaid must be greater than zero'
    if sub_c53eed2d <= 0:
        revert with 0, 'No Sale-Gum available'
    if msg.value * sub_2ad42690 / 10^18 <= sub_c53eed2d:
        sub_36e382ee += msg.value * sub_2ad42690 / 10^18
        sub_c53eed2d += -1 * msg.value * sub_2ad42690 / 10^18
        require ext_code.size(stor102)
        call stor102.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, msg.value * sub_2ad42690 / 10^18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
    else:
        require msg.value * sub_2ad42690 / 10^18
        sub_36e382ee += sub_c53eed2d
        sub_c53eed2d = 0
        require ext_code.size(stor102)
        call stor102.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, sub_c53eed2d
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if msg.value - (sub_c53eed2d / msg.value * sub_2ad42690 / 10^18 * msg.value) > 0:
            call msg.sender with:
               value msg.value - (sub_c53eed2d / msg.value * sub_2ad42690 / 10^18 * msg.value) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
}



}
