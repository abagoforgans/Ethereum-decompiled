contract main {




// =====================  Runtime code  =====================


address owner;
uint256 startBlock;
uint256 endBlock;
uint256 maxGasPrice;
uint256 exchangeRate;
uint256 maxSupply;
mapping of uint256 participants;
address tokenAddress;
uint8 stor8; offset 160
uint128 stor8; offset 160
address stor8;

function endBlock() {
    return endBlock
}

function participants(address arg1) {
    return participants[arg1]
}

function exchangeRate() {
    return exchangeRate
}

function maxGasPrice() {
    return maxGasPrice
}

function startBlock() {
    return startBlock
}

function owner() {
    return owner
}

function maxSupply() {
    return maxSupply
}

function token() {
    return tokenAddress
}

function transferOwner(address arg1) {
    require msg.sender == owner
    owner = arg1
}

function initialise(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6, string arg7, uint8 arg8, string arg9) {
    mem[128 len arg7.length] = arg7[all]
    mem[ceil32(arg7.length) + 128] = arg9.length
    mem[ceil32(arg7.length) + 160 len arg9.length] = arg9[all]
    require msg.sender == owner
    if not tokenAddress:
        mem[ceil32(arg7.length) + ceil32(arg9.length) + 160 len 8410] = code.data[3353 len 8410]
        mem[ceil32(arg7.length) + ceil32(arg9.length) + 8698 len ceil32(arg7.length)] = arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]
        if not arg7.length % 32:
            mem[arg7.length + ceil32(arg7.length) + ceil32(arg9.length) + 8698] = arg9.length
            mem[arg7.length + ceil32(arg7.length) + ceil32(arg9.length) + 8730 len ceil32(arg9.length)] = arg9[all], mem[ceil32(arg7.length) + arg9.length + 160 len ceil32(arg9.length) - arg9.length]
            if not arg9.length % 32:
                create contract with 0 wei
                                code: code.data[3353 len 8410], Array(len=arg7.length + 128, data=arg7.length, Mask(8 * ceil32(arg7.length), -(8 * ceil32(arg7.length)) + 256, arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]) << (8 * ceil32(arg7.length)) - 256, mem[(2 * ceil32(arg7.length)) + ceil32(arg9.length) + 8698 len arg9.length + arg7.length + -ceil32(arg7.length) + 32]), arg8 << 248
            else:
                mem[floor32(arg9.length) + arg7.length + ceil32(arg7.length) + ceil32(arg9.length) + 8730] = mem[floor32(arg9.length) + arg7.length + ceil32(arg7.length) + ceil32(arg9.length) + -(arg9.length % 32) + 8762 len arg9.length % 32]
                create contract with 0 wei
                                code: code.data[3353 len 8410], Array(len=arg7.length + 128, data=arg7.length, Mask(8 * ceil32(arg7.length), -(8 * ceil32(arg7.length)) + 256, arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]) << (8 * ceil32(arg7.length)) - 256, mem[(2 * ceil32(arg7.length)) + ceil32(arg9.length) + 8698 len floor32(arg9.length) + arg7.length + -ceil32(arg7.length) + 64]), arg8 << 248
        else:
            mem[floor32(arg7.length) + ceil32(arg7.length) + ceil32(arg9.length) + 8698] = mem[floor32(arg7.length) + ceil32(arg7.length) + ceil32(arg9.length) + -(arg7.length % 32) + 8730 len arg7.length % 32]
            mem[floor32(arg7.length) + ceil32(arg7.length) + ceil32(arg9.length) + 8730] = arg9.length
            mem[floor32(arg7.length) + ceil32(arg7.length) + ceil32(arg9.length) + 8762 len ceil32(arg9.length)] = arg9[all], mem[ceil32(arg7.length) + arg9.length + 160 len ceil32(arg9.length) - arg9.length]
            if not arg9.length % 32:
                create contract with 0 wei
                                code: code.data[3353 len 8410], Array(len=floor32(arg7.length) + 160, data=arg7.length, Mask(8 * ceil32(arg7.length), -(8 * ceil32(arg7.length)) + 256, arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]) << (8 * ceil32(arg7.length)) - 256, mem[(2 * ceil32(arg7.length)) + ceil32(arg9.length) + 8698 len arg9.length + floor32(arg7.length) + -ceil32(arg7.length) + 64]), arg8 << 248
            else:
                mem[floor32(arg9.length) + floor32(arg7.length) + ceil32(arg7.length) + ceil32(arg9.length) + 8762] = mem[floor32(arg9.length) + floor32(arg7.length) + ceil32(arg7.length) + ceil32(arg9.length) + -(arg9.length % 32) + 8794 len arg9.length % 32]
                create contract with 0 wei
                                code: code.data[3353 len 8410], Array(len=floor32(arg7.length) + 160, data=arg7.length, Mask(8 * ceil32(arg7.length), -(8 * ceil32(arg7.length)) + 256, arg7[all], mem[arg7.length + 128 len ceil32(arg7.length) - arg7.length]) << (8 * ceil32(arg7.length)) - 256, mem[(2 * ceil32(arg7.length)) + ceil32(arg9.length) + 8698 len floor32(arg9.length) + floor32(arg7.length) + -ceil32(arg7.length) + 96]), arg8 << 248
        if not create.new_address:
            revert with ext_call.return_data[0 len return_data.size]
        tokenAddress = address(create.new_address)
        require ext_code.size(tokenAddress)
        call tokenAddress.0x4fb2e45d with:
             gas gas_remaining wei
            args owner
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    address(stor8.field_0) = arg1
    startBlock = arg2
    endBlock = arg3
    maxGasPrice = arg4
    exchangeRate = arg5
    maxSupply = arg6
    Mask(96, 0, stor8.field_160) = 1
    return tokenAddress
}

function _fallback() payable {
    require block.number >= startBlock
    require block.number <= endBlock
    require msg.sender
    require block.gasprice <= maxGasPrice
    require uint8(stor8.field_160)
    require ext_code.size(tokenAddress)
    call tokenAddress.0x18160ddd with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] < maxSupply
    if not msg.value:
        require ext_call.return_data[0] >= ext_call.return_data[0]
        if ext_call.return_data[0] <= maxSupply:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require participants[address(msg.sender)] >= participants[address(msg.sender)]
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, 0
        else:
            require exchangeRate
            if -ext_call.return_data[0] + maxSupply / exchangeRate <= 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                call msg.sender with:
                   value -ext_call.return_data[0] + maxSupply / exchangeRate wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require -ext_call.return_data[0] + maxSupply / exchangeRate <= msg.value
                call msg.sender with:
                   value msg.value - (-ext_call.return_data[0] + maxSupply / exchangeRate) wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require participants[address(msg.sender)] + ext_call.return_data[0] - maxSupply >= participants[address(msg.sender)]
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0] - maxSupply
    else:
        require msg.value
        require msg.value * exchangeRate / msg.value == exchangeRate
        require ext_call.return_data[0] + (msg.value * exchangeRate) >= ext_call.return_data[0]
        if ext_call.return_data[0] + (msg.value * exchangeRate) <= maxSupply:
            call msg.sender with:
               value msg.value wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require participants[address(msg.sender)] + (msg.value * exchangeRate) >= participants[address(msg.sender)]
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, msg.value * exchangeRate
        else:
            require exchangeRate
            if (msg.value * exchangeRate) - ext_call.return_data[0] - (msg.value * exchangeRate) + maxSupply / exchangeRate <= 0:
                call msg.sender with:
                   value msg.value wei
                     gas 2300 * is_zero(value) wei
            else:
                call msg.sender with:
                   value (msg.value * exchangeRate) - ext_call.return_data[0] - (msg.value * exchangeRate) + maxSupply / exchangeRate wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require (msg.value * exchangeRate) - ext_call.return_data[0] - (msg.value * exchangeRate) + maxSupply / exchangeRate <= msg.value
                call msg.sender with:
                   value msg.value - ((msg.value * exchangeRate) - ext_call.return_data[0] - (msg.value * exchangeRate) + maxSupply / exchangeRate) wei
                     gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require participants[address(msg.sender)] + ext_call.return_data[0] + (msg.value * exchangeRate) - maxSupply >= participants[address(msg.sender)]
            require ext_code.size(tokenAddress)
            call tokenAddress.mint(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0] + (msg.value * exchangeRate) - maxSupply
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
