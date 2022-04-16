contract main {


// =======================  Init code  ======================


address stor0;
uint256 stor4;
address stor5;
mapping of uint8 stor7;
array of address stor8;

function _fallback() payable {
    stor4 = 20
    require not msg.value
    stor0 = msg.sender
    stor5 = code.data[5055 len 20]
    stor7[code.data[4991 len 20]] = 1
    stor8.length++
    if not stor8.length <= stor8.length + 1:
        idx = stor8.length + 1
        while stor8.length > idx:
            uint256(stor8[idx]) = 0
            idx = idx + 1
            continue 
    address(stor8[stor8.length]) = code.data[5023 len 20]
    return code.data[287 len 4692]
}



// =====================  Runtime code  =====================


address owner;
uint256 playerBalance;
mapping of uint256 balanceOf;
mapping of uint256 withdrawAfter;
uint8 stor4;
uint256 stor4; offset 8
uint256 gasPrice;
address stor5;
uint256 closeAt;
mapping of uint8 stor7;
array of address casinoGames;
mapping of uint256 count;

function count(address arg1) {
    return count[arg1]
}

function withdrawAfter(address arg1) {
    return withdrawAfter[arg1]
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

function authorized(address arg1) {
    return bool(stor7[arg1])
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
    stor7[address(arg1)] = 1
}

function deauthorize(address arg1) {
    require owner == msg.sender
    stor7[address(arg1)] = 0
}

function setGasPrice(uint8 arg1) {
    require owner == msg.sender
    uint8(stor4.field_0) = arg1
    Mask(248, 0, stor4.field_8) = 0
}

function bankroll() {
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require playerBalance / 10000 <= ext_call.return_data[0]
    return (ext_call.return_data[0] - (playerBalance / 10000))
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

function shift(address arg1, uint256 arg2) {
    require 0 < casinoGames.length
    idx = 0
    while address(casinoGames[idx]) != msg.sender:
        require idx + 1 < casinoGames.length
        mem[0] = 8
        idx = idx + 1
        continue 
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    require arg2 + balanceOf[address(arg1)] >= arg2
    balanceOf[address(arg1)] += arg2
    require arg2 + playerBalance >= playerBalance
    require arg2 + playerBalance >= arg2
    playerBalance += arg2
}

function withdrawBankroll(uint256 arg1) {
    require owner == msg.sender
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    require ext_call.success
    require playerBalance / 10000 <= ext_call.return_data[0]
    require arg1 <= ext_call.return_data[0] - (playerBalance / 10000)
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
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
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
         gas gas_remaining - 710 wei
        args msg.sender, arg1
    require ext_call.success
    require ext_call.return_data[0]
    emit Withdrawal(msg.sender, msg.sender, arg1);
}

function withdrawFor(address arg1, uint256 arg2, uint8 arg3, bytes32 arg4, bytes32 arg5) {
    require stor7[address(msg.sender)]
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
    require ext_code.size(stor5)
    call stor5.0xa9059cbb with:
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
        require 10000 * arg2 / arg2 == 10000
    if not arg3:
        require ext_code.size(stor5)
        call stor5.0x23b872dd with:
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
        require ext_code.size(stor5)
        call stor5.0x23b872dd with:
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

function move(uint8 arg1, uint256 arg2, bytes arg3, uint8 arg4, bytes32 arg5, bytes32 arg6) {
    mem[128 len arg3.length] = arg3[all]
    require stor7[address(msg.sender)]
    require not closeAt
    require arg1 < casinoGames.length
    mem[ceil32(arg3.length) + 160] = 0
    mem[ceil32(arg3.length) + 132] = this.address
    require ext_code.size(stor5)
    call stor5.0x70a08231 with:
         gas gas_remaining - 710 wei
        args this.address
    mem[ceil32(arg3.length) + 128] = ext_call.return_data[0]
    require ext_call.success
    require playerBalance / 10000 <= ext_call.return_data[0]
    if not ext_call.return_data[0] - (playerBalance / 10000):
        require (10000 * ext_call.return_data[0]) - (10000 * playerBalance / 10000) > 8 * arg2
        mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
        mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
        _77 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32])
        mem[ceil32(arg3.length) + 160] = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32])
        mem[ceil32(arg3.length) + 192] = arg4
        mem[ceil32(arg3.length) + 224] = arg5
        mem[ceil32(arg3.length) + 256] = arg6
        signer = erecover(_77, arg4 << 248, arg5, arg6) 
        mem[ceil32(arg3.length) + 128] = signer
        require erecover.result
        if withdrawAfter[address(signer)]:
            require block.timestamp < withdrawAfter[address(signer)]
        if (gas_remaining / 1000 * gasPrice) + arg2 >= arg2:
            if (gas_remaining / 1000 * gasPrice) + arg2 >= gas_remaining / 1000 * gasPrice:
                if (gas_remaining / 1000 * gasPrice) + arg2 <= balanceOf[address(signer)]:
                    balanceOf[address(signer)] = balanceOf[address(signer)] - (gas_remaining / 1000 * gasPrice) - arg2
                    if (gas_remaining / 1000 * gasPrice) + arg2 <= playerBalance:
                        playerBalance = playerBalance - (gas_remaining / 1000 * gasPrice) - arg2
                        if arg1 < casinoGames.length:
                            mem[ceil32(arg3.length) + 160 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                            if not arg3.length % 32:
                                call address(casinoGames[arg1]).mem[ceil32(arg3.length) + 160 len 4] with:
                                     gas gas_remaining - 25710 wei
                                    args mem[ceil32(arg3.length) + 164 len arg3.length - 4]
                            else:
                                mem[floor32(arg3.length) + ceil32(arg3.length) + 160] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32]
                                call address(casinoGames[arg1]).mem[ceil32(arg3.length) + 160 len 4] with:
                                     gas gas_remaining - 25710 wei
                                    args mem[ceil32(arg3.length) + 164 len floor32(arg3.length) + 28]
                            if ext_call.success:
    else:
        if ext_call.return_data[0] - (playerBalance / 10000):
            if (10000 * ext_call.return_data[0]) - (10000 * playerBalance / 10000) / ext_call.return_data[0] - (playerBalance / 10000) == 10000:
                require (10000 * ext_call.return_data[0]) - (10000 * playerBalance / 10000) > 8 * arg2
                mem[ceil32(arg3.length) + 128 len floor32(arg3.length)] = call.data[arg3 + 36 len floor32(arg3.length)]
                mem[ceil32(arg3.length) + floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32] = mem[floor32(arg3.length) + -(arg3.length % 32) + 160 len arg3.length % 32]
                _86 = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32])
                mem[ceil32(arg3.length) + 160] = sha3(call.data[arg3 + 36 len floor32(arg3.length)], mem[ceil32(arg3.length) + floor32(arg3.length) + 128 len arg3.length % 32])
                mem[ceil32(arg3.length) + 192] = arg4
                mem[ceil32(arg3.length) + 224] = arg5
                mem[ceil32(arg3.length) + 256] = arg6
                signer = erecover(_86, arg4 << 248, arg5, arg6) 
                mem[ceil32(arg3.length) + 128] = signer
                require erecover.result
                if withdrawAfter[address(signer)]:
                    require block.timestamp < withdrawAfter[address(signer)]
                if (gas_remaining / 1000 * gasPrice) + arg2 >= arg2:
                    if (gas_remaining / 1000 * gasPrice) + arg2 >= gas_remaining / 1000 * gasPrice:
                        if (gas_remaining / 1000 * gasPrice) + arg2 <= balanceOf[address(signer)]:
                            balanceOf[address(signer)] = balanceOf[address(signer)] - (gas_remaining / 1000 * gasPrice) - arg2
                            if (gas_remaining / 1000 * gasPrice) + arg2 <= playerBalance:
                                playerBalance = playerBalance - (gas_remaining / 1000 * gasPrice) - arg2
                                if arg1 < casinoGames.length:
                                    mem[ceil32(arg3.length) + 160 len ceil32(arg3.length)] = arg3[all], mem[arg3.length + 128 len ceil32(arg3.length) - arg3.length]
                                    if not arg3.length % 32:
                                        call address(casinoGames[arg1]).mem[ceil32(arg3.length) + 160 len 4] with:
                                             gas gas_remaining - 25710 wei
                                            args mem[ceil32(arg3.length) + 164 len arg3.length - 4]
                                    else:
                                        mem[floor32(arg3.length) + ceil32(arg3.length) + 160] = mem[floor32(arg3.length) + ceil32(arg3.length) + -(arg3.length % 32) + 192 len arg3.length % 32]
                                        call address(casinoGames[arg1]).mem[ceil32(arg3.length) + 160 len 4] with:
                                             gas gas_remaining - 25710 wei
                                            args mem[ceil32(arg3.length) + 164 len floor32(arg3.length) + 28]
                                    if ext_call.success:
    revert
}



}
