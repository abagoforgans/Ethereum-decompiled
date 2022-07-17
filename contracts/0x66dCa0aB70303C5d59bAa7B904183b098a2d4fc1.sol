contract main {




// =====================  Runtime code  =====================


address owner;
uint256 airdropTokens;
uint256 totalClaimed;
uint256 amountOfTokens;
mapping of uint8 stor4;
mapping of uint8 stor5;
address tokenAddress;

function amountOfTokens() payable {
    return amountOfTokens
}

function tokensReceived(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[arg1])
}

function owner() payable {
    return owner
}

function airdropTokens() payable {
    return airdropTokens
}

function airdropAgent(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor5[arg1])
}

function totalClaimed() payable {
    return totalClaimed
}

function token() payable {
    return tokenAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function renounceOwnership() payable {
    require msg.sender == owner
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTokenAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    tokenAddress = arg1
}

function setTokenAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    amountOfTokens = arg1
}

function setAirdropAgent(address arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor5[address(arg1)] = uint8(arg2)
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function remainingTokens() payable {
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function reset() payable {
    require msg.sender == owner
    require ext_code.size(tokenAddress)
    staticcall tokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(tokenAddress)
    call tokenAddress.0xa9059cbb with:
         gas gas_remaining wei
        args owner, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    43,
                    0xfe4661696c656420746f2072657365742064756520746f20746f6b656e207472616e73666572206572726f,
                    mem[207 len 21]
}

function airdrop(address[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    if not stor5[address(msg.sender)]:
        revert with 0, 
                    32,
                    37,
                    0x726d73672e73656e646572206973206e6f742076616c69642061697264726f70206167656e,
                    mem[(32 * arg1.length) + 233 len 27]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if stor4[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 
                        32,
                        68,
                        0x74506c65617365206d616b65207375726520726563697069656e74732073706563696669656420646964206e6f7420616c7265616479207265636569766520746f6b656e,
                        mem[(32 * arg1.length) + 264 len 28]
        require idx < arg1.length
        mem[(32 * arg1.length) + 132] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + 164] = amountOfTokens
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + 132], amountOfTokens
        mem[(32 * arg1.length) + 128] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Token transfer failed'
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 1
        idx = idx + 1
        continue 
    require totalClaimed + (amountOfTokens * arg1.length) >= totalClaimed
    totalClaimed += amountOfTokens * arg1.length
}

function airdropDynamic(address[] arg1, uint256[] arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    mem[(32 * arg1.length) + 128] = arg2.length
    mem[(32 * arg1.length) + 160 len 32 * arg2.length] = call.data[arg2 + 36 len 32 * arg2.length]
    mem[(32 * arg1.length) + (32 * arg2.length) + 160] = 0
    if not stor5[address(msg.sender)]:
        revert with 0, 
                    32,
                    37,
                    0x726d73672e73656e646572206973206e6f742076616c69642061697264726f70206167656e,
                    mem[(32 * arg1.length) + (32 * arg2.length) + 265 len 27]
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        if stor4[mem[(32 * idx) + 140 len 20]]:
            revert with 0, 
                        32,
                        68,
                        0x74506c65617365206d616b65207375726520726563697069656e74732073706563696669656420646964206e6f7420616c7265616479207265636569766520746f6b656e,
                        mem[(32 * arg1.length) + (32 * arg2.length) + 296 len 28]
        require idx < arg1.length
        require idx < arg2.length
        _36 = mem[(32 * idx) + (32 * arg1.length) + 160]
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _36
        require ext_code.size(tokenAddress)
        call tokenAddress.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _36
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if not ext_call.return_data[0]:
            revert with 0, 'Token transfer failed'
        require idx < arg1.length
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 4
        stor4[mem[(32 * idx) + 140 len 20]] = 1
        require idx < arg2.length
        require totalClaimed + mem[(32 * idx) + (32 * arg1.length) + 160] >= totalClaimed
        totalClaimed += mem[(32 * idx) + (32 * arg1.length) + 160]
        idx = idx + 1
        continue 
}



}
