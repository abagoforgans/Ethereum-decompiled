contract main {




// =====================  Runtime code  =====================


#
#  - sub_32a3bc0c(?)
#  - redeem(uint256 arg1, uint256 arg2)
#
address stor0;
address sub_d33b8d23Address;
address operatorAddress;
uint256 stor2;
uint256 sub_16d43a97;
uint256 sub_5623732e;
address stor5;
address stor6;
address stor7;
array of uint256 sub_5c44bfcb;
address stor9;
uint256 stor9;
address stor10;
address stor11;
address stor12;
mapping of uint256 stor13;
mapping of uint256 stor14;
array of address users;
mapping of uint256 sub_b337f8cc;
uint8 stor19;
uint256 stor20;
uint256 sub_6c67b21e;
uint256 sub_15ed0793;
uint256 stor23;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint256 stor33;
uint256 stor34;
uint256 stor35;
uint256 stor36;
uint256 stor37;
uint256 stor38;
uint256 stor39;
uint256 stor40;
uint256 stor41;
uint256 stor42;
uint256 stor43;
uint256 stor44;
uint256 stor45;
uint256 stor46;
uint256 stor47;
uint256 stor48;
uint8 stor49;
mapping of uint256 stor99;

function allowance(uint256 arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    require arg1 < 2
    return stor[arg1 + 15][arg2][arg3]
}

function sub_15ed0793(?) {
    return sub_15ed0793
}

function sub_16d43a97(?) {
    return sub_16d43a97
}

function balanceOf(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 < 2
    return stor[arg1 + 13][arg2]
}

function users(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < users.length
    return address(users[arg1])
}

function sub_5623732e(?) {
    return sub_5623732e
}

function operator() {
    return address(operatorAddress)
}

function sub_5c44bfcb(?) {
    return sub_5c44bfcb[0 len sub_5c44bfcb.length]
}

function sub_6c67b21e(?) {
    return sub_6c67b21e
}

function sub_b337f8cc(?) {
    require calldata.size - 4 >= 32
    return sub_b337f8cc[arg1]
}

function totalUsers() {
    return users.length
}

function sub_d33b8d23(?) {
    return sub_d33b8d23Address
}

function _fallback() payable {
  stop
}

function sub_912be04b(?) {
    require stor23 <= eth.balance(this.address)
    return (eth.balance(this.address) - stor23)
}

function getAddresses() {
    return sub_d33b8d23Address, address(operatorAddress), address(stor9), stor10, stor11, stor12
}

function sub_0565f7c0(?) {
    require block.timestamp - sub_16d43a97 >= sub_5623732e
    require ext_code.size(stor0)
    call stor0.0xd04787a7 with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor9) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor9))
    emit 0xcc882185: msg.sender, address(stor9)
    sub_16d43a97 = block.timestamp
    return 1
}

function updateOperator() {
    require block.timestamp - sub_16d43a97 >= sub_5623732e
    require ext_code.size(stor0)
    call stor0.0xd04787a7 with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor2) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor2))
    emit 0xf7fa3b61: msg.sender, address(operatorAddress)
    sub_16d43a97 = block.timestamp
    return 1
}

function collectFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == address(stor9)
    require stor19 <= 4
    require stor19 == 1
    require stor23 <= eth.balance(this.address)
    require arg1 <= eth.balance(this.address) - stor23
    call address(stor9) with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit 0x5b5b4c58: address(stor9), arg1, eth.balance(this.address) - stor23 - arg1
    return 1
}

function getStates() {
    require stor19 <= 4
    require stor23 <= eth.balance(this.address)
    require stor49 <= 2
    return sub_16d43a97, 
           sub_5623732e,
           stor19,
           stor20,
           sub_6c67b21e,
           sub_15ed0793,
           stor23,
           stor24,
           stor25,
           stor26,
           stor27,
           stor28,
           stor29,
           stor30,
           stor31,
           stor32,
           stor33,
           stor34,
           stor35,
           stor37,
           users.length,
           eth.balance(this.address) - stor23,
           stor49,
           stor38,
           stor39,
           stor43,
           stor44,
           stor40,
           stor41,
           stor42
}

function setValue(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == address(operatorAddress)
    require stor19 <= 4
    require stor19 == 1
    require block.timestamp - sub_16d43a97 >= sub_5623732e
    if not arg1:
        require arg2 <= 10000
        stor30 = arg2
        emit 0xabd08d77: arg1, stor30, arg2
    else:
        if arg1 == 1:
            require arg2 <= 10000
            stor31 = arg2
            emit 0xabd08d77: arg1, stor31, arg2
        else:
            if arg1 == 2:
                stor42 = arg2
                emit 0xabd08d77: arg1, stor42, arg2
            else:
                require arg1 == 3
                stor34 = arg2
                emit 0xabd08d77: arg1, stor34, arg2
    sub_16d43a97 = block.timestamp
    return 1
}

function sub_0f36a16d(?) {
    require calldata.size - 4 >= 32
    require block.timestamp - sub_16d43a97 >= sub_5623732e
    require ext_code.size(stor0)
    call stor0.0xb0a93414 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    sub_d33b8d23Address = arg1
    stor0 = sub_d33b8d23Address
    require ext_code.size(stor0)
    call stor0.moderator() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[12 len 20]
    emit 0xce93baa0: arg1
    sub_16d43a97 = block.timestamp
    return 1
}

function sub_a64e8f5a(?) {
    require calldata.size - 4 >= 96
    require stor19 <= 4
    require not stor19
    require msg.sender == address(operatorAddress)
    stor11 = arg1
    stor6 = stor11
    stor12 = arg2
    stor7 = stor12
    stor10 = arg3
    stor5 = stor10
    require ext_code.size(stor5)
    call stor5.getLastPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] > 0
    require ext_call.return_data[32] > 0
    stor26 = ext_call.return_data[0]
    stor27 = ext_call.return_data[32]
    stor28 = ext_call.return_data[0]
    stor29 = ext_call.return_data[32]
    stor0 = sub_d33b8d23Address
    stor19 = 1
    emit 0x9044c323: 10^18, 10^18, ext_call.return_data[0], ext_call.return_data[32]
    emit 0xe59d261c: stor24, stor25
    return 1
}

function updateOracle(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor0)
    call stor0.moderator() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require msg.sender == ext_call.return_data[12 len 20]
    require block.timestamp - sub_16d43a97 >= sub_5623732e
    require ext_code.size(stor0)
    call stor0.0xb0a93414 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    stor10 = arg1
    stor5 = stor10
    require ext_code.size(stor5)
    call stor5.getLastPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[0] > 0
    require ext_call.return_data[32] > 0
    emit UpdateOracle(arg1);
    sub_16d43a97 = block.timestamp
    return 1
}

function approve(uint256 arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not arg1:
        require arg1 < 2
        if msg.sender == stor11:
            stor[arg1 + 15][address(arg2)][address(arg3)] = arg4
            emit Approval(arg4, arg1, arg2, arg3);
        else:
            if arg1 != 1:
                stor[arg1 + 15][address(msg.sender)][address(arg3)] = arg4
                emit Approval(arg4, arg1, msg.sender, arg3);
            else:
                if msg.sender == stor12:
                    stor[arg1 + 15][address(arg2)][address(arg3)] = arg4
                    emit Approval(arg4, arg1, arg2, arg3);
                else:
                    stor[arg1 + 15][address(msg.sender)][address(arg3)] = arg4
                    emit Approval(arg4, arg1, msg.sender, arg3);
    else:
        require arg1 == 1
        require arg1 < 2
        if arg1:
            if arg1 != 1:
                stor[arg1 + 15][address(msg.sender)][address(arg3)] = arg4
                emit Approval(arg4, arg1, msg.sender, arg3);
            else:
                if msg.sender == stor12:
                    stor[arg1 + 15][address(arg2)][address(arg3)] = arg4
                    emit Approval(arg4, arg1, arg2, arg3);
                else:
                    stor[arg1 + 15][address(msg.sender)][address(arg3)] = arg4
                    emit Approval(arg4, arg1, msg.sender, arg3);
        else:
            if msg.sender == stor11:
                stor[arg1 + 15][address(arg2)][address(arg3)] = arg4
                emit Approval(arg4, arg1, arg2, arg3);
            else:
                if arg1 != 1:
                    stor[arg1 + 15][address(msg.sender)][address(arg3)] = arg4
                    emit Approval(arg4, arg1, msg.sender, arg3);
                else:
                    if msg.sender == stor12:
                        stor[arg1 + 15][address(arg2)][address(arg3)] = arg4
                        emit Approval(arg4, arg1, arg2, arg3);
                    else:
                        stor[arg1 + 15][address(msg.sender)][address(arg3)] = arg4
                        emit Approval(arg4, arg1, msg.sender, arg3);
    return 1
}

function sub_134e92a8(?) {
    require stor19 <= 4
    require stor19 == 2
    if block.number - stor36 < stor34:
        emit 0xa1f85a36 
    else:
        stor19 = 3
        if stor25 < stor40:
            stor49 = 1
            stor46 = 0
            stor48 = 0
            require stor25 <= stor24
            require stor38 + 10000 >= 10000
            if stor24 - stor25:
                require stor24 - stor25
                require (10000 * stor24) - (10000 * stor25) / stor24 - stor25 == 10000
            require stor38 + 10000
            stor47 = (10000 * stor24) - (10000 * stor25) / stor38 + 10000
            if stor47:
                require stor47
                require stor47 * stor38 / stor47 == stor38
            stor45 = stor47 * stor38 / 10000
            if sub_6c67b21e:
                require sub_6c67b21e
                require sub_6c67b21e * stor47 / sub_6c67b21e == stor47
            if sub_15ed0793:
                require sub_15ed0793
                require sub_15ed0793 * stor25 / sub_15ed0793 == stor25
            require (sub_15ed0793 * stor25 / 10^18) + (sub_6c67b21e * stor47 / 10^18) >= sub_15ed0793 * stor25 / 10^18
            sub_15ed0793 = (sub_15ed0793 * stor25 / 10^18) + (sub_6c67b21e * stor47 / 10^18)
            if sub_6c67b21e:
                require sub_6c67b21e
                require sub_6c67b21e * stor45 / sub_6c67b21e == stor45
            if sub_6c67b21e:
                require sub_6c67b21e
                require sub_6c67b21e * stor25 / sub_6c67b21e == stor25
            require (sub_6c67b21e * stor25 / 10^18) + (sub_6c67b21e * stor45 / 10^18) >= sub_6c67b21e * stor25 / 10^18
            sub_6c67b21e = (sub_6c67b21e * stor25 / 10^18) + (sub_6c67b21e * stor45 / 10^18)
        else:
            stor49 = 0
            stor45 = 0
            stor47 = 0
            require stor24 <= stor25
            require stor38 + 10000 >= 10000
            if stor25 - stor24:
                require stor25 - stor24
                require (10000 * stor25) - (10000 * stor24) / stor25 - stor24 == 10000
            require stor38 + 10000
            stor48 = (10000 * stor25) - (10000 * stor24) / stor38 + 10000
            if stor48:
                require stor48
                require stor48 * stor38 / stor48 == stor38
            stor46 = stor48 * stor38 / 10000
            if sub_15ed0793:
                require sub_15ed0793
                require sub_15ed0793 * stor46 / sub_15ed0793 == stor46
            if sub_6c67b21e:
                require sub_6c67b21e
                require sub_6c67b21e * stor24 / sub_6c67b21e == stor24
            require (sub_6c67b21e * stor24 / 10^18) + (sub_15ed0793 * stor46 / 10^18) >= sub_6c67b21e * stor24 / 10^18
            sub_6c67b21e = (sub_6c67b21e * stor24 / 10^18) + (sub_15ed0793 * stor46 / 10^18)
            if sub_15ed0793:
                require sub_15ed0793
                require sub_15ed0793 * stor48 / sub_15ed0793 == stor48
            if sub_15ed0793:
                require sub_15ed0793
                require sub_15ed0793 * stor24 / sub_15ed0793 == stor24
            require (sub_15ed0793 * stor24 / 10^18) + (sub_15ed0793 * stor48 / 10^18) >= sub_15ed0793 * stor24 / 10^18
            sub_15ed0793 = (sub_15ed0793 * stor24 / 10^18) + (sub_15ed0793 * stor48 / 10^18)
        emit 0xce065be8: sub_6c67b21e, sub_15ed0793
        emit 0x69b6a1e0: stor37, users.length
    return 1
}

function fetchPrice() {
    require stor19 <= 4
    require stor19 == 1
    require stor27 + stor35 >= stor27
    require block.timestamp > stor27 + stor35
    require ext_code.size(stor5)
    call stor5.getLastPrice() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    require ext_call.return_data[32] > stor27
    require ext_call.return_data[32] <= block.timestamp
    require ext_call.return_data[0] > 0
    stor26 = ext_call.return_data[0]
    stor27 = ext_call.return_data[32]
    if ext_call.return_data[0]:
        require ext_call.return_data[0]
        require 10^18 * ext_call.return_data[0] / ext_call.return_data[0] == 10^18
    require stor28
    require stor38 + 10000 >= stor38
    if 10^18 * ext_call.return_data[0] / stor28:
        require 10^18 * ext_call.return_data[0] / stor28
        require (10000 * 10^18 * ext_call.return_data[0] / stor28) + (stor38 * 10^18 * ext_call.return_data[0] / stor28) / 10^18 * ext_call.return_data[0] / stor28 == stor38 + 10000
    if 10^18 * ext_call.return_data[0] / stor28 >= 2 * 10^18:
        stor25 = (10000 * 10^18 * ext_call.return_data[0] / stor28) + (stor38 * 10^18 * ext_call.return_data[0] / stor28) / 10000
        stor24 = 0
    else:
        if stor38:
            require stor38
            require 2 * stor38 / stor38 == 2
        require (2 * stor38) + 10000 >= 2 * stor38
        require 2 * 10^18 * stor38 / 2 * 10^18 == stor38
        require (2 * stor38) + 10000
        if 10^18 * ext_call.return_data[0] / stor28 <= 2 * 10^18 * stor38 / (2 * stor38) + 10000:
            if (10000 * 10^18 * ext_call.return_data[0] / stor28) + (stor38 * 10^18 * ext_call.return_data[0] / stor28) / 10000:
                require (10000 * 10^18 * ext_call.return_data[0] / stor28) + (stor38 * 10^18 * ext_call.return_data[0] / stor28) / 10000
                require 10000 * (10000 * 10^18 * ext_call.return_data[0] / stor28) + (stor38 * 10^18 * ext_call.return_data[0] / stor28) / 10000 / (10000 * 10^18 * ext_call.return_data[0] / stor28) + (stor38 * 10^18 * ext_call.return_data[0] / stor28) / 10000 == 10000
            require stor38
            stor25 = 0
            stor24 = 10000 * (10000 * 10^18 * ext_call.return_data[0] / stor28) + (stor38 * 10^18 * ext_call.return_data[0] / stor28) / 10000 / stor38
        else:
            require 10^18 * ext_call.return_data[0] / stor28 <= 2 * 10^18
            require 10^18 * stor38 / 10^18 == stor38
            if 10^18 * stor38:
                require 10^18 * stor38
                require 2 * 10^18 * stor38 / 10^18 * stor38 == 2
            if stor38:
                require stor38
                require 2 * stor38 / stor38 == 2
            require (2 * stor38) + 10000 >= 2 * stor38
            if 10^18 * ext_call.return_data[0] / stor28:
                require 10^18 * ext_call.return_data[0] / stor28
                require (10000 * 10^18 * ext_call.return_data[0] / stor28) + (2 * stor38 * 10^18 * ext_call.return_data[0] / stor28) / 10^18 * ext_call.return_data[0] / stor28 == (2 * stor38) + 10000
            require 2 * 10^18 * stor38 <= (10000 * 10^18 * ext_call.return_data[0] / stor28) + (2 * stor38 * 10^18 * ext_call.return_data[0] / stor28)
            stor25 = (10000 * 10^18 * ext_call.return_data[0] / stor28) + (2 * stor38 * 10^18 * ext_call.return_data[0] / stor28) - (2 * 10^18 * stor38) / 10000
            stor24 = -(10^18 * ext_call.return_data[0] / stor28) + 2 * 10^18
    if stor33 <= 0:
        if stor25 >= stor40:
            stor19 = 2
            stor36 = block.number
            emit 0xa1f85a36 
        else:
            if stor25 <= stor41:
                stor19 = 2
                stor36 = block.number
                emit 0xa1f85a36 
    else:
        if ext_call.return_data[32] > stor33:
            stor19 = 4
            emit Matured(stor24, stor25);
        else:
            if stor25 >= stor40:
                stor19 = 2
                stor36 = block.number
                emit 0xa1f85a36 
            else:
                if stor25 <= stor41:
                    stor19 = 2
                    stor36 = block.number
                    emit 0xa1f85a36 
    emit 0x9044c323: stor24, stor25, ext_call.return_data[0], ext_call.return_data[32]
    return 1
}

function redeemAll() {
    require stor19 <= 4
    require stor19 == 4
    if stor13[address(msg.sender)] <= 0:
        require stor14[address(msg.sender)] > 0
    if stor14[address(msg.sender)]:
        require stor14[address(msg.sender)]
        require stor14[address(msg.sender)] * stor25 / stor14[address(msg.sender)] == stor25
    if stor13[address(msg.sender)]:
        require stor13[address(msg.sender)]
        require stor13[address(msg.sender)] * stor24 / stor13[address(msg.sender)] == stor24
    require (stor13[address(msg.sender)] * stor24) + (stor14[address(msg.sender)] * stor25) >= stor13[address(msg.sender)] * stor24
    require stor26
    require (stor13[address(msg.sender)] * stor24) + (stor14[address(msg.sender)] * stor25) / stor26 > 0
    require (stor13[address(msg.sender)] * stor24) + (stor14[address(msg.sender)] * stor25) / stor26 <= stor23
    stor23 -= (stor13[address(msg.sender)] * stor24) + (stor14[address(msg.sender)] * stor25) / stor26
    require (stor13[address(msg.sender)] * stor24) + (stor14[address(msg.sender)] * stor25) / stor26 > 0
    if (stor13[address(msg.sender)] * stor24) + (stor14[address(msg.sender)] * stor25) / stor26:
        require (stor13[address(msg.sender)] * stor24) + (stor14[address(msg.sender)] * stor25) / stor26
        require (stor13[address(msg.sender)] * stor24) + (stor14[address(msg.sender)] * stor25) / stor26 * stor31 / (stor13[address(msg.sender)] * stor24) + (stor14[address(msg.sender)] * stor25) / stor26 == stor31
    require (stor13[address(msg.sender)] * stor24) + (stor14[address(msg.sender)] * stor25) / stor26 * stor31 / 10000 <= (stor13[address(msg.sender)] * stor24) + (stor14[address(msg.sender)] * stor25) / stor26
    require stor13[address(msg.sender)] <= stor13[address(msg.sender)]
    stor13[address(msg.sender)] = 0
    require stor14[address(msg.sender)] <= stor14[address(msg.sender)]
    stor14[address(msg.sender)] = 0
    if sub_b337f8cc[address(msg.sender)] <= 0:
        if stor13[address(msg.sender)] >= stor20:
            users.length++
            address(users[users.length]) = msg.sender
            sub_b337f8cc[address(msg.sender)] = users.length
        else:
            if stor14[address(msg.sender)] >= stor20:
                users.length++
                address(users[users.length]) = msg.sender
                sub_b337f8cc[address(msg.sender)] = users.length
    else:
        if stor13[address(msg.sender)] < stor20:
            if stor14[address(msg.sender)] < stor20:
                require users.length - 1 < users.length
                if sub_b337f8cc[address(msg.sender)] < users.length:
                    require sub_b337f8cc[address(msg.sender)] - 1 < users.length
                    address(users[stor18[address(msg.sender)]]) = address(users[users.length])
                    sub_b337f8cc[address(stor17[stor17.length])] = sub_b337f8cc[address(msg.sender)]
                require users.length - 1 < users.length
                address(users[users.length]) = 0
                sub_b337f8cc[address(msg.sender)] = 0
                users.length--
                if users.length > users.length - 1:
                    idx = users.length - 1
                    while users.length > idx:
                        uint256(users[idx]) = 0
                        idx = idx + 1
                        continue 
    require stor13[address(msg.sender)] <= sub_6c67b21e
    sub_6c67b21e -= stor13[address(msg.sender)]
    require stor14[address(msg.sender)] <= sub_15ed0793
    sub_15ed0793 -= stor14[address(msg.sender)]
    call msg.sender with:
       value ((stor13[address(msg.sender)] * stor24) + (stor14[address(msg.sender)] * stor25) / stor26) - ((stor13[address(msg.sender)] * stor24) + (stor14[address(msg.sender)] * stor25) / stor26 * stor31 / 10000) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit Redeem(((stor13[address(msg.sender)] * stor24) + (stor14[address(msg.sender)] * stor25) / stor26) - ((stor13[address(msg.sender)] * stor24) + (stor14[address(msg.sender)] * stor25) / stor26 * stor31 / 10000), stor13[address(msg.sender)], stor14[address(msg.sender)], (stor13[address(msg.sender)] * stor24) + (stor14[address(msg.sender)] * stor25) / stor26 * stor31 / 10000, msg.sender);
    emit 0xce065be8: sub_6c67b21e, sub_15ed0793
    require ext_code.size(stor6)
    call stor6.emitTransfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, 0, stor13[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.emitTransfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, 0, stor14[address(msg.sender)]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function create() payable {
    require stor19 <= 4
    require stor19 == 1
    require msg.value > 0
    if msg.value:
        require msg.value
        require msg.value * stor30 / msg.value == stor30
    require msg.value * stor30 / 10000 <= msg.value
    require stor23 + msg.value - (msg.value * stor30 / 10000) >= stor23
    stor23 = stor23 + msg.value - (msg.value * stor30 / 10000)
    if msg.value - (msg.value * stor30 / 10000):
        require msg.value - (msg.value * stor30 / 10000)
        require (msg.value * stor28) - (msg.value * stor30 / 10000 * stor28) / msg.value - (msg.value * stor30 / 10000) == stor28
    if (msg.value * stor28) - (msg.value * stor30 / 10000 * stor28):
        require (msg.value * stor28) - (msg.value * stor30 / 10000 * stor28)
        require (msg.value * stor28 * stor39) - (msg.value * stor30 / 10000 * stor28 * stor39) / (msg.value * stor28) - (msg.value * stor30 / 10000 * stor28) == stor39
    if (msg.value * stor28 * stor39) - (msg.value * stor30 / 10000 * stor28 * stor39):
        require (msg.value * stor28 * stor39) - (msg.value * stor30 / 10000 * stor28 * stor39)
        require (10000 * msg.value * stor28 * stor39) - (10000 * msg.value * stor30 / 10000 * stor28 * stor39) / (msg.value * stor28 * stor39) - (msg.value * stor30 / 10000 * stor28 * stor39) == 10000
    require stor38 + 10000 >= stor38
    require (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18 / 1000000000000000000 * 10^18 == stor38 + 10000
    require (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18
    if (10000 * msg.value * stor28 * stor39) - (10000 * msg.value * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18:
        require (10000 * msg.value * stor28 * stor39) - (10000 * msg.value * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18
        require (10000 * msg.value * stor28 * stor39) - (10000 * msg.value * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18 * stor38 / (10000 * msg.value * stor28 * stor39) - (10000 * msg.value * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18 == stor38
    require stor13[address(msg.sender)] + ((10000 * msg.value * stor28 * stor39) - (10000 * msg.value * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18 * stor38 / 10000) >= stor13[address(msg.sender)]
    stor13[address(msg.sender)] += (10000 * msg.value * stor28 * stor39) - (10000 * msg.value * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18 * stor38 / 10000
    require stor14[address(msg.sender)] + ((10000 * msg.value * stor28 * stor39) - (10000 * msg.value * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18) >= stor14[address(msg.sender)]
    stor14[address(msg.sender)] += (10000 * msg.value * stor28 * stor39) - (10000 * msg.value * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18
    if sub_b337f8cc[address(msg.sender)] <= 0:
        if stor13[address(msg.sender)] >= stor20:
            users.length++
            address(users[users.length]) = msg.sender
            sub_b337f8cc[address(msg.sender)] = users.length
        else:
            if stor14[address(msg.sender)] >= stor20:
                users.length++
                address(users[users.length]) = msg.sender
                sub_b337f8cc[address(msg.sender)] = users.length
    else:
        if stor13[address(msg.sender)] < stor20:
            if stor14[address(msg.sender)] < stor20:
                require users.length - 1 < users.length
                if sub_b337f8cc[address(msg.sender)] < users.length:
                    require sub_b337f8cc[address(msg.sender)] - 1 < users.length
                    address(users[stor18[address(msg.sender)]]) = address(users[users.length])
                    sub_b337f8cc[address(stor17[stor17.length])] = sub_b337f8cc[address(msg.sender)]
                require users.length - 1 < users.length
                address(users[users.length]) = 0
                sub_b337f8cc[address(msg.sender)] = 0
                users.length--
                if users.length > users.length - 1:
                    idx = users.length - 1
                    while users.length > idx:
                        uint256(users[idx]) = 0
                        idx = idx + 1
                        continue 
    require sub_6c67b21e + ((10000 * msg.value * stor28 * stor39) - (10000 * msg.value * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18 * stor38 / 10000) >= sub_6c67b21e
    sub_6c67b21e += (10000 * msg.value * stor28 * stor39) - (10000 * msg.value * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18 * stor38 / 10000
    require sub_15ed0793 + ((10000 * msg.value * stor28 * stor39) - (10000 * msg.value * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18) >= sub_15ed0793
    sub_15ed0793 += (10000 * msg.value * stor28 * stor39) - (10000 * msg.value * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18
    emit Create(msg.value - (msg.value * stor30 / 10000), (10000 * msg.value * stor28 * stor39) - (10000 * msg.value * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18 * stor38 / 10000, (10000 * msg.value * stor28 * stor39) - (10000 * msg.value * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18, msg.value * stor30 / 10000, msg.sender);
    emit 0xce065be8: sub_6c67b21e, sub_15ed0793
    require ext_code.size(stor6)
    call stor6.emitTransfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0, msg.sender, (10000 * msg.value * stor28 * stor39) - (10000 * msg.value * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18 * stor38 / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.emitTransfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0, msg.sender, (10000 * msg.value * stor28 * stor39) - (10000 * msg.value * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function sub_a1dec2d6(?) {
    require calldata.size - 4 >= 64
    require stor19 <= 4
    require stor19 == 1
    require arg1 > 0
    require arg2
    require ext_code.size(arg2)
    call arg2.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg2)
    call arg2.0x70a08231 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] >= arg1
    require ext_code.size(arg2)
    call arg2.withdraw(uint256 arg1) with:
         gas gas_remaining wei
        args ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require eth.balance(this.address) <= eth.balance(this.address)
    require 0 >= ext_call.return_data[0]
    require arg1 > 0
    if arg1:
        require arg1
        require arg1 * stor30 / arg1 == stor30
    require arg1 * stor30 / 10000 <= arg1
    require stor23 + arg1 - (arg1 * stor30 / 10000) >= stor23
    stor23 = stor23 + arg1 - (arg1 * stor30 / 10000)
    if arg1 - (arg1 * stor30 / 10000):
        require arg1 - (arg1 * stor30 / 10000)
        require (arg1 * stor28) - (arg1 * stor30 / 10000 * stor28) / arg1 - (arg1 * stor30 / 10000) == stor28
    if (arg1 * stor28) - (arg1 * stor30 / 10000 * stor28):
        require (arg1 * stor28) - (arg1 * stor30 / 10000 * stor28)
        require (arg1 * stor28 * stor39) - (arg1 * stor30 / 10000 * stor28 * stor39) / (arg1 * stor28) - (arg1 * stor30 / 10000 * stor28) == stor39
    if (arg1 * stor28 * stor39) - (arg1 * stor30 / 10000 * stor28 * stor39):
        require (arg1 * stor28 * stor39) - (arg1 * stor30 / 10000 * stor28 * stor39)
        require (10000 * arg1 * stor28 * stor39) - (10000 * arg1 * stor30 / 10000 * stor28 * stor39) / (arg1 * stor28 * stor39) - (arg1 * stor30 / 10000 * stor28 * stor39) == 10000
    require stor38 + 10000 >= stor38
    require (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18 / 1000000000000000000 * 10^18 == stor38 + 10000
    require (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18
    if (10000 * arg1 * stor28 * stor39) - (10000 * arg1 * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18:
        require (10000 * arg1 * stor28 * stor39) - (10000 * arg1 * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18
        require (10000 * arg1 * stor28 * stor39) - (10000 * arg1 * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18 * stor38 / (10000 * arg1 * stor28 * stor39) - (10000 * arg1 * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18 == stor38
    require stor13[address(msg.sender)] + ((10000 * arg1 * stor28 * stor39) - (10000 * arg1 * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18 * stor38 / 10000) >= stor13[address(msg.sender)]
    stor13[address(msg.sender)] += (10000 * arg1 * stor28 * stor39) - (10000 * arg1 * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18 * stor38 / 10000
    require stor14[address(msg.sender)] + ((10000 * arg1 * stor28 * stor39) - (10000 * arg1 * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18) >= stor14[address(msg.sender)]
    stor14[address(msg.sender)] += (10000 * arg1 * stor28 * stor39) - (10000 * arg1 * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18
    if sub_b337f8cc[address(msg.sender)] <= 0:
        if stor13[address(msg.sender)] >= stor20:
            users.length++
            address(users[users.length]) = msg.sender
            sub_b337f8cc[address(msg.sender)] = users.length
        else:
            if stor14[address(msg.sender)] >= stor20:
                users.length++
                address(users[users.length]) = msg.sender
                sub_b337f8cc[address(msg.sender)] = users.length
    else:
        if stor13[address(msg.sender)] < stor20:
            if stor14[address(msg.sender)] < stor20:
                require users.length - 1 < users.length
                if sub_b337f8cc[address(msg.sender)] < users.length:
                    require sub_b337f8cc[address(msg.sender)] - 1 < users.length
                    address(users[stor18[address(msg.sender)]]) = address(users[users.length])
                    sub_b337f8cc[address(stor17[stor17.length])] = sub_b337f8cc[address(msg.sender)]
                require users.length - 1 < users.length
                address(users[users.length]) = 0
                sub_b337f8cc[address(msg.sender)] = 0
                users.length--
                if users.length > users.length - 1:
                    idx = users.length - 1
                    while users.length > idx:
                        uint256(users[idx]) = 0
                        idx = idx + 1
                        continue 
    require sub_6c67b21e + ((10000 * arg1 * stor28 * stor39) - (10000 * arg1 * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18 * stor38 / 10000) >= sub_6c67b21e
    sub_6c67b21e += (10000 * arg1 * stor28 * stor39) - (10000 * arg1 * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18 * stor38 / 10000
    require sub_15ed0793 + ((10000 * arg1 * stor28 * stor39) - (10000 * arg1 * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18) >= sub_15ed0793
    sub_15ed0793 += (10000 * arg1 * stor28 * stor39) - (10000 * arg1 * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18
    emit Create(arg1 - (arg1 * stor30 / 10000), (10000 * arg1 * stor28 * stor39) - (10000 * arg1 * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18 * stor38 / 10000, (10000 * arg1 * stor28 * stor39) - (10000 * arg1 * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18, arg1 * stor30 / 10000, msg.sender);
    emit 0xce065be8: sub_6c67b21e, sub_15ed0793
    require ext_code.size(stor6)
    call stor6.emitTransfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0, msg.sender, (10000 * arg1 * stor28 * stor39) - (10000 * arg1 * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18 * stor38 / 10000
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor7)
    call stor7.emitTransfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args 0, msg.sender, (10000 * arg1 * stor28 * stor39) - (10000 * arg1 * stor30 / 10000 * stor28 * stor39) / (1000000000000000000 * 10^18 * stor38) + 10000000000000000000000 * 10^18
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return 1
}

function transferFrom(uint256 arg1, address arg2, address arg3, address arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    require stor19 <= 4
    require stor19 == 1
    if not arg1:
        require arg1 < 2
        if msg.sender == stor11:
            require arg5 <= stor[arg1 + 15][address(arg3)][address(arg2)]
            require arg1 < 2
            require arg5 <= stor[arg1 + 15][address(arg3)][address(arg2)]
            require arg1 < 2
            stor[arg1 + 15][address(arg3)][address(arg2)] -= arg5
        else:
            if arg1 != 1:
                require arg5 <= stor[arg1 + 15][address(arg3)][address(msg.sender)]
                require arg1 < 2
                require arg5 <= stor[arg1 + 15][address(arg3)][address(msg.sender)]
                require arg1 < 2
                stor[arg1 + 15][address(arg3)][address(msg.sender)] -= arg5
            else:
                if msg.sender == stor12:
                    require arg5 <= stor[arg1 + 15][address(arg3)][address(arg2)]
                    require arg1 < 2
                    require arg5 <= stor[arg1 + 15][address(arg3)][address(arg2)]
                    require arg1 < 2
                    stor[arg1 + 15][address(arg3)][address(arg2)] -= arg5
                else:
                    require arg5 <= stor[arg1 + 15][address(arg3)][address(msg.sender)]
                    require arg1 < 2
                    require arg5 <= stor[arg1 + 15][address(arg3)][address(msg.sender)]
                    require arg1 < 2
                    stor[arg1 + 15][address(arg3)][address(msg.sender)] -= arg5
    else:
        require arg1 == 1
        require arg1 < 2
        if arg1:
            if arg1 != 1:
                require arg5 <= stor[arg1 + 15][address(arg3)][address(msg.sender)]
                require arg1 < 2
                require arg5 <= stor[arg1 + 15][address(arg3)][address(msg.sender)]
                require arg1 < 2
                stor[arg1 + 15][address(arg3)][address(msg.sender)] -= arg5
            else:
                if msg.sender == stor12:
                    require arg5 <= stor[arg1 + 15][address(arg3)][address(arg2)]
                    require arg1 < 2
                    require arg5 <= stor[arg1 + 15][address(arg3)][address(arg2)]
                    require arg1 < 2
                    stor[arg1 + 15][address(arg3)][address(arg2)] -= arg5
                else:
                    require arg5 <= stor[arg1 + 15][address(arg3)][address(msg.sender)]
                    require arg1 < 2
                    require arg5 <= stor[arg1 + 15][address(arg3)][address(msg.sender)]
                    require arg1 < 2
                    stor[arg1 + 15][address(arg3)][address(msg.sender)] -= arg5
        else:
            if msg.sender == stor11:
                require arg5 <= stor[arg1 + 15][address(arg3)][address(arg2)]
                require arg1 < 2
                require arg5 <= stor[arg1 + 15][address(arg3)][address(arg2)]
                require arg1 < 2
                stor[arg1 + 15][address(arg3)][address(arg2)] -= arg5
            else:
                if arg1 != 1:
                    require arg5 <= stor[arg1 + 15][address(arg3)][address(msg.sender)]
                    require arg1 < 2
                    require arg5 <= stor[arg1 + 15][address(arg3)][address(msg.sender)]
                    require arg1 < 2
                    stor[arg1 + 15][address(arg3)][address(msg.sender)] -= arg5
                else:
                    if msg.sender == stor12:
                        require arg5 <= stor[arg1 + 15][address(arg3)][address(arg2)]
                        require arg1 < 2
                        require arg5 <= stor[arg1 + 15][address(arg3)][address(arg2)]
                        require arg1 < 2
                        stor[arg1 + 15][address(arg3)][address(arg2)] -= arg5
                    else:
                        require arg5 <= stor[arg1 + 15][address(arg3)][address(msg.sender)]
                        require arg1 < 2
                        require arg5 <= stor[arg1 + 15][address(arg3)][address(msg.sender)]
                        require arg1 < 2
                        stor[arg1 + 15][address(arg3)][address(msg.sender)] -= arg5
    require stor19 <= 4
    require stor19 == 1
    require arg4
    require arg1 < 2
    require stor[arg1 + 13][address(arg3)] >= arg5
    require arg1 < 2
    require stor[arg1 + 13][address(arg3)] + stor[arg1 + 13][address(arg4)] >= stor[arg1 + 13][address(arg3)]
    require arg1 < 2
    require arg5 <= stor[arg1 + 13][address(arg3)]
    require arg1 < 2
    stor[arg1 + 13][address(arg3)] -= arg5
    require stor[arg1 + 13][address(arg4)] + arg5 >= stor[arg1 + 13][address(arg4)]
    require arg1 < 2
    stor[arg1 + 13][address(arg4)] += arg5
    require stor[arg1 + 13][address(arg3)] + stor[arg1 + 13][address(arg4)] >= stor[arg1 + 13][address(arg3)]
    require stor[arg1 + 13][address(arg3)] + stor[arg1 + 13][address(arg4)] == stor[arg1 + 13][address(arg3)] + stor[arg1 + 13][address(arg4)]
    emit Transfer(arg5, arg1, arg3, arg4);
    require arg1 < 2
    require -arg1 + 1 < 2
    if sub_b337f8cc[address(arg3)] <= 0:
        if stor[arg1 + 13][address(arg3)] >= stor20:
            users.length++
            address(users[users.length]) = arg3
            sub_b337f8cc[address(arg3)] = users.length
        else:
            if stor[-arg1 + 14][address(arg3)] >= stor20:
                users.length++
                address(users[users.length]) = arg3
                sub_b337f8cc[address(arg3)] = users.length
    else:
        if stor[arg1 + 13][address(arg3)] < stor20:
            if stor[-arg1 + 14][address(arg3)] < stor20:
                require users.length - 1 < users.length
                if sub_b337f8cc[address(arg3)] < users.length:
                    require sub_b337f8cc[address(arg3)] - 1 < users.length
                    address(users[stor18[address(arg3)]]) = address(users[users.length])
                    sub_b337f8cc[address(stor17[stor17.length])] = sub_b337f8cc[address(arg3)]
                require users.length - 1 < users.length
                address(users[users.length]) = 0
                sub_b337f8cc[address(arg3)] = 0
                users.length--
                if users.length > users.length - 1:
                    idx = users.length - 1
                    while users.length > idx:
                        uint256(users[idx]) = 0
                        idx = idx + 1
                        continue 
    require arg1 < 2
    require -arg1 + 1 < 2
    if sub_b337f8cc[address(arg4)] <= 0:
        if stor[arg1 + 13][address(arg4)] >= stor20:
            users.length++
            address(users[users.length]) = arg4
            sub_b337f8cc[address(arg4)] = users.length
        else:
            if stor[-arg1 + 14][address(arg4)] >= stor20:
                users.length++
                address(users[users.length]) = arg4
                sub_b337f8cc[address(arg4)] = users.length
    else:
        if stor[arg1 + 13][address(arg4)] < stor20:
            if stor[-arg1 + 14][address(arg4)] < stor20:
                require users.length - 1 < users.length
                if sub_b337f8cc[address(arg4)] < users.length:
                    require sub_b337f8cc[address(arg4)] - 1 < users.length
                    address(users[stor18[address(arg4)]]) = address(users[users.length])
                    sub_b337f8cc[address(stor17[stor17.length])] = sub_b337f8cc[address(arg4)]
                require users.length - 1 < users.length
                address(users[users.length]) = 0
                sub_b337f8cc[address(arg4)] = 0
                users.length--
                if users.length > users.length - 1:
                    idx = users.length - 1
                    while users.length > idx:
                        uint256(users[idx]) = 0
                        idx = idx + 1
                        continue 
    return 1
}

function transfer(uint256 arg1, address arg2, address arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require stor19 <= 4
    require stor19 == 1
    if not arg1:
        require stor19 <= 4
        require stor19 == 1
        require arg3
        require arg1 < 2
        if msg.sender == stor11:
            require stor[arg1 + 13][address(arg2)] >= arg4
            require arg1 < 2
            require stor[arg1 + 13][address(arg2)] + stor[arg1 + 13][address(arg3)] >= stor[arg1 + 13][address(arg2)]
            require arg1 < 2
            require arg4 <= stor[arg1 + 13][address(arg2)]
            require arg1 < 2
            stor[arg1 + 13][address(arg2)] -= arg4
            require stor[arg1 + 13][address(arg3)] + arg4 >= stor[arg1 + 13][address(arg3)]
            require arg1 < 2
            stor[arg1 + 13][address(arg3)] += arg4
            require stor[arg1 + 13][address(arg2)] + stor[arg1 + 13][address(arg3)] >= stor[arg1 + 13][address(arg2)]
            require stor[arg1 + 13][address(arg2)] + stor[arg1 + 13][address(arg3)] == stor[arg1 + 13][address(arg2)] + stor[arg1 + 13][address(arg3)]
            emit Transfer(arg4, arg1, arg2, arg3);
            require arg1 < 2
            require -arg1 + 1 < 2
            if sub_b337f8cc[address(arg2)] <= 0:
                if stor[arg1 + 13][address(arg2)] >= stor20:
                    users.length++
                    address(users[users.length]) = arg2
                    sub_b337f8cc[address(arg2)] = users.length
                else:
                    if stor[-arg1 + 14][address(arg2)] >= stor20:
                        users.length++
                        address(users[users.length]) = arg2
                        sub_b337f8cc[address(arg2)] = users.length
            else:
                if stor[arg1 + 13][address(arg2)] < stor20:
                    if stor[-arg1 + 14][address(arg2)] < stor20:
                        require users.length - 1 < users.length
                        if sub_b337f8cc[address(arg2)] < users.length:
                            require sub_b337f8cc[address(arg2)] - 1 < users.length
                            address(users[stor18[address(arg2)]]) = address(users[users.length])
                            sub_b337f8cc[address(stor17[stor17.length])] = sub_b337f8cc[address(arg2)]
                        require users.length - 1 < users.length
                        address(users[users.length]) = 0
                        sub_b337f8cc[address(arg2)] = 0
                        users.length--
                        if users.length > users.length - 1:
                            idx = users.length - 1
                            while users.length > idx:
                                uint256(users[idx]) = 0
                                idx = idx + 1
                                continue 
        else:
            if arg1 != 1:
                require stor[arg1 + 13][address(msg.sender)] >= arg4
                require arg1 < 2
                require stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)] >= stor[arg1 + 13][address(msg.sender)]
                require arg1 < 2
                require arg4 <= stor[arg1 + 13][address(msg.sender)]
                require arg1 < 2
                stor[arg1 + 13][address(msg.sender)] -= arg4
                require stor[arg1 + 13][address(arg3)] + arg4 >= stor[arg1 + 13][address(arg3)]
                require arg1 < 2
                stor[arg1 + 13][address(arg3)] += arg4
                require stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)] >= stor[arg1 + 13][address(msg.sender)]
                require stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)] == stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)]
                emit Transfer(arg4, arg1, msg.sender, arg3);
                require arg1 < 2
                require -arg1 + 1 < 2
                if sub_b337f8cc[address(msg.sender)] <= 0:
                    if stor[arg1 + 13][address(msg.sender)] >= stor20:
                        users.length++
                        address(users[users.length]) = msg.sender
                        sub_b337f8cc[address(msg.sender)] = users.length
                    else:
                        if stor[-arg1 + 14][address(msg.sender)] >= stor20:
                            users.length++
                            address(users[users.length]) = msg.sender
                            sub_b337f8cc[address(msg.sender)] = users.length
                else:
                    if stor[arg1 + 13][address(msg.sender)] < stor20:
                        if stor[-arg1 + 14][address(msg.sender)] < stor20:
                            require users.length - 1 < users.length
                            if sub_b337f8cc[address(msg.sender)] < users.length:
                                require sub_b337f8cc[address(msg.sender)] - 1 < users.length
                                address(users[stor18[address(msg.sender)]]) = address(users[users.length])
                                sub_b337f8cc[address(stor17[stor17.length])] = sub_b337f8cc[address(msg.sender)]
                            require users.length - 1 < users.length
                            address(users[users.length]) = 0
                            sub_b337f8cc[address(msg.sender)] = 0
                            users.length--
                            if users.length > users.length - 1:
                                idx = users.length - 1
                                while users.length > idx:
                                    uint256(users[idx]) = 0
                                    idx = idx + 1
                                    continue 
            else:
                if msg.sender == stor12:
                    require stor[arg1 + 13][address(arg2)] >= arg4
                    require arg1 < 2
                    require stor[arg1 + 13][address(arg2)] + stor[arg1 + 13][address(arg3)] >= stor[arg1 + 13][address(arg2)]
                    require arg1 < 2
                    require arg4 <= stor[arg1 + 13][address(arg2)]
                    require arg1 < 2
                    stor[arg1 + 13][address(arg2)] -= arg4
                    require stor[arg1 + 13][address(arg3)] + arg4 >= stor[arg1 + 13][address(arg3)]
                    require arg1 < 2
                    stor[arg1 + 13][address(arg3)] += arg4
                    require stor[arg1 + 13][address(arg2)] + stor[arg1 + 13][address(arg3)] >= stor[arg1 + 13][address(arg2)]
                    require stor[arg1 + 13][address(arg2)] + stor[arg1 + 13][address(arg3)] == stor[arg1 + 13][address(arg2)] + stor[arg1 + 13][address(arg3)]
                    emit Transfer(arg4, arg1, arg2, arg3);
                    require arg1 < 2
                    require -arg1 + 1 < 2
                    if sub_b337f8cc[address(arg2)] <= 0:
                        if stor[arg1 + 13][address(arg2)] >= stor20:
                            users.length++
                            address(users[users.length]) = arg2
                            sub_b337f8cc[address(arg2)] = users.length
                        else:
                            if stor[-arg1 + 14][address(arg2)] >= stor20:
                                users.length++
                                address(users[users.length]) = arg2
                                sub_b337f8cc[address(arg2)] = users.length
                    else:
                        if stor[arg1 + 13][address(arg2)] < stor20:
                            if stor[-arg1 + 14][address(arg2)] < stor20:
                                require users.length - 1 < users.length
                                if sub_b337f8cc[address(arg2)] < users.length:
                                    require sub_b337f8cc[address(arg2)] - 1 < users.length
                                    address(users[stor18[address(arg2)]]) = address(users[users.length])
                                    sub_b337f8cc[address(stor17[stor17.length])] = sub_b337f8cc[address(arg2)]
                                require users.length - 1 < users.length
                                address(users[users.length]) = 0
                                sub_b337f8cc[address(arg2)] = 0
                                users.length--
                                if users.length > users.length - 1:
                                    idx = users.length - 1
                                    while users.length > idx:
                                        uint256(users[idx]) = 0
                                        idx = idx + 1
                                        continue 
                else:
                    require stor[arg1 + 13][address(msg.sender)] >= arg4
                    require arg1 < 2
                    require stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)] >= stor[arg1 + 13][address(msg.sender)]
                    require arg1 < 2
                    require arg4 <= stor[arg1 + 13][address(msg.sender)]
                    require arg1 < 2
                    stor[arg1 + 13][address(msg.sender)] -= arg4
                    require stor[arg1 + 13][address(arg3)] + arg4 >= stor[arg1 + 13][address(arg3)]
                    require arg1 < 2
                    stor[arg1 + 13][address(arg3)] += arg4
                    require stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)] >= stor[arg1 + 13][address(msg.sender)]
                    require stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)] == stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)]
                    emit Transfer(arg4, arg1, msg.sender, arg3);
                    require arg1 < 2
                    require -arg1 + 1 < 2
                    if sub_b337f8cc[address(msg.sender)] <= 0:
                        if stor[arg1 + 13][address(msg.sender)] >= stor20:
                            users.length++
                            address(users[users.length]) = msg.sender
                            sub_b337f8cc[address(msg.sender)] = users.length
                        else:
                            if stor[-arg1 + 14][address(msg.sender)] >= stor20:
                                users.length++
                                address(users[users.length]) = msg.sender
                                sub_b337f8cc[address(msg.sender)] = users.length
                    else:
                        if stor[arg1 + 13][address(msg.sender)] < stor20:
                            if stor[-arg1 + 14][address(msg.sender)] < stor20:
                                require users.length - 1 < users.length
                                if sub_b337f8cc[address(msg.sender)] < users.length:
                                    require sub_b337f8cc[address(msg.sender)] - 1 < users.length
                                    address(users[stor18[address(msg.sender)]]) = address(users[users.length])
                                    sub_b337f8cc[address(stor17[stor17.length])] = sub_b337f8cc[address(msg.sender)]
                                require users.length - 1 < users.length
                                address(users[users.length]) = 0
                                sub_b337f8cc[address(msg.sender)] = 0
                                users.length--
                                if users.length > users.length - 1:
                                    idx = users.length - 1
                                    while users.length > idx:
                                        uint256(users[idx]) = 0
                                        idx = idx + 1
                                        continue 
    else:
        require arg1 == 1
        require stor19 <= 4
        require stor19 == 1
        require arg3
        require arg1 < 2
        if arg1:
            if arg1 != 1:
                require stor[arg1 + 13][address(msg.sender)] >= arg4
                require arg1 < 2
                require stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)] >= stor[arg1 + 13][address(msg.sender)]
                require arg1 < 2
                require arg4 <= stor[arg1 + 13][address(msg.sender)]
                require arg1 < 2
                stor[arg1 + 13][address(msg.sender)] -= arg4
                require stor[arg1 + 13][address(arg3)] + arg4 >= stor[arg1 + 13][address(arg3)]
                require arg1 < 2
                stor[arg1 + 13][address(arg3)] += arg4
                require stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)] >= stor[arg1 + 13][address(msg.sender)]
                require stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)] == stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)]
                emit Transfer(arg4, arg1, msg.sender, arg3);
                require arg1 < 2
                require -arg1 + 1 < 2
                if sub_b337f8cc[address(msg.sender)] <= 0:
                    if stor[arg1 + 13][address(msg.sender)] >= stor20:
                        users.length++
                        address(users[users.length]) = msg.sender
                        sub_b337f8cc[address(msg.sender)] = users.length
                    else:
                        if stor[-arg1 + 14][address(msg.sender)] >= stor20:
                            users.length++
                            address(users[users.length]) = msg.sender
                            sub_b337f8cc[address(msg.sender)] = users.length
                else:
                    if stor[arg1 + 13][address(msg.sender)] < stor20:
                        if stor[-arg1 + 14][address(msg.sender)] < stor20:
                            require users.length - 1 < users.length
                            if sub_b337f8cc[address(msg.sender)] < users.length:
                                require sub_b337f8cc[address(msg.sender)] - 1 < users.length
                                address(users[stor18[address(msg.sender)]]) = address(users[users.length])
                                sub_b337f8cc[address(stor17[stor17.length])] = sub_b337f8cc[address(msg.sender)]
                            require users.length - 1 < users.length
                            address(users[users.length]) = 0
                            sub_b337f8cc[address(msg.sender)] = 0
                            users.length--
                            if users.length > users.length - 1:
                                idx = users.length - 1
                                while users.length > idx:
                                    uint256(users[idx]) = 0
                                    idx = idx + 1
                                    continue 
            else:
                if msg.sender == stor12:
                    require stor[arg1 + 13][address(arg2)] >= arg4
                    require arg1 < 2
                    require stor[arg1 + 13][address(arg2)] + stor[arg1 + 13][address(arg3)] >= stor[arg1 + 13][address(arg2)]
                    require arg1 < 2
                    require arg4 <= stor[arg1 + 13][address(arg2)]
                    require arg1 < 2
                    stor[arg1 + 13][address(arg2)] -= arg4
                    require stor[arg1 + 13][address(arg3)] + arg4 >= stor[arg1 + 13][address(arg3)]
                    require arg1 < 2
                    stor[arg1 + 13][address(arg3)] += arg4
                    require stor[arg1 + 13][address(arg2)] + stor[arg1 + 13][address(arg3)] >= stor[arg1 + 13][address(arg2)]
                    require stor[arg1 + 13][address(arg2)] + stor[arg1 + 13][address(arg3)] == stor[arg1 + 13][address(arg2)] + stor[arg1 + 13][address(arg3)]
                    emit Transfer(arg4, arg1, arg2, arg3);
                    require arg1 < 2
                    require -arg1 + 1 < 2
                    if sub_b337f8cc[address(arg2)] <= 0:
                        if stor[arg1 + 13][address(arg2)] >= stor20:
                            users.length++
                            address(users[users.length]) = arg2
                            sub_b337f8cc[address(arg2)] = users.length
                        else:
                            if stor[-arg1 + 14][address(arg2)] >= stor20:
                                users.length++
                                address(users[users.length]) = arg2
                                sub_b337f8cc[address(arg2)] = users.length
                    else:
                        if stor[arg1 + 13][address(arg2)] < stor20:
                            if stor[-arg1 + 14][address(arg2)] < stor20:
                                require users.length - 1 < users.length
                                if sub_b337f8cc[address(arg2)] < users.length:
                                    require sub_b337f8cc[address(arg2)] - 1 < users.length
                                    address(users[stor18[address(arg2)]]) = address(users[users.length])
                                    sub_b337f8cc[address(stor17[stor17.length])] = sub_b337f8cc[address(arg2)]
                                require users.length - 1 < users.length
                                address(users[users.length]) = 0
                                sub_b337f8cc[address(arg2)] = 0
                                users.length--
                                if users.length > users.length - 1:
                                    idx = users.length - 1
                                    while users.length > idx:
                                        uint256(users[idx]) = 0
                                        idx = idx + 1
                                        continue 
                else:
                    require stor[arg1 + 13][address(msg.sender)] >= arg4
                    require arg1 < 2
                    require stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)] >= stor[arg1 + 13][address(msg.sender)]
                    require arg1 < 2
                    require arg4 <= stor[arg1 + 13][address(msg.sender)]
                    require arg1 < 2
                    stor[arg1 + 13][address(msg.sender)] -= arg4
                    require stor[arg1 + 13][address(arg3)] + arg4 >= stor[arg1 + 13][address(arg3)]
                    require arg1 < 2
                    stor[arg1 + 13][address(arg3)] += arg4
                    require stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)] >= stor[arg1 + 13][address(msg.sender)]
                    require stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)] == stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)]
                    emit Transfer(arg4, arg1, msg.sender, arg3);
                    require arg1 < 2
                    require -arg1 + 1 < 2
                    if sub_b337f8cc[address(msg.sender)] <= 0:
                        if stor[arg1 + 13][address(msg.sender)] >= stor20:
                            users.length++
                            address(users[users.length]) = msg.sender
                            sub_b337f8cc[address(msg.sender)] = users.length
                        else:
                            if stor[-arg1 + 14][address(msg.sender)] >= stor20:
                                users.length++
                                address(users[users.length]) = msg.sender
                                sub_b337f8cc[address(msg.sender)] = users.length
                    else:
                        if stor[arg1 + 13][address(msg.sender)] < stor20:
                            if stor[-arg1 + 14][address(msg.sender)] < stor20:
                                require users.length - 1 < users.length
                                if sub_b337f8cc[address(msg.sender)] < users.length:
                                    require sub_b337f8cc[address(msg.sender)] - 1 < users.length
                                    address(users[stor18[address(msg.sender)]]) = address(users[users.length])
                                    sub_b337f8cc[address(stor17[stor17.length])] = sub_b337f8cc[address(msg.sender)]
                                require users.length - 1 < users.length
                                address(users[users.length]) = 0
                                sub_b337f8cc[address(msg.sender)] = 0
                                users.length--
                                if users.length > users.length - 1:
                                    idx = users.length - 1
                                    while users.length > idx:
                                        uint256(users[idx]) = 0
                                        idx = idx + 1
                                        continue 
        else:
            if msg.sender == stor11:
                require stor[arg1 + 13][address(arg2)] >= arg4
                require arg1 < 2
                require stor[arg1 + 13][address(arg2)] + stor[arg1 + 13][address(arg3)] >= stor[arg1 + 13][address(arg2)]
                require arg1 < 2
                require arg4 <= stor[arg1 + 13][address(arg2)]
                require arg1 < 2
                stor[arg1 + 13][address(arg2)] -= arg4
                require stor[arg1 + 13][address(arg3)] + arg4 >= stor[arg1 + 13][address(arg3)]
                require arg1 < 2
                stor[arg1 + 13][address(arg3)] += arg4
                require stor[arg1 + 13][address(arg2)] + stor[arg1 + 13][address(arg3)] >= stor[arg1 + 13][address(arg2)]
                require stor[arg1 + 13][address(arg2)] + stor[arg1 + 13][address(arg3)] == stor[arg1 + 13][address(arg2)] + stor[arg1 + 13][address(arg3)]
                emit Transfer(arg4, arg1, arg2, arg3);
                require arg1 < 2
                require -arg1 + 1 < 2
                if sub_b337f8cc[address(arg2)] <= 0:
                    if stor[arg1 + 13][address(arg2)] >= stor20:
                        users.length++
                        address(users[users.length]) = arg2
                        sub_b337f8cc[address(arg2)] = users.length
                    else:
                        if stor[-arg1 + 14][address(arg2)] >= stor20:
                            users.length++
                            address(users[users.length]) = arg2
                            sub_b337f8cc[address(arg2)] = users.length
                else:
                    if stor[arg1 + 13][address(arg2)] < stor20:
                        if stor[-arg1 + 14][address(arg2)] < stor20:
                            require users.length - 1 < users.length
                            if sub_b337f8cc[address(arg2)] < users.length:
                                require sub_b337f8cc[address(arg2)] - 1 < users.length
                                address(users[stor18[address(arg2)]]) = address(users[users.length])
                                sub_b337f8cc[address(stor17[stor17.length])] = sub_b337f8cc[address(arg2)]
                            require users.length - 1 < users.length
                            address(users[users.length]) = 0
                            sub_b337f8cc[address(arg2)] = 0
                            users.length--
                            if users.length > users.length - 1:
                                idx = users.length - 1
                                while users.length > idx:
                                    uint256(users[idx]) = 0
                                    idx = idx + 1
                                    continue 
            else:
                if arg1 != 1:
                    require stor[arg1 + 13][address(msg.sender)] >= arg4
                    require arg1 < 2
                    require stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)] >= stor[arg1 + 13][address(msg.sender)]
                    require arg1 < 2
                    require arg4 <= stor[arg1 + 13][address(msg.sender)]
                    require arg1 < 2
                    stor[arg1 + 13][address(msg.sender)] -= arg4
                    require stor[arg1 + 13][address(arg3)] + arg4 >= stor[arg1 + 13][address(arg3)]
                    require arg1 < 2
                    stor[arg1 + 13][address(arg3)] += arg4
                    require stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)] >= stor[arg1 + 13][address(msg.sender)]
                    require stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)] == stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)]
                    emit Transfer(arg4, arg1, msg.sender, arg3);
                    require arg1 < 2
                    require -arg1 + 1 < 2
                    if sub_b337f8cc[address(msg.sender)] <= 0:
                        if stor[arg1 + 13][address(msg.sender)] >= stor20:
                            users.length++
                            address(users[users.length]) = msg.sender
                            sub_b337f8cc[address(msg.sender)] = users.length
                        else:
                            if stor[-arg1 + 14][address(msg.sender)] >= stor20:
                                users.length++
                                address(users[users.length]) = msg.sender
                                sub_b337f8cc[address(msg.sender)] = users.length
                    else:
                        if stor[arg1 + 13][address(msg.sender)] < stor20:
                            if stor[-arg1 + 14][address(msg.sender)] < stor20:
                                require users.length - 1 < users.length
                                if sub_b337f8cc[address(msg.sender)] < users.length:
                                    require sub_b337f8cc[address(msg.sender)] - 1 < users.length
                                    address(users[stor18[address(msg.sender)]]) = address(users[users.length])
                                    sub_b337f8cc[address(stor17[stor17.length])] = sub_b337f8cc[address(msg.sender)]
                                require users.length - 1 < users.length
                                address(users[users.length]) = 0
                                sub_b337f8cc[address(msg.sender)] = 0
                                users.length--
                                if users.length > users.length - 1:
                                    idx = users.length - 1
                                    while users.length > idx:
                                        uint256(users[idx]) = 0
                                        idx = idx + 1
                                        continue 
                else:
                    if msg.sender == stor12:
                        require stor[arg1 + 13][address(arg2)] >= arg4
                        require arg1 < 2
                        require stor[arg1 + 13][address(arg2)] + stor[arg1 + 13][address(arg3)] >= stor[arg1 + 13][address(arg2)]
                        require arg1 < 2
                        require arg4 <= stor[arg1 + 13][address(arg2)]
                        require arg1 < 2
                        stor[arg1 + 13][address(arg2)] -= arg4
                        require stor[arg1 + 13][address(arg3)] + arg4 >= stor[arg1 + 13][address(arg3)]
                        require arg1 < 2
                        stor[arg1 + 13][address(arg3)] += arg4
                        require stor[arg1 + 13][address(arg2)] + stor[arg1 + 13][address(arg3)] >= stor[arg1 + 13][address(arg2)]
                        require stor[arg1 + 13][address(arg2)] + stor[arg1 + 13][address(arg3)] == stor[arg1 + 13][address(arg2)] + stor[arg1 + 13][address(arg3)]
                        emit Transfer(arg4, arg1, arg2, arg3);
                        require arg1 < 2
                        require -arg1 + 1 < 2
                        if sub_b337f8cc[address(arg2)] <= 0:
                            if stor[arg1 + 13][address(arg2)] >= stor20:
                                users.length++
                                address(users[users.length]) = arg2
                                sub_b337f8cc[address(arg2)] = users.length
                            else:
                                if stor[-arg1 + 14][address(arg2)] >= stor20:
                                    users.length++
                                    address(users[users.length]) = arg2
                                    sub_b337f8cc[address(arg2)] = users.length
                        else:
                            if stor[arg1 + 13][address(arg2)] < stor20:
                                if stor[-arg1 + 14][address(arg2)] < stor20:
                                    require users.length - 1 < users.length
                                    if sub_b337f8cc[address(arg2)] < users.length:
                                        require sub_b337f8cc[address(arg2)] - 1 < users.length
                                        address(users[stor18[address(arg2)]]) = address(users[users.length])
                                        sub_b337f8cc[address(stor17[stor17.length])] = sub_b337f8cc[address(arg2)]
                                    require users.length - 1 < users.length
                                    address(users[users.length]) = 0
                                    sub_b337f8cc[address(arg2)] = 0
                                    users.length--
                                    if users.length > users.length - 1:
                                        idx = users.length - 1
                                        while users.length > idx:
                                            uint256(users[idx]) = 0
                                            idx = idx + 1
                                            continue 
                    else:
                        require stor[arg1 + 13][address(msg.sender)] >= arg4
                        require arg1 < 2
                        require stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)] >= stor[arg1 + 13][address(msg.sender)]
                        require arg1 < 2
                        require arg4 <= stor[arg1 + 13][address(msg.sender)]
                        require arg1 < 2
                        stor[arg1 + 13][address(msg.sender)] -= arg4
                        require stor[arg1 + 13][address(arg3)] + arg4 >= stor[arg1 + 13][address(arg3)]
                        require arg1 < 2
                        stor[arg1 + 13][address(arg3)] += arg4
                        require stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)] >= stor[arg1 + 13][address(msg.sender)]
                        require stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)] == stor[arg1 + 13][address(msg.sender)] + stor[arg1 + 13][address(arg3)]
                        emit Transfer(arg4, arg1, msg.sender, arg3);
                        require arg1 < 2
                        require -arg1 + 1 < 2
                        if sub_b337f8cc[address(msg.sender)] <= 0:
                            if stor[arg1 + 13][address(msg.sender)] >= stor20:
                                users.length++
                                address(users[users.length]) = msg.sender
                                sub_b337f8cc[address(msg.sender)] = users.length
                            else:
                                if stor[-arg1 + 14][address(msg.sender)] >= stor20:
                                    users.length++
                                    address(users[users.length]) = msg.sender
                                    sub_b337f8cc[address(msg.sender)] = users.length
                        else:
                            if stor[arg1 + 13][address(msg.sender)] < stor20:
                                if stor[-arg1 + 14][address(msg.sender)] < stor20:
                                    require users.length - 1 < users.length
                                    if sub_b337f8cc[address(msg.sender)] < users.length:
                                        require sub_b337f8cc[address(msg.sender)] - 1 < users.length
                                        address(users[stor18[address(msg.sender)]]) = address(users[users.length])
                                        sub_b337f8cc[address(stor17[stor17.length])] = sub_b337f8cc[address(msg.sender)]
                                    require users.length - 1 < users.length
                                    address(users[users.length]) = 0
                                    sub_b337f8cc[address(msg.sender)] = 0
                                    users.length--
                                    if users.length > users.length - 1:
                                        idx = users.length - 1
                                        while users.length > idx:
                                            uint256(users[idx]) = 0
                                            idx = idx + 1
                                            continue 
    require arg1 < 2
    require -arg1 + 1 < 2
    if sub_b337f8cc[address(arg3)] <= 0:
        if stor[arg1 + 13][address(arg3)] >= stor20:
            users.length++
            address(users[users.length]) = arg3
            sub_b337f8cc[address(arg3)] = users.length
        else:
            if stor[-arg1 + 14][address(arg3)] >= stor20:
                users.length++
                address(users[users.length]) = arg3
                sub_b337f8cc[address(arg3)] = users.length
    else:
        if stor[arg1 + 13][address(arg3)] < stor20:
            if stor[-arg1 + 14][address(arg3)] < stor20:
                require users.length - 1 < users.length
                if sub_b337f8cc[address(arg3)] < users.length:
                    require sub_b337f8cc[address(arg3)] - 1 < users.length
                    address(users[stor18[address(arg3)]]) = address(users[users.length])
                    sub_b337f8cc[address(stor17[stor17.length])] = sub_b337f8cc[address(arg3)]
                require users.length - 1 < users.length
                address(users[users.length]) = 0
                sub_b337f8cc[address(arg3)] = 0
                users.length--
                if users.length > users.length - 1:
                    idx = users.length - 1
                    while users.length > idx:
                        uint256(users[idx]) = 0
                        idx = idx + 1
                        continue 
    return 1
}



}
