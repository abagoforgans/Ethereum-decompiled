contract main {




// =====================  Runtime code  =====================


uint8 stor0; offset 160
uint128 stor0; offset 160
address owner;
address sub_a88adfa3Address;

function sub_22684749(?) payable {
    return sub_a88adfa3Address
}

function paused() payable {
    return bool(uint8(stor0.field_160))
}

function owner() payable {
    return owner
}

function sub_a88adfa3(?) payable {
    return sub_a88adfa3Address
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

function unpause() payable {
    require msg.sender == owner
    require uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 0
    emit Unpaused(msg.sender);
}

function pause() payable {
    require msg.sender == owner
    require not uint8(stor0.field_160)
    Mask(96, 0, stor0.field_160) = 1
    emit Paused(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_bf55a3c2(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit 0xe86c4eda: sub_a88adfa3Address, arg1
    sub_a88adfa3Address = arg1
}

function airDrop(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require not uint8(stor0.field_160)
    require ext_code.size(sub_a88adfa3Address)
    call sub_a88adfa3Address.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    emit AirDrop(address(arg1), arg2);
}

function claimTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    if not arg1:
        call owner with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    else:
        require ext_code.size(arg1)
        staticcall arg1.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(arg1)
        call arg1.0xa9059cbb with:
             gas gas_remaining wei
            args owner, ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        emit ClaimedTokens(address(arg1), owner, ext_call.return_data[0]);
}

function sub_080b37c8(?) payable {
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
    require msg.sender == owner
    require not uint8(stor0.field_160)
    require arg1.length
    require arg1.length == arg2.length
    idx = 0
    while idx < arg1.length:
        require idx < arg1.length
        _16 = mem[(32 * idx) + 128]
        require idx < arg2.length
        _18 = mem[(32 * idx) + (32 * arg1.length) + 160]
        require msg.sender == owner
        require not uint8(stor0.field_160)
        mem[(32 * arg1.length) + (32 * arg2.length) + 164] = mem[(32 * idx) + 140 len 20]
        mem[(32 * arg1.length) + (32 * arg2.length) + 196] = _18
        require ext_code.size(sub_a88adfa3Address)
        call sub_a88adfa3Address.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + (32 * arg2.length) + 164], _18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        mem[(32 * arg1.length) + (32 * arg2.length) + 160] = address(_16)
        mem[(32 * arg1.length) + (32 * arg2.length) + 192] = _18
        emit AirDrop(address(_16), _18);
        idx = idx + 1
        continue 
}



}
