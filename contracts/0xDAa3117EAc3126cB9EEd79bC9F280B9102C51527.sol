contract main {




// =====================  Runtime code  =====================


address owner;
address tokenAddress;
uint256 issuedTokens;
uint64 optionsCount;
mapping of struct sub_fde6c50d;

function optionsCount() {
    return optionsCount
}

function getOption(address arg1) {
    return sub_fde6c50d[address(arg1)].field_0, 
           sub_fde6c50d[address(arg1)].field_256,
           sub_fde6c50d[address(arg1)].field_512,
           sub_fde6c50d[address(arg1)].field_768,
           sub_fde6c50d[address(arg1)].field_896
}

function owner() {
    return owner
}

function issuedTokens() {
    return issuedTokens
}

function token() {
    return tokenAddress
}

function sub_fde6c50d(?) {
    return sub_fde6c50d[arg1].field_0, 
           sub_fde6c50d[arg1].field_256,
           sub_fde6c50d[arg1].field_512,
           sub_fde6c50d[arg1].field_768,
           sub_fde6c50d[arg1].field_896
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function withdrawEth() {
    require msg.sender == owner
    call owner with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_029737c4(?) {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0] - issuedTokens
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return (ext_call.return_data[0] - issuedTokens)
}

function sub_a0b5fab3(?) {
    require msg.sender == owner
    require issuedTokens + arg2 >= issuedTokens
    require arg2 > 0
    require arg5 > arg4
    require arg4 > block.timestamp
    require ext_code.size(tokenAddress)
    call tokenAddress.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] > issuedTokens + arg2
    sub_fde6c50d[address(arg1)].field_0 = arg1
    sub_fde6c50d[address(arg1)].field_256 = arg2
    sub_fde6c50d[address(arg1)].field_512 = arg3
    sub_fde6c50d[address(arg1)].field_768 = arg4
    sub_fde6c50d[address(arg1)].field_896 = arg5
    optionsCount = uint64(optionsCount + 1)
    issuedTokens += arg2
    emit 0xcd481a36: arg2, arg3, arg4 << 128, arg5, arg1
}

function sub_5a9ae4c0(?) {
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require msg.sender == owner
    s = 0
    idx = 0
    s = 0
    while idx < arg1.length:
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        if sub_fde6c50d[mem[(32 * idx) + 140 len 20]].field_896 > block.timestamp:
            s = sha3(mem[(32 * idx) + 140 len 20], 4)
            idx = idx + 1
            s = s
            continue 
        require s + sub_fde6c50d[mem[(32 * idx) + 140 len 20]].field_256 >= s
        sub_fde6c50d[mem[(32 * idx) + 140 len 20]].field_256 = 0
        require idx < arg1.length
        emit 0x15a33a6b: mem[(32 * idx) + 140 len 20]
        s = sha3(mem[(32 * idx) + 140 len 20], 4)
        idx = idx + 1
        s = s + sub_fde6c50d[mem[(32 * idx) + 140 len 20]].field_256
        continue 
    require s <= issuedTokens
    issuedTokens -= s
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, s
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return s
}

function _fallback() payable {
    require sub_fde6c50d[address(msg.sender)].field_0 == msg.sender
    require sub_fde6c50d[address(msg.sender)].field_768 <= block.timestamp
    require sub_fde6c50d[address(msg.sender)].field_896 > block.timestamp
    require sub_fde6c50d[address(msg.sender)].field_256 > 0
    if not msg.value:
        if 0 <= sub_fde6c50d[address(msg.sender)].field_256:
            require 0 <= issuedTokens
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit 0x330e8c70: 0, sub_fde6c50d[address(msg.sender)].field_512, msg.sender
        else:
            require sub_fde6c50d[address(msg.sender)].field_256 <= sub_fde6c50d[address(msg.sender)].field_256
            sub_fde6c50d[address(msg.sender)].field_256 = 0
            require sub_fde6c50d[address(msg.sender)].field_256 <= issuedTokens
            issuedTokens -= sub_fde6c50d[address(msg.sender)].field_256
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_fde6c50d[address(msg.sender)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit 0x330e8c70: sub_fde6c50d[address(msg.sender)].field_256, sub_fde6c50d[address(msg.sender)].field_512, msg.sender
    else:
        require msg.value
        require msg.value * sub_fde6c50d[address(msg.sender)].field_512 / msg.value == sub_fde6c50d[address(msg.sender)].field_512
        if msg.value * sub_fde6c50d[address(msg.sender)].field_512 <= sub_fde6c50d[address(msg.sender)].field_256:
            sub_fde6c50d[address(msg.sender)].field_256 += -1 * msg.value * sub_fde6c50d[address(msg.sender)].field_512
            require msg.value * sub_fde6c50d[address(msg.sender)].field_512 <= issuedTokens
            issuedTokens += -1 * msg.value * sub_fde6c50d[address(msg.sender)].field_512
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, msg.value * sub_fde6c50d[address(msg.sender)].field_512
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit 0x330e8c70: msg.value * sub_fde6c50d[address(msg.sender)].field_512, sub_fde6c50d[address(msg.sender)].field_512, msg.sender
        else:
            require sub_fde6c50d[address(msg.sender)].field_256 <= sub_fde6c50d[address(msg.sender)].field_256
            sub_fde6c50d[address(msg.sender)].field_256 = 0
            require sub_fde6c50d[address(msg.sender)].field_256 <= issuedTokens
            issuedTokens -= sub_fde6c50d[address(msg.sender)].field_256
            require ext_code.size(tokenAddress)
            call tokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, sub_fde6c50d[address(msg.sender)].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0]
            emit 0x330e8c70: sub_fde6c50d[address(msg.sender)].field_256, sub_fde6c50d[address(msg.sender)].field_512, msg.sender
}



}
