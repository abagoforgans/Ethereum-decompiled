contract main {


// =======================  Init code  ======================


address stor0;
uint8 stor2;
uint256 stor2; offset 8
mapping of uint256 stor3;
address stor7;
uint256 stor8;
uint256 stor9;
mapping of uint8 stor10;

function _fallback() {
    mem[352 len 64] = 0
    stor0 = msg.sender
    stor7 = address(code.data[6856 len 32])
    stor8 = code.data[6888 len 32]
    stor9 = 5400
    stor10[address(code.data[6824 len 32])] = 1
    mem[416] = 0x3edd112800000000000000000000000000000000000000000000000000000000
    mem[448] = 0x9607610a00000000000000000000000000000000000000000000000000000000
    mem[480] = 0x713d30c600000000000000000000000000000000000000000000000000000000
    mem[512] = 85
    mem[544] = 95
    mem[576] = 60
    idx = 0
    while uint8(idx) < 3:
        mem[0] = Mask(32, 224, mem[(32 * uint8(idx)) + 416])
        mem[32] = 3
        stor3[Mask(32, 224, mem[(32 * uint8(idx)) + 416])] = mem[(32 * uint8(idx)) + 512]
        idx = idx + 1
        continue 
    require stor0 == msg.sender
    uint8(stor2.field_0) = uint8(code.data[6920 len 32])
    Mask(248, 0, stor2.field_8) = 0
    return code.data[642 len 6182]
}



// =====================  Runtime code  =====================


address owner;
uint256 closeAt;
uint8 stor2;
uint256 stor2; offset 8
uint256 gasPrice;
mapping of uint256 gasPerTx;
uint256 playerBalance;
mapping of uint256 balanceOf;
mapping of uint256 withdrawAfter;
address stor7;
uint256 maxDeposit;
uint256 waitingTime;
mapping of uint8 stor10;
mapping of uint256 withdrawCount;
mapping of struct lastState;

function lastState(address arg1) {
    return lastState[arg1].field_0, 
           ('signextend', 15, ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('param', 'arg1'), ('name', 'lastState', 12)))))))
}

function withdrawAfter(address arg1) {
    return withdrawAfter[arg1]
}

function withdrawCount(address arg1) {
    return withdrawCount[arg1]
}

function maxDeposit() {
    return maxDeposit
}

function playerBalance() {
    return playerBalance
}

function balanceOf(address arg1) {
    return balanceOf[arg1]
}

function owner() {
    return owner
}

function closeAt() {
    return closeAt
}

function waitingTime() {
    return waitingTime
}

function gasPerTx(bytes4 arg1) {
    return gasPerTx[Mask(32, 224, arg1)]
}

function authorized(address arg1) {
    return bool(stor10[arg1])
}

function gasPrice() {
    return gasPrice
}

function close() {
    require owner == msg.sender
    if not playerBalance:
        selfdestruct(owner)
    if closeAt:
        if closeAt >= block.timestamp:
        selfdestruct(owner)
    closeAt = block.timestamp + (720 * 24 * 3600)
}

function _fallback() payable {
    revert
}

function open() {
    require owner == msg.sender
    closeAt = 0
}

function cancelWithdrawalRequest() {
    withdrawAfter[address(msg.sender)] = 0
}

function changeOwner(address arg1) {
    require owner == msg.sender
    owner = arg1
}

function setMaxDeposit(uint256 arg1) {
    require owner == msg.sender
    maxDeposit = arg1
}

function authorize(address arg1) {
    require owner == msg.sender
    stor10[address(arg1)] = 1
}

function deauthorize(address arg1) {
    require owner == msg.sender
    stor10[address(arg1)] = 0
}

function requestWithdrawal() {
    withdrawAfter[address(msg.sender)] = waitingTime + block.timestamp
}

function setWaitingTime(uint256 arg1) {
    require owner == msg.sender
    require arg1 <= 24 * 3600
    waitingTime = arg1
}

function setGasPrice(uint8 arg1) {
    require owner == msg.sender
    uint8(stor2.field_0) = arg1
    Mask(248, 0, stor2.field_8) = 0
}

function bankroll() {
    require ext_code.size(stor7)
    call stor7.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require playerBalance / 100000 <= ext_call.return_data[0]
    return (ext_call.return_data[0] - (playerBalance / 100000))
}

function withdrawBankroll(uint256 arg1) {
    require owner == msg.sender
    require ext_code.size(stor7)
    call stor7.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require playerBalance / 100000 <= ext_call.return_data[0]
    require arg1 <= ext_call.return_data[0] - (playerBalance / 100000)
    require ext_code.size(stor7)
    call stor7.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args owner, arg1
    require ext_call.success
    require ext_call.return_data[0]
}

function withdraw(uint256 arg1) {
    if closeAt > 0:
        closeAt = block.timestamp + (720 * 24 * 3600)
    require withdrawAfter[address(msg.sender)] > 0
    require block.timestamp > withdrawAfter[address(msg.sender)]
    withdrawAfter[address(msg.sender)] = 0
    if arg1:
        require arg1
        require 100000 * arg1 / arg1 == 100000
    require 100000 * arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += -100000 * arg1
    require 100000 * arg1 <= playerBalance
    playerBalance += -100000 * arg1
    require ext_code.size(stor7)
    call stor7.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[0]
    emit Withdrawal(msg.sender, msg.sender, arg1);
}

function withdrawFor(address arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    require stor10[address(msg.sender)]
    if closeAt > 0:
        closeAt = block.timestamp + (720 * 24 * 3600)
    signer = erecover(sha3(arg1, arg2, withdrawCount[address(arg1)]), arg3 << 248, arg4, arg5) 
    require erecover.result
    withdrawCount[address(arg1)]++
    if arg2:
        require arg2
        require 100000 * arg2 / arg2 == 100000
    if gasPerTx[call.func_hash]:
        require gasPerTx[call.func_hash]
        require gasPrice * gasPerTx[call.func_hash] / gasPerTx[call.func_hash] == gasPrice
    if gasPrice * gasPerTx[call.func_hash]:
        require gasPrice * gasPerTx[call.func_hash]
        require block.gasprice * gasPrice * gasPerTx[call.func_hash] / gasPrice * gasPerTx[call.func_hash] == block.gasprice
    require (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) + (100000 * arg2) >= 100000 * arg2
    require (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) + (100000 * arg2) >= block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9
    require (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) + (100000 * arg2) <= balanceOf[address(signer)]
    balanceOf[address(signer)] = balanceOf[address(signer)] - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) - (100000 * arg2)
    require (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) + (100000 * arg2) <= playerBalance
    playerBalance = playerBalance - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) - (100000 * arg2)
    require ext_code.size(stor7)
    call stor7.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit Withdrawal(address(signer), address(arg1), arg2);
}

function deposit(address arg1, uint256 arg2, bool arg3) {
    require not closeAt
    require arg2 > 0
    if arg2:
        require arg2
        require 100000 * arg2 / arg2 == 100000
    if not arg3:
        require (100000 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require (100000 * arg2) + balanceOf[address(arg1)] >= 100000 * arg2
        require (100000 * arg2) + balanceOf[address(arg1)] <= maxDeposit
        require ext_code.size(stor7)
        call stor7.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(this.address), arg2
        require ext_call.success
        require ext_call.return_data[0]
        balanceOf[address(arg1)] += 100000 * arg2
        require (100000 * arg2) + playerBalance >= playerBalance
        require (100000 * arg2) + playerBalance >= 100000 * arg2
        playerBalance += 100000 * arg2
    else:
        if gasPerTx[call.func_hash]:
            require gasPerTx[call.func_hash]
            require gasPrice * gasPerTx[call.func_hash] / gasPerTx[call.func_hash] == gasPrice
        if gasPrice * gasPerTx[call.func_hash]:
            require gasPrice * gasPerTx[call.func_hash]
            require block.gasprice * gasPrice * gasPerTx[call.func_hash] / gasPrice * gasPerTx[call.func_hash] == block.gasprice
        require block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9 <= 100000 * arg2
        require (100000 * arg2) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] >= 0
        require (100000 * arg2) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) + balanceOf[address(arg1)] <= maxDeposit
        require ext_code.size(stor7)
        call stor7.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(this.address), arg2
        require ext_call.success
        require ext_call.return_data[0]
        balanceOf[address(arg1)] = (100000 * arg2) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) + balanceOf[address(arg1)]
        require (100000 * arg2) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) + playerBalance >= playerBalance
        require playerBalance >= 0
        playerBalance = (100000 * arg2) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) + playerBalance
    emit Deposit(address(arg1), arg2, arg3);
}

function logGameData(bytes32[] arg1, bytes32[] arg2, int256[] arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) {
    mem[(32 * arg1.length) + (32 * arg2.length) + 192 len 32 * arg3.length] = call.data[arg3 + 36 len 32 * arg3.length]
    if not stor10[address(msg.sender)]:
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 352 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 352] = arg2.length
        mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 384 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[(64 * arg2.length) + (64 * arg1.length) + (32 * arg3.length) + 384] = arg3.length
        mem[(64 * arg2.length) + (64 * arg1.length) + (32 * arg3.length) + 416 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        emit GameData(msg.sender, Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 352 len (32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + -floor32(arg1.length) + 64]), (32 * arg1.length) + 160, (32 * arg2.length) + (32 * arg1.length) + 192);
        if msg.sender != msg.sender:
            require (57 * gasPrice) + (768 * arg1.length / 1000 * gasPrice) <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (57 * gasPrice) - (768 * arg1.length / 1000 * gasPrice)
            require (57 * gasPrice) + (768 * arg1.length / 1000 * gasPrice) <= playerBalance
            playerBalance = playerBalance - (57 * gasPrice) - (768 * arg1.length / 1000 * gasPrice)
    else:
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[(64 * arg2.length) + (64 * arg1.length) + (32 * arg3.length) + 192 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        signer = erecover(sha3(mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 192 len (32 * arg3.length) + (96 * arg2.length) + (96 * arg1.length)]), arg4 << 248, arg5, arg6) 
        require erecover.result
        mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 384 len floor32(arg1.length)] = call.data[arg1 + 36 len floor32(arg1.length)]
        mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 384] = arg2.length
        mem[(64 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + 416 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
        mem[(64 * arg2.length) + (64 * arg1.length) + (32 * arg3.length) + 448 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        emit GameData(address(signer), Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)], mem[(32 * arg1.length) + (32 * arg2.length) + (32 * arg3.length) + floor32(arg1.length) + 384 len (32 * arg1.length) + (32 * arg2.length) + -floor32(arg1.length) + 32], arg3.length, call.data[arg3 + 36 len floor32(arg3.length)], mem[(64 * arg1.length) + (64 * arg2.length) + (32 * arg3.length) + floor32(arg3.length) + 448 len (32 * arg3.length) - floor32(arg3.length)]), (32 * arg1.length) + 160, (32 * arg2.length) + (32 * arg1.length) + 192);
        if address(signer) != msg.sender:
            require (57 * gasPrice) + (768 * arg1.length / 1000 * gasPrice) <= balanceOf[address(signer)]
            balanceOf[address(signer)] = balanceOf[address(signer)] - (57 * gasPrice) - (768 * arg1.length / 1000 * gasPrice)
            require (57 * gasPrice) + (768 * arg1.length / 1000 * gasPrice) <= playerBalance
            playerBalance = playerBalance - (57 * gasPrice) - (768 * arg1.length / 1000 * gasPrice)
}

function updateState(int128 arg1, uint128 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    if not stor10[address(msg.sender)]:
        if msg.sender == msg.sender:
            signer = erecover(sha3(msg.sender, uint128(('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), arg2), arg3 << 248, arg4, arg5) 
            require erecover.result
            require stor10[address(signer)]
            require arg2 > lastState[address(msg.sender)].field_0
            if ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))) >= 0:
                require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))) <= ('signextend', 15, ('signextend', 15, ('param', 'arg1')))
            else:
                require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))) > ('signextend', 15, ('signextend', 15, ('param', 'arg1')))
            require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))) <= ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12))))))
            if ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))) < 0:
                require -('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12))))))) <= playerBalance
                playerBalance = playerBalance - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * ('signextend', 15, ('signextend', 15, ('param', 'arg1')))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12))))))
                require -('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12))))))) <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * ('signextend', 15, ('signextend', 15, ('param', 'arg1')))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12))))))
            else:
                require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))) + playerBalance >= playerBalance
                require playerBalance >= 0
                playerBalance = ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))) + playerBalance
                require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))) + balanceOf[address(msg.sender)]
            lastState[address(msg.sender)].field_0 = arg2
            lastState[address(msg.sender)].field_128 = uint128(('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg1')))))
            emit StateUpdate(arg2 << 128, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg1')))), ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))), 0, msg.sender, lastState[address(msg.sender)].field_0);
        else:
            if gasPerTx[call.func_hash]:
                require gasPerTx[call.func_hash]
                require gasPrice * gasPerTx[call.func_hash] / gasPerTx[call.func_hash] == gasPrice
            if gasPrice * gasPerTx[call.func_hash]:
                require gasPrice * gasPerTx[call.func_hash]
                require block.gasprice * gasPrice * gasPerTx[call.func_hash] / gasPrice * gasPerTx[call.func_hash] == block.gasprice
            require arg2 > lastState[address(msg.sender)].field_0
            if ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))) >= 0:
                require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))) <= ('signextend', 15, ('signextend', 15, ('param', 'arg1')))
            else:
                require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))) > ('signextend', 15, ('signextend', 15, ('param', 'arg1')))
            if block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9 >= 0:
                require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) <= ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12))))))
            else:
                require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) > ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12))))))
            if ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) < 0:
                require -('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12))))))) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) <= playerBalance
                playerBalance = playerBalance - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * ('signextend', 15, ('signextend', 15, ('param', 'arg1')))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9)
                require -('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12))))))) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) <= balanceOf[address(msg.sender)]
                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * ('signextend', 15, ('signextend', 15, ('param', 'arg1')))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9)
            else:
                require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) + playerBalance >= playerBalance
                require playerBalance >= 0
                playerBalance = ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) + playerBalance
                require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
                require balanceOf[address(msg.sender)] >= 0
                balanceOf[address(msg.sender)] = ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) + balanceOf[address(msg.sender)]
            lastState[address(msg.sender)].field_0 = arg2
            lastState[address(msg.sender)].field_128 = uint128(('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg1')))))
            emit StateUpdate(arg2 << 128, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg1')))), ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, 'msg.sender'), ('name', 'lastState', 12)))))), block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9, msg.sender, lastState[address(msg.sender)].field_0);
    else:
        signer = erecover(sha3(uint128(('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), arg2), arg3 << 248, arg4, arg5) 
        require erecover.result
        if address(signer) == msg.sender:
            signer = erecover(sha3(address(signer), uint128(('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg1'))))), arg2), arg3 << 248, arg4, arg5) 
            require erecover.result
            require stor10[address(signer)]
            require arg2 > lastState[address(signer)].field_0
            if ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))) >= 0:
                require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))) <= ('signextend', 15, ('signextend', 15, ('param', 'arg1')))
            else:
                require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))) > ('signextend', 15, ('signextend', 15, ('param', 'arg1')))
            require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))) <= ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12))))))
            if ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))) < 0:
                require -('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12))))))) <= playerBalance
                playerBalance = playerBalance - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * ('signextend', 15, ('signextend', 15, ('param', 'arg1')))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12))))))
                require -('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12))))))) <= balanceOf[address(signer)]
                balanceOf[address(signer)] = balanceOf[address(signer)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * ('signextend', 15, ('signextend', 15, ('param', 'arg1')))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12))))))
            else:
                require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))) + playerBalance >= playerBalance
                require playerBalance >= 0
                playerBalance = ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))) + playerBalance
                require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))) + balanceOf[address(signer)] >= balanceOf[address(signer)]
                require balanceOf[address(signer)] >= 0
                balanceOf[address(signer)] = ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))) + balanceOf[address(signer)]
            lastState[address(signer)].field_0 = arg2
            lastState[address(signer)].field_128 = uint128(('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg1')))))
            emit StateUpdate(arg2 << 128, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg1')))), ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))), 0, address(signer), lastState[address(signer)].field_0);
        else:
            if gasPerTx[call.func_hash]:
                require gasPerTx[call.func_hash]
                require gasPrice * gasPerTx[call.func_hash] / gasPerTx[call.func_hash] == gasPrice
            if gasPrice * gasPerTx[call.func_hash]:
                require gasPrice * gasPerTx[call.func_hash]
                require block.gasprice * gasPrice * gasPerTx[call.func_hash] / gasPrice * gasPerTx[call.func_hash] == block.gasprice
            require arg2 > lastState[address(signer)].field_0
            if ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))) >= 0:
                require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))) <= ('signextend', 15, ('signextend', 15, ('param', 'arg1')))
            else:
                require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))) > ('signextend', 15, ('signextend', 15, ('param', 'arg1')))
            if block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9 >= 0:
                require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) <= ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12))))))
            else:
                require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) > ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12))))))
            if ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) < 0:
                require -('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12))))))) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) <= playerBalance
                playerBalance = playerBalance - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * ('signextend', 15, ('signextend', 15, ('param', 'arg1')))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9)
                require -('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12))))))) - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) <= balanceOf[address(signer)]
                balanceOf[address(signer)] = balanceOf[address(signer)] - (0xffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff * ('signextend', 15, ('signextend', 15, ('param', 'arg1')))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9)
            else:
                require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) + playerBalance >= playerBalance
                require playerBalance >= 0
                playerBalance = ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) + playerBalance
                require ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) + balanceOf[address(signer)] >= balanceOf[address(signer)]
                require balanceOf[address(signer)] >= 0
                balanceOf[address(signer)] = ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))) - (block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9) + balanceOf[address(signer)]
            lastState[address(signer)].field_0 = arg2
            lastState[address(signer)].field_128 = uint128(('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg1')))))
            emit StateUpdate(arg2 << 128, ('signextend', 15, ('signextend', 15, ('signextend', 15, ('param', 'arg1')))), ('signextend', 15, ('signextend', 15, ('param', 'arg1'))) - ('signextend', 15, ('signextend', 15, ('field', 128, ('stor', ('map', ('mask_shl', 160, 0, 0, ('var', 'signer')), ('name', 'lastState', 12)))))), block.gasprice * gasPrice * gasPerTx[call.func_hash] / 10^9, address(signer), lastState[address(signer)].field_0);
}



}
