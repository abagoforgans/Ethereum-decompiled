contract main {




// =====================  Runtime code  =====================


const name = 'FIN Contract'

const symbol = 'FINCT'


mapping of address ownerOf;
mapping of address approved;
mapping of uint256 balanceOf;
mapping of uint8 stor3;
address ownerAddress;
address sub_7ba61ea5Address;
address lenderAddress;
array of struct sub_c95669a5;
uint256 endTime;
uint256 sub_f6046fde;
uint256 sub_e2d26fd9;
uint256 sub_11a7ef22;
uint256 sub_b7dd32aa;
uint256 collateralAmount;
uint256 sub_8770998e;
uint256 sub_4fb19b4d;
uint8 currentState;
address stor16; offset 8
address stor17;
address stor18;
address sub_6d9dd201Address;
address sub_be48ca9eAddress;

function getApproved(uint256 arg1) {
    return approved[arg1]
}

function currentState() {
    require currentState <= 9
    return currentState
}

function sub_11a7ef22(?) {
    return sub_11a7ef22
}

function endTime() {
    return endTime
}

function sub_4fb19b4d(?) {
    return sub_4fb19b4d
}

function ownerOf(uint256 arg1) {
    require ownerOf[arg1]
    return ownerOf[arg1]
}

function lenderAddress() {
    return lenderAddress
}

function sub_6d9dd201(?) {
    return sub_6d9dd201Address
}

function balanceOf(address arg1) {
    require arg1
    return balanceOf[address(arg1)]
}

function sub_7ba61ea5(?) {
    return sub_7ba61ea5Address
}

function sub_8770998e(?) {
    return sub_8770998e
}

function ownerAddress() {
    return ownerAddress
}

function collateralAmount() {
    return collateralAmount
}

function sub_b7dd32aa(?) {
    return sub_b7dd32aa
}

function sub_be48ca9e(?) {
    return sub_be48ca9eAddress
}

function sub_c95669a5(?) {
    return sub_c95669a5[0 len sub_c95669a5.length].field_0
}

function sub_e2d26fd9(?) {
    return sub_e2d26fd9
}

function isApprovedForAll(address arg1, address arg2) {
    return bool(stor3[address(arg1)][address(arg2)])
}

function sub_f6046fde(?) {
    return sub_f6046fde
}

function _fallback() payable {
    revert
}

function transferFunds() payable {
    revert
}

function sub_6f58baa7(?) payable {
    revert
}

function exists(uint256 arg1) {
    return not not ownerOf[arg1]
}

function sub_4e7c13fe(?) {
    if ownerAddress != msg.sender:
        revert with 0, 'Invalid Owner Address'
    currentState = 8
}

function setApprovalForAll(address arg1, bool arg2) {
    require arg1 != msg.sender
    stor3[address(msg.sender)][address(arg1)] = uint8(arg2)
    emit ApprovalForAll(arg2, msg.sender, arg1);
}

function sub_8d95e8d6(?) {
    require currentState <= 9
    if currentState != 1:
        revert with 0, 'Invalid State'
    if not msg.sender:
        revert with 0, 'Invalid address.'
    lenderAddress = msg.sender
    currentState = 4
}

function sub_068d3632(?) {
    if lenderAddress != msg.sender:
        if stor16 != msg.sender:
            revert with 0, 'Invalid Lender Address'
    require currentState <= 9
    require currentState != 3
    revert with 0, 'Invalid State'
}

function sub_7aedcaa9(?) {
    require currentState <= 9
    if currentState != 2:
        revert with 0, 'Invalid State'
    if not msg.sender:
        revert with 0, 'Invalid address.'
    sub_7ba61ea5Address = msg.sender
    currentState = 3
}

function sub_5c001281(?) {
    if ownerAddress != msg.sender:
        revert with 0, 'Invalid Owner Address'
    require currentState <= 9
    if currentState != 5:
        revert with 0, 'Invalid State'
    if block.timestamp <= endTime:
        if block.timestamp <= sub_f6046fde:
            return 0
    currentState = 8
    return 1
}

function approve(address arg1, uint256 arg2) {
    require ownerOf[arg2]
    require arg1 != ownerOf[arg2]
    if ownerOf[arg2] != msg.sender:
        require stor3[stor0[arg2]][address(msg.sender)]
    if approved[arg2]:
        approved[arg2] = arg1
        emit Approval(arg2, ownerOf[arg2], arg1);
    else:
        if arg1:
            approved[arg2] = arg1
            emit Approval(arg2, ownerOf[arg2], arg1);
}

function getLoanDetails() {
    require currentState <= 9
    mem[128] = uint256(sub_c95669a5.field_0)
    idx = 128
    s = 0
    while sub_c95669a5.length + 96 > idx:
        mem[idx + 32] = sub_c95669a5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    return ownerAddress, 
           sub_7ba61ea5Address,
           lenderAddress,
           Array(len=sub_c95669a5.length, data=mem[128 len sub_c95669a5.length]),
           endTime,
           sub_f6046fde,
           sub_e2d26fd9,
           sub_11a7ef22,
           sub_b7dd32aa,
           collateralAmount,
           sub_8770998e,
           sub_4fb19b4d,
           currentState
}

function sub_8ab8ecae(?) {
    if sub_7ba61ea5Address != msg.sender:
        if stor16 != msg.sender:
            revert with 0, 'Invalid Borrower Address'
    require currentState <= 9
    if currentState != 3:
        revert with 0, 'Invalid State'
    require ext_code.size(stor17)
    call stor17.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < collateralAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Insufficient Collateral Token amount'
    currentState = 4
}

function sub_7f965240(?) {
    if lenderAddress != msg.sender:
        if stor16 != msg.sender:
            revert with 0, 'Invalid Lender Address'
    require currentState <= 9
    if currentState != 8:
        revert with 0, 'Invalid State'
    require ext_code.size(stor17)
    call stor17.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor17)
    call stor17.0xa9059cbb with:
         gas gas_remaining wei
        args lenderAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    currentState = 7
}

function sub_2403e70d(?) {
    if sub_7ba61ea5Address != msg.sender:
        if stor16 != msg.sender:
            revert with 0, 'Invalid Borrower Address'
    require currentState <= 9
    if currentState != 4:
        revert with 0, 'Invalid State'
    require ext_code.size(stor17)
    call stor17.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor17)
    call stor17.0xa9059cbb with:
         gas gas_remaining wei
        args sub_7ba61ea5Address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    currentState = 9
}

function sub_77b86fba(?) {
    if sub_7ba61ea5Address != msg.sender:
        if stor16 != msg.sender:
            revert with 0, 'Invalid Borrower Address'
    require currentState <= 9
    if currentState != 6:
        revert with 0, 'Invalid State'
    require ext_code.size(stor17)
    call stor17.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor17)
    call stor17.0xa9059cbb with:
         gas gas_remaining wei
        args sub_7ba61ea5Address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    currentState = 7
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
        emit Approval(arg3, arg1, 0);
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    emit Transfer(arg3, arg1, arg2);
    lenderAddress = ownerOf[arg3]
}

function sub_a84795e0(?) payable {
    if sub_7ba61ea5Address != msg.sender:
        if stor16 != msg.sender:
            revert with 0, 'Invalid Borrower Address'
    require currentState <= 9
    if currentState != 5:
        revert with 0, 'Invalid State'
    if block.timestamp >= sub_f6046fde:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This Contract has not yet default'
    if block.timestamp >= endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'This Contract has not yet default'
    require ext_code.size(stor18)
    call stor18.0xa9059cbb with:
         gas gas_remaining wei
        args lenderAddress, sub_8770998e
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Token transfer failed'
    sub_4fb19b4d--
    if not sub_4fb19b4d:
        currentState = 6
    else:
        if not sub_e2d26fd9:
            require sub_f6046fde >= sub_f6046fde
        require sub_e2d26fd9
        require 24 * 3600 * sub_e2d26fd9 / sub_e2d26fd9 == 24 * 3600
        require sub_f6046fde + (24 * 3600 * sub_e2d26fd9) >= sub_f6046fde
        sub_f6046fde += 24 * 3600 * sub_e2d26fd9
}

function sub_901564dc(?) {
    if stor16:
        if stor16 != msg.sender:
            revert with 0, 'not factory contract'
    require arg4 != arg5
    if not arg4:
        revert with 0, 'Invalid token address'
    if not arg5:
        revert with 0, 'Invalid token address'
    if not arg2:
        revert with 0, 'Invalid lender address'
    if not arg3:
        revert with 0, 'Invalid lender address'
    if arg10 <= 0:
        revert with 0, 'Invalid number of installments'
    if arg6 <= 0:
        revert with 0, 'Borrow amount must not be 0'
    if arg7 <= 0:
        revert with 0, 'Payback amount must not be 0'
    if arg8 <= 0:
        revert with 0, 'Collateral amount must not be 0'
    require arg3
    require not ownerOf[1]
    ownerOf[1] = arg3
    require balanceOf[address(arg3)] + 1 >= balanceOf[address(arg3)]
    balanceOf[address(arg3)]++
    emit Transfer(1, 0, arg3);
    stor16 = msg.sender
    ownerAddress = arg1
    sub_c95669a5[].field_0 = Array(len=arg11.length, data=arg11[all])
    sub_6d9dd201Address = arg4
    sub_be48ca9eAddress = arg5
    sub_b7dd32aa = arg6
    collateralAmount = arg8
    sub_11a7ef22 = arg10 * arg9
    sub_e2d26fd9 = arg9
    sub_4fb19b4d = arg10
    require arg10
    sub_8770998e = arg7 / arg10
    stor17 = arg4
    stor18 = arg5
    sub_7ba61ea5Address = arg2
    lenderAddress = arg3
    currentState = 3
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3) {
    require arg1
    require arg2
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
        emit Approval(arg3, arg1, 0);
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    emit Transfer(arg3, arg1, arg2);
    lenderAddress = ownerOf[arg3]
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, 96, 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
    lenderAddress = ownerOf[arg3]
    lenderAddress = ownerOf[arg3]
}

function safeTransferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    require arg1
    require arg2
    require ownerOf[arg3]
    if ownerOf[arg3] != msg.sender:
        if approved[arg3] != msg.sender:
            require stor3[stor0[arg3]][address(msg.sender)]
    require arg1
    require arg2
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    if approved[arg3]:
        approved[arg3] = 0
        emit Approval(arg3, arg1, 0);
    require ownerOf[arg3]
    require ownerOf[arg3] == arg1
    require 1 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)]--
    ownerOf[arg3] = 0
    require not ownerOf[arg3]
    ownerOf[arg3] = arg2
    require balanceOf[address(arg2)] + 1 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)]++
    emit Transfer(arg3, arg1, arg2);
    lenderAddress = ownerOf[arg3]
    if ext_code.size(arg2) > 0:
        require ext_code.size(arg2)
        call arg2.onERC721Received(address arg1, uint256 arg2, bytes arg3) with:
             gas gas_remaining wei
            args address(arg1), arg3, Array(len=arg4.length, data=arg4[all])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require Mask(32, 224, ext_call.return_data[0]) == 0xf0b9e5ba00000000000000000000000000000000000000000000000000000000
    lenderAddress = ownerOf[arg3]
}

function checkFunds() {
    if lenderAddress != msg.sender:
        if stor16 != msg.sender:
            revert with 0, 'Invalid Lender Address'
    require currentState <= 9
    if currentState != 4:
        revert with 0, 'Invalid State'
    require ext_code.size(stor18)
    call stor18.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] < sub_b7dd32aa:
        revert with 0, 'Insufficient borrowed amount'
    require ext_code.size(stor18)
    call stor18.0xa9059cbb with:
         gas gas_remaining wei
        args sub_7ba61ea5Address, sub_b7dd32aa
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'Token transfer failed'
    if not sub_11a7ef22:
        require block.timestamp >= block.timestamp
        endTime = block.timestamp
    else:
        require sub_11a7ef22
        require 24 * 3600 * sub_11a7ef22 / sub_11a7ef22 == 24 * 3600
        require block.timestamp + (24 * 3600 * sub_11a7ef22) >= block.timestamp
        endTime = block.timestamp + (24 * 3600 * sub_11a7ef22)
    if not sub_e2d26fd9:
        require block.timestamp >= block.timestamp
        sub_f6046fde = block.timestamp
    else:
        require sub_e2d26fd9
        require 24 * 3600 * sub_e2d26fd9 / sub_e2d26fd9 == 24 * 3600
        require block.timestamp + (24 * 3600 * sub_e2d26fd9) >= block.timestamp
        sub_f6046fde = block.timestamp + (24 * 3600 * sub_e2d26fd9)
    currentState = 5
}

function tokenURI(uint256 arg1) {
    mem[128] = 'https://api.definer.org/OKh4I2yY'
    mem[160] = 'pKU8S2af/definer/api/v1.0/opense'
    mem[192] = 'a/'
    mem[224] = sub_c95669a5.length
    mem[256] = uint256(sub_c95669a5.field_0)
    idx = 256
    s = 0
    while sub_c95669a5.length + 224 > idx:
        mem[idx + 32] = sub_c95669a5[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[ceil32(sub_c95669a5.length) + 256] = 0
    mem[ceil32(sub_c95669a5.length) + 288] = 0
    mem[ceil32(sub_c95669a5.length) + 320] = 0
    mem[ceil32(sub_c95669a5.length) + 352] = sub_c95669a5.length + 66
    if sub_c95669a5.length + 66:
        mem[ceil32(sub_c95669a5.length) + 384 len 32 * sub_c95669a5.length + 66] = code.data[21393 len 32 * sub_c95669a5.length + 66]
    idx = 0
    s = 0
    while idx < 66:
        require idx < 66
        require s < sub_c95669a5.length + 66
        mem[ceil32(sub_c95669a5.length) + s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 128, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = 66
    while idx < sub_c95669a5.length:
        require idx < sub_c95669a5.length
        require s < sub_c95669a5.length + 66
        mem[ceil32(sub_c95669a5.length) + s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 256, ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = sub_c95669a5.length + 66
    while idx < 0:
        require idx < 0
        require s < sub_c95669a5.length + 66
        mem[ceil32(sub_c95669a5.length) + s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'sub_c95669a5', 7))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 288, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'sub_c95669a5', 7))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = sub_c95669a5.length + 66
    while idx < 0:
        require idx < 0
        require s < sub_c95669a5.length + 66
        mem[ceil32(sub_c95669a5.length) + s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'sub_c95669a5', 7))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 320, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'sub_c95669a5', 7))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    idx = 0
    s = sub_c95669a5.length + 66
    while idx < 0:
        require idx < 0
        require s < sub_c95669a5.length + 66
        mem[ceil32(sub_c95669a5.length) + s + 384 len 8] = Mask(8, -(('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'sub_c95669a5', 7))))), ('var', 0)), 32))), 0) + 256, 0) << (('mask_shl', 8, 248, -3, ('mem', ('range', ('add', 352, ('mask_shl', 251, 5, 0, ('add', 31, ('stor', ('length', ('name', 'sub_c95669a5', 7))))), ('var', 0)), 32))), 0) - 256
        idx = idx + 1
        s = s + 1
        continue 
    return Array(len=sub_c95669a5.length + 66, data=mem[ceil32(sub_c95669a5.length) + 384 len sub_c95669a5.length + 66])
}



}
