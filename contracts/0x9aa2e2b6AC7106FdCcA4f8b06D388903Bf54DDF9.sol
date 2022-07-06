contract main {




// =====================  Runtime code  =====================


const sub_19a96e29(?) = 100000

const MAX_UINT256 = -1


uint256 totalSupply;
address stor1;
mapping of uint256 allowed;
mapping of uint8 stor3;
uint64 sub_896d8402;
uint64 sub_8cc38a03; offset 64
address feeRecipientAddress;
address adminAddress;
array of uint256 name;
uint8 decimals;
array of uint256 symbol;
uint64 updateId;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function feeRecipient() {
    return feeRecipientAddress
}

function sub_5a28f34f(?) {
    return bool(stor3[arg1][arg2])
}

function allowed(address arg1, address arg2) {
    return allowed[arg1][arg2]
}

function sub_896d8402(?) {
    return sub_896d8402
}

function sub_8cc38a03(?) {
    return sub_8cc38a03
}

function symbol() {
    return symbol[0 len symbol.length]
}

function updateId() {
    return updateId
}

function allowance(address arg1, address arg2) {
    return allowed[address(arg1)][address(arg2)]
}

function admin() {
    return adminAddress
}

function kill(address arg1) {
    if adminAddress != msg.sender:
        revert with 0, 'only admin may do this'
    selfdestruct(arg1)
}

function _fallback() payable {
    revert
}

function sub_8ff3e835(?) {
    require arg1 * sub_896d8402 / 100000 <= arg1
    return (arg1 * sub_896d8402 / 100000)
}

function sub_a7521397(?) {
    require arg1 * sub_8cc38a03 / 100000 <= arg1
    return (arg1 * sub_8cc38a03 / 100000)
}

function sub_9fc73f53(?) {
    if adminAddress != msg.sender:
        revert with 0, 'only admin may do this'
    sub_8cc38a03 = arg1
    return sub_8cc38a03
}

function approve(address arg1, uint256 arg2) {
    allowed[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    updateId = uint64(updateId + 1)
    return 1
}

function sub_c8eb7dc9(?) {
    if adminAddress != msg.sender:
        revert with 0, 'only admin may do this'
    sub_896d8402 = arg1
    updateId = uint64(updateId + 1)
    return sub_896d8402
}

function setAdmin(address arg1) {
    if adminAddress != msg.sender:
        revert with 0, 'only admin may do this'
    adminAddress = arg1
    updateId = uint64(updateId + 1)
    return adminAddress
}

function setFeeRecipient(address arg1) {
    if adminAddress != msg.sender:
        revert with 0, 'only admin may do this'
    feeRecipientAddress = arg1
    updateId = uint64(updateId + 1)
    return feeRecipientAddress
}

function balanceOf(address arg1) {
    require ext_code.size(stor1)
    call stor1.getEntity(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function transfer(address arg1, uint256 arg2) {
    if arg2 <= 0:
        revert with 0, 'transfer has to be above 0'
    require arg2 * sub_8cc38a03 / 100000 <= arg2
    if arg2:
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender must have enough tokens to send'
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] - arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] + arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Transfer(arg2, msg.sender, arg1);
    if arg2 * sub_8cc38a03 / 100000:
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2 * sub_8cc38a03 / 100000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender must have enough tokens to send'
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] - (arg2 * sub_8cc38a03 / 100000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args feeRecipientAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args feeRecipientAddress, ext_call.return_data[0] + (arg2 * sub_8cc38a03 / 100000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Transfer((arg2 * sub_8cc38a03 / 100000), msg.sender, feeRecipientAddress);
    updateId = uint64(updateId + 1)
    return 1
}

function transferSenderPaysFee(address arg1, uint256 arg2) {
    if arg2 <= 0:
        revert with 0, 'transfer has to be above 0'
    require arg2 * sub_8cc38a03 / 100000 <= arg2
    if arg2:
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender must have enough tokens to send'
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] - arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] + arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Transfer(arg2, msg.sender, arg1);
    if arg2 * sub_8cc38a03 / 100000:
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2 * sub_8cc38a03 / 100000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender must have enough tokens to send'
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] - (arg2 * sub_8cc38a03 / 100000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args feeRecipientAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args feeRecipientAddress, ext_call.return_data[0] + (arg2 * sub_8cc38a03 / 100000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Transfer((arg2 * sub_8cc38a03 / 100000), msg.sender, feeRecipientAddress);
    updateId = uint64(updateId + 1)
    return 1
}

function sub_d5ba948d(?) {
    if arg2 <= 0:
        revert with 0, 'transfer has to be above 0'
    require arg2 * sub_8cc38a03 / 100000 <= arg2
    if arg2 - (arg2 * sub_8cc38a03 / 100000):
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2 - (arg2 * sub_8cc38a03 / 100000):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender must have enough tokens to send'
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] - arg2 + (arg2 * sub_8cc38a03 / 100000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] + arg2 - (arg2 * sub_8cc38a03 / 100000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Transfer((arg2 - (arg2 * sub_8cc38a03 / 100000)), msg.sender, arg1);
    if arg2 * sub_8cc38a03 / 100000:
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2 * sub_8cc38a03 / 100000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender must have enough tokens to send'
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] - (arg2 * sub_8cc38a03 / 100000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args feeRecipientAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args feeRecipientAddress, ext_call.return_data[0] + (arg2 * sub_8cc38a03 / 100000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Transfer((arg2 * sub_8cc38a03 / 100000), msg.sender, feeRecipientAddress);
    updateId = uint64(updateId + 1)
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 * sub_896d8402 / 100000 <= arg3
    if allowed[address(arg1)][address(msg.sender)] < arg3 + (arg3 * sub_896d8402 / 100000):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender must have enough tokens to send'
    if allowed[address(arg1)][address(msg.sender)] < -1:
        allowed[address(arg1)][address(msg.sender)] = allowed[address(arg1)][address(msg.sender)] - arg3 - (arg3 * sub_896d8402 / 100000)
    if arg3:
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender must have enough tokens to send'
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] - arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0] + arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Transfer(arg3, arg1, arg2);
    if arg3 * sub_896d8402 / 100000:
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3 * sub_896d8402 / 100000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender must have enough tokens to send'
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] - (arg3 * sub_896d8402 / 100000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args feeRecipientAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args feeRecipientAddress, ext_call.return_data[0] + (arg3 * sub_896d8402 / 100000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Transfer((arg3 * sub_896d8402 / 100000), arg1, feeRecipientAddress);
    updateId = uint64(updateId + 1)
    return 1
}

function transferFromSenderPaysFee(address arg1, address arg2, uint256 arg3) {
    require arg3 * sub_896d8402 / 100000 <= arg3
    if allowed[address(arg1)][address(msg.sender)] < arg3 + (arg3 * sub_896d8402 / 100000):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender must have enough tokens to send'
    if allowed[address(arg1)][address(msg.sender)] < -1:
        allowed[address(arg1)][address(msg.sender)] = allowed[address(arg1)][address(msg.sender)] - arg3 - (arg3 * sub_896d8402 / 100000)
    if arg3:
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender must have enough tokens to send'
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] - arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0] + arg3
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Transfer(arg3, arg1, arg2);
    if arg3 * sub_896d8402 / 100000:
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3 * sub_896d8402 / 100000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender must have enough tokens to send'
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] - (arg3 * sub_896d8402 / 100000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args feeRecipientAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args feeRecipientAddress, ext_call.return_data[0] + (arg3 * sub_896d8402 / 100000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Transfer((arg3 * sub_896d8402 / 100000), arg1, feeRecipientAddress);
    updateId = uint64(updateId + 1)
    return 1
}

function sub_3e597e02(?) {
    require arg3 * sub_896d8402 / 100000 <= arg3
    if allowed[address(arg1)][address(msg.sender)] < arg3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender must have enough tokens to send'
    if allowed[address(arg1)][address(msg.sender)] < -1:
        allowed[address(arg1)][address(msg.sender)] -= arg3
    if arg3 - (arg3 * sub_896d8402 / 100000):
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3 - (arg3 * sub_896d8402 / 100000):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender must have enough tokens to send'
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] - arg3 + (arg3 * sub_896d8402 / 100000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0] + arg3 - (arg3 * sub_896d8402 / 100000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Transfer((arg3 - (arg3 * sub_896d8402 / 100000)), arg1, arg2);
    if arg3 * sub_896d8402 / 100000:
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg3 * sub_896d8402 / 100000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender must have enough tokens to send'
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] - (arg3 * sub_896d8402 / 100000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args feeRecipientAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args feeRecipientAddress, ext_call.return_data[0] + (arg3 * sub_896d8402 / 100000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Transfer((arg3 * sub_896d8402 / 100000), arg1, feeRecipientAddress);
    updateId = uint64(updateId + 1)
    return 1
}

function sub_867e7c27(?) {
    mem[96] = 0xa39fac1200000000000000000000000000000000000000000000000000000000
    require ext_code.size(stor1)
    call stor1.getAddresses() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[96 len return_data.size] = ext_call.return_data[0 len return_data.size]
    mem[64] = ceil32(return_data.size) + 96
    require return_data.size >= 32
    _4 = mem[96]
    require mem[96] <= 4294967296
    require mem[96] + 32 <= return_data.size
    require mem[mem[96] + 96] <= 4294967296 and mem[96] + (32 * mem[mem[96] + 96]) + 32 <= return_data.size
    _6 = mem[mem[96] + 96]
    mem[ceil32(return_data.size) + 96] = mem[mem[96] + 96]
    mem[64] = ceil32(return_data.size) + (32 * _6) + 128
    if not _6:
        _40 = mem[_4 + 96]
        idx = 0
        while idx < _40:
            require idx < mem[_4 + 96]
            _47 = mem[(32 * idx) + _4 + 128]
            mem[ceil32(return_data.size) + (32 * _6) + 132] = mem[(32 * idx) + _4 + 140 len 20]
            require ext_code.size(stor1)
            call stor1.getEntity(address arg1) with:
                 gas gas_remaining wei
                args address(_47)
            mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < mem[ceil32(return_data.size) + 96]
            mem[(32 * idx) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
            idx = idx + 1
            continue 
        mem[ceil32(return_data.size) + (32 * _6) + 128] = 64
        mem[ceil32(return_data.size) + (32 * _6) + 192] = mem[_4 + 96]
        _46 = mem[_4 + 96]
        mem[ceil32(return_data.size) + (32 * _6) + 224 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
        mem[ceil32(return_data.size) + (32 * _6) + 160] = (32 * _46) + 96
        mem[(32 * _46) + ceil32(return_data.size) + (32 * _6) + 224] = mem[ceil32(return_data.size) + 96]
        mem[(32 * _46) + ceil32(return_data.size) + (32 * _6) + 256 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
        return 64, 
               (32 * _46) + 96,
               mem[ceil32(return_data.size) + (32 * _6) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + (32 * _46) + 64]
    mem[ceil32(return_data.size) + 128 len 32 * _6] = code.data[11079 len 32 * _6]
    _41 = mem[_4 + 96]
    idx = 0
    while idx < _41:
        require idx < mem[_4 + 96]
        _53 = mem[(32 * idx) + _4 + 128]
        mem[ceil32(return_data.size) + (32 * _6) + 132] = mem[(32 * idx) + _4 + 140 len 20]
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args address(_53)
        mem[ceil32(return_data.size) + (32 * _6) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require idx < mem[ceil32(return_data.size) + 96]
        mem[(32 * idx) + ceil32(return_data.size) + 128] = ext_call.return_data[0]
        idx = idx + 1
        continue 
    mem[ceil32(return_data.size) + (32 * _6) + 128] = 64
    mem[ceil32(return_data.size) + (32 * _6) + 192] = mem[_4 + 96]
    _52 = mem[_4 + 96]
    mem[ceil32(return_data.size) + (32 * _6) + 224 len floor32(mem[_4 + 96])] = mem[_4 + 128 len floor32(mem[_4 + 96])]
    mem[ceil32(return_data.size) + (32 * _6) + 160] = (32 * _52) + 96
    mem[(32 * _52) + ceil32(return_data.size) + (32 * _6) + 224] = mem[ceil32(return_data.size) + 96]
    mem[(32 * _52) + ceil32(return_data.size) + (32 * _6) + 256 len floor32(mem[ceil32(return_data.size) + 96])] = mem[ceil32(return_data.size) + 128 len floor32(mem[ceil32(return_data.size) + 96])]
    return 64, 
           (32 * _52) + 96,
           mem[ceil32(return_data.size) + (32 * _6) + 192 len (32 * mem[ceil32(return_data.size) + 96]) + (32 * _52) + 64]
}

function sub_c45bf3e0(?) {
    require ext_code.size(stor1)
    call stor1.isEntity(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'may not initiate an address that is already active'
    if arg2 <= 0:
        revert with 0, 'transfer has to be above 0'
    require arg2 * sub_8cc38a03 / 100000 <= arg2
    if arg2:
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender must have enough tokens to send'
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] - arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args address(arg1), ext_call.return_data[0] + arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Transfer(arg2, msg.sender, arg1);
    if arg2 * sub_8cc38a03 / 100000:
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0] < arg2 * sub_8cc38a03 / 100000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'sender must have enough tokens to send'
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args msg.sender, ext_call.return_data[0] - (arg2 * sub_8cc38a03 / 100000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.getEntity(address arg1) with:
             gas gas_remaining wei
            args feeRecipientAddress
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(stor1)
        call stor1.0x70c38c0 with:
             gas gas_remaining wei
            args feeRecipientAddress, ext_call.return_data[0] + (arg2 * sub_8cc38a03 / 100000)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit Transfer((arg2 * sub_8cc38a03 / 100000), msg.sender, feeRecipientAddress);
    updateId = uint64(updateId + 1)
    allowed[address(arg1)][address(msg.sender)] = -1
    emit Approval(-1, arg1, msg.sender);
    updateId = uint64(updateId + 1)
    return 1
}



}
