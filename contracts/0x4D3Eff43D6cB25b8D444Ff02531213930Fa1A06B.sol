contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balances;
mapping of uint256 approved;
mapping of uint256 sub_46f043d6;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 commisionRate;
address stor8;
address stor9;
uint256 stor10;

function name() payable {
    return name[0 len name.length]
}

function totalSupply() payable {
    return totalSupply
}

function balances(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[arg1]
}

function decimals() payable {
    return decimals
}

function sub_46f043d6(?) payable {
    require calldata.size - 4 >= 64
    return sub_46f043d6[arg1][arg2]
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balances[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function commisionRate() payable {
    return commisionRate
}

function approved(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return approved[arg1][arg2]
}

function _fallback() payable {
    revert
}

function sub_409a3839(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor8
    stor9 = arg1
}

function sub_55d87bd2(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor8
    stor10 = arg1
}

function sub_72843ed5(?) payable {
    require calldata.size - 4 >= 32
    require msg.sender == stor8
    commisionRate = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= balances[address(msg.sender)]
    require approved[address(msg.sender)][address(arg1)] + arg2 >= approved[address(msg.sender)][address(arg1)]
    approved[address(msg.sender)][address(arg1)] += arg2
    require block.number + stor10 >= block.number
    sub_46f043d6[address(msg.sender)][address(arg1)] = block.number + stor10
}

function transfer(address arg1, uint256 arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require balances[address(msg.sender)] >= arg2
    require arg2 <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2
    require balances[address(arg1)] + arg2 >= balances[address(arg1)]
    balances[address(arg1)] += arg2
    require commisionRate > 0
    require commisionRate
    require arg2 / commisionRate <= balances[address(msg.sender)]
    balances[address(msg.sender)] -= arg2 / commisionRate
    require balances[stor9] + (arg2 / commisionRate) >= balances[stor9]
    balances[stor9] += arg2 / commisionRate
    if ext_code.size(arg1) <= 0:
        _11 = mem[96]
        mem[96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[floor32(mem[96]) + -(mem[96] % 32) + 128 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        emit Transfer(arg2, msg.sender, arg1, sha3(mem[96 len _11]));
    else:
        mem[96] = 0x3b66d02b00000000000000000000000000000000000000000000000000000000
        mem[100] = msg.sender
        mem[132] = arg2
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args msg.sender, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len floor32(0, Mask(224, 32, msg.sender) >> 32)] = mem[128 len floor32(0, Mask(224, 32, msg.sender) >> 32)]
        mem[floor32(0, Mask(224, 32, msg.sender) >> 32) + 96] = mem[floor32(0, Mask(224, 32, msg.sender) >> 32) + -(Mask(5, 32, msg.sender) >> 32) + 160 len Mask(5, 32, msg.sender) >> 32] or Mask(8 * -(Mask(5, 32, msg.sender) >> 32) + 32, -(8 * -(Mask(5, 32, msg.sender) >> 32) + 32) + 256, mem[floor32(0, Mask(224, 32, msg.sender) >> 32) + 96])
        emit Transfer(arg2, msg.sender, arg1, sha3(0, msg.sender, arg2, mem[164 len 0x3b66d02affffffffffffffffffffffffffffffffffffffffffffffffffffffbc]));
    emit 0x334328db: (arg2 / commisionRate)
}

function transferFrom(address arg1, address arg2) payable {
    mem[64] = 96
    require calldata.size - 4 >= 64
    require approved[address(arg2)][address(arg1)] > 0
    require sub_46f043d6[address(msg.sender)][address(arg1)] > block.number
    sub_46f043d6[address(msg.sender)][address(arg1)] = 0
    approved[address(arg2)][address(arg1)] = 0
    require balances[address(arg2)] >= approved[address(arg2)][address(arg1)]
    require approved[address(arg2)][address(arg1)] <= balances[address(arg2)]
    balances[address(arg2)] -= approved[address(arg2)][address(arg1)]
    require balances[address(arg1)] + approved[address(arg2)][address(arg1)] >= balances[address(arg1)]
    balances[address(arg1)] += approved[address(arg2)][address(arg1)]
    require commisionRate > 0
    require commisionRate
    require approved[address(arg2)][address(arg1)] / commisionRate <= balances[address(arg2)]
    balances[address(arg2)] -= approved[address(arg2)][address(arg1)] / commisionRate
    require balances[stor9] + (approved[address(arg2)][address(arg1)] / commisionRate) >= balances[stor9]
    balances[stor9] += approved[address(arg2)][address(arg1)] / commisionRate
    if ext_code.size(arg1) <= 0:
        _21 = mem[96]
        mem[96 len floor32(mem[96])] = mem[128 len floor32(mem[96])]
        mem[floor32(mem[96]) + -(mem[96] % 32) + 128 len mem[96] % 32] = mem[floor32(mem[96]) + -(mem[96] % 32) + 160 len mem[96] % 32]
        emit Transfer(approved[address(arg2)][address(arg1)], arg2, arg1, sha3(mem[96 len _21]));
    else:
        mem[96] = 0x3b66d02b00000000000000000000000000000000000000000000000000000000
        mem[100] = arg2
        mem[132] = approved[address(arg2)][address(arg1)]
        require ext_code.size(arg1)
        call arg1.tokenFallback(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg2), approved[address(arg2)][address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        mem[96 len floor32(0, address(arg2) << 64)] = mem[128 len floor32(0, address(arg2) << 64)]
        mem[floor32(0, address(arg2) << 64) + 96] = None or mem[floor32(0, address(arg2) << 64) + 96]
        emit Transfer(approved[address(arg2)][address(arg1)], arg2, arg1, sha3(0, address(arg2), approved[address(arg2)][address(arg1)], mem[164 len 0x3b66d02affffffffffffffffffffffffffffffffffffffffffffffffffffffbc]));
    emit 0x334328db: (approved[address(arg2)][address(arg1)] / commisionRate)
}



}
