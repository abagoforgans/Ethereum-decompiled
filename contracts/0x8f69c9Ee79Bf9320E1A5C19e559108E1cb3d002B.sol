contract main {




// =====================  Runtime code  =====================


const SELFDESTRUCT_DELAY = (672 * 24 * 3600)


address owner;
address nominatedOwner;
uint256 initiationTime;
uint8 stor3;
address selfDestructBeneficiaryAddress; offset 8
address proxyAddress;
uint8 stor5; offset 160
uint32 stor5;
address stor5;
uint256 stor5;
uint256 stor5;
address tokenStateAddress;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
uint8 decimals;
address feePoolAddress; offset 8
uint128 currencyKey; offset 160
address synthetixAddress;

function name() {
    return name[0 len name.length]
}

function initiationTime() {
    return initiationTime
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function nominatedOwner() {
    return nominatedOwner
}

function synthetix() {
    return synthetixAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function feePool() {
    return feePoolAddress
}

function selfDestructInitiated() {
    return bool(stor3)
}

function selfDestructBeneficiary() {
    return selfDestructBeneficiaryAddress
}

function currencyKey() {
    return (currencyKey << 224)
}

function tokenState() {
    return tokenStateAddress
}

function proxy() {
    return proxyAddress
}

function selfDestruct() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may pereorm this action'
    if not stor3:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Self destruct has not yet been initiated'
    if initiationTime + (672 * 24 * 3600) >= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Self destruct delay has not yet elapsed'
    emit SelfDestructed(selfDestructBeneficiaryAddress);
    selfdestruct(selfDestructBeneficiaryAddress)
}

function _fallback() payable {
    revert
}

function setMessageSender(address arg1) {
    if proxyAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the proxy can call this function'
    address(stor5.field_0) = arg1
}

function setProxy(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may pereorm this action'
    proxyAddress = arg1
    emit ProxyUpdated(arg1);
}

function nominateNewOwner(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may pereorm this action'
    nominatedOwner = arg1
    emit OwnerNominated(arg1);
}

function terminateSelfDestruct() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may pereorm this action'
    initiationTime = 0
    stor3 = 0
    emit SelfDestructTerminated()
}

function initiateSelfDestruct() {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may pereorm this action'
    initiationTime = block.timestamp
    stor3 = 1
    emit SelfDestructInitiated((672 * 24 * 3600));
}

function acceptOwnership() {
    if nominatedOwner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'You must be nominated before you can accept ownership'
    emit OwnerChanged(owner, nominatedOwner);
    owner = nominatedOwner
    nominatedOwner = 0
}

function balanceOf(address arg1) {
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setTotalSupply(uint256 arg1) {
    if proxyAddress != msg.sender:
        uint256(stor5.field_0) = msg.sender or Mask(96, 160, uint256(stor5.field_0))
    if owner != address(stor5.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fThis action can only be perform d by the owner'
    totalSupply = arg1
}

function allowance(address arg1, address arg2) {
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setSelfDestructBeneficiary(address arg1) {
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the contract owner may pereorm this action'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Beneficiary must not be the zero address'
    selfDestructBeneficiaryAddress = arg1
    emit SelfDestructBeneficiaryUpdated(arg1);
}

function setFeePool(address arg1) {
    if proxyAddress != msg.sender:
        uint256(stor5.field_0) = msg.sender or Mask(96, 160, uint256(stor5.field_0))
    if owner != address(stor5.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fThis action can only be perform d by the owner'
    feePoolAddress = arg1
    require ext_code.size(proxyAddress)
    call proxyAddress.0x907dff97 with:
         gas gas_remaining wei
        args 192, 1, sha3('FeePoolUpdated(address)'), 0, 0, 0, 32, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setSynthetix(address arg1) {
    if proxyAddress != msg.sender:
        uint256(stor5.field_0) = msg.sender or Mask(96, 160, uint256(stor5.field_0))
    if owner != address(stor5.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fThis action can only be perform d by the owner'
    synthetixAddress = arg1
    require ext_code.size(proxyAddress)
    call proxyAddress.0x907dff97 with:
         gas gas_remaining wei
        args 192, 1, sha3('SynthetixUpdated(address)'), 0, 0, 0, 32, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setTokenState(address arg1) {
    if proxyAddress != msg.sender:
        uint256(stor5.field_0) = msg.sender or Mask(96, 160, uint256(stor5.field_0))
    if owner != address(stor5.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'fThis action can only be perform d by the owner'
    tokenStateAddress = arg1
    require ext_code.size(proxyAddress)
    call proxyAddress.0x907dff97 with:
         gas gas_remaining wei
        args 192, 1, sha3('TokenStateUpdated(address)'), 0, 0, 0, 32, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function approve(address arg1, uint256 arg2) {
    if proxyAddress != msg.sender:
        uint256(stor5.field_0) = msg.sender or Mask(96, 160, uint256(stor5.field_0))
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xda46098c with:
         gas gas_remaining wei
        args address(stor5.field_0), address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(proxyAddress)
    call proxyAddress.0x907dff97 with:
         gas gas_remaining wei
        args 192, 3, sha3('Approval(address,address,uint256', ')'), address(stor5.field_0), address(arg1), 0, 32, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function burn(address arg1, uint256 arg2) {
    if synthetixAddress != msg.sender:
        if feePoolAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Only the Synthetix or FeePool contracts can perform this action'
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xb46310f6 with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0] - arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg2 <= totalSupply
    totalSupply -= arg2
    require ext_code.size(proxyAddress)
    call proxyAddress.0x907dff97 with:
         gas gas_remaining wei
        args 192, 3, sha3('Transfer(address,address,uint256', ')'), address(arg1), 0, 0, 32, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(proxyAddress)
    call proxyAddress.0x907dff97 with:
         gas gas_remaining wei
        args 192, 2, sha3('Burned(address,uint256)'), address(arg1), 0, 0, 0, 32, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function issue(address arg1, uint256 arg2) {
    if synthetixAddress != msg.sender:
        if feePoolAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Only the Synthetix or FeePool contracts can perform this action'
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xb46310f6 with:
         gas gas_remaining wei
        args address(arg1), arg2 + ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require ext_code.size(proxyAddress)
    call proxyAddress.0x907dff97 with:
         gas gas_remaining wei
        args 192, 3, sha3('Transfer(address,address,uint256', ')'), 0, address(arg1), 0, 32, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(proxyAddress)
    call proxyAddress.0x907dff97 with:
         gas gas_remaining wei
        args 192, 2, sha3('Issued(address,uint256)'), address(arg1), 0, 0, 0, 32, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function triggerTokenFallbackIfNeeded(address arg1, address arg2, uint256 arg3) {
    if msg.sender == synthetixAddress:
        if uint8(stor5.field_160):
            revert with 0, 'Reverted to prevent reentrancy'
        uint8(stor5.field_160) = 1
        if ext_code.size(arg2) > 0:
            mem[132] = arg1
            mem[164] = arg3
            mem[196] = 96
            mem[228] = mem[96]
            _7 = mem[96]
            mem[260 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if not mem[96] % 32:
                mem[96] = mem[96] + 132
                mem[132 len 28] = address(arg1) << 64
                mem[128 len 4] = unknown_0xc0ee0b8a(?????)
                mem[_7 + 260 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if not mem[96] % 32:
                    call arg2.mem[_7 + 260 len 4] with:
                         gas gas_remaining wei
                        args mem[_7 + 264 len mem[96] - 4]
                else:
                    mem[floor32(mem[96]) + _7 + 260] = mem[floor32(mem[96]) + _7 + -(mem[96] % 32) + 292 len mem[96] % 32]
                    call arg2.mem[_7 + 260 len 4] with:
                         gas gas_remaining wei
                        args mem[_7 + 264 len floor32(mem[96]) + 28]
            else:
                mem[floor32(mem[96]) + 260] = mem[floor32(mem[96]) + -(mem[96] % 32) + 292 len mem[96] % 32]
                mem[96] = floor32(mem[96]) + 164
                mem[132 len 28] = address(arg1) << 64
                mem[128 len 4] = unknown_0xc0ee0b8a(?????)
                mem[floor32(_7) + 292 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if not mem[96] % 32:
                    call arg2.mem[floor32(_7) + 292 len 4] with:
                         gas gas_remaining wei
                        args mem[floor32(_7) + 296 len mem[96] - 4]
                else:
                    mem[floor32(mem[96]) + floor32(_7) + 292] = mem[floor32(mem[96]) + floor32(_7) + -(mem[96] % 32) + 324 len mem[96] % 32]
                    call arg2.mem[floor32(_7) + 292 len 4] with:
                         gas gas_remaining wei
                        args mem[floor32(_7) + 296 len floor32(mem[96]) + 28]
    else:
        if feePoolAddress != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Only the Synthetix or FeePool contracts can perform this action'
        if uint8(stor5.field_160):
            revert with 0, 'Reverted to prevent reentrancy'
        uint8(stor5.field_160) = 1
        if ext_code.size(arg2) > 0:
            mem[132] = arg1
            mem[164] = arg3
            mem[196] = 96
            mem[228] = mem[96]
            _12 = mem[96]
            mem[260 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
            if not mem[96] % 32:
                mem[96] = mem[96] + 132
                mem[132 len 28] = address(arg1) << 64
                mem[128 len 4] = unknown_0xc0ee0b8a(?????)
                mem[_12 + 260 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if not mem[96] % 32:
                    call arg2.mem[_12 + 260 len 4] with:
                         gas gas_remaining wei
                        args mem[_12 + 264 len mem[96] - 4]
                else:
                    mem[floor32(mem[96]) + _12 + 260] = mem[floor32(mem[96]) + _12 + -(mem[96] % 32) + 292 len mem[96] % 32]
                    call arg2.mem[_12 + 260 len 4] with:
                         gas gas_remaining wei
                        args mem[_12 + 264 len floor32(mem[96]) + 28]
            else:
                mem[floor32(mem[96]) + 260] = mem[floor32(mem[96]) + -(mem[96] % 32) + 292 len mem[96] % 32]
                mem[96] = floor32(mem[96]) + 164
                mem[132 len 28] = address(arg1) << 64
                mem[128 len 4] = unknown_0xc0ee0b8a(?????)
                mem[floor32(_12) + 292 len ceil32(mem[96])] = mem[128 len ceil32(mem[96])]
                if not mem[96] % 32:
                    call arg2.mem[floor32(_12) + 292 len 4] with:
                         gas gas_remaining wei
                        args mem[floor32(_12) + 296 len mem[96] - 4]
                else:
                    mem[floor32(mem[96]) + floor32(_12) + 292] = mem[floor32(mem[96]) + floor32(_12) + -(mem[96] % 32) + 324 len mem[96] % 32]
                    call arg2.mem[floor32(_12) + 292 len 4] with:
                         gas gas_remaining wei
                        args mem[floor32(_12) + 296 len floor32(mem[96]) + 28]
    uint8(stor5.field_160) = 0
}

function transferSenderPaysFee(address arg1, uint256 arg2) {
    if proxyAddress != msg.sender:
        uint256(stor5.field_0) = msg.sender or Mask(96, 160, uint256(stor5.field_0))
    require ext_code.size(feePoolAddress)
    call feePoolAddress.FEE_ADDRESS() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == address(stor5.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot perform this action withthe fee address'
    require ext_code.size(feePoolAddress)
    call feePoolAddress.transferFeeIncurred(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(synthetixAddress)
    call synthetixAddress.0xbe576364 with:
         gas gas_remaining wei
        args address(stor5.field_0), currencyKey << 224, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(synthetixAddress)
    call synthetixAddress.0xdbd4a422 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).preferredCurrency(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(32, 224, ext_call.return_data[0]):
        if Mask(32, 224, ext_call.return_data[0]) != currencyKey << 224:
            require ext_code.size(synthetixAddress)
            call synthetixAddress.0xbe0ecd32 with:
                 gas gas_remaining wei
                args 0, uint32(stor5.field_0), currencyKey << 224, arg2, Mask(32, 224, ext_call.return_data[0]), address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return bool(ext_call.return_data[0])
    if not arg1:
        revert with 0, 'Cannot transfer to the 0 address'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot transfer to the underlying contract'
    if proxyAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot transfer to the proxy contract'
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args address(stor5.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xb46310f6 with:
         gas gas_remaining wei
        args address(stor5.field_0), ext_call.return_data[0] - arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xb46310f6 with:
         gas gas_remaining wei
        args address(arg1), arg2 + ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if uint8(stor5.field_160):
        revert with 0, 'Reverted to prevent reentrancy'
    uint8(stor5.field_160) = 1
    if ext_code.size(arg1) > 0:
        mem[260 len 0xb46310f600000000000000000000000000000000000000000000000000000000] = 0, address(stor5.field_0), arg2, 96, 0xb46310f600000000000000000000000000000000000000000000000000000000, mem[260 len 0xb46310f5ffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]
        mem[0xb46310f600000000000000000000000000000000000000000000000000000104 len 0xb46310f6000000000000000000000000000000000000000000000000000000a0] = unknown_0xc0ee0b8a(?????), Mask(224, 0, stor5.field_0), uint32(stor5.field_0), arg2, 96, 0xb46310f600000000000000000000000000000000000000000000000000000000, mem[260 len 0xb46310f60000000000000000000000000000000000000000000000000000001c]
        call arg1.mem[0xb46310f600000000000000000000000000000000000000000000000000000104 len 4] with:
             gas gas_remaining wei
            args mem[0xb46310f600000000000000000000000000000000000000000000000000000108 len -34200741572826756699665901277701165871636220859340273501194218286545538908004]
    uint8(stor5.field_160) = 0
    require ext_code.size(proxyAddress)
    call proxyAddress.0x907dff97 with:
         gas gas_remaining wei
        args 192, 3, sha3('Transfer(address,address,uint256', ')'), address(stor5.field_0), address(arg1), 0, 32, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transfer(address arg1, uint256 arg2) {
    if proxyAddress != msg.sender:
        uint256(stor5.field_0) = msg.sender or Mask(96, 160, uint256(stor5.field_0))
    require ext_code.size(feePoolAddress)
    call feePoolAddress.FEE_ADDRESS() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == address(stor5.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot perform this action withthe fee address'
    require ext_code.size(feePoolAddress)
    call feePoolAddress.amountReceivedFromTransfer(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= arg2
    require ext_code.size(synthetixAddress)
    call synthetixAddress.0xbe576364 with:
         gas gas_remaining wei
        args address(stor5.field_0), currencyKey << 224, arg2 - ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(synthetixAddress)
    call synthetixAddress.0xdbd4a422 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).preferredCurrency(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(32, 224, ext_call.return_data[0]):
        if Mask(32, 224, ext_call.return_data[0]) != currencyKey << 224:
            require ext_code.size(synthetixAddress)
            call synthetixAddress.0xbe0ecd32 with:
                 gas gas_remaining wei
                args 0, uint32(stor5.field_0), currencyKey << 224, ext_call.return_data[0], Mask(32, 224, ext_call.return_data[0]), address(arg1)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return bool(ext_call.return_data[0])
    if not arg1:
        revert with 0, 'Cannot transfer to the 0 address'
    if this.address == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot transfer to the underlying contract'
    if proxyAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot transfer to the proxy contract'
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args address(stor5.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xb46310f6 with:
         gas gas_remaining wei
        args address(stor5.field_0), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xb46310f6 with:
         gas gas_remaining wei
        args address(arg1), 2 * ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if uint8(stor5.field_160):
        revert with 0, 'Reverted to prevent reentrancy'
    uint8(stor5.field_160) = 1
    if ext_code.size(arg1) > 0:
        mem[260 len 0xb46310f600000000000000000000000000000000000000000000000000000000] = 0, address(stor5.field_0), ext_call.return_data[0], 96, 0xb46310f600000000000000000000000000000000000000000000000000000000, mem[260 len 0xb46310f5ffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]
        mem[0xb46310f600000000000000000000000000000000000000000000000000000104 len 0xb46310f6000000000000000000000000000000000000000000000000000000a0] = unknown_0xc0ee0b8a(?????), Mask(224, 0, stor5.field_0), uint32(stor5.field_0), ext_call.return_data[0], 96, 0xb46310f600000000000000000000000000000000000000000000000000000000, mem[260 len 0xb46310f60000000000000000000000000000000000000000000000000000001c]
        call arg1.mem[0xb46310f600000000000000000000000000000000000000000000000000000104 len 4] with:
             gas gas_remaining wei
            args mem[0xb46310f600000000000000000000000000000000000000000000000000000108 len -34200741572826756699665901277701165871636220859340273501194218286545538908004]
    uint8(stor5.field_160) = 0
    require ext_code.size(proxyAddress)
    call proxyAddress.0x907dff97 with:
         gas gas_remaining wei
        args 192, 3, sha3('Transfer(address,address,uint256', ')'), address(stor5.field_0), address(arg1), 0, 32, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFromSenderPaysFee(address arg1, address arg2, uint256 arg3) {
    if proxyAddress != msg.sender:
        uint256(stor5.field_0) = msg.sender or Mask(96, 160, uint256(stor5.field_0))
    require ext_code.size(feePoolAddress)
    call feePoolAddress.FEE_ADDRESS() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot perform this action withthe fee address'
    require ext_code.size(feePoolAddress)
    call feePoolAddress.transferFeeIncurred(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + arg3 >= arg3
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args address(arg1), address(stor5.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + arg3 <= ext_call.return_data[0]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xda46098c with:
         gas gas_remaining wei
        args address(arg1), address(stor5.field_0), -arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(synthetixAddress)
    call synthetixAddress.0xbe576364 with:
         gas gas_remaining wei
        args address(arg1), currencyKey << 224, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(synthetixAddress)
    call synthetixAddress.0xdbd4a422 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).preferredCurrency(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(32, 224, ext_call.return_data[0]):
        if Mask(32, 224, ext_call.return_data[0]) != currencyKey << 224:
            require ext_code.size(synthetixAddress)
            call synthetixAddress.0xbe0ecd32 with:
                 gas gas_remaining wei
                args 0, 0, currencyKey << 224, arg3, Mask(32, 224, ext_call.return_data[0]), address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return bool(ext_call.return_data[0])
    if not arg2:
        revert with 0, 'Cannot transfer to the 0 address'
    if this.address == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot transfer to the underlying contract'
    if proxyAddress == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot transfer to the proxy contract'
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xb46310f6 with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 + ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xb46310f6 with:
         gas gas_remaining wei
        args address(arg2), arg3 + ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if uint8(stor5.field_160):
        revert with 0, 'Reverted to prevent reentrancy'
    uint8(stor5.field_160) = 1
    if ext_code.size(arg2) > 0:
        mem[260 len 0xb46310f600000000000000000000000000000000000000000000000000000000] = 0, address(arg1), arg3, 96, 0xb46310f600000000000000000000000000000000000000000000000000000000, mem[260 len 0xb46310f5ffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]
        mem[0xb46310f600000000000000000000000000000000000000000000000000000104 len 0xb46310f6000000000000000000000000000000000000000000000000000000a0] = unknown_0xc0ee0b8a(?????), address(arg1) << 64, 0, arg3, 96, 0xb46310f600000000000000000000000000000000000000000000000000000000, mem[260 len 0xb46310f60000000000000000000000000000000000000000000000000000001c]
        call arg2.mem[0xb46310f600000000000000000000000000000000000000000000000000000104 len 4] with:
             gas gas_remaining wei
            args mem[0xb46310f600000000000000000000000000000000000000000000000000000108 len -34200741572826756699665901277701165871636220859340273501194218286545538908004]
    uint8(stor5.field_160) = 0
    require ext_code.size(proxyAddress)
    call proxyAddress.0x907dff97 with:
         gas gas_remaining wei
        args 192, 3, sha3('Transfer(address,address,uint256', ')'), address(arg1), address(arg2), 0, 32, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    if proxyAddress != msg.sender:
        uint256(stor5.field_0) = msg.sender or Mask(96, 160, uint256(stor5.field_0))
    require ext_code.size(feePoolAddress)
    call feePoolAddress.FEE_ADDRESS() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot perform this action withthe fee address'
    require ext_code.size(feePoolAddress)
    call feePoolAddress.amountReceivedFromTransfer(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= arg3
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args address(arg1), address(stor5.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xda46098c with:
         gas gas_remaining wei
        args address(arg1), address(stor5.field_0), ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(synthetixAddress)
    call synthetixAddress.0xbe576364 with:
         gas gas_remaining wei
        args address(arg1), currencyKey << 224, arg3 - ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(synthetixAddress)
    call synthetixAddress.0xdbd4a422 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).preferredCurrency(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(32, 224, ext_call.return_data[0]):
        if Mask(32, 224, ext_call.return_data[0]) != currencyKey << 224:
            require ext_code.size(synthetixAddress)
            call synthetixAddress.0xbe0ecd32 with:
                 gas gas_remaining wei
                args 0, 0, currencyKey << 224, ext_call.return_data[0], Mask(32, 224, ext_call.return_data[0]), address(arg2)
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return bool(ext_call.return_data[0])
    if not arg2:
        revert with 0, 'Cannot transfer to the 0 address'
    if this.address == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot transfer to the underlying contract'
    if proxyAddress == arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Cannot transfer to the proxy contract'
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xb46310f6 with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xb46310f6 with:
         gas gas_remaining wei
        args address(arg2), 2 * ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if uint8(stor5.field_160):
        revert with 0, 'Reverted to prevent reentrancy'
    uint8(stor5.field_160) = 1
    if ext_code.size(arg2) > 0:
        mem[260 len 0xb46310f600000000000000000000000000000000000000000000000000000000] = 0, address(arg1), ext_call.return_data[0], 96, 0xb46310f600000000000000000000000000000000000000000000000000000000, mem[260 len 0xb46310f5ffffffffffffffffffffffffffffffffffffffffffffffffffffff7c]
        mem[0xb46310f600000000000000000000000000000000000000000000000000000104 len 0xb46310f6000000000000000000000000000000000000000000000000000000a0] = unknown_0xc0ee0b8a(?????), address(arg1) << 64, 0, ext_call.return_data[0], 96, 0xb46310f600000000000000000000000000000000000000000000000000000000, mem[260 len 0xb46310f60000000000000000000000000000000000000000000000000000001c]
        call arg2.mem[0xb46310f600000000000000000000000000000000000000000000000000000104 len 4] with:
             gas gas_remaining wei
            args mem[0xb46310f600000000000000000000000000000000000000000000000000000108 len -34200741572826756699665901277701165871636220859340273501194218286545538908004]
    uint8(stor5.field_160) = 0
    require ext_code.size(proxyAddress)
    call proxyAddress.0x907dff97 with:
         gas gas_remaining wei
        args 192, 3, sha3('Transfer(address,address,uint256', ')'), address(arg1), address(arg2), 0, 32, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferSenderPaysFee(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    if proxyAddress != msg.sender:
        uint256(stor5.field_0) = msg.sender or Mask(96, 160, uint256(stor5.field_0))
    require ext_code.size(feePoolAddress)
    call feePoolAddress.FEE_ADDRESS() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == address(stor5.field_0):
        revert with 0, 'Cannot perform this action withthe fee address'
    require ext_code.size(feePoolAddress)
    call feePoolAddress.transferFeeIncurred(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(synthetixAddress)
    call synthetixAddress.0xbe576364 with:
         gas gas_remaining wei
        args address(stor5.field_0), currencyKey << 224, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(synthetixAddress)
    call synthetixAddress.0xdbd4a422 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).preferredCurrency(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(32, 224, ext_call.return_data[0]):
        if Mask(32, 224, ext_call.return_data[0]) != currencyKey << 224:
            require ext_code.size(synthetixAddress)
            call synthetixAddress.0xbe0ecd32 with:
                 gas gas_remaining wei
                args address(stor5.field_0), currencyKey << 224, arg2, Mask(32, 224, ext_call.return_data[0]), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return bool(ext_call.return_data[0])
    if not arg1:
        revert with 0, 'Cannot transfer to the 0 address'
    if this.address == arg1:
        revert with 0, 'Cannot transfer to the underlying contract'
    if proxyAddress == arg1:
        revert with 0, 'Cannot transfer to the proxy contract'
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args address(stor5.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= ext_call.return_data[0]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xb46310f6 with:
         gas gas_remaining wei
        args address(stor5.field_0), ext_call.return_data[0] - arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 + ext_call.return_data[0] >= ext_call.return_data[0]
    mem[ceil32(arg3.length) + 128] = 0xb46310f600000000000000000000000000000000000000000000000000000000
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xb46310f6 with:
         gas gas_remaining wei
        args address(arg1), arg2 + ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if uint8(stor5.field_160):
        revert with 0, 'Reverted to prevent reentrancy'
    uint8(stor5.field_160) = 1
    if ext_code.size(arg1) > 0:
        mem[ceil32(arg3.length) + 292 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[arg3.length + ceil32(arg3.length) + 292 len floor32(arg3.length + 163)] = unknown_0xc0ee0b8a(?????), Mask(224, 0, stor5.field_0), uint32(stor5.field_0), arg2, 96, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 292 len floor32(arg3.length + 163) + -ceil32(arg3.length) - 132]
            if not arg3.length + 132 % 32:
                call arg1.mem[arg3.length + ceil32(arg3.length) + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[arg3.length + ceil32(arg3.length) + 296 len arg3.length + 128]
            else:
                mem[floor32(arg3.length + 132) + arg3.length + ceil32(arg3.length) + 292] = mem[floor32(arg3.length + 132) + arg3.length + ceil32(arg3.length) + -(arg3.length + 132 % 32) + 324 len arg3.length + 132 % 32]
                call arg1.mem[arg3.length + ceil32(arg3.length) + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[arg3.length + ceil32(arg3.length) + 296 len floor32(arg3.length + 132) + 28]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
            mem[floor32(arg3.length) + ceil32(arg3.length) + 324 len floor32(floor32(arg3.length) + 195)] = unknown_0xc0ee0b8a(?????), Mask(224, 0, stor5.field_0), uint32(stor5.field_0), arg2, 96, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 292 len floor32(floor32(arg3.length) + 195) + -ceil32(arg3.length) - 132]
            if not floor32(arg3.length) + 164 % 32:
                call arg1.mem[floor32(arg3.length) + ceil32(arg3.length) + 324 len 4] with:
                     gas gas_remaining wei
                    args mem[floor32(arg3.length) + ceil32(arg3.length) + 328 len (2 * floor32(arg3.length)) + 160]
            else:
                mem[floor32(floor32(arg3.length) + 164) + floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(floor32(arg3.length) + 164) + floor32(arg3.length) + ceil32(arg3.length) + -(floor32(arg3.length) + 164 % 32) + 356 len floor32(arg3.length) + 164 % 32]
                call arg1.mem[floor32(arg3.length) + ceil32(arg3.length) + 324 len 4] with:
                     gas gas_remaining wei
                    args mem[floor32(arg3.length) + ceil32(arg3.length) + 328 len floor32(floor32(arg3.length) + 164) + 28]
    uint8(stor5.field_160) = 0
    require ext_code.size(proxyAddress)
    call proxyAddress.0x907dff97 with:
         gas gas_remaining wei
        args 192, 3, sha3('Transfer(address,address,uint256', ')'), address(stor5.field_0), address(arg1), 0, 32, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transfer(address arg1, uint256 arg2, bytes arg3) {
    mem[128 len arg3.length] = arg3[all]
    if proxyAddress != msg.sender:
        uint256(stor5.field_0) = msg.sender or Mask(96, 160, uint256(stor5.field_0))
    require ext_code.size(feePoolAddress)
    call feePoolAddress.FEE_ADDRESS() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == address(stor5.field_0):
        revert with 0, 'Cannot perform this action withthe fee address'
    require ext_code.size(feePoolAddress)
    call feePoolAddress.amountReceivedFromTransfer(uint256 arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= arg2
    require ext_code.size(synthetixAddress)
    call synthetixAddress.0xbe576364 with:
         gas gas_remaining wei
        args address(stor5.field_0), currencyKey << 224, arg2 - ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(synthetixAddress)
    call synthetixAddress.0xdbd4a422 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).preferredCurrency(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(32, 224, ext_call.return_data[0]):
        if Mask(32, 224, ext_call.return_data[0]) != currencyKey << 224:
            require ext_code.size(synthetixAddress)
            call synthetixAddress.0xbe0ecd32 with:
                 gas gas_remaining wei
                args address(stor5.field_0), currencyKey << 224, ext_call.return_data[0], Mask(32, 224, ext_call.return_data[0]), arg1
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return bool(ext_call.return_data[0])
    if not arg1:
        revert with 0, 'Cannot transfer to the 0 address'
    if this.address == arg1:
        revert with 0, 'Cannot transfer to the underlying contract'
    if proxyAddress == arg1:
        revert with 0, 'Cannot transfer to the proxy contract'
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args address(stor5.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xb46310f6 with:
         gas gas_remaining wei
        args address(stor5.field_0), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    mem[ceil32(arg3.length) + 128] = 0xb46310f600000000000000000000000000000000000000000000000000000000
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xb46310f6 with:
         gas gas_remaining wei
        args address(arg1), 2 * ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if uint8(stor5.field_160):
        revert with 0, 'Reverted to prevent reentrancy'
    uint8(stor5.field_160) = 1
    if ext_code.size(arg1) > 0:
        mem[ceil32(arg3.length) + 292 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
        if not arg3.length % 32:
            mem[arg3.length + ceil32(arg3.length) + 292 len floor32(arg3.length + 163)] = unknown_0xc0ee0b8a(?????), Mask(224, 0, stor5.field_0), uint32(stor5.field_0), ext_call.return_data[0], 96, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 292 len floor32(arg3.length + 163) + -ceil32(arg3.length) - 132]
            if not arg3.length + 132 % 32:
                call arg1.mem[arg3.length + ceil32(arg3.length) + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[arg3.length + ceil32(arg3.length) + 296 len arg3.length + 128]
            else:
                mem[floor32(arg3.length + 132) + arg3.length + ceil32(arg3.length) + 292] = mem[floor32(arg3.length + 132) + arg3.length + ceil32(arg3.length) + -(arg3.length + 132 % 32) + 324 len arg3.length + 132 % 32]
                call arg1.mem[arg3.length + ceil32(arg3.length) + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[arg3.length + ceil32(arg3.length) + 296 len floor32(arg3.length + 132) + 28]
        else:
            mem[floor32(arg3.length) + ceil32(arg3.length) + 292] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 324 len arg3.length % 32]
            mem[floor32(arg3.length) + ceil32(arg3.length) + 324 len floor32(floor32(arg3.length) + 195)] = unknown_0xc0ee0b8a(?????), Mask(224, 0, stor5.field_0), uint32(stor5.field_0), ext_call.return_data[0], 96, arg3.length, Mask(8 * ceil32(arg3.length), -(8 * ceil32(arg3.length)) + 256, arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]) << (8 * ceil32(arg3.length)) - 256, mem[(2 * ceil32(arg3.length)) + 292 len floor32(floor32(arg3.length) + 195) + -ceil32(arg3.length) - 132]
            if not floor32(arg3.length) + 164 % 32:
                call arg1.mem[floor32(arg3.length) + ceil32(arg3.length) + 324 len 4] with:
                     gas gas_remaining wei
                    args mem[floor32(arg3.length) + ceil32(arg3.length) + 328 len (2 * floor32(arg3.length)) + 160]
            else:
                mem[floor32(floor32(arg3.length) + 164) + floor32(arg3.length) + ceil32(arg3.length) + 324] = mem[floor32(floor32(arg3.length) + 164) + floor32(arg3.length) + ceil32(arg3.length) + -(floor32(arg3.length) + 164 % 32) + 356 len floor32(arg3.length) + 164 % 32]
                call arg1.mem[floor32(arg3.length) + ceil32(arg3.length) + 324 len 4] with:
                     gas gas_remaining wei
                    args mem[floor32(arg3.length) + ceil32(arg3.length) + 328 len floor32(floor32(arg3.length) + 164) + 28]
    uint8(stor5.field_160) = 0
    require ext_code.size(proxyAddress)
    call proxyAddress.0x907dff97 with:
         gas gas_remaining wei
        args 192, 3, sha3('Transfer(address,address,uint256', ')'), address(stor5.field_0), address(arg1), 0, 32, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFromSenderPaysFee(address arg1, address arg2, uint256 arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    if proxyAddress != msg.sender:
        uint256(stor5.field_0) = msg.sender or Mask(96, 160, uint256(stor5.field_0))
    require ext_code.size(feePoolAddress)
    call feePoolAddress.FEE_ADDRESS() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == arg1:
        revert with 0, 'Cannot perform this action withthe fee address'
    require ext_code.size(feePoolAddress)
    call feePoolAddress.transferFeeIncurred(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + arg3 >= arg3
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args address(arg1), address(stor5.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] + arg3 <= ext_call.return_data[0]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xda46098c with:
         gas gas_remaining wei
        args address(arg1), address(stor5.field_0), -arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(synthetixAddress)
    call synthetixAddress.0xbe576364 with:
         gas gas_remaining wei
        args address(arg1), currencyKey << 224, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(synthetixAddress)
    call synthetixAddress.0xdbd4a422 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).preferredCurrency(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(32, 224, ext_call.return_data[0]):
        if Mask(32, 224, ext_call.return_data[0]) != currencyKey << 224:
            require ext_code.size(synthetixAddress)
            call synthetixAddress.0xbe0ecd32 with:
                 gas gas_remaining wei
                args address(arg1), currencyKey << 224, arg3, Mask(32, 224, ext_call.return_data[0]), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return bool(ext_call.return_data[0])
    if not arg2:
        revert with 0, 'Cannot transfer to the 0 address'
    if this.address == arg2:
        revert with 0, 'Cannot transfer to the underlying contract'
    if proxyAddress == arg2:
        revert with 0, 'Cannot transfer to the proxy contract'
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xb46310f6 with:
         gas gas_remaining wei
        args address(arg1), ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 + ext_call.return_data[0] >= ext_call.return_data[0]
    mem[ceil32(arg4.length) + 128] = 0xb46310f600000000000000000000000000000000000000000000000000000000
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xb46310f6 with:
         gas gas_remaining wei
        args address(arg2), arg3 + ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if uint8(stor5.field_160):
        revert with 0, 'Reverted to prevent reentrancy'
    uint8(stor5.field_160) = 1
    if ext_code.size(arg2) > 0:
        mem[ceil32(arg4.length) + 292 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            mem[arg4.length + ceil32(arg4.length) + 292 len floor32(arg4.length + 163)] = unknown_0xc0ee0b8a(?????), address(arg1) << 64, 0, arg3, 96, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 292 len floor32(arg4.length + 163) + -ceil32(arg4.length) - 132]
            if not arg4.length + 132 % 32:
                call arg2.mem[arg4.length + ceil32(arg4.length) + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[arg4.length + ceil32(arg4.length) + 296 len arg4.length + 128]
            else:
                mem[floor32(arg4.length + 132) + arg4.length + ceil32(arg4.length) + 292] = mem[floor32(arg4.length + 132) + arg4.length + ceil32(arg4.length) + -(arg4.length + 132 % 32) + 324 len arg4.length + 132 % 32]
                call arg2.mem[arg4.length + ceil32(arg4.length) + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[arg4.length + ceil32(arg4.length) + 296 len floor32(arg4.length + 132) + 28]
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + 292] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 324 len arg4.length % 32]
            mem[floor32(arg4.length) + ceil32(arg4.length) + 324 len floor32(floor32(arg4.length) + 195)] = unknown_0xc0ee0b8a(?????), address(arg1) << 64, 0, arg3, 96, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 292 len floor32(floor32(arg4.length) + 195) + -ceil32(arg4.length) - 132]
            if not floor32(arg4.length) + 164 % 32:
                call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 324 len 4] with:
                     gas gas_remaining wei
                    args mem[floor32(arg4.length) + ceil32(arg4.length) + 328 len (2 * floor32(arg4.length)) + 160]
            else:
                mem[floor32(floor32(arg4.length) + 164) + floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(floor32(arg4.length) + 164) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 164 % 32) + 356 len floor32(arg4.length) + 164 % 32]
                call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 324 len 4] with:
                     gas gas_remaining wei
                    args mem[floor32(arg4.length) + ceil32(arg4.length) + 328 len floor32(floor32(arg4.length) + 164) + 28]
    uint8(stor5.field_160) = 0
    require ext_code.size(proxyAddress)
    call proxyAddress.0x907dff97 with:
         gas gas_remaining wei
        args 192, 3, sha3('Transfer(address,address,uint256', ')'), address(arg1), address(arg2), 0, 32, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3, bytes arg4) {
    mem[128 len arg4.length] = arg4[all]
    if proxyAddress != msg.sender:
        uint256(stor5.field_0) = msg.sender or Mask(96, 160, uint256(stor5.field_0))
    require ext_code.size(feePoolAddress)
    call feePoolAddress.FEE_ADDRESS() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] == arg1:
        revert with 0, 'Cannot perform this action withthe fee address'
    require ext_code.size(feePoolAddress)
    call feePoolAddress.amountReceivedFromTransfer(uint256 arg1) with:
         gas gas_remaining wei
        args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= arg3
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xdd62ed3e with:
         gas gas_remaining wei
        args address(arg1), address(stor5.field_0)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg3 <= ext_call.return_data[0]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xda46098c with:
         gas gas_remaining wei
        args address(arg1), address(stor5.field_0), ext_call.return_data[0] - arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(synthetixAddress)
    call synthetixAddress.0xbe576364 with:
         gas gas_remaining wei
        args address(arg1), currencyKey << 224, arg3 - ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(synthetixAddress)
    call synthetixAddress.0xdbd4a422 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).preferredCurrency(address arg1) with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if Mask(32, 224, ext_call.return_data[0]):
        if Mask(32, 224, ext_call.return_data[0]) != currencyKey << 224:
            require ext_code.size(synthetixAddress)
            call synthetixAddress.0xbe0ecd32 with:
                 gas gas_remaining wei
                args address(arg1), currencyKey << 224, ext_call.return_data[0], Mask(32, 224, ext_call.return_data[0]), arg2
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            return bool(ext_call.return_data[0])
    if not arg2:
        revert with 0, 'Cannot transfer to the 0 address'
    if this.address == arg2:
        revert with 0, 'Cannot transfer to the underlying contract'
    if proxyAddress == arg2:
        revert with 0, 'Cannot transfer to the proxy contract'
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] <= ext_call.return_data[0]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xb46310f6 with:
         gas gas_remaining wei
        args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0x70a08231 with:
         gas gas_remaining wei
        args arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require 2 * ext_call.return_data[0] >= ext_call.return_data[0]
    mem[ceil32(arg4.length) + 128] = 0xb46310f600000000000000000000000000000000000000000000000000000000
    require ext_code.size(tokenStateAddress)
    call tokenStateAddress.0xb46310f6 with:
         gas gas_remaining wei
        args address(arg2), 2 * ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if uint8(stor5.field_160):
        revert with 0, 'Reverted to prevent reentrancy'
    uint8(stor5.field_160) = 1
    if ext_code.size(arg2) > 0:
        mem[ceil32(arg4.length) + 292 len ceil32(arg4.length)] = arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]
        if not arg4.length % 32:
            mem[arg4.length + ceil32(arg4.length) + 292 len floor32(arg4.length + 163)] = unknown_0xc0ee0b8a(?????), address(arg1) << 64, 0, ext_call.return_data[0], 96, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 292 len floor32(arg4.length + 163) + -ceil32(arg4.length) - 132]
            if not arg4.length + 132 % 32:
                call arg2.mem[arg4.length + ceil32(arg4.length) + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[arg4.length + ceil32(arg4.length) + 296 len arg4.length + 128]
            else:
                mem[floor32(arg4.length + 132) + arg4.length + ceil32(arg4.length) + 292] = mem[floor32(arg4.length + 132) + arg4.length + ceil32(arg4.length) + -(arg4.length + 132 % 32) + 324 len arg4.length + 132 % 32]
                call arg2.mem[arg4.length + ceil32(arg4.length) + 292 len 4] with:
                     gas gas_remaining wei
                    args mem[arg4.length + ceil32(arg4.length) + 296 len floor32(arg4.length + 132) + 28]
        else:
            mem[floor32(arg4.length) + ceil32(arg4.length) + 292] = mem[floor32(arg4.length) + ceil32(arg4.length) + -(arg4.length % 32) + 324 len arg4.length % 32]
            mem[floor32(arg4.length) + ceil32(arg4.length) + 324 len floor32(floor32(arg4.length) + 195)] = unknown_0xc0ee0b8a(?????), address(arg1) << 64, 0, ext_call.return_data[0], 96, arg4.length, Mask(8 * ceil32(arg4.length), -(8 * ceil32(arg4.length)) + 256, arg4[all], mem[arg4.length + 128 len ceil32(arg4.length) - arg4.length]) << (8 * ceil32(arg4.length)) - 256, mem[(2 * ceil32(arg4.length)) + 292 len floor32(floor32(arg4.length) + 195) + -ceil32(arg4.length) - 132]
            if not floor32(arg4.length) + 164 % 32:
                call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 324 len 4] with:
                     gas gas_remaining wei
                    args mem[floor32(arg4.length) + ceil32(arg4.length) + 328 len (2 * floor32(arg4.length)) + 160]
            else:
                mem[floor32(floor32(arg4.length) + 164) + floor32(arg4.length) + ceil32(arg4.length) + 324] = mem[floor32(floor32(arg4.length) + 164) + floor32(arg4.length) + ceil32(arg4.length) + -(floor32(arg4.length) + 164 % 32) + 356 len floor32(arg4.length) + 164 % 32]
                call arg2.mem[floor32(arg4.length) + ceil32(arg4.length) + 324 len 4] with:
                     gas gas_remaining wei
                    args mem[floor32(arg4.length) + ceil32(arg4.length) + 328 len floor32(floor32(arg4.length) + 164) + 28]
    uint8(stor5.field_160) = 0
    require ext_code.size(proxyAddress)
    call proxyAddress.0x907dff97 with:
         gas gas_remaining wei
        args 192, 3, sha3('Transfer(address,address,uint256', ')'), address(arg1), address(arg2), 0, 32, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return 1
}



}
