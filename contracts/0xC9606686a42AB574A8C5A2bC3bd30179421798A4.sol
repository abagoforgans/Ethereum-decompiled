contract main {




// =====================  Runtime code  =====================


const getCurrentDay = (block.timestamp / 24 * 3600)


address sub_f79621bdAddress;
uint256 gasPrice;
uint256 requiredBlockConfirmations;
uint256 deployedAtBlock;
uint256 transferFee;
mapping of uint256 minPerTx;
mapping of uint256 maxPerTx;
mapping of uint256 dailyLimit;
mapping of uint256 totalSpentPerDay;
uint8 stor9;
mapping of uint8 stor10;

function maxPerTx(address arg1) {
    return maxPerTx[arg1]
}

function initialized() {
    return bool(stor9)
}

function transfers(bytes32 arg1) {
    return bool(stor10[arg1])
}

function requiredBlockConfirmations() {
    return requiredBlockConfirmations
}

function validatorContract() {
    return sub_f79621bdAddress
}

function deployedAtBlock() {
    return deployedAtBlock
}

function minPerTx(address arg1) {
    return minPerTx[arg1]
}

function totalSpentPerDay(address arg1, uint256 arg2) {
    return totalSpentPerDay[arg1][arg2]
}

function transferFee() {
    return transferFee
}

function dailyLimit(address arg1) {
    return dailyLimit[arg1]
}

function sub_f79621bd(?) {
    return sub_f79621bdAddress
}

function gasPrice() {
    return gasPrice
}

function _fallback() payable {
    revert
}

function requiredSignatures() {
    require ext_code.size(sub_f79621bdAddress)
    call sub_f79621bdAddress.0x8d068043 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setDailyLimit(address arg1, uint256 arg2) {
    require ext_code.size(sub_f79621bdAddress)
    call sub_f79621bdAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender is not owner'
    dailyLimit[address(arg1)] = arg2
    emit 0x4550d264: address(arg1), arg2
}

function setGasPrice(uint256 arg1) {
    require ext_code.size(sub_f79621bdAddress)
    call sub_f79621bdAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender is not owner'
    if arg1 <= 0:
        revert with 0, 'Error setting gasPrice'
    gasPrice = arg1
    emit GasPriceChanged(arg1);
}

function setMaxPerTx(address arg1, uint256 arg2) {
    require ext_code.size(sub_f79621bdAddress)
    call sub_f79621bdAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender is not owner'
    if arg2 >= dailyLimit[address(arg1)]:
        revert with 0, 'Error setting maxPerTx'
    maxPerTx[address(arg1)] = arg2
}

function withinLimit(address arg1, uint256 arg2) {
    require totalSpentPerDay[address(arg1)][block.timestamp / 24 * 3600] + arg2 >= totalSpentPerDay[address(arg1)][block.timestamp / 24 * 3600]
    if dailyLimit[address(arg1)] < totalSpentPerDay[address(arg1)][block.timestamp / 24 * 3600] + arg2:
        return dailyLimit[address(arg1)] >= totalSpentPerDay[address(arg1)][block.timestamp / 24 * 3600] + arg2
    if arg2 > maxPerTx[address(arg1)]:
        return arg2 <= maxPerTx[address(arg1)]
    return arg2 >= minPerTx[address(arg1)]
}

function setRequiredBlockConfirmations(uint256 arg1) {
    require ext_code.size(sub_f79621bdAddress)
    call sub_f79621bdAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender is not owner'
    if arg1 <= 0:
        revert with 0, 'Error setting blockConfirmations'
    requiredBlockConfirmations = arg1
    emit RequiredBlockConfirmationChanged(arg1);
}

function setTransferFee(address arg1, uint256 arg2) {
    require ext_code.size(sub_f79621bdAddress)
    call sub_f79621bdAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender is not owner'
    if arg2 > minPerTx[address(arg1)]:
        revert with 0, 'Error setting transferFee'
    if arg2 < 0:
        revert with 0, 'Error setting transferFee'
    transferFee = arg2
}

function setMinPerTx(address arg1, uint256 arg2) {
    require ext_code.size(sub_f79621bdAddress)
    call sub_f79621bdAddress.0x8da5cb5b with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != msg.sender:
        revert with 0, 'Sender is not owner'
    if arg2 >= dailyLimit[address(arg1)]:
        revert with 0, 'Error setting minPerTx'
    if arg2 >= maxPerTx[address(arg1)]:
        revert with 0, 'Error setting minPerTx'
    minPerTx[address(arg1)] = arg2
}

function sub_e8af6f33(?) payable {
    require totalSpentPerDay[0][block.timestamp / 24 * 3600] + msg.value >= totalSpentPerDay[0][block.timestamp / 24 * 3600]
    if dailyLimit[0] < totalSpentPerDay[0][block.timestamp / 24 * 3600] + msg.value:
        revert with 0, 'Transfer exceeds limit'
    if msg.value > maxPerTx[0]:
        revert with 0, 'Transfer exceeds limit'
    if msg.value < minPerTx[0]:
        revert with 0, 'Transfer exceeds limit'
    require totalSpentPerDay[0][block.timestamp / 24 * 3600] + msg.value >= totalSpentPerDay[0][block.timestamp / 24 * 3600]
    totalSpentPerDay[0][block.timestamp / 24 * 3600] += msg.value
    emit 0x5bec2cae: address(arg1), msg.value
    emit 0x0: address(arg1), msg.value
}

function initialize(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, uint256 arg7) {
    require not stor9
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Validator contract address cannot be 0x0'
    if arg4 <= 0:
        revert with 0, 'Tx limits initialization error'
    if arg3 <= arg4:
        revert with 0, 'Tx limits initialization error'
    if arg2 <= arg3:
        revert with 0, 'Tx limits initialization error'
    if arg5 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ForeignGasPrice should be greater than 0'
    if arg7 > arg4:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TransferFee should be <= minPerTx & >= 0'
    if arg7 < 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TransferFee should be <= minPerTx & >= 0'
    sub_f79621bdAddress = arg1
    deployedAtBlock = block.number
    dailyLimit[0] = arg2
    maxPerTx[0] = arg3
    minPerTx[0] = arg4
    gasPrice = arg5
    requiredBlockConfirmations = arg6
    transferFee = arg7
    stor9 = 1
}

function sub_9ed732b0(?) {
    require totalSpentPerDay[address(arg1)][block.timestamp / 24 * 3600] + arg3 >= totalSpentPerDay[address(arg1)][block.timestamp / 24 * 3600]
    if dailyLimit[address(arg1)] < totalSpentPerDay[address(arg1)][block.timestamp / 24 * 3600] + arg3:
        revert with 0, 'Transfer exceeds limit'
    if arg3 > maxPerTx[address(arg1)]:
        revert with 0, 'Transfer exceeds limit'
    if arg3 < minPerTx[address(arg1)]:
        revert with 0, 'Transfer exceeds limit'
    require totalSpentPerDay[address(arg1)][block.timestamp / 24 * 3600] + arg3 >= totalSpentPerDay[address(arg1)][block.timestamp / 24 * 3600]
    totalSpentPerDay[address(arg1)][block.timestamp / 24 * 3600] += arg3
    require ext_code.size(arg1)
    call arg1.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TransferFrom failed for ERC20 Token'
    emit 0x5bec2cae: address(arg2), arg3, arg1
}

function sub_69e7ff8e(?) {
    mem[96] = arg4.length
    mem[128 len arg4.length] = arg4[all]
    mem[ceil32(arg4.length) + 128] = arg1.length
    mem[ceil32(arg4.length) + 160 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[ceil32(arg4.length) + (32 * arg1.length) + 160] = arg2.length
    mem[ceil32(arg4.length) + (32 * arg1.length) + 192 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + 192] = arg3.length
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + 224 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if arg4.length != 104:
        revert with 0, 'Invalid message format'
    require ext_code.size(sub_f79621bdAddress)
    call sub_f79621bdAddress.0x8d068043 with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if arg1.length < ext_call.return_data[0]:
        revert with 0, 'Num of signatures in message is less than requiredSignatures'
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 224] = 26
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 256] = 0x19457468657265756d205369676e6564204d6573736167653a0a000000000000
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 288] = 3
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 320] = '104'
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 384 len 0] = None
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 390 len 20] = 0x65756d205369676e6564204d6573736167653a0a
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 410 len 0] = None
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 439 len 3] = '104' % 16777216
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 410 len 29] = 0, mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 416 len 23]
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 413 len floor32(arg4.length)] = call.data[arg4 + 36 len floor32(arg4.length)]
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg4.length) + -(arg4.length % 32) + 445 len arg4.length % 32] = mem[floor32(arg4.length) + -(arg4.length % 32) + 160 len arg4.length % 32]
    mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 352] = arg4.length + 29
    mem[arg4.length + ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 413 len floor32(arg4.length + 29)] = mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 384 len floor32(arg4.length + 29)]
    mem[arg4.length + ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg4.length + 29) + -(arg4.length + 29 % 32) + 445 len arg4.length + 29 % 32] = mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg4.length + 29) + -(arg4.length + 29 % 32) + 416 len arg4.length + 29 % 32]
    _610 = sha3(mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 384 len floor32(arg4.length + 29)], mem[arg4.length + ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg4.length + 29) + 413 len -(arg4.length + 29 % 32) + 32], mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg4.length + 29) + -(arg4.length + 29 % 32) + 416 len arg4.length + -floor32(arg4.length + 29) + (arg4.length + 29 % 32) - 3])
    mem[arg4.length + ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 413] = ext_call.return_data[0]
    mem[64] = arg4.length + ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + (32 * ext_call.return_data[0]) + 445
    if not ext_call.return_data[0]:
        s = 0
        idx = 0
        while idx < ext_call.return_data[0]:
            require idx < mem[ceil32(arg4.length) + 128]
            _746 = mem[(32 * idx) + ceil32(arg4.length) + 160]
            require idx < mem[ceil32(arg4.length) + (32 * arg1.length) + 160]
            _751 = mem[(32 * idx) + ceil32(arg4.length) + (32 * arg1.length) + 192]
            require idx < mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + 192]
            _755 = mem[(32 * idx) + ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + 224]
            _756 = mem[64]
            mem[64] = mem[64] + 32
            mem[_756 + 64] = mem[(32 * idx) + ceil32(arg4.length) + 191 len 1]
            mem[_756 + 96] = _751
            mem[_756 + 128] = _755
            signer = erecover(_610, _746 << 248, _751, _755) 
            mem[_756] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_756 + 36] = address(signer)
            require ext_code.size(sub_f79621bdAddress)
            call sub_f79621bdAddress.0xfacd743b with:
                 gas gas_remaining wei
                args address(signer)
            mem[_756 + 32] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Signer of message is not a validator'
            s = 0
            while s < mem[arg4.length + ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 413]:
                require s < mem[arg4.length + ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 413]
                require mem[(32 * s) + arg4.length + ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 457 len 20] != address(signer)
                s = s + 1
                continue 
            require idx < mem[arg4.length + ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 413]
            mem[(32 * idx) + arg4.length + ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 445] = address(signer)
            s = signer
            idx = idx + 1
            continue 
        _745 = mem[64]
        mem[64] = mem[64] + ceil32(arg4.length) + 32
        mem[_745 + 32 len arg4.length] = arg4[all]
        if arg4.length != 104:
            revert with 0, 'Incorrect message format'
        _775 = Mask(96, 0, arg4.length), mem[_745 + 32 len 20]
        _776 = mem[_745 + 40]
        _777 = mem[_745 + 72]
        _778 = mem[_745 + 104]
        mem[0] = mem[_745 + 104]
        if stor10[mem[0]]:
            revert with 0, 'Transfer already processed'
        stor10[_778] = 1
        require transferFee <= _777
        if not address(_775):
            call sub_f79621bdAddress with:
               value transferFee wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(_775))
            call address(_775).0xa9059cbb with:
                 gas gas_remaining wei
                args sub_f79621bdAddress, transferFee
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed for ERC20 token'
        if not address(_775):
            call address(_776) with:
               value _777 - transferFee wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(_775))
            call address(_775).0xa9059cbb with:
                 gas gas_remaining wei
                args address(_776), _777 - transferFee
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed for ERC20 token'
        emit 0xd5461ec5: address(_776), _777 - transferFee, address(_775), _778
    else:
        mem[arg4.length + ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 445 len 32 * ext_call.return_data[0]] = code.data[12034 len 32 * ext_call.return_data[0]]
        s = 0
        idx = 0
        while idx < ext_call.return_data[0]:
            require idx < mem[ceil32(arg4.length) + 128]
            _749 = mem[(32 * idx) + ceil32(arg4.length) + 160]
            require idx < mem[ceil32(arg4.length) + (32 * arg1.length) + 160]
            _753 = mem[(32 * idx) + ceil32(arg4.length) + (32 * arg1.length) + 192]
            require idx < mem[ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + 192]
            _759 = mem[(32 * idx) + ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + 224]
            _760 = mem[64]
            mem[64] = mem[64] + 32
            mem[_760 + 64] = mem[(32 * idx) + ceil32(arg4.length) + 191 len 1]
            mem[_760 + 96] = _753
            mem[_760 + 128] = _759
            signer = erecover(_610, _749 << 248, _753, _759) 
            mem[_760] = signer
            if not erecover.result:
                revert with ext_call.return_data[0 len return_data.size]
            mem[_760 + 36] = address(signer)
            require ext_code.size(sub_f79621bdAddress)
            call sub_f79621bdAddress.0xfacd743b with:
                 gas gas_remaining wei
                args address(signer)
            mem[_760 + 32] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Signer of message is not a validator'
            s = 0
            while s < mem[arg4.length + ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 413]:
                require s < mem[arg4.length + ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 413]
                require mem[(32 * s) + arg4.length + ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 457 len 20] != address(signer)
                s = s + 1
                continue 
            require idx < mem[arg4.length + ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 413]
            mem[(32 * idx) + arg4.length + ceil32(arg4.length) + (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 445] = address(signer)
            s = signer
            idx = idx + 1
            continue 
        _748 = mem[64]
        mem[64] = mem[64] + ceil32(arg4.length) + 32
        mem[_748 + 32 len arg4.length] = arg4[all]
        if arg4.length != 104:
            revert with 0, 'Incorrect message format'
        _782 = Mask(96, 0, arg4.length), mem[_748 + 32 len 20]
        _783 = mem[_748 + 40]
        _784 = mem[_748 + 72]
        _785 = mem[_748 + 104]
        mem[0] = mem[_748 + 104]
        if stor10[mem[0]]:
            revert with 0, 'Transfer already processed'
        stor10[_785] = 1
        require transferFee <= _784
        if not address(_782):
            call sub_f79621bdAddress with:
               value transferFee wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(_782))
            call address(_782).0xa9059cbb with:
                 gas gas_remaining wei
                args sub_f79621bdAddress, transferFee
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed for ERC20 token'
        if not address(_782):
            call address(_783) with:
               value _784 - transferFee wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        else:
            require ext_code.size(address(_782))
            call address(_782).0xa9059cbb with:
                 gas gas_remaining wei
                args address(_783), _784 - transferFee
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'Transfer failed for ERC20 token'
        emit 0xd5461ec5: address(_783), _784 - transferFee, address(_782), _785
}



}
