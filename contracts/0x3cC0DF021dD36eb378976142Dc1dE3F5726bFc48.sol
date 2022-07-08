contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
uint256 name;
uint256 symbol;
uint8 decimals;
address sub_91874ef7Address; offset 8
address daiAddress;
mapping of uint256 daiBalance;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;

function name() payable {
    return name
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function sub_91874ef7(?) payable {
    return sub_91874ef7Address
}

function symbol() payable {
    return symbol
}

function isMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1
    return bool(stor0[address(arg1)])
}

function daiBalance(address arg1) payable {
    require calldata.size - 4 >= 32
    return daiBalance[arg1]
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function dai() payable {
    return daiAddress
}

function _fallback() payable {
    revert
}

function renounceMinter() payable {
    require msg.sender
    require stor0[address(msg.sender)]
    stor0[address(msg.sender)] = 0
    emit MinterRemoved(msg.sender);
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function addMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require not stor0[address(arg1)]
    stor0[address(arg1)] = 1
    emit MinterAdded(arg1);
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function mint(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require msg.sender
    require stor0[address(msg.sender)]
    require arg1
    require arg2 + totalSupply >= totalSupply
    totalSupply += arg2
    require arg2 + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, 0, arg1);
    return 1
}

function sub_b8c27ba3(?) payable {
    require msg.sender
    if stor0[address(msg.sender)]:
        require msg.sender
        require balanceOf[address(msg.sender)] <= totalSupply
        totalSupply -= balanceOf[address(msg.sender)]
        require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = 0
        emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
        require ext_code.size(daiAddress)
        call daiAddress.0xa9059cbb with:
             gas gas_remaining wei
            args msg.sender, balanceOf[address(msg.sender)]
    else:
        require daiBalance[address(msg.sender)]
        if balanceOf[address(msg.sender)] <= daiBalance[address(msg.sender)]:
            require balanceOf[address(msg.sender)] <= daiBalance[address(msg.sender)]
            daiBalance[address(msg.sender)] -= balanceOf[address(msg.sender)]
            require msg.sender
            require balanceOf[address(msg.sender)] <= totalSupply
            totalSupply -= balanceOf[address(msg.sender)]
            require balanceOf[address(msg.sender)] <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] = 0
            emit Transfer(balanceOf[address(msg.sender)], msg.sender, 0);
            require ext_code.size(daiAddress)
            call daiAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, balanceOf[address(msg.sender)]
        else:
            require daiBalance[address(msg.sender)] <= daiBalance[address(msg.sender)]
            daiBalance[address(msg.sender)] = 0
            require msg.sender
            require daiBalance[address(msg.sender)] <= totalSupply
            totalSupply -= daiBalance[address(msg.sender)]
            require daiBalance[address(msg.sender)] <= balanceOf[address(msg.sender)]
            balanceOf[address(msg.sender)] -= daiBalance[address(msg.sender)]
            emit Transfer(daiBalance[address(msg.sender)], msg.sender, 0);
            require ext_code.size(daiAddress)
            call daiAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, daiBalance[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not ext_call.return_data[0]:
        revert with 0, 'dai transfer failed'
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if arg3 <= balanceOf[address(arg1)]:
        if 0 < arg3:
            if msg.sender == sub_91874ef7Address:
                if sub_91874ef7Address != arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                39,
                                0x657472616e7366657246726f6d206f6e6c792062792062726964676520746f2062726964676520,
                                mem[203 len 25]
            else:
                if sub_91874ef7Address == arg2:
                    if sub_91874ef7Address != msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0xfe7472616e7366657246726f6d206f6e6c792062792062726964676520746f206272696467,
                                    mem[201 len 27]
                    if sub_91874ef7Address != arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    39,
                                    0x657472616e7366657246726f6d206f6e6c792062792062726964676520746f2062726964676520,
                                    mem[203 len 25]
            require 0 <= arg3
            require arg2
            require arg3 <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= arg3
            require arg3 + balanceOf[arg2] >= balanceOf[arg2]
            balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
            emit Transfer(arg3, arg1, arg2);
            if sub_91874ef7Address != arg2:
                require arg3 <= allowance[address(arg1)][msg.sender]
                require arg1
                allowance[msg.sender][address(arg1)] = allowance[address(arg1)][msg.sender] - arg3
                emit Approval((allowance[address(arg1)][msg.sender] - arg3), msg.sender, arg1);
    else:
        require balanceOf[address(arg1)] <= arg3
        if arg3 - balanceOf[address(arg1)]:
            if sub_91874ef7Address != msg.sender:
                revert with 0, 'pullAndMint only for bridge'
            if sub_91874ef7Address != arg2:
                revert with 0, 'pullAndMint only to bridge'
        require ext_code.size(daiAddress)
        call daiAddress.0x23b872dd with:
             gas gas_remaining wei
            args address(arg1), this.address, arg3 - balanceOf[address(arg1)]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0]
        require arg3 - balanceOf[address(arg1)] + daiBalance[address(arg1)] >= daiBalance[address(arg1)]
        daiBalance[address(arg1)] = arg3 - balanceOf[address(arg1)] + daiBalance[address(arg1)]
        require msg.sender
        require arg3 - balanceOf[address(arg1)] + totalSupply >= totalSupply
        totalSupply = arg3 - balanceOf[address(arg1)] + totalSupply
        require arg3 - balanceOf[address(arg1)] + balanceOf[address(msg.sender)] >= balanceOf[address(msg.sender)]
        balanceOf[address(msg.sender)] = arg3 - balanceOf[address(arg1)] + balanceOf[address(msg.sender)]
        emit Transfer((arg3 - balanceOf[address(arg1)]), 0, msg.sender);
        if arg3 - balanceOf[address(arg1)] < arg3:
            if msg.sender == sub_91874ef7Address:
                if sub_91874ef7Address != arg2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                39,
                                0x657472616e7366657246726f6d206f6e6c792062792062726964676520746f2062726964676520,
                                mem[203 len 25]
            else:
                if sub_91874ef7Address == arg2:
                    if sub_91874ef7Address != msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0xfe7472616e7366657246726f6d206f6e6c792062792062726964676520746f206272696467,
                                    mem[201 len 27]
                    if sub_91874ef7Address != arg2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    39,
                                    0x657472616e7366657246726f6d206f6e6c792062792062726964676520746f2062726964676520,
                                    mem[203 len 25]
            require arg3 - balanceOf[address(arg1)] <= arg3
            require arg2
            require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] = 0
            require balanceOf[address(arg1)] + balanceOf[arg2] >= balanceOf[arg2]
            balanceOf[address(arg2)] = balanceOf[address(arg1)] + balanceOf[arg2]
            emit Transfer(balanceOf[address(arg1)], arg1, arg2);
            if sub_91874ef7Address != arg2:
                require balanceOf[address(arg1)] <= allowance[address(arg1)][msg.sender]
                require arg1
                allowance[msg.sender][address(arg1)] = allowance[address(arg1)][msg.sender] - balanceOf[address(arg1)]
                emit Approval((allowance[address(arg1)][msg.sender] - balanceOf[address(arg1)]), msg.sender, arg1);
    return 1
}



}
