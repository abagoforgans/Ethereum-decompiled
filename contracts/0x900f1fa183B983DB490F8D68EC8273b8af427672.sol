contract main {




// =====================  Runtime code  =====================


#
#  - sub_c6169ee6(?)
#
mapping of uint256 sub_e63da8dc;
mapping of uint256 sub_fb700f46;
mapping of uint256 allowance;
uint256 totalSupply;
address owner;
address sub_7a946469Address;
uint256 INITIAL_SUPPLY;
array of uint256 name;
array of uint256 symbol;
uint256 decimals;
uint8 sub_21972fb7;
mapping of uint8 stor11;
array of struct sub_a6e6d4a1;
mapping of struct sub_e48f2e9b;

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_21972fb7(?) {
    return bool(sub_21972fb7)
}

function INITIAL_SUPPLY() {
    return INITIAL_SUPPLY
}

function decimals() {
    return decimals
}

function sub_4ee0ed8e(?) {
    require calldata.size - 4 >= 32
    return sub_e48f2e9b[address(arg1)].field_0
}

function sub_7a946469(?) {
    return sub_7a946469Address
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function sub_a6e6d4a1(?) {
    require calldata.size - 4 >= 32
    return sub_a6e6d4a1[address(arg1)].field_0
}

function sub_b18d5bc7(?) {
    require calldata.size - 4 >= 32
    return sub_e48f2e9b[address(arg1)].field_256
}

function frozenAccount(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function sub_e48f2e9b(?) {
    require calldata.size - 4 >= 32
    return sub_e48f2e9b[address(arg1)].field_0, sub_e48f2e9b[address(arg1)].field_256
}

function sub_e63da8dc(?) {
    require calldata.size - 4 >= 32
    return sub_e63da8dc[address(arg1)]
}

function sub_fb700f46(?) {
    require calldata.size - 4 >= 32
    return sub_fb700f46[address(arg1)]
}

function _fallback() payable {
    revert
}

function sub_a67ae0bd(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_7a946469Address = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    owner = arg1
}

function sub_56340fc1(?) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    sub_21972fb7 = uint8(arg1)
    emit FrozenAll(bool(sub_21972fb7));
}

function sub_4ac3ec4e(?) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    sub_e48f2e9b[address(arg1)].field_0 = arg2
    sub_e48f2e9b[address(arg1)].field_256 = arg3
}

function freezeAccount(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor11[address(arg1)] = uint8(arg2)
    emit FrozenFunds(address(arg1), arg2);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require not stor11[address(arg1)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require sub_e63da8dc[address(arg1)] + sub_fb700f46[address(arg1)] >= sub_e63da8dc[address(arg1)]
    return (sub_e63da8dc[address(arg1)] + sub_fb700f46[address(arg1)])
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    require sub_e63da8dc[address(msg.sender)] >= arg1
    require arg1 <= sub_e63da8dc[address(msg.sender)]
    sub_e63da8dc[address(msg.sender)] -= arg1
    require arg1 <= totalSupply
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
    return 1
}

function increaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require allowance[address(msg.sender)][address(arg1)] + arg2 >= allowance[address(msg.sender)][address(arg1)]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 <= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] -= arg2
    else:
        allowance[address(msg.sender)][address(arg1)] = 0
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function mintToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require sub_e63da8dc[address(arg1)] + arg2 >= sub_e63da8dc[address(arg1)]
    sub_e63da8dc[address(arg1)] += arg2
    require totalSupply + arg2 >= totalSupply
    totalSupply += arg2
    emit Transfer(arg2, 0, this.address);
    emit Transfer(arg2, this.address, arg1);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2
    require arg3 <= sub_e63da8dc[address(arg1)]
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    require not stor11[address(arg1)]
    require not stor11[address(arg2)]
    require arg3 <= sub_e63da8dc[address(arg1)]
    sub_e63da8dc[address(arg1)] -= arg3
    require sub_e63da8dc[address(arg2)] + arg3 >= sub_e63da8dc[address(arg2)]
    sub_e63da8dc[address(arg2)] += arg3
    require arg3 <= allowance[address(arg1)][address(msg.sender)]
    allowance[address(arg1)][address(msg.sender)] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function sub_e0a068ce(?) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if arg2 <= 0:
        if arg2 < sub_a6e6d4a1[address(arg1)].field_0:
            return sub_a6e6d4a1[address(arg1)][arg2].field_0, 
                   sub_a6e6d4a1[address(arg1)][arg2].field_256,
                   sub_a6e6d4a1[address(arg1)][arg2].field_256,
                   sub_a6e6d4a1[address(arg1)][arg2].field_512,
                   sub_a6e6d4a1[address(arg1)][arg2].field_768,
                   sub_a6e6d4a1[address(arg1)][arg2].field_1024,
                   sub_a6e6d4a1[address(arg1)][arg2].field_1280
    else:
        if 1 <= arg2:
            require sub_a6e6d4a1[address(arg1)].field_0 >= arg2 - 1
            if arg2 < sub_a6e6d4a1[address(arg1)].field_0:
                return sub_a6e6d4a1[address(arg1)][arg2].field_0, 
                       sub_a6e6d4a1[address(arg1)][arg2].field_256,
                       sub_a6e6d4a1[address(arg1)][arg2].field_256,
                       sub_a6e6d4a1[address(arg1)][arg2].field_512,
                       sub_a6e6d4a1[address(arg1)][arg2].field_768,
                       sub_a6e6d4a1[address(arg1)][arg2].field_1024,
                       sub_a6e6d4a1[address(arg1)][arg2].field_1280
    revert
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1
    require sub_e63da8dc[address(msg.sender)] + sub_fb700f46[address(msg.sender)] >= sub_e63da8dc[address(msg.sender)]
    require sub_e63da8dc[address(msg.sender)] + sub_fb700f46[address(msg.sender)] >= arg2
    require sub_e63da8dc[address(arg1)] + arg2 >= sub_e63da8dc[address(arg1)]
    require sub_e63da8dc[address(arg1)] + arg2 >= sub_e63da8dc[address(arg1)]
    require not stor11[address(msg.sender)]
    require not stor11[address(arg1)]
    require not sub_21972fb7
    if sub_e63da8dc[address(msg.sender)] >= arg2:
        require arg2 <= sub_e63da8dc[address(msg.sender)]
        sub_e63da8dc[address(msg.sender)] -= arg2
        if sub_7a946469Address != msg.sender:
            require sub_e63da8dc[address(arg1)] + arg2 >= sub_e63da8dc[address(arg1)]
            sub_e63da8dc[address(arg1)] += arg2
        else:
            require sub_fb700f46[address(arg1)] + arg2 >= sub_fb700f46[address(arg1)]
            sub_fb700f46[address(arg1)] += arg2
        sub_a6e6d4a1[address(msg.sender)].field_0++
        sub_a6e6d4a1[address(msg.sender)][sub_a6e6d4a1[address(msg.sender)].field_0].field_0 = msg.sender
        sub_a6e6d4a1[address(msg.sender)][sub_a6e6d4a1[address(msg.sender)].field_0].field_256 = arg1
        sub_a6e6d4a1[address(msg.sender)][sub_a6e6d4a1[address(msg.sender)].field_0].field_416 = 1
        sub_a6e6d4a1[address(msg.sender)][sub_a6e6d4a1[address(msg.sender)].field_0].field_512 = arg2
        sub_a6e6d4a1[address(msg.sender)][sub_a6e6d4a1[address(msg.sender)].field_0].field_768 = sub_e63da8dc[address(msg.sender)]
        sub_a6e6d4a1[address(msg.sender)][sub_a6e6d4a1[address(msg.sender)].field_0].field_1024 = sub_fb700f46[address(msg.sender)]
        sub_a6e6d4a1[address(msg.sender)][sub_a6e6d4a1[address(msg.sender)].field_0].field_1280 = block.timestamp
        sub_a6e6d4a1[address(arg1)].field_0++
        sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_0 = arg1
        sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_256 = msg.sender
        sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_416 = 0
        sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_512 = 0
        sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_512 = arg2
        sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_768 = sub_e63da8dc[address(arg1)]
        sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_1024 = sub_fb700f46[address(arg1)]
        sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_1280 = block.timestamp
        emit Transfer(arg2, msg.sender, arg1);
    else:
        if sub_e48f2e9b[address(msg.sender)].field_0 <= 0:
            emit 0x7ffcb823: address(msg.sender), address(arg1), sub_e48f2e9b[address(msg.sender)].field_0, sub_e48f2e9b[address(msg.sender)].field_256, arg2
            emit Aborted()
        else:
            if sub_e48f2e9b[address(msg.sender)].field_0 >= block.timestamp + (9 * 3600):
                require sub_e63da8dc[address(msg.sender)] <= arg2
                require arg2 - sub_e63da8dc[address(msg.sender)] <= arg2
                require arg2 - sub_e63da8dc[address(msg.sender)] <= sub_fb700f46[address(msg.sender)]
                sub_fb700f46[address(msg.sender)] = sub_fb700f46[address(msg.sender)] - arg2 + sub_e63da8dc[address(msg.sender)]
                require sub_e63da8dc[address(msg.sender)] <= sub_e63da8dc[address(msg.sender)]
                sub_e63da8dc[address(msg.sender)] = 0
                if sub_7a946469Address != msg.sender:
                    require sub_e63da8dc[address(arg1)] + arg2 >= sub_e63da8dc[address(arg1)]
                    sub_e63da8dc[address(arg1)] += arg2
                else:
                    require sub_fb700f46[address(arg1)] + arg2 >= sub_fb700f46[address(arg1)]
                    sub_fb700f46[address(arg1)] += arg2
                sub_a6e6d4a1[address(msg.sender)].field_0++
                sub_a6e6d4a1[address(msg.sender)][sub_a6e6d4a1[address(msg.sender)].field_0].field_0 = msg.sender
                sub_a6e6d4a1[address(msg.sender)][sub_a6e6d4a1[address(msg.sender)].field_0].field_256 = arg1
                sub_a6e6d4a1[address(msg.sender)][sub_a6e6d4a1[address(msg.sender)].field_0].field_416 = 1
                sub_a6e6d4a1[address(msg.sender)][sub_a6e6d4a1[address(msg.sender)].field_0].field_512 = arg2
                sub_a6e6d4a1[address(msg.sender)][sub_a6e6d4a1[address(msg.sender)].field_0].field_768 = sub_e63da8dc[address(msg.sender)]
                sub_a6e6d4a1[address(msg.sender)][sub_a6e6d4a1[address(msg.sender)].field_0].field_1024 = sub_fb700f46[address(msg.sender)]
                sub_a6e6d4a1[address(msg.sender)][sub_a6e6d4a1[address(msg.sender)].field_0].field_1280 = block.timestamp
                sub_a6e6d4a1[address(arg1)].field_0++
                sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_0 = arg1
                sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_256 = msg.sender
                sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_416 = 0
                sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_512 = 0
                sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_512 = arg2
                sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_768 = sub_e63da8dc[address(arg1)]
                sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_1024 = sub_fb700f46[address(arg1)]
                sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_1280 = block.timestamp
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if block.timestamp + (9 * 3600) < sub_e48f2e9b[address(msg.sender)].field_256:
                    emit 0x7ffcb823: address(msg.sender), address(arg1), sub_e48f2e9b[address(msg.sender)].field_0, sub_e48f2e9b[address(msg.sender)].field_256, arg2
                    emit Aborted()
                else:
                    require sub_e63da8dc[address(msg.sender)] <= arg2
                    require arg2 - sub_e63da8dc[address(msg.sender)] <= arg2
                    require arg2 - sub_e63da8dc[address(msg.sender)] <= sub_fb700f46[address(msg.sender)]
                    sub_fb700f46[address(msg.sender)] = sub_fb700f46[address(msg.sender)] - arg2 + sub_e63da8dc[address(msg.sender)]
                    require sub_e63da8dc[address(msg.sender)] <= sub_e63da8dc[address(msg.sender)]
                    sub_e63da8dc[address(msg.sender)] = 0
                    if sub_7a946469Address != msg.sender:
                        require sub_e63da8dc[address(arg1)] + arg2 >= sub_e63da8dc[address(arg1)]
                        sub_e63da8dc[address(arg1)] += arg2
                    else:
                        require sub_fb700f46[address(arg1)] + arg2 >= sub_fb700f46[address(arg1)]
                        sub_fb700f46[address(arg1)] += arg2
                    sub_a6e6d4a1[address(msg.sender)].field_0++
                    sub_a6e6d4a1[address(msg.sender)][sub_a6e6d4a1[address(msg.sender)].field_0].field_0 = msg.sender
                    sub_a6e6d4a1[address(msg.sender)][sub_a6e6d4a1[address(msg.sender)].field_0].field_256 = arg1
                    sub_a6e6d4a1[address(msg.sender)][sub_a6e6d4a1[address(msg.sender)].field_0].field_416 = 1
                    sub_a6e6d4a1[address(msg.sender)][sub_a6e6d4a1[address(msg.sender)].field_0].field_512 = arg2
                    sub_a6e6d4a1[address(msg.sender)][sub_a6e6d4a1[address(msg.sender)].field_0].field_768 = sub_e63da8dc[address(msg.sender)]
                    sub_a6e6d4a1[address(msg.sender)][sub_a6e6d4a1[address(msg.sender)].field_0].field_1024 = sub_fb700f46[address(msg.sender)]
                    sub_a6e6d4a1[address(msg.sender)][sub_a6e6d4a1[address(msg.sender)].field_0].field_1280 = block.timestamp
                    sub_a6e6d4a1[address(arg1)].field_0++
                    sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_0 = arg1
                    sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_256 = msg.sender
                    sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_416 = 0
                    sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_512 = 0
                    sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_512 = arg2
                    sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_768 = sub_e63da8dc[address(arg1)]
                    sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_1024 = sub_fb700f46[address(arg1)]
                    sub_a6e6d4a1[address(arg1)][sub_a6e6d4a1[address(arg1)].field_0].field_1280 = block.timestamp
                    emit Transfer(arg2, msg.sender, arg1);
    return 1
}



}
