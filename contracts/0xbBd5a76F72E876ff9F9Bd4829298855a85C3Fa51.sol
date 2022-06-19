contract main {




// =====================  Runtime code  =====================


const name = 'Super100'

const decimals = 0

const symbol = 'S100'


uint256 sub_89ba195e;
uint256 totalSupply;
uint256 sub_7281d2a9;
address rootAddress;
address bankAddress;
uint256 sub_3c3d7243;
uint256 sub_a7c67e35;
address sub_0d2aa245Address;
mapping of uint256 sub_59bc74a4;
array of address participants;
mapping of address sub_1f362867;
array of address sub_38651c59;
mapping of uint256 allowance;

function sub_0d2aa245(?) {
    return sub_0d2aa245Address
}

function totalSupply() {
    return totalSupply
}

function sub_1f362867(?) {
    require calldata.size - 4 >= 32
    return sub_1f362867[arg1]
}

function participants(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < participants.length
    return address(participants[arg1])
}

function sub_38651c59(?) {
    require calldata.size - 4 >= 64
    require arg2 < uint256(sub_38651c59[arg1])
    return address(sub_38651c59[arg1][arg2])
}

function sub_3c3d7243(?) {
    return sub_3c3d7243
}

function sub_59bc74a4(?) {
    return sub_59bc74a4[stor3]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return sub_59bc74a4[address(arg1)]
}

function sub_7281d2a9(?) {
    return sub_7281d2a9
}

function bank() {
    return bankAddress
}

function sub_89ba195e(?) {
    return sub_89ba195e
}

function sub_9d47feb6(?) {
    require calldata.size - 4 >= 32
    return uint256(sub_38651c59[address(arg1)])
}

function sub_a7c67e35(?) {
    return sub_a7c67e35
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function root() {
    return rootAddress
}

function _fallback() payable {
    revert
}

function sub_d7b6bd01(?) {
    if sub_7281d2a9 <= participants.length:
        return 0
    return (sub_7281d2a9 - participants.length)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit 0xfe8c5be1: arg2, msg.sender, arg1
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= sub_59bc74a4[msg.sender]
    sub_59bc74a4[msg.sender] -= arg2
    sub_59bc74a4[arg1] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] -= arg2
    emit 0xfe8c5be1: (allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg2 <= arg2 + allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit 0xfe8c5be1: (arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1
    return 1
}

function sub_87129f52(?) {
    require ext_code.size(sub_0d2aa245Address)
    staticcall sub_0d2aa245Address.0xe4d05df6 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    return (10^18 * sub_89ba195e / ext_call.return_data[0])
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg3 <= sub_59bc74a4[address(arg1)]
    allowance[address(arg1)][msg.sender] -= arg3
    sub_59bc74a4[address(arg1)] -= arg3
    sub_59bc74a4[arg2] += arg3
    emit Transfer(arg3, arg1, arg2);
    emit 0xfe8c5be1: allowance[address(arg1)][msg.sender], arg1, msg.sender
    return 1
}

function buyTokens(address arg1) payable {
    require calldata.size - 4 >= 32
    require ext_code.size(sub_0d2aa245Address)
    staticcall sub_0d2aa245Address.0xe4d05df6 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0]
    if sub_7281d2a9 > participants.length:
        require not sub_1f362867[msg.sender]
        call msg.sender with:
           value msg.value wei
             gas 2300 * is_zero(value) wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if sub_1f362867[msg.sender]:
            require sub_1f362867[msg.sender] == arg1
        else:
            require sub_1f362867[address(arg1)]
            sub_1f362867[msg.sender] = arg1
            uint256(sub_38651c59[address(arg1)])++
            uint256(sub_38651c59[address(arg1)][uint256(sub_38651c59[address(arg1)])]) = msg.sender or Mask(96, 160, uint256(sub_38651c59[address(arg1)][uint256(sub_38651c59[address(arg1)])]))
            participants.length++
            uint256(participants[participants.length]) = msg.sender or Mask(96, 160, uint256(participants[participants.length]))
        sub_59bc74a4[stor3]--
        sub_59bc74a4[msg.sender]++
        emit Transfer(1, rootAddress, msg.sender);
        call arg1 with:
             gas 2300 wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        call rootAddress with:
             gas 2300 wei
        call bankAddress with:
             gas 2300 wei
    else:
        require 10^18 * sub_89ba195e / ext_call.return_data[0]
        if msg.value / 10^18 * sub_89ba195e / ext_call.return_data[0] <= sub_59bc74a4[stor3]:
            require msg.value / 10^18 * sub_89ba195e / ext_call.return_data[0] > 0
            call msg.sender with:
               value msg.value - (msg.value / 10^18 * sub_89ba195e / ext_call.return_data[0] * 10^18 * sub_89ba195e / ext_call.return_data[0]) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_1f362867[msg.sender]:
                require sub_1f362867[msg.sender] == arg1
            else:
                require sub_1f362867[address(arg1)]
                sub_1f362867[msg.sender] = arg1
                uint256(sub_38651c59[address(arg1)])++
                uint256(sub_38651c59[address(arg1)][uint256(sub_38651c59[address(arg1)])]) = msg.sender or Mask(96, 160, uint256(sub_38651c59[address(arg1)][uint256(sub_38651c59[address(arg1)])]))
                participants.length++
                uint256(participants[participants.length]) = msg.sender or Mask(96, 160, uint256(participants[participants.length]))
            sub_59bc74a4[stor3] -= msg.value / 10^18 * sub_89ba195e / ext_call.return_data[0]
            sub_59bc74a4[msg.sender] += msg.value / 10^18 * sub_89ba195e / ext_call.return_data[0]
            emit Transfer((msg.value / 10^18 * sub_89ba195e / ext_call.return_data[0]), rootAddress, msg.sender);
            call arg1 with:
               value msg.value / 10^18 * sub_89ba195e / ext_call.return_data[0] * 10^18 * sub_89ba195e / ext_call.return_data[0] * sub_3c3d7243 / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call rootAddress with:
               value msg.value / 10^18 * sub_89ba195e / ext_call.return_data[0] * 10^18 * sub_89ba195e / ext_call.return_data[0] * sub_a7c67e35 / 100 wei
                 gas 2300 * is_zero(value) wei
            call bankAddress with:
               value (msg.value / 10^18 * sub_89ba195e / ext_call.return_data[0] * 10^18 * sub_89ba195e / ext_call.return_data[0]) - (msg.value / 10^18 * sub_89ba195e / ext_call.return_data[0] * 10^18 * sub_89ba195e / ext_call.return_data[0] * sub_3c3d7243 / 100) - (msg.value / 10^18 * sub_89ba195e / ext_call.return_data[0] * 10^18 * sub_89ba195e / ext_call.return_data[0] * sub_a7c67e35 / 100) wei
                 gas 2300 * is_zero(value) wei
        else:
            require sub_59bc74a4[stor3] > 0
            call msg.sender with:
               value msg.value - (sub_59bc74a4[stor3] * 10^18 * sub_89ba195e / ext_call.return_data[0]) wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_1f362867[msg.sender]:
                require sub_1f362867[msg.sender] == arg1
            else:
                require sub_1f362867[address(arg1)]
                sub_1f362867[msg.sender] = arg1
                uint256(sub_38651c59[address(arg1)])++
                uint256(sub_38651c59[address(arg1)][uint256(sub_38651c59[address(arg1)])]) = msg.sender or Mask(96, 160, uint256(sub_38651c59[address(arg1)][uint256(sub_38651c59[address(arg1)])]))
                participants.length++
                uint256(participants[participants.length]) = msg.sender or Mask(96, 160, uint256(participants[participants.length]))
            sub_59bc74a4[stor3] = 0
            sub_59bc74a4[msg.sender] += sub_59bc74a4[stor3]
            emit Transfer(sub_59bc74a4[stor3], rootAddress, msg.sender);
            call arg1 with:
               value sub_59bc74a4[stor3] * 10^18 * sub_89ba195e / ext_call.return_data[0] * sub_3c3d7243 / 100 wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            call rootAddress with:
               value sub_59bc74a4[stor3] * 10^18 * sub_89ba195e / ext_call.return_data[0] * sub_a7c67e35 / 100 wei
                 gas 2300 * is_zero(value) wei
            call bankAddress with:
               value (sub_59bc74a4[stor3] * 10^18 * sub_89ba195e / ext_call.return_data[0]) - (sub_59bc74a4[stor3] * 10^18 * sub_89ba195e / ext_call.return_data[0] * sub_3c3d7243 / 100) - (sub_59bc74a4[stor3] * 10^18 * sub_89ba195e / ext_call.return_data[0] * sub_a7c67e35 / 100) wei
                 gas 2300 * is_zero(value) wei
}



}
