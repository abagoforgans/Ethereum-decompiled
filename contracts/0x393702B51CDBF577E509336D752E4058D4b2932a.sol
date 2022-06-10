contract main {




// =====================  Runtime code  =====================


uint256 stor0;
mapping of uint256 balanceOf;
uint256 totalSupply;
mapping of uint256 allowance;
address DYDX_MARGINAddress;
address INITIAL_TOKEN_HOLDERAddress;
uint256 POSITION_ID;
mapping of uint8 stor7;
mapping of uint8 stor8;
bool stor9; offset 256
uint8 state;
uint8 stor9; offset 168
address heldTokenAddress; offset 8
address owner;
mapping of uint8 stor11;
uint256 tokenCap;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;

function name() {
    return name[0 len name.length]
}

function DYDX_MARGIN() {
    return DYDX_MARGINAddress
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function TRUSTED_LATE_CLOSERS(address arg1) {
    return bool(stor11[arg1])
}

function balanceOf(address arg1) {
    return balanceOf[address(arg1)]
}

function owner() {
    return owner
}

function TRUSTED_RECIPIENTS(address arg1) {
    return bool(stor7[arg1])
}

function symbol() {
    return symbol[0 len symbol.length]
}

function closedUsingTrustedRecipient() {
    return bool(uint8(stor9.field_168))
}

function INITIAL_TOKEN_HOLDER() {
    return INITIAL_TOKEN_HOLDERAddress
}

function TRUSTED_WITHDRAWERS(address arg1) {
    return bool(stor8[arg1])
}

function state() {
    require state <= 2
    return state
}

function POSITION_ID() {
    return POSITION_ID
}

function tokenCap() {
    return tokenCap
}

function heldToken() {
    return heldTokenAddress
}

function allowance(address arg1, address arg2) {
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setTokenCap(uint256 arg1) {
    require msg.sender == owner
    tokenCap = arg1
    emit TokenCapSet(arg1);
}

function approve(address arg1, uint256 arg2) {
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setTrustedLateCloser(address arg1, bool arg2) {
    require msg.sender == owner
    stor11[address(arg1)] = uint8(arg2)
    emit TrustedCloserSet(address(arg1), arg2);
}

function getPositionDeedHolder(bytes32 arg1) {
    if arg1 != POSITION_ID:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Position#onlyPosition: Incorrect position'
    return this.address
}

function increaseApproval(address arg1, uint256 arg2) {
    require arg2 + allowance[msg.sender][address(arg1)] >= allowance[msg.sender][address(arg1)]
    allowance[msg.sender][address(arg1)] += arg2
    emit Approval((arg2 + allowance[msg.sender][address(arg1)]), msg.sender, arg1);
    return 1
}

function transfer(address arg1, uint256 arg2) {
    require arg2 <= balanceOf[msg.sender]
    require arg1
    require arg2 <= balanceOf[msg.sender]
    balanceOf[msg.sender] -= arg2
    require arg2 + balanceOf[arg1] >= balanceOf[arg1]
    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function decreaseApproval(address arg1, uint256 arg2) {
    if arg2 >= allowance[msg.sender][address(arg1)]:
        allowance[msg.sender][address(arg1)] = 0
    else:
        require arg2 <= allowance[msg.sender][address(arg1)]
        allowance[msg.sender][address(arg1)] -= arg2
    emit Approval(allowance[msg.sender][address(arg1)], msg.sender, arg1);
    return 1
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require arg3 <= balanceOf[address(arg1)]
    require arg3 <= allowance[address(arg1)][msg.sender]
    require arg2
    require arg3 <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] -= arg3
    require arg3 + balanceOf[arg2] >= balanceOf[arg2]
    balanceOf[address(arg2)] = arg3 + balanceOf[arg2]
    require arg3 <= allowance[address(arg1)][msg.sender]
    allowance[address(arg1)][msg.sender] -= arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function receivePositionOwnership(address arg1, bytes32 arg2) {
    if DYDX_MARGINAddress != msg.sender:
        revert with 0, 'OnlyMargin#onlyMargin: Only Margin can call'
    stor0++
    require state <= 2
    if state:
        revert with 0, 'ERC20Position#onlyState: Incorrect State'
    if arg2 != POSITION_ID:
        revert with 0, 'ERC20Position#onlyPosition: Incorrect position'
    require ext_code.size(DYDX_MARGINAddress)
    staticcall DYDX_MARGINAddress.getPosition(bytes32 arg1) with:
            gas gas_remaining wei
           args POSITION_ID
    mem[1248 len 384] = ext_call.return_data[0 len 384]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 384
    mem[ceil32(return_data.size) + 1280] = ext_call.return_data[44 len 20]
    require ext_call.return_data[128] > 0
    state = 1
    heldTokenAddress = mem[ceil32(return_data.size) + 1292 len 20]
    stor9.field_256 % 1 = 0
    require ext_code.size(DYDX_MARGINAddress)
    staticcall DYDX_MARGINAddress.getPositionBalance(bytes32 arg1) with:
            gas gas_remaining wei
           args POSITION_ID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require totalSupply <= ext_call.return_data[0]
    require ext_call.return_data[0] >= totalSupply
    if ext_call.return_data[0] > tokenCap:
        revert with 0, 'ERC20CappedLong#getTokenAmountOnAdd: Adding tokenAmount would exceed cap'
    emit Initialized(POSITION_ID, ext_call.return_data[0] - totalSupply);
    require INITIAL_TOKEN_HOLDERAddress
    require ext_call.return_data[0] >= totalSupply
    totalSupply = ext_call.return_data[0]
    require ext_call.return_data[0] - totalSupply + balanceOf[stor5] >= balanceOf[stor5]
    balanceOf[stor5] = ext_call.return_data[0] - totalSupply + balanceOf[stor5]
    emit Transfer((ext_call.return_data[0] - totalSupply), 0, INITIAL_TOKEN_HOLDERAddress);
    if stor0 + 1 != stor0:
        revert with 0, 'Reentrancy check failure'
    return this.address
}

function increasePositionOnBehalfOf(address arg1, bytes32 arg2, uint256 arg3) {
    if DYDX_MARGINAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyMargin#onlyMargin: Only Margin can call'
    stor0++
    require state <= 2
    if state != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Position#onlyState: Incorrect State'
    if arg2 != POSITION_ID:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Position#onlyPosition: Incorrect position'
    require ext_code.size(DYDX_MARGINAddress)
    staticcall DYDX_MARGINAddress.isPositionCalled(bytes32 arg1) with:
            gas gas_remaining wei
           args POSITION_ID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC20Position#increasePositionOnBehalfOf: Position is margin-called'
    if uint8(stor9.field_168):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC20Position#increasePositionOnBehalfOf: Position closed using trusted recipient'
    require ext_code.size(DYDX_MARGINAddress)
    staticcall DYDX_MARGINAddress.getPositionBalance(bytes32 arg1) with:
            gas gas_remaining wei
           args POSITION_ID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require totalSupply <= ext_call.return_data[0]
    require ext_call.return_data[0] >= totalSupply
    if ext_call.return_data[0] > tokenCap:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC20CappedLong#getTokenAmountOnAdd: Adding tokenAmount would exceed cap'
    require arg1
    require ext_call.return_data[0] >= totalSupply
    totalSupply = ext_call.return_data[0]
    require ext_call.return_data[0] - totalSupply + balanceOf[address(arg1)] >= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = ext_call.return_data[0] - totalSupply + balanceOf[address(arg1)]
    emit Transfer((ext_call.return_data[0] - totalSupply), 0, arg1);
    if stor0 + 1 != stor0:
        revert with 0, 'Reentrancy check failure'
    return this.address
}

function withdraw(address arg1) {
    stor0++
    require state <= 2
    if state == 1:
        require ext_code.size(DYDX_MARGINAddress)
        staticcall DYDX_MARGINAddress.isPositionClosed(bytes32 arg1) with:
                gas gas_remaining wei
               args POSITION_ID
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            state = 2
            emit CompletelyClosed()
    require state <= 2
    if state != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'ERC20Position#withdraw: Position has not yet been closed'
    if arg1 != msg.sender:
        if not stor8[msg.sender]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'ERC20Position#withdraw: Only trusted withdrawers can withdraw on behalf of others'
    if not balanceOf[address(arg1)]:
        if stor0 + 1 != stor0:
            revert with 0, 'Reentrancy check failure'
        else:
            return 0
    require ext_code.size(heldTokenAddress)
    staticcall heldTokenAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not balanceOf[address(arg1)]:
        require totalSupply
        require arg1
        require balanceOf[address(arg1)] <= totalSupply
        totalSupply -= balanceOf[address(arg1)]
        require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] = 0
        emit Transfer(balanceOf[address(arg1)], arg1, 0);
        emit Withdraw(balanceOf[address(arg1)], 0 / totalSupply, arg1);
        if 0 / totalSupply:
            if msg.sender != this.address:
                require ext_code.size(heldTokenAddress)
                call heldTokenAddress.0xa9059cbb with:
                     gas gas_remaining wei
                    args msg.sender, 0 / totalSupply
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if return_data.size:
                    if 32 != return_data.size:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenInteract#transfer: Transfer failed'
                    if not ext_call.return_data[0]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenInteract#transfer: Transfer failed'
        if stor0 + 1 != stor0:
            revert with 0, 'Reentrancy check failure'
        return (0 / totalSupply)
    require ext_call.return_data[0] * balanceOf[address(arg1)] / balanceOf[address(arg1)] == ext_call.return_data[0]
    require totalSupply
    require arg1
    require balanceOf[address(arg1)] <= totalSupply
    totalSupply -= balanceOf[address(arg1)]
    require balanceOf[address(arg1)] <= balanceOf[address(arg1)]
    balanceOf[address(arg1)] = 0
    emit Transfer(balanceOf[address(arg1)], arg1, 0);
    emit Withdraw(balanceOf[address(arg1)], ext_call.return_data[0] * balanceOf[address(arg1)] / totalSupply, arg1);
    if ext_call.return_data[0] * balanceOf[address(arg1)] / totalSupply:
        if msg.sender != this.address:
            require ext_code.size(heldTokenAddress)
            call heldTokenAddress.0xa9059cbb with:
                 gas gas_remaining wei
                args msg.sender, ext_call.return_data[0] * balanceOf[address(arg1)] / totalSupply
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if return_data.size:
                if 32 != return_data.size:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenInteract#transfer: Transfer failed'
                if not ext_call.return_data[0]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'TokenInteract#transfer: Transfer failed'
    if stor0 + 1 != stor0:
        revert with 0, 'Reentrancy check failure'
    return (ext_call.return_data[0] * balanceOf[address(arg1)] / totalSupply)
}

function closeOnBehalfOf(address arg1, address arg2, bytes32 arg3, uint256 arg4) {
    if DYDX_MARGINAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'OnlyMargin#onlyMargin: Only Margin can call'
    stor0++
    require state <= 2
    if state != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Position#onlyState: Incorrect State'
    if arg3 != POSITION_ID:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Position#onlyPosition: Incorrect position'
    require ext_code.size(DYDX_MARGINAddress)
    staticcall DYDX_MARGINAddress.getPositionPrincipal(bytes32 arg1) with:
            gas gas_remaining wei
           args arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require arg4 <= ext_call.return_data[0]
    require ext_code.size(DYDX_MARGINAddress)
    if stor7[address(arg2)]:
        staticcall DYDX_MARGINAddress.getPosition(bytes32 arg1) with:
                gas gas_remaining wei
               args POSITION_ID
        mem[1248 len 384] = ext_call.return_data[0 len 384]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 384
        mem[ceil32(return_data.size) + 1440] = ext_call.return_data[220 len 4]
        mem[ceil32(return_data.size) + 1472] = ext_call.return_data[252 len 4]
        mem[ceil32(return_data.size) + 1504] = ext_call.return_data[284 len 4]
        mem[ceil32(return_data.size) + 1536] = ext_call.return_data[316 len 4]
        require mem[ceil32(return_data.size) + 1564 len 4] + mem[ceil32(return_data.size) + 1500 len 4] >= mem[ceil32(return_data.size) + 1500 len 4]
        if mem[ceil32(return_data.size) + 1532 len 4] <= 0:
            if block.timestamp > mem[ceil32(return_data.size) + 1564 len 4] + mem[ceil32(return_data.size) + 1500 len 4]:
                if not stor11[address(arg1)]:
                    revert with 0, 'ERC20CappedPosition#closeUsingTrustedRecipient: closer not in TRUSTED_LATE_CLOSERS'
        else:
            require mem[ceil32(return_data.size) + 1468 len 4] + mem[ceil32(return_data.size) + 1532 len 4] >= mem[ceil32(return_data.size) + 1532 len 4]
            if block.timestamp > mem[ceil32(return_data.size) + 1468 len 4] + mem[ceil32(return_data.size) + 1532 len 4]:
                if not stor11[address(arg1)]:
                    revert with 0, 'ERC20CappedPosition#closeUsingTrustedRecipient: closer not in TRUSTED_LATE_CLOSERS'
            else:
                if block.timestamp > mem[ceil32(return_data.size) + 1564 len 4] + mem[ceil32(return_data.size) + 1500 len 4]:
                    if not stor11[address(arg1)]:
                        revert with 0, 'ERC20CappedPosition#closeUsingTrustedRecipient: closer not in TRUSTED_LATE_CLOSERS'
        require arg4 > 0
        if not uint8(stor9.field_168):
            uint8(stor9.field_168) = 1
        emit ClosedByTrustedParty(address(arg1), arg4, arg2);
        require arg4 > 0
        require arg4 <= arg4
        if arg4 == ext_call.return_data[0]:
            state = 2
            emit CompletelyClosed()
        if stor0 + 1 != stor0:
            revert with 0, 'Reentrancy check failure'
        return address(this.address), arg4
    staticcall DYDX_MARGINAddress.getPositionBalance(bytes32 arg1) with:
            gas gas_remaining wei
           args POSITION_ID
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not arg4:
        require ext_call.return_data[0]
        if 0 / ext_call.return_data[0] <= balanceOf[address(arg1)]:
            if 0 / ext_call.return_data[0] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Position#close: Cannot close 0 amount'
            if arg4 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Position#close: Cannot close 0 amount'
            require arg4 <= arg4
            require arg1
            require 0 / ext_call.return_data[0] <= totalSupply
            totalSupply -= 0 / ext_call.return_data[0]
            require 0 / ext_call.return_data[0] <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= 0 / ext_call.return_data[0]
            emit Transfer((0 / ext_call.return_data[0]), arg1, 0);
            emit Close((0 / ext_call.return_data[0]), arg1);
            require arg4 > 0
            require arg4 <= arg4
            if arg4 == ext_call.return_data[0]:
                state = 2
                emit CompletelyClosed()
            if stor0 + 1 != stor0:
                revert with 0, 'Reentrancy check failure'
            return address(this.address), arg4
    else:
        require ext_call.return_data[0] * arg4 / arg4 == ext_call.return_data[0]
        require ext_call.return_data[0]
        if ext_call.return_data[0] * arg4 / ext_call.return_data[0] <= balanceOf[address(arg1)]:
            if ext_call.return_data[0] * arg4 / ext_call.return_data[0] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Position#close: Cannot close 0 amount'
            if arg4 <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Position#close: Cannot close 0 amount'
            require arg4 <= arg4
            require arg1
            require ext_call.return_data[0] * arg4 / ext_call.return_data[0] <= totalSupply
            totalSupply -= ext_call.return_data[0] * arg4 / ext_call.return_data[0]
            require ext_call.return_data[0] * arg4 / ext_call.return_data[0] <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= ext_call.return_data[0] * arg4 / ext_call.return_data[0]
            emit Transfer((ext_call.return_data[0] * arg4 / ext_call.return_data[0]), arg1, 0);
            emit Close((ext_call.return_data[0] * arg4 / ext_call.return_data[0]), arg1);
            require arg4 > 0
            require arg4 <= arg4
            if arg4 == ext_call.return_data[0]:
                state = 2
                emit CompletelyClosed()
            if stor0 + 1 != stor0:
                revert with 0, 'Reentrancy check failure'
            return address(this.address), arg4
    if not balanceOf[address(arg1)]:
        require ext_call.return_data[0]
        require 0 / ext_call.return_data[0] < arg4
        if not 0 / ext_call.return_data[0]:
            require ext_call.return_data[0]
            if 0 / ext_call.return_data[0] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Position#close: Cannot close 0 amount'
            if 0 / ext_call.return_data[0] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Position#close: Cannot close 0 amount'
            require 0 / ext_call.return_data[0] <= arg4
            require arg1
            require 0 / ext_call.return_data[0] <= totalSupply
            totalSupply -= 0 / ext_call.return_data[0]
            require 0 / ext_call.return_data[0] <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= 0 / ext_call.return_data[0]
            emit Transfer((0 / ext_call.return_data[0]), arg1, 0);
            emit Close((0 / ext_call.return_data[0]), arg1);
        else:
            require ext_call.return_data[0] * 0 / ext_call.return_data[0] / 0 / ext_call.return_data[0] == ext_call.return_data[0]
            require ext_call.return_data[0]
            if ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Position#close: Cannot close 0 amount'
            if 0 / ext_call.return_data[0] <= 0:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Position#close: Cannot close 0 amount'
            require 0 / ext_call.return_data[0] <= arg4
            require arg1
            require ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] <= totalSupply
            totalSupply -= ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]
            require ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0] <= balanceOf[address(arg1)]
            balanceOf[address(arg1)] -= ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]
            emit Transfer((ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]), arg1, 0);
            emit Close((ext_call.return_data[0] * 0 / ext_call.return_data[0] / ext_call.return_data[0]), arg1);
        require 0 / ext_call.return_data[0] > 0
        require 0 / ext_call.return_data[0] <= arg4
        if 0 / ext_call.return_data[0] == ext_call.return_data[0]:
            state = 2
            emit CompletelyClosed()
        if stor0 + 1 != stor0:
            revert with 0, 'Reentrancy check failure'
        return address(this.address), 0 / ext_call.return_data[0]
    require ext_call.return_data[0] * balanceOf[address(arg1)] / balanceOf[address(arg1)] == ext_call.return_data[0]
    require ext_call.return_data[0]
    require ext_call.return_data[0] * balanceOf[address(arg1)] / ext_call.return_data[0] < arg4
    if not ext_call.return_data[0] * balanceOf[address(arg1)] / ext_call.return_data[0]:
        require ext_call.return_data[0]
        if 0 / ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Position#close: Cannot close 0 amount'
        if ext_call.return_data[0] * balanceOf[address(arg1)] / ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Position#close: Cannot close 0 amount'
        require ext_call.return_data[0] * balanceOf[address(arg1)] / ext_call.return_data[0] <= arg4
        require arg1
        require 0 / ext_call.return_data[0] <= totalSupply
        totalSupply -= 0 / ext_call.return_data[0]
        require 0 / ext_call.return_data[0] <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= 0 / ext_call.return_data[0]
        emit Transfer((0 / ext_call.return_data[0]), arg1, 0);
        emit Close((0 / ext_call.return_data[0]), arg1);
    else:
        require ext_call.return_data[0] * ext_call.return_data[0] * balanceOf[address(arg1)] / ext_call.return_data[0] / ext_call.return_data[0] * balanceOf[address(arg1)] / ext_call.return_data[0] == ext_call.return_data[0]
        require ext_call.return_data[0]
        if ext_call.return_data[0] * ext_call.return_data[0] * balanceOf[address(arg1)] / ext_call.return_data[0] / ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Position#close: Cannot close 0 amount'
        if ext_call.return_data[0] * balanceOf[address(arg1)] / ext_call.return_data[0] <= 0:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20Position#close: Cannot close 0 amount'
        require ext_call.return_data[0] * balanceOf[address(arg1)] / ext_call.return_data[0] <= arg4
        require arg1
        require ext_call.return_data[0] * ext_call.return_data[0] * balanceOf[address(arg1)] / ext_call.return_data[0] / ext_call.return_data[0] <= totalSupply
        totalSupply -= ext_call.return_data[0] * ext_call.return_data[0] * balanceOf[address(arg1)] / ext_call.return_data[0] / ext_call.return_data[0]
        require ext_call.return_data[0] * ext_call.return_data[0] * balanceOf[address(arg1)] / ext_call.return_data[0] / ext_call.return_data[0] <= balanceOf[address(arg1)]
        balanceOf[address(arg1)] -= ext_call.return_data[0] * ext_call.return_data[0] * balanceOf[address(arg1)] / ext_call.return_data[0] / ext_call.return_data[0]
        emit Transfer((ext_call.return_data[0] * ext_call.return_data[0] * balanceOf[address(arg1)] / ext_call.return_data[0] / ext_call.return_data[0]), arg1, 0);
        emit Close((ext_call.return_data[0] * ext_call.return_data[0] * balanceOf[address(arg1)] / ext_call.return_data[0] / ext_call.return_data[0]), arg1);
    require ext_call.return_data[0] * balanceOf[address(arg1)] / ext_call.return_data[0] > 0
    require ext_call.return_data[0] * balanceOf[address(arg1)] / ext_call.return_data[0] <= arg4
    if ext_call.return_data[0] * balanceOf[address(arg1)] / ext_call.return_data[0] == ext_call.return_data[0]:
        state = 2
        emit CompletelyClosed()
    if stor0 + 1 != stor0:
        revert with 0, 'Reentrancy check failure'
    return address(this.address), ext_call.return_data[0] * balanceOf[address(arg1)] / ext_call.return_data[0]
}



}
