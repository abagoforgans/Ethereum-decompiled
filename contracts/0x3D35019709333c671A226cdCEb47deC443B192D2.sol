contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
uint256 totalSupply;
uint8 stor2;
address stor2; offset 8
mapping of uint256 allowance;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 exchangeSupply;
address stor8;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function sub_695f4403(?) payable {
    return bool(uint8(stor2.field_0))
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function exchangeSupply() payable {
    return exchangeSupply
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function kill() payable {
    require msg.sender == address(stor2.field_8)
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require not ext_call.return_data[0]
    require not totalSupply
    selfdestruct(msg.sender)
}

function _fallback() payable {
    revert
}

function enableTransfers(bool arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor2.field_8)
    uint8(stor2.field_0) = uint8(arg1)
}

function sub_0d0dcfee(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor2.field_8)
    require arg1 >= totalSupply
    exchangeSupply = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require uint8(stor2.field_0)
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwner(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor2.field_8)
    require arg1
    require address(stor2.field_8) != arg1
    if arg1:
        require ext_code.size(arg1) <= 0
    address(stor2.field_8) = arg1
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require uint8(stor2.field_0)
    require arg1
    require arg2 <= balanceOf[msg.sender]
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require uint8(stor2.field_0)
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function withdraw(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(stor2.field_8) != msg.sender:
        require msg.sender == arg1
    require arg1
    require arg2 <= balanceOf[address(arg1)]
    require ext_code.size(stor8)
    call stor8.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg2
    require arg2 <= totalSupply
    totalSupply -= arg2
    emit Withdraw(arg2, this.address, arg1);
    return 1
}

function liquidation(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor2.field_8)
    require balanceOf[address(arg1)] > 0
    require arg1
    require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
    require ext_code.size(stor8)
    call stor8.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), balanceOf[address(arg1)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    require balanceOf[address(arg1)] <= totalSupply
    totalSupply -= balanceOf[address(arg1)]
    emit Liquidation(balanceOf[address(arg1)], this.address, arg1);
    return 1
}

function deposit(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if address(stor2.field_8) != msg.sender:
        require msg.sender == arg1
    require uint8(stor2.field_0)
    require arg2 + totalSupply >= totalSupply
    require arg2 + totalSupply <= exchangeSupply
    require ext_code.size(stor8)
    call stor8.0x23b872dd with:
         gas gas_remaining wei
        args address(arg1), this.address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    emit Deposit(arg2, arg1, this.address);
    return 1
}

function refund(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender == address(stor2.field_8)
    require ext_code.size(stor8)
    staticcall stor8.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg2 <= ext_call.return_data[0]
    require ext_call.return_data[0] - arg2 >= totalSupply
    require ext_code.size(stor8)
    call stor8.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    emit Refund(arg2, this.address, arg1);
    return 1
}

function sub_c8ad9259(?) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    mem[96] = arg1.length
    mem[128 len 32 * arg1.length] = call.data[arg1 + 36 len 32 * arg1.length]
    mem[(32 * arg1.length) + 128] = 0
    require msg.sender == address(stor2.field_8)
    idx = 0
    while uint8(idx) < uint8(arg1.length):
        require uint8(idx) < arg1.length
        _20 = mem[(32 * uint8(idx)) + 128]
        _21 = sha3(mem[(32 * uint8(idx)) + 140 len 20], 0)
        require mem[(32 * uint8(idx)) + 140 len 20]
        require balanceOf[mem[(32 * uint8(idx)) + 140 len 20]] <= balanceOf[address(mem[(32 * uint8(idx)) + 128])]
        mem[(32 * arg1.length) + 132] = mem[(32 * uint8(idx)) + 140 len 20]
        mem[(32 * arg1.length) + 164] = stor[_21]
        require ext_code.size(stor8)
        call stor8.0xa9059cbb with:
             gas gas_remaining wei
            args mem[(32 * arg1.length) + 132], stor[_21]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require stor[_21] <= balanceOf[address(_20)]
        mem[0] = address(_20)
        mem[32] = 0
        balanceOf[address(_20)] -= stor[_21]
        require stor[_21] <= totalSupply
        totalSupply -= stor[_21]
        mem[(32 * arg1.length) + 128] = stor[_21]
        emit Liquidation(stor[_21], this.address, address(_20));
        idx = idx + 1
        continue 
    return 1
}



}
