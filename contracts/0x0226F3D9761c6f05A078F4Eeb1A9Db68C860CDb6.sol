contract main {




// =====================  Runtime code  =====================


const contractBalance = eth.balance(this.address)


uint8 stor0;
uint8 stor0; offset 8
uint256 stor0; offset 8
address owner;
address stor102;
address stor103;
uint256 sub_814bdee2;
uint256 sub_4d747499;
uint256 sub_e144760d;
uint256 sub_14f6f155;
uint256 sub_e4dabb3e;
uint256 sub_7e1e788d;
uint256 sub_40f8fefc;
uint256 sub_f0e9a7d6;
uint256 sub_0689336d;
mapping of uint256 stor113;
mapping of uint256 stor114;
mapping of uint256 sub_40a9fc9c;
mapping of uint256 sub_28f73b2a;
mapping of uint256 sub_3834b3c7;

function sub_0689336d(?) {
    return sub_0689336d
}

function sub_14f6f155(?) {
    return sub_14f6f155
}

function sub_28f73b2a(?) {
    return sub_28f73b2a[address(arg1)]
}

function sub_3834b3c7(?) {
    return sub_3834b3c7[address(arg1)]
}

function sub_40a9fc9c(?) {
    return sub_40a9fc9c[address(arg1)]
}

function sub_40f8fefc(?) {
    return sub_40f8fefc
}

function sub_4d747499(?) {
    return sub_4d747499
}

function sub_7e1e788d(?) {
    return sub_7e1e788d
}

function sub_814bdee2(?) {
    return sub_814bdee2
}

function owner() {
    return owner
}

function sub_e144760d(?) {
    return sub_e144760d
}

function sub_e4dabb3e(?) {
    return sub_e4dabb3e
}

function sub_f0e9a7d6(?) {
    return sub_f0e9a7d6
}

function _fallback() payable {
    revert
}

function isOwner() {
    return (msg.sender == owner)
}

function sub_b756d82f(?) {
    return (stor114[address(arg1)] - sub_40a9fc9c[address(arg1)])
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function getCurrentPayoutIndex() {
    require sub_e4dabb3e
    return (sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e)
}

function sub_22cc9a02(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address supplied'
    stor102 = arg1
}

function sub_3a175069(?) {
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

function sub_9d371f57(?) {
    if sub_40f8fefc + sub_7e1e788d <= sub_e144760d:
        return (sub_e144760d - sub_40f8fefc - sub_7e1e788d)
    else:
        return 0
}

function sub_cf2dbfa2(?) {
    require msg.sender == owner
    if arg1 < 0:
        revert with 0, 'percent must be between 0 and 99'
    if arg1 >= 100:
        revert with 0, 'percent must be between 0 and 99'
    sub_0689336d = arg1
}

function sub_7c708e04(?) {
    require msg.sender == owner
    if arg1 <= sub_7e1e788d:
        revert with 0, 'limit must be set higher'
    if arg1 <= sub_e144760d:
        revert with 0, 'limit must be set higher'
    sub_14f6f155 = arg1
}

function setContractAddresses(address arg1, address arg2) {
    require msg.sender == owner
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid controller address supplied'
    if not arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Invalid treasury address supplied'
    stor102 = arg1
    stor103 = arg2
}

function withdrawFromEscrow() {
    require msg.sender == owner
    if not stor103:
        revert with 0, 'Invalid address supplied'
    if sub_4d747499 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unpaid balance must be greater than zero'
    sub_814bdee2 += sub_4d747499
    sub_4d747499 = 0
    call stor103 with:
       value sub_4d747499 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_460bc3c3(?) {
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address supplied'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'limitToAdd must be greater than zero'
    if sub_7e1e788d + sub_40f8fefc + arg2 > sub_14f6f155:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'limitToAdd exceeds remaining pool limit'
    if sub_40a9fc9c[address(arg1)] == stor114[address(arg1)]:
        sub_f0e9a7d6++
    stor114[address(arg1)] += arg2
    sub_7e1e788d += arg2
}

function sub_13a3100b(?) {
    if not msg.sender:
        revert with 0, 'Invalid account address supplied'
    if sub_28f73b2a[address(msg.sender)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unpaid balance must be greater than zero'
    sub_3834b3c7[address(msg.sender)] += sub_28f73b2a[address(msg.sender)]
    sub_28f73b2a[address(msg.sender)] = 0
    call msg.sender with:
       value sub_28f73b2a[address(msg.sender)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_f7d6f734(?) {
    require msg.sender == owner
    if sub_40f8fefc + sub_7e1e788d > sub_e144760d:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unused funds must be greater than zero'
    if sub_e144760d - sub_40f8fefc - sub_7e1e788d <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unused funds must be greater than zero'
    if sub_40f8fefc + sub_7e1e788d < 0:
        revert with 0, 'Unused funds exceeds pool total'
    sub_e144760d = sub_40f8fefc + sub_7e1e788d
    sub_4d747499 = sub_4d747499 + sub_e144760d - sub_40f8fefc - sub_7e1e788d
}

function sub_4b685d83(?) {
    require sub_e4dabb3e
    if stor113[address(arg1)] == sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e:
        return 0
    if not stor114[address(arg1)]:
        return 0
    if sub_40a9fc9c[address(arg1)] == stor114[address(arg1)]:
        return 0
    require sub_f0e9a7d6
    if stor114[address(arg1)] - sub_40a9fc9c[address(arg1)] > (sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e * sub_e4dabb3e) - (stor113[address(arg1)] * sub_e4dabb3e) / sub_f0e9a7d6:
        return ((sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e * sub_e4dabb3e) - (stor113[address(arg1)] * sub_e4dabb3e) / sub_f0e9a7d6)
    return (stor114[address(arg1)] - sub_40a9fc9c[address(arg1)])
}

function sub_edb0881b(?) {
    if stor102 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Action only allowed by Controller contract'
    if not arg1:
        revert with 0, 'Invalid account address supplied'
    if sub_28f73b2a[address(arg1)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Unpaid balance must be greater than zero'
    sub_3834b3c7[address(arg1)] += sub_28f73b2a[address(arg1)]
    sub_28f73b2a[address(arg1)] = 0
    call arg1 with:
       value sub_28f73b2a[address(arg1)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return sub_28f73b2a[address(arg1)]
}

function sub_da98ad2e(?) {
    require msg.sender == owner
    if stor114[address(arg1)]:
        revert with 0, 'Outsourced-Member already exists'
    require msg.sender == owner
    if not arg1:
        revert with 0, 'Invalid address supplied'
    if arg2 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'limitToAdd must be greater than zero'
    if sub_7e1e788d + sub_40f8fefc + arg2 > sub_14f6f155:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'limitToAdd exceeds remaining pool limit'
    if sub_40a9fc9c[address(arg1)] == stor114[address(arg1)]:
        sub_f0e9a7d6++
    stor114[address(arg1)] += arg2
    sub_7e1e788d += arg2
    require sub_e4dabb3e
    stor113[address(arg1)] = sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e
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
    sub_14f6f155 = 500 * 10^18
    sub_e4dabb3e = 25 * 10^16
    sub_0689336d = 30
    Mask(248, 0, stor0.field_8) = Mask(248, 0, bool(uint8(stor0.field_8)))
}

function deposit(uint256 arg1, uint256 arg2, address arg3) payable {
    if stor102 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Action only allowed by Controller contract'
    if arg1 != msg.value:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'amountDeposited does not match amount received'
    if arg1 - arg2 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Referral amount exceeds amountDeposited'
    if not arg3:
        if sub_e144760d >= sub_14f6f155:
            sub_4d747499 += arg1
        else:
            if sub_e144760d + (arg1 * sub_0689336d / 100) <= sub_14f6f155:
                sub_e144760d += arg1 * sub_0689336d / 100
                sub_4d747499 = sub_4d747499 + arg1 - (arg1 * sub_0689336d / 100)
            else:
                sub_e144760d = sub_14f6f155
                sub_4d747499 = sub_4d747499 + arg1 - sub_14f6f155 + sub_e144760d
    else:
        if arg2 <= 0:
            if sub_e144760d >= sub_14f6f155:
                sub_4d747499 += arg1
            else:
                if sub_e144760d + (arg1 * sub_0689336d / 100) <= sub_14f6f155:
                    sub_e144760d += arg1 * sub_0689336d / 100
                    sub_4d747499 = sub_4d747499 + arg1 - (arg1 * sub_0689336d / 100)
                else:
                    sub_e144760d = sub_14f6f155
                    sub_4d747499 = sub_4d747499 + arg1 - sub_14f6f155 + sub_e144760d
        else:
            sub_28f73b2a[address(arg3)] += arg2
            if sub_e144760d >= sub_14f6f155:
                sub_4d747499 = sub_4d747499 + arg1 - arg2
            else:
                if sub_e144760d + ((arg1 * sub_0689336d) - (arg2 * sub_0689336d) / 100) <= sub_14f6f155:
                    sub_e144760d += (arg1 * sub_0689336d) - (arg2 * sub_0689336d) / 100
                    sub_4d747499 = sub_4d747499 + arg1 - arg2 - ((arg1 * sub_0689336d) - (arg2 * sub_0689336d) / 100)
                else:
                    sub_e144760d = sub_14f6f155
                    sub_4d747499 = sub_4d747499 + arg1 - arg2 - sub_14f6f155 + sub_e144760d
}

function sub_77c741e0(?) {
    if not msg.sender:
        revert with 0, 'Invalid account address supplied'
    require sub_e4dabb3e
    if stor113[address(msg.sender)] == sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount to pay must be greater than zero'
    if not stor114[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount to pay must be greater than zero'
    if sub_40a9fc9c[address(msg.sender)] == stor114[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount to pay must be greater than zero'
    require sub_f0e9a7d6
    if stor114[address(msg.sender)] - sub_40a9fc9c[address(msg.sender)] > (sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e * sub_e4dabb3e) - (stor113[address(msg.sender)] * sub_e4dabb3e) / sub_f0e9a7d6:
        if (sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e * sub_e4dabb3e) - (stor113[address(msg.sender)] * sub_e4dabb3e) / sub_f0e9a7d6 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount to pay must be greater than zero'
        if sub_7e1e788d - ((sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e * sub_e4dabb3e) - (stor113[address(msg.sender)] * sub_e4dabb3e) / sub_f0e9a7d6) < 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount to pay exceeds available funds in pool'
        sub_40f8fefc += (sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e * sub_e4dabb3e) - (stor113[address(msg.sender)] * sub_e4dabb3e) / sub_f0e9a7d6
        sub_7e1e788d -= (sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e * sub_e4dabb3e) - (stor113[address(msg.sender)] * sub_e4dabb3e) / sub_f0e9a7d6
        sub_40a9fc9c[address(msg.sender)] += (sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e * sub_e4dabb3e) - (stor113[address(msg.sender)] * sub_e4dabb3e) / sub_f0e9a7d6
        require sub_e4dabb3e
        stor113[address(msg.sender)] = sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e
        if sub_40a9fc9c[address(msg.sender)] == stor114[address(msg.sender)]:
            if sub_f0e9a7d6 - 1 < 0:
                revert with 0, 'Invalid member count'
            sub_f0e9a7d6--
        call msg.sender with:
           value (sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e * sub_e4dabb3e) - (stor113[address(msg.sender)] * sub_e4dabb3e) / sub_f0e9a7d6 wei
             gas 2300 * is_zero(value) wei
    else:
        if stor114[address(msg.sender)] - sub_40a9fc9c[address(msg.sender)] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount to pay must be greater than zero'
        if sub_7e1e788d - stor114[address(msg.sender)] + sub_40a9fc9c[address(msg.sender)] < 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount to pay exceeds available funds in pool'
        sub_40f8fefc = sub_40f8fefc + stor114[address(msg.sender)] - sub_40a9fc9c[address(msg.sender)]
        sub_7e1e788d = sub_7e1e788d - stor114[address(msg.sender)] + sub_40a9fc9c[address(msg.sender)]
        sub_40a9fc9c[address(msg.sender)] = stor114[address(msg.sender)]
        require sub_e4dabb3e
        stor113[address(msg.sender)] = sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e
        if sub_40a9fc9c[address(msg.sender)] == stor114[address(msg.sender)]:
            if sub_f0e9a7d6 - 1 < 0:
                revert with 0, 'Invalid member count'
            sub_f0e9a7d6--
        call msg.sender with:
           value stor114[address(msg.sender)] - sub_40a9fc9c[address(msg.sender)] wei
             gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_692a9c18(?) {
    if stor102 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Action only allowed by Controller contract'
    if not arg1:
        revert with 0, 'Invalid account address supplied'
    require sub_e4dabb3e
    if stor113[address(arg1)] == sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount to pay must be greater than zero'
    if not stor114[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount to pay must be greater than zero'
    if sub_40a9fc9c[address(arg1)] == stor114[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount to pay must be greater than zero'
    require sub_f0e9a7d6
    if stor114[address(arg1)] - sub_40a9fc9c[address(arg1)] > (sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e * sub_e4dabb3e) - (stor113[address(arg1)] * sub_e4dabb3e) / sub_f0e9a7d6:
        if (sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e * sub_e4dabb3e) - (stor113[address(arg1)] * sub_e4dabb3e) / sub_f0e9a7d6 <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount to pay must be greater than zero'
        if sub_7e1e788d - ((sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e * sub_e4dabb3e) - (stor113[address(arg1)] * sub_e4dabb3e) / sub_f0e9a7d6) < 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount to pay exceeds available funds in pool'
        sub_40f8fefc += (sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e * sub_e4dabb3e) - (stor113[address(arg1)] * sub_e4dabb3e) / sub_f0e9a7d6
        sub_7e1e788d -= (sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e * sub_e4dabb3e) - (stor113[address(arg1)] * sub_e4dabb3e) / sub_f0e9a7d6
        sub_40a9fc9c[address(arg1)] += (sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e * sub_e4dabb3e) - (stor113[address(arg1)] * sub_e4dabb3e) / sub_f0e9a7d6
        require sub_e4dabb3e
        stor113[address(arg1)] = sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e
        if sub_40a9fc9c[address(arg1)] == stor114[address(arg1)]:
            if sub_f0e9a7d6 - 1 < 0:
                revert with 0, 'Invalid member count'
            sub_f0e9a7d6--
        call arg1 with:
           value (sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e * sub_e4dabb3e) - (stor113[address(arg1)] * sub_e4dabb3e) / sub_f0e9a7d6 wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        return ((sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e * sub_e4dabb3e) - (stor113[address(arg1)] * sub_e4dabb3e) / sub_f0e9a7d6)
    if stor114[address(arg1)] - sub_40a9fc9c[address(arg1)] <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount to pay must be greater than zero'
    if sub_7e1e788d - stor114[address(arg1)] + sub_40a9fc9c[address(arg1)] < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount to pay exceeds available funds in pool'
    sub_40f8fefc = sub_40f8fefc + stor114[address(arg1)] - sub_40a9fc9c[address(arg1)]
    sub_7e1e788d = sub_7e1e788d - stor114[address(arg1)] + sub_40a9fc9c[address(arg1)]
    sub_40a9fc9c[address(arg1)] = stor114[address(arg1)]
    require sub_e4dabb3e
    stor113[address(arg1)] = sub_e144760d - (sub_e144760d % sub_e4dabb3e) / sub_e4dabb3e
    if sub_40a9fc9c[address(arg1)] == stor114[address(arg1)]:
        if sub_f0e9a7d6 - 1 < 0:
            revert with 0, 'Invalid member count'
        sub_f0e9a7d6--
    call arg1 with:
       value stor114[address(arg1)] - sub_40a9fc9c[address(arg1)] wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return (stor114[address(arg1)] - sub_40a9fc9c[address(arg1)])
}



}
