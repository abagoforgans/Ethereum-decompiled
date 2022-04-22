contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor4;
address stor6;
mapping of uint8 stor8;
array of address stor11;

function _fallback() payable {
    stor4 = 4
    require not msg.value
    stor0 = msg.sender
    stor6 = code.data[6567 len 20]
    stor8[code.data[6503 len 20]] = 1
    stor11.length++
    if not stor11.length <= stor11.length + 1:
        idx = stor11.length + 1
        while stor11.length > idx:
            uint256(stor11[idx]) = 0
            idx = idx + 1
            continue 
    address(stor11[stor11.length]) = code.data[6535 len 20]
    return code.data[298 len 6193]
}



// =====================  Runtime code  =====================


address owner;
uint256 playerBalance;
mapping of uint256 balanceOf;
mapping of uint256 withdrawAfter;
uint8 stor4;
uint256 stor4; offset 8
uint256 gasPrice;
mapping of struct avgGas;
address stor6;
uint256 closeAt;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint8 lockedByUser;
array of address casinoGames;
mapping of uint256 count;

function count(address arg1) {
    return count[arg1]
}

function lockedByUser(address arg1, address arg2) {
    return lockedByUser[arg1][arg2]
}

function authorizedByUser(address arg1, address arg2) {
    return bool(stor9[arg1][arg2])
}

function withdrawAfter(address arg1) {
    return withdrawAfter[arg1]
}

function playerBalance() {
    return playerBalance
}

function avgGas(address arg1) {
    return avgGas[arg1].field_0
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

function authorized(address arg1) {
    return bool(stor8[arg1])
}

function casinoGames(uint256 arg1) {
    require arg1 < casinoGames.length
    return address(casinoGames[arg1])
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

function requestWithdrawal() {
    withdrawAfter[address(msg.sender)] = block.timestamp + 420
}

function authorize(address arg1) {
    require owner == msg.sender
    stor8[address(arg1)] = 1
}

function deauthorize(address arg1) {
    require owner == msg.sender
    stor8[address(arg1)] = 0
}

function setGasPrice(uint8 arg1) {
    require owner == msg.sender
    uint8(stor4.field_0) = arg1
    Mask(248, 0, stor4.field_8) = 0
}

function setAvgGas(uint8 arg1, uint16 arg2) {
    require owner == msg.sender
    require arg1 < casinoGames.length
    avgGas[address(stor11[arg1])].field_0 = arg2
    avgGas[address(stor11[arg1])].field_16 = 0
}

function bankroll() {
    require ext_code.size(stor6)
    call stor6.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require playerBalance / 10000 <= ext_call.return_data[0]
    return (ext_call.return_data[0] - (playerBalance / 10000))
}

function authorizeCasino(address arg1, address arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    signer = erecover(sha3(arg2, lockedByUser[address(arg1)][address(arg2)], 1), arg3 << 248, arg4, arg5) 
    require erecover.result
    require arg1 == address(signer)
    stor9[address(signer)][address(arg2)] = 1
}

function deauthorizeCasino(address arg1, address arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    signer = erecover(sha3(arg2, lockedByUser[address(arg1)][address(arg2)], 0), arg3 << 248, arg4, arg5) 
    require erecover.result
    require arg1 == address(signer)
    stor9[address(signer)][address(arg2)] = 0
    lockedByUser[address(signer)][address(arg2)] = uint8(lockedByUser[address(signer)][address(arg2)] + 1)
}

function setGameAddress(uint8 arg1, address arg2) {
    require owner == msg.sender
    if arg1 < casinoGames.length:
        address(casinoGames[arg1]) = arg2
    else:
        casinoGames.length++
        if not casinoGames.length <= casinoGames.length + 1:
            idx = casinoGames.length + 1
            while casinoGames.length > idx:
                uint256(casinoGames[idx]) = 0
                idx = idx + 1
                continue 
        address(casinoGames[casinoGames.length]) = arg2
}

function withdrawBankroll(uint256 arg1) {
    require owner == msg.sender
    require ext_code.size(stor6)
    call stor6.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require playerBalance / 10000 <= ext_call.return_data[0]
    require arg1 <= ext_call.return_data[0] - (playerBalance / 10000)
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
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
        require 10000 * arg1 / arg1 == 10000
    require 10000 * arg1 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] += -10000 * arg1
    require 10000 * arg1 <= playerBalance
    playerBalance += -10000 * arg1
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[0]
    emit Withdrawal(msg.sender, msg.sender, arg1);
}

function withdrawFor(address arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    require stor8[address(msg.sender)]
    if closeAt > 0:
        closeAt = block.timestamp + (720 * 24 * 3600)
    signer = erecover(sha3(arg1, arg2, count[address(arg1)]), arg3 << 248, arg4, arg5) 
    require erecover.result
    count[address(arg1)]++
    if arg2:
        require arg2
        require 10000 * arg2 / arg2 == 10000
    require (gas_remaining / 1000 * gasPrice) + (10000 * arg2) >= 10000 * arg2
    require (gas_remaining / 1000 * gasPrice) + (10000 * arg2) >= gas_remaining / 1000 * gasPrice
    require (gas_remaining / 1000 * gasPrice) + (10000 * arg2) <= balanceOf[address(signer)]
    balanceOf[address(signer)] = balanceOf[address(signer)] - (gas_remaining / 1000 * gasPrice) - (10000 * arg2)
    require (gas_remaining / 1000 * gasPrice) + (10000 * arg2) <= playerBalance
    playerBalance = playerBalance - (gas_remaining / 1000 * gasPrice) - (10000 * arg2)
    require ext_code.size(stor6)
    call stor6.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args address(arg1), arg2
    require ext_call.success
    require ext_call.return_data[0]
    emit Withdrawal(address(signer), address(arg1), arg2);
}

function shift(address arg1, uint256 arg2, bool arg3) {
    require 0 < casinoGames.length
    idx = 0
    while address(casinoGames[idx]) != msg.sender:
        require idx + 1 < casinoGames.length
        mem[0] = 11
        idx = idx + 1
        continue 
    require stor9[address(arg1)][address(msg.sender)]
    if not arg3:
        require (avgGas[address(msg.sender)].field_0 * gasPrice) + arg2 >= arg2
        require (avgGas[address(msg.sender)].field_0 * gasPrice) + arg2 >= avgGas[address(msg.sender)].field_0 * gasPrice
        require (avgGas[address(msg.sender)].field_0 * gasPrice) + arg2 <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = balanceOf[address(arg1)] - (avgGas[address(msg.sender)].field_0 * gasPrice) - arg2
        require (avgGas[address(msg.sender)].field_0 * gasPrice) + arg2 <= playerBalance
        playerBalance = playerBalance - (avgGas[address(msg.sender)].field_0 * gasPrice) - arg2
    else:
        require avgGas[address(msg.sender)].field_0 * gasPrice <= arg2
        require arg2 - (avgGas[address(msg.sender)].field_0 * gasPrice) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] >= 0
        balanceOf[address(arg1)] = arg2 - (avgGas[address(msg.sender)].field_0 * gasPrice) + balanceOf[address(arg1)]
        require arg2 - (avgGas[address(msg.sender)].field_0 * gasPrice) + playerBalance >= playerBalance
        require playerBalance >= 0
        playerBalance = arg2 - (avgGas[address(msg.sender)].field_0 * gasPrice) + playerBalance
}

function deposit(address arg1, uint256 arg2, bool arg3) {
    require not closeAt
    require arg2 > 0
    if arg2:
        require arg2
        require 10000 * arg2 / arg2 == 10000
    if not arg3:
        require ext_code.size(stor6)
        call stor6.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(this.address), arg2
        require ext_call.success
        require ext_call.return_data[0]
        require (10000 * arg2) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require (10000 * arg2) + balanceOf[address(arg1)] >= 10000 * arg2
        balanceOf[address(arg1)] += 10000 * arg2
        require (10000 * arg2) + playerBalance >= playerBalance
        require (10000 * arg2) + playerBalance >= 10000 * arg2
        playerBalance += 10000 * arg2
    else:
        require gas_remaining / 1000 * gasPrice <= 10000 * arg2
        require ext_code.size(stor6)
        call stor6.0x23b872dd with:
             gas gas_remaining - 710 wei
            args msg.sender, address(this.address), arg2
        require ext_call.success
        require ext_call.return_data[0]
        require (10000 * arg2) - (gas_remaining / 1000 * gasPrice) + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] >= 0
        balanceOf[address(arg1)] = (10000 * arg2) - (gas_remaining / 1000 * gasPrice) + balanceOf[address(arg1)]
        require (10000 * arg2) - (gas_remaining / 1000 * gasPrice) + playerBalance >= playerBalance
        require playerBalance >= 0
        playerBalance = (10000 * arg2) - (gas_remaining / 1000 * gasPrice) + playerBalance
    emit Deposit(address(arg1), arg2, arg3);
}

function move(uint8 arg1, bytes arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    mem[128 len arg2.length] = arg2[all]
    require stor8[address(msg.sender)]
    require not closeAt
    require arg1 < casinoGames.length
    mem[ceil32(arg2.length) + 128 len floor32(arg2.length)] = call.data[arg2 + 36 len floor32(arg2.length)]
    mem[ceil32(arg2.length) + floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32] = mem[floor32(arg2.length) + -(arg2.length % 32) + 160 len arg2.length % 32]
    _33 = sha3(call.data[arg2 + 36 len floor32(arg2.length)], mem[ceil32(arg2.length) + floor32(arg2.length) + 128 len arg2.length % 32])
    mem[ceil32(arg2.length) + 224] = arg4
    mem[ceil32(arg2.length) + 256] = arg5
    signer = erecover(_33, arg3 << 248, arg4, arg5) 
    mem[ceil32(arg2.length) + 128] = signer
    require erecover.result
    if withdrawAfter[address(signer)]:
        require block.timestamp < withdrawAfter[address(signer)]
    mem[ceil32(arg2.length) + 160] = 0
    mem[ceil32(arg2.length) + 212] = signer xor 0x140000000000000000000000000000000000000000
    idx = 0
    while uint8(idx) < 20:
        require uint8(idx) < uint8(arg3) << 152, Mask(96, 160, signer xor 0x140000000000000000000000000000000000000000) >> 160
        require uint8(idx + 16) < arg2.length
        require Mask(8, 248, mem[uint8(idx + 16) + 128]) == Mask(8, 248, mem[uint8(idx) + ceil32(arg2.length) + 224])
        idx = idx + 1
        continue 
    if arg1 < casinoGames.length:
        mem[ceil32(arg2.length) + 244 len ceil32(arg2.length)] = arg2[all], mem[arg2.length + 128 len ceil32(arg2.length) - arg2.length]
        if not arg2.length % 32:
            call address(casinoGames[arg1]).mem[ceil32(arg2.length) + 244 len 4] with:
                 gas gas_remaining - 25710 wei
                args mem[ceil32(arg2.length) + 248 len arg2.length - 4]
        else:
            mem[floor32(arg2.length) + ceil32(arg2.length) + 244] = mem[floor32(arg2.length) + ceil32(arg2.length) + -(arg2.length % 32) + 276 len arg2.length % 32]
            call address(casinoGames[arg1]).mem[ceil32(arg2.length) + 244 len 4] with:
                 gas gas_remaining - 25710 wei
                args mem[ceil32(arg2.length) + 248 len floor32(arg2.length) + 28]
        if ext_call.success:
    revert
}



}
