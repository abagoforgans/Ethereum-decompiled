contract main {




// =====================  Runtime code  =====================


uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
address authorityAddress;
uint8 stopped; offset 160
uint128 stor4; offset 160
address owner;
uint256 symbol;
uint256 decimals;
uint256 name;

function name() {
    return name
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function stopped() {
    return bool(stopped)
}

function owner() {
    return owner
}

function symbol() {
    return symbol
}

function authority() {
    return authorityAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function approve(address arg1) {
    require calldata.size - 4 >= 32
    if stopped:
        revert with 0, 'ds-stop-is-stopped'
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stopped:
        revert with 0, 'ds-stop-is-stopped'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setName(bytes32 arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    name = arg1
}

function setOwner(address arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    owner = arg1
    emit LogSetOwner(owner);
}

function setAuthority(address arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    authorityAddress = arg1
    emit LogSetAuthority(authorityAddress);
}

function stop() {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor4 = 1
}

function start() {
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    emit call.func_hash: msg.value, Array(len=calldata.size, data=call.data[0 len calldata.size]), msg.sender, arg1, arg2
    stor4 = 0
}

function move(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stopped:
        revert with 0, 'ds-stop-is-stopped'
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0, 'ds-token-insufficient-approval'
            if allowance[address(arg1)][address(msg.sender)] - arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 'ds-math-sub-underflow'
            allowance[address(arg1)][address(msg.sender)] -= arg3
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'ds-token-insufficient-balance'
    if balanceOf[address(arg1)] - arg3 > balanceOf[address(arg1)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
}

function pull(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stopped:
        revert with 0, 'ds-stop-is-stopped'
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg2:
                revert with 0, 'ds-token-insufficient-approval'
            if allowance[address(arg1)][address(msg.sender)] - arg2 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 'ds-math-sub-underflow'
            allowance[address(arg1)][address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 'ds-token-insufficient-balance'
    if balanceOf[address(arg1)] - arg2 > balanceOf[address(arg1)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(arg1)] -= arg2
    if balanceOf[address(msg.sender)] + arg2 < balanceOf[address(msg.sender)]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(msg.sender)] += arg2
    emit Transfer(arg2, arg1, msg.sender);
}

function transferFrom(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if stopped:
        revert with 0, 'ds-stop-is-stopped'
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg3:
                revert with 0, 'ds-token-insufficient-approval'
            if allowance[address(arg1)][address(msg.sender)] - arg3 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 'ds-math-sub-underflow'
            allowance[address(arg1)][address(msg.sender)] -= arg3
    if balanceOf[address(arg1)] < arg3:
        revert with 0, 'ds-token-insufficient-balance'
    if balanceOf[address(arg1)] - arg3 > balanceOf[address(arg1)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(arg1)] -= arg3
    if balanceOf[address(arg2)] + arg3 < balanceOf[address(arg2)]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(arg2)] += arg3
    emit Transfer(arg3, arg1, arg2);
    return 1
}

function mint(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    if stopped:
        revert with 0, 'ds-stop-is-stopped'
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(arg1)] += arg2
    if totalSupply + arg2 < totalSupply:
        revert with 0, 'ds-math-add-overflow'
    totalSupply += arg2
    emit Mint(arg2, arg1);
}

function push(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stopped:
        revert with 0, 'ds-stop-is-stopped'
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            if allowance[address(msg.sender)][address(msg.sender)] < arg2:
                revert with 0, 'ds-token-insufficient-approval'
            if allowance[address(msg.sender)][address(msg.sender)] - arg2 > allowance[address(msg.sender)][address(msg.sender)]:
                revert with 0, 'ds-math-sub-underflow'
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'ds-token-insufficient-balance'
    if balanceOf[address(msg.sender)] - arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
}

function mint(uint256 arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    if stopped:
        revert with 0, 'ds-stop-is-stopped'
    if balanceOf[address(msg.sender)] + arg1 < balanceOf[address(msg.sender)]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(msg.sender)] += arg1
    if totalSupply + arg1 < totalSupply:
        revert with 0, 'ds-math-add-overflow'
    totalSupply += arg1
    emit Mint(arg1, msg.sender);
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stopped:
        revert with 0, 'ds-stop-is-stopped'
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            if allowance[address(msg.sender)][address(msg.sender)] < arg2:
                revert with 0, 'ds-token-insufficient-approval'
            if allowance[address(msg.sender)][address(msg.sender)] - arg2 > allowance[address(msg.sender)][address(msg.sender)]:
                revert with 0, 'ds-math-sub-underflow'
            allowance[address(msg.sender)][address(msg.sender)] -= arg2
    if balanceOf[address(msg.sender)] < arg2:
        revert with 0, 'ds-token-insufficient-balance'
    if balanceOf[address(msg.sender)] - arg2 > balanceOf[address(msg.sender)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] + arg2 < balanceOf[address(arg1)]:
        revert with 0, 'ds-math-add-overflow'
    balanceOf[address(arg1)] += arg2
    emit Transfer(arg2, msg.sender, arg1);
    return 1
}

function burn(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    if stopped:
        revert with 0, 'ds-stop-is-stopped'
    if arg1 != msg.sender:
        if allowance[address(arg1)][address(msg.sender)] != -1:
            if allowance[address(arg1)][address(msg.sender)] < arg2:
                revert with 0, 'ds-token-insufficient-approval'
            if allowance[address(arg1)][address(msg.sender)] - arg2 > allowance[address(arg1)][address(msg.sender)]:
                revert with 0, 'ds-math-sub-underflow'
            allowance[address(arg1)][address(msg.sender)] -= arg2
    if balanceOf[address(arg1)] < arg2:
        revert with 0, 'ds-token-insufficient-balance'
    if balanceOf[address(arg1)] - arg2 > balanceOf[address(arg1)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(arg1)] -= arg2
    if totalSupply - arg2 > totalSupply:
        revert with 0, 'ds-math-sub-underflow'
    totalSupply -= arg2
    emit Burn(arg2, arg1);
}

function burn(uint256 arg1) {
    require calldata.size - 4 >= 32
    if this.address != msg.sender:
        if owner != msg.sender:
            if not authorityAddress:
                revert with 0, 'ds-auth-unauthorized'
            require ext_code.size(authorityAddress)
            staticcall authorityAddress.canCall(address arg1, address arg2, bytes4 arg3) with:
                    gas gas_remaining wei
                   args msg.sender, address(this.address), call.func_hash
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if not ext_call.return_data[0]:
                revert with 0, 'ds-auth-unauthorized'
    if stopped:
        revert with 0, 'ds-stop-is-stopped'
    if msg.sender != msg.sender:
        if allowance[address(msg.sender)][address(msg.sender)] != -1:
            if allowance[address(msg.sender)][address(msg.sender)] < arg1:
                revert with 0, 'ds-token-insufficient-approval'
            if allowance[address(msg.sender)][address(msg.sender)] - arg1 > allowance[address(msg.sender)][address(msg.sender)]:
                revert with 0, 'ds-math-sub-underflow'
            allowance[address(msg.sender)][address(msg.sender)] -= arg1
    if balanceOf[address(msg.sender)] < arg1:
        revert with 0, 'ds-token-insufficient-balance'
    if balanceOf[address(msg.sender)] - arg1 > balanceOf[address(msg.sender)]:
        revert with 0, 'ds-math-sub-underflow'
    balanceOf[address(msg.sender)] -= arg1
    if totalSupply - arg1 > totalSupply:
        revert with 0, 'ds-math-sub-underflow'
    totalSupply -= arg1
    emit Burn(arg1, msg.sender);
}



}
