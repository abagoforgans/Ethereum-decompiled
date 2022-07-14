contract main {




// =====================  Runtime code  =====================


mapping of uint256 balanceOf;
mapping of uint256 allowance;
uint256 totalSupply;
address stor3;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
address sub_9cbc923eAddress;
mapping of uint8 stor8;
uint256 step;
uint256 remain;
uint256 currentDifficulty;
uint256 sub_c54dcc57;
address stor13;
uint256 sub_d5a9c382;
uint256 sub_0ca9966a;
uint256 stor16;
uint256 stor17;

function name() payable {
    return name[0 len name.length]
}

function sub_0ca9966a(?) payable {
    return sub_0ca9966a
}

function totalSupply() payable {
    return totalSupply
}

function decimals() payable {
    return decimals
}

function currentDifficulty() payable {
    return currentDifficulty
}

function remain() payable {
    return remain
}

function sub_6ab33368(?) payable {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function balanceOf(address arg1) payable {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function symbol() payable {
    return symbol[0 len symbol.length]
}

function sub_9cbc923e(?) payable {
    return sub_9cbc923eAddress
}

function sub_c54dcc57(?) payable {
    return sub_c54dcc57
}

function sub_d5a9c382(?) payable {
    return sub_d5a9c382
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function step() payable {
    return step
}

function _fallback() payable {
    revert
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1
    require arg2 <= balanceOf[address(msg.sender)]
    balanceOf[address(msg.sender)] -= arg2
    require balanceOf[address(arg1)] + arg2 >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    require arg1
    require msg.sender
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function sub_5ee240b1(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    if msg.sender == sub_9cbc923eAddress:
        staticcall stor3.0xac29c739 with:
                gas gas_remaining wei
               args 0
    else:
        staticcall stor3.0xac29c739 with:
                gas gas_remaining wei
               args 503
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor8[address(arg1)] = 0
    emit 0x4ee22d42: 0, arg1
}

function sub_816e8ec8(?) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    if msg.sender == sub_9cbc923eAddress:
        staticcall stor3.0xac29c739 with:
                gas gas_remaining wei
               args 0
    else:
        staticcall stor3.0xac29c739 with:
                gas gas_remaining wei
               args 503
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor8[address(arg1)] = 1
    emit 0x4ee22d42: 1, arg1
}

function transferFrom(address arg1, address arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require balanceOf[address(arg2)] + arg3 >= balanceOf[address(arg2)]
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require msg.sender
    require arg1
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Approval((allowance[address(arg1)][address(msg.sender)] - arg3), arg1, msg.sender);
    return 1
}

function sub_38cf6400(?) payable {
    require ext_code.size(stor3)
    if msg.sender == sub_9cbc923eAddress:
        staticcall stor3.0xac29c739 with:
                gas gas_remaining wei
               args 0
    else:
        staticcall stor3.0xac29c739 with:
                gas gas_remaining wei
               args 503
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if block.number > sub_0ca9966a:
        require stor13
        require sub_d5a9c382 <= balanceOf[address(this.address)]
        balanceOf[address(this.address)] -= sub_d5a9c382
        require balanceOf[stor13] + sub_d5a9c382 >= balanceOf[stor13]
        balanceOf[stor13] += sub_d5a9c382
        emit Transfer(sub_d5a9c382, this.address, stor13);
        sub_d5a9c382 = 0
        emit 0x90bee533: sub_d5a9c382, 0, stor13
}

function sub_18d1027a(?) payable {
    require calldata.size - 4 >= 64
    require ext_code.size(stor3)
    if bool(stor8[address(msg.sender)]) == 1:
        staticcall stor3.0xac29c739 with:
                gas gas_remaining wei
               args 0
    else:
        staticcall stor3.0xac29c739 with:
                gas gas_remaining wei
               args 505
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if not remain:
        return 0
    s = 0
    while arg2 > 0:
        require 2^currentDifficulty > 0
        require 2^currentDifficulty
        require 2^currentDifficulty
        require 2^currentDifficulty
        if not arg2 % 2^currentDifficulty:
            require sub_c54dcc57 <= remain
            if arg2 / 2^currentDifficulty <= remain - sub_c54dcc57:
                require s + (arg2 / 2^currentDifficulty) >= s
                require arg2 / 2^currentDifficulty <= remain
                remain -= arg2 / 2^currentDifficulty
                if remain <= sub_c54dcc57:
                    if sub_c54dcc57:
                        require currentDifficulty + 1 >= currentDifficulty
                        currentDifficulty++
                        require step <= remain
                        if remain - step <= 0:
                            sub_c54dcc57 = 0
                        else:
                            require step <= remain
                            sub_c54dcc57 = remain - step
                s = s + (arg2 / 2^currentDifficulty)
                continue 
        else:
            require (arg2 / 2^currentDifficulty) + 1 >= arg2 / 2^currentDifficulty
            require sub_c54dcc57 <= remain
            if (arg2 / 2^currentDifficulty) + 1 <= remain - sub_c54dcc57:
                require s + (arg2 / 2^currentDifficulty) + 1 >= s
                require (arg2 / 2^currentDifficulty) + 1 <= remain
                remain = remain + -(arg2 / 2^currentDifficulty) - 1
                if remain <= sub_c54dcc57:
                    if sub_c54dcc57:
                        require currentDifficulty + 1 >= currentDifficulty
                        currentDifficulty++
                        require step <= remain
                        if remain - step <= 0:
                            sub_c54dcc57 = 0
                        else:
                            require step <= remain
                            sub_c54dcc57 = remain - step
                s = s + (arg2 / 2^currentDifficulty) + 1
                continue 
        require sub_c54dcc57 <= remain
        require s + remain - sub_c54dcc57 >= s
        if not remain - sub_c54dcc57:
            require 0 <= arg2
        else:
            require remain - sub_c54dcc57
            require (remain * 2^currentDifficulty) - (sub_c54dcc57 * 2^currentDifficulty) / remain - sub_c54dcc57 == 2^currentDifficulty
            require (remain * 2^currentDifficulty) - (sub_c54dcc57 * 2^currentDifficulty) <= arg2
        remain = sub_c54dcc57
        if remain <= sub_c54dcc57:
            if sub_c54dcc57:
                require currentDifficulty + 1 >= currentDifficulty
                currentDifficulty++
                require step <= remain
                if remain - step <= 0:
                    sub_c54dcc57 = 0
                else:
                    require step <= remain
                    sub_c54dcc57 = remain - step
        s = s + remain - sub_c54dcc57
        continue 
    require arg1
    require s <= balanceOf[address(this.address)]
    balanceOf[address(this.address)] -= s
    require balanceOf[address(arg1)] + s >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] += s
    emit Transfer(s, this.address, arg1);
    emit Reward(s, arg2, arg1);
    if not s:
        require stor16 > 0
        require stor16
        if sub_d5a9c382 < 0 / stor16:
            sub_d5a9c382 = 0
            require stor13
            require sub_d5a9c382 <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] -= sub_d5a9c382
            require balanceOf[stor13] + sub_d5a9c382 >= balanceOf[stor13]
            balanceOf[stor13] += sub_d5a9c382
            emit Transfer(sub_d5a9c382, this.address, stor13);
            emit 0x90bee533: sub_d5a9c382, s, stor13
        else:
            require 0 / stor16 <= sub_d5a9c382
            sub_d5a9c382 -= 0 / stor16
            require stor13
            require 0 / stor16 <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] -= 0 / stor16
            require balanceOf[stor13] + (0 / stor16) >= balanceOf[stor13]
            balanceOf[stor13] += 0 / stor16
            emit Transfer((0 / stor16), this.address, stor13);
            emit 0x90bee533: 0 / stor16, s, stor13
    else:
        require s
        require s * stor17 / s == stor17
        require stor16 > 0
        require stor16
        if sub_d5a9c382 < s * stor17 / stor16:
            sub_d5a9c382 = 0
            require stor13
            require sub_d5a9c382 <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] -= sub_d5a9c382
            require balanceOf[stor13] + sub_d5a9c382 >= balanceOf[stor13]
            balanceOf[stor13] += sub_d5a9c382
            emit Transfer(sub_d5a9c382, this.address, stor13);
            emit 0x90bee533: sub_d5a9c382, s, stor13
        else:
            require s * stor17 / stor16 <= sub_d5a9c382
            sub_d5a9c382 -= s * stor17 / stor16
            require stor13
            require s * stor17 / stor16 <= balanceOf[address(this.address)]
            balanceOf[address(this.address)] -= s * stor17 / stor16
            require balanceOf[stor13] + (s * stor17 / stor16) >= balanceOf[stor13]
            balanceOf[stor13] += s * stor17 / stor16
            emit Transfer((s * stor17 / stor16), this.address, stor13);
            emit 0x90bee533: s * stor17 / stor16, s, stor13
    return s
}



}
